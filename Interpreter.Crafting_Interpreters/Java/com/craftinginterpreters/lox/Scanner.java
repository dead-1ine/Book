package com.craftinginterpreters.lox;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.craftinginterpreters.lox.TokenType.*;

class Scanner {
  // Scanner는 소스 코드를 처음부터 끝까지 죽 읽어들여 더 이상 문자가 없을 때까지 토큰을 추가한다.
  private final String source;
  private final List<Token> tokens = new ArrayList<>();

  // Scanner가 현재 소스 코드의 어디를 읽고 있는지를 추적한다.
  private int start = 0;   // 스캔 중인 렉심의 첫 번째 문자
  private int current = 0; // 현재 처리중인 문자
  private int line = 1;    // current가 위치한 소스의 줄 번호
  
  private static final Map<String, TokenType> keywords;
  static {
    keywords = new HashMap<>();
    keywords.put("and",    AND);
    keywords.put("class",  CLASS);
    keywords.put("else",   ELSE);
    keywords.put("false",  FALSE);
    keywords.put("for",    FOR);
    keywords.put("fun",    FUN);
    keywords.put("if",     IF);
    keywords.put("nil",    NIL);
    keywords.put("or",     OR);
    keywords.put("print",  PRINT);
    keywords.put("return", RETURN);
    keywords.put("super",  SUPER);
    keywords.put("this",   THIS);
    keywords.put("true",   TRUE);
    keywords.put("var",    VAR);
    keywords.put("while",  WHILE);
  }

  Scanner(String source) {
    this.source = source;
  }

  // Scanner의 핵심 루프
  List<Token> scanTokens() {
    while (!isAtEnd()) {
      // We are at the beginning of the next lexeme.
      start = current;
      scanToken();
    }

    tokens.add(new Token(EOF, "", null, line)); // 파서가 조금 더 깔끔해지기 위해 EOF를 추가했다.
    return tokens;
  }

  private boolean isAtEnd() {
    return current >= source.length();
  }

  private char advance() {
    // 소스 파일의 다음 문자를 읽고 그 것을 반환한다.
    current++;
    return source.charAt(current - 1);
  }

  private void addToken(TokenType type) {
    // advance()가 입력을 위한 메서드라면, addToken()은 출력을 위한 메서드다.
    // 현재 랙심의 텍스트를 가져와서 그에 맞는 새 토큰을 만든다.
    addToken(type, null);
  }

  private void addTokne(TokenType type, Object literal) {
    String text = source.substring(start, current);
    tokens.add(new Token(type, text, literal, line));
  }

  private void scanToken() {
    char c = advance();
    switch (c) {
      case '(': addToken(LEFT_PAREN); break;
      case ')': addToken(RIGHT_PAREN); break;
      case '{': addToken(LEFT_BRACE); break;
      case '}': addToken(RIGHT_BRACE); break;
      case ',': addToken(COMMA); break;
      case '.': addToken(DOT); break;
      case '-': addToken(MINUS); break;
      case '+': addToken(PLUS); break;
      case ';': addToken(SEMICOLON); break;
      case '*': addToken(STAR); break;
      case '!': addToken(match('=') ? BANG_EQUAL : BANG); break;
      case '=': addToken(match('=') ? EQUAL_EQUAL : EQUAL); break;
      case '<': addToken(match('=') ? LESS_EQUAL : LESS); break;  // <=만 가능하다. =<는 불가하다.
      case '>': addToken(match('=') ? GREATER_EQUAL : GREATER); break; // >=만 가능하다. =>는 불가하다.
      case '/':
	if (match('/')) {
	  // A comment goes until the end of the line.
	  while (peek() != '\n' && !isAtEnd()) advance();
	} else {
	  addToken(SLASH);
	}
	break;
      case ' ':
      case '\r':
      case '\t':
	break; // Ignore whitespace.
      case '\n':
	line++;
	break;
      case '"': string(); break;
      
      // 록스에서 사용하지 않는 문자가 던져지면 에러를 출력한다.
      default:
        if (isDigit(c)) {
	  number();
	} else if (isAlpha(c)) {
	  identifier();
	} else {
	  Lox.error(line, "Unexpected character.");
	}
	break;
    }
  }

  private void identifier() {
    while (isAlphaNumeric(peek())) advance();

    String text = source.substring(start, current);
    TokeyType type = keywords.get(text);
    if (type == null) type = IDENTIFIER;

    addToken(IDENTIFIER);
  }

  private void number() {
    while (isDigit(peek())) advance();

    // Look for a fractional part.
    if (peek() == '.' && isDigit(peekNext())) {
      // Consume the "."
      advance();

      while (isDigit(peek())) advance();
    }
    
    addToken(NUMBER, Double.parseDouble(source.substring(start, current)));
  }

  private void string() {
    // 주석처럼 문자열도 맨 끝에 "가 매칭될때까지 계속 문자를 소비한다.
    while (peek() != '"' && !isAtEnd()) {
      if (peek() == '\n') line++;
      advance();
    }

    if (isAtEnd()) { // 문자열이 딷히기 전에 입력된 문자가 소진되면 에러 로그만 남기는 우아한 방식으로 처리한다. 
      Lox.error(line, "unterminated string.");
      return;
    }

    // The closing ".
    advance(); // TODO: 여기서 왜 advance()를 호출하는가? 

    // Trim the surrounding quotes.
    String value = source.substring(start + 1, current - 1);
    addToken(STRING, value);
  }

  private boolean match(char expected) {
    if (isAtEnd()) return false; // 문자열이 딷히기 전에 입력된 문자가 소진되면 에러 로그만 남기는 우아한 방식으로 처리한다. 

    if (source.charAt(current) != expected) return false;

    current++;
    return true;
  }

  private char peek() {
    if (isAtEnd()) return '\0'; //TODO: 왜 \0을 반환하는가?
    return source.charAt(current);
  }

  private char peekNext() {
    // 리터럴의 정수부를 찾은 만큼 소비하다가, 소수점이 나오면 그 뒤에 적어도 1개 이상의 숫자가 등작하는 소수부를 찾는다.
    if (current + 1 >= source.length()) return '\0';
    return source.charAt(current + 1);
  }

  isAlpha(char c) {
    return (c >= 'a' && c <= 'z') |
	   (c >= 'A' && c <= 'Z') ||
	   c == '_'; // TODO: 왜 _를 추가했는가?

  private boolean isDigit(char c) {
    // 숫자 여부를 체크
    return c >= '0' && c <= '9';
  }
}

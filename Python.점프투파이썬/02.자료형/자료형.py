# 정수형 
a = 123
a = -178
a = 0

# 실수형
a = 1.2
a = -3.45

# 8진수, 16진수
# 8진수(Octal)은 0 + (대소문자 o)
a = 0o177

# 16진수(Hexadecimal) 0x
a = 0x8ff
b = 0xABC

# 숫자형을 활용하기 위한 연산자
# 사칙연산( 같음 )

# x의 y제곱을 나타내는 **연산자
# x ** y : x의 y제곱값을 돌려준다.
a = 3
b = 4
a ** b # 81

# % : 나눗셈 후 나머지를 반환 
7 % 3 # 1
3 % 7 # 3

# // : 나눗셈 후 몫을 반환
7 / 4 # 1.75
7 // 4 # 1


# 02-2 문자열 자료형
# 1. 큰따옴표(")로 양쪽 둘러싸기
"Hello World"

# 2. 작은따옴표(')로 양쪽 둘러싸기
'Python is fun'

# 3. 큰따옴표 3개
"""Life is too short, You need python"""

# 4. 작은따옴표 3개
'''Life is too short, You need python'''

# 문자열에 작은따옴표 포함시키기
food = "Python's favorite food is perl"

# 문자열에 큰따옴표 포함시키기
say = '"Python is very easy." he says.'

# \ 를 사용해서 작은따옴표, 큰따옴표 포함시키기
food = 'Python\'s favorite food is perl'
say = "\"Python is very easy.\" he says."

# 1. 줄을 바꾸기 위한 이스케이프 코드 \n 삽입하기
multiline = "Life is too short \n You need python"

# 2. 연속된 따옴표 사용하기
multiline = '''
	Life is too short
	You need python
	'''

multiline = """
	Life is too short
	You need python
	"""


## 문자열 연산하기 
# 문자열 더해서 연결하기(Concatenation)
head = "Python"
tail = " is fun!"
head + tail # 'Python is fun!'

# 문자열 곱하기
a = "python"
a * 2 # 'pythonpython'

# 문자열 곱하기 응용
print("=" * 50)
print("My Program")
print("=" * 50)

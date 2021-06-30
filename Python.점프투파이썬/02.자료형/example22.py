english_dict = dict()

english_dict['one'] = '하나'
english_dict['two'] = '둘'
english_dict['three'] = '셋'
english_dict['four'] = '넷'
english_dict['five'] = '다섯'
english_dict['six'] = '여섯'

word = input("단어를 입력하세요: ");
print(english_dict.get(word, "없음"))

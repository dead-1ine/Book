num = 1
result = 0
while num > 1000:
	if num % 3 == 0:
		result = result + num
		num = num + 1
	else:
		num = num + 1
		continue

print(result)

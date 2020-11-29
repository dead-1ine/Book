// aixos로 폼데이터 서버에 보내기
(async () => {
	try {
		const formData = new FormData();
		formData.append('name', 'zerocho');
		formData.append('birth', 1994);
		const result = await.post('https://www.zerocho.com/api/post/formdata', formData);
		console.log(result);
		console.log(result.data);
	} catch (error) {
		console.error(error);
	}
})();
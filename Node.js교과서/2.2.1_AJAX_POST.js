(async () => {
	try {
		const result = await axios.post('https://www.zerocho.com/api/post/json', {
			name : 'zerocho',
			birth : 1994,
		});
		console.log(result);
		console.log(result.data);
	} catch (error) {
		console.error(error);
	}
})();
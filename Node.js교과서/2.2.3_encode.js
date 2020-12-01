(async () => {
	try {
		const result = await axios.get('https://www.zerocho.com/api/search/$(encodeURIComponent('노드')}');
		console.log(result);
		console.log(result.data);
	} catch (error) {
		console.error(error);
	}
})();
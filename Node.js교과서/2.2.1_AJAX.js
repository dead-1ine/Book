axios.get('https://www.zerocho.com/api/get')
	.then((result) => {
		console.log(result);
		console.log(result.data);
	})
	.catch((error) => {
		console.error(error);
	});
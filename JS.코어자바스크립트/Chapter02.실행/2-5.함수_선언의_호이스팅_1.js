function a() {
	console.log(b);		// 1
	var b = 'bbb';
	console.log(b);		// 2
	function b() { }
	console.log(b);		// 3
}
a();

function a() {
	var b;
	var b = function b() {

		console.log(b);
		b = 'bbb';
		console.log(b);
		console.log(b);
	}
	a();

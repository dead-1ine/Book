var a = 1;
delete window.a;
console.log(a, window.a, this.a);

var b = 2;
delete b;
console.log(b, window.b, this.b);

window.c = 3;
delete window.c;
console.log(c, window.c, this.c);

window.d = 4;
delete d;
console.log(d, window.d, this.d);

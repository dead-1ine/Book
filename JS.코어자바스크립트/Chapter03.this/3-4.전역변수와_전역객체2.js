var a = 1;
window.b = 2;

console.log(a, window.a, this.a);
console.log(b, window.b, this.b);

window.a = 3;
b = 4;

console.log(a, window.a, this.a);
console.log(b, window.b, this.b);

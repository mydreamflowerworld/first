var buf1=Buffer.from('abcdefghijkl');
var buf2=Buffer.from('xieyujie');

buf2.copy(buf1,2);

console.log(buf1.toString());

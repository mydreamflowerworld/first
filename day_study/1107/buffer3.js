var buffer1=Buffer.from(('xie'));
var buffer2=Buffer.from(('yujie'));
var buffer3=Buffer.concat([buffer1,buffer2]);

console.log("buffer3:"+buffer3.toString());

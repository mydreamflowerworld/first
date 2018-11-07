var fs=require("fs");
var zlib=require('zlib');

fs.createReadStream('input.txt')
  .pipe(zlib.createGunzip())
  .pipe(fs.createWriteStream('input.txt.gz'));

console.log("文件解压完成");

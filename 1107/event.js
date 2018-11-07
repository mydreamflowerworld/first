var events=require("events");
var eventEmitter=new events.EventEmitter();

var connectHandler=function connectd(){
  console.log('connect ok');
  eventEmitter.emit('data_received');
}
eventEmitter.on('connection',connectHandler);

eventEmitter.on('data_recieved',function(){
 console.log('数据接收成功！');
});

eventEmitter.emit('connection');
console.log("程序执行完毕！");

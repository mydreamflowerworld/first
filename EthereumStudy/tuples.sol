pragma solidity ^0.4.4;

contract Simple{
    uint[] data=new uint[](5);
    
    function a(uint _a,uint _b) constant returns(uint,uint){
        return(_a + _b,_a * _b);
    }
    function f() constant returns(uint,bool,uint){
        return(7,true,2);
    }
    function g1() constant returns(uint,bool,uint){
        var(x,b,y)=f();
        return(x,b,y);
    }
    function g2() constant returns(uint,uint){
        var(x,b,y)=f();
        (x,y)=(2,7);
        return(x,y);
    }
    //数据交换 
    function g3() constant returns(uint,uint){
        var(x,b,y)=f();
        (x,y)=(2,7);
        (x,y)=(y,x);
        return(x,y);
    }
    
    function g4() constant returns(uint[]){
        (data.length,)=f();
        return data;
    }
    function g5() constant returns (uint[]){
        ( ,data[3])=f();
       
        return data;
    }
    function g6() constant returns(uint){
        var (x,)=(1,);
        return x;
    }
    function setData(){
        data[4]=5;
       
    }
}

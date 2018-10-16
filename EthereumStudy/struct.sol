pragma solidity ^0.4.4;
contract student{
    struct Person{
        uint age;
        uint id;
        uint name;
    }
    Person [] persons=new Person[3];
    
    Person _person1=Person(10,100,"小明 ");
    Person _person2=Person(20,101,"小方  ");
    Person _Person3=Person({age:30,id:103,name:"xiaoxie"});
    
    //初始化结构体对象

    function Studnt(){
        person[0]=_person1;
        person[1]=_person2;
        person[2]=_Person3;
    }   
    function f(){
        Person memory person1=Person(22,104,"xiaoxiao");
        
    }
}

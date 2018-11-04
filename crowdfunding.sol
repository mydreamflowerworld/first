pragma solidity ^0.4.4;
contract CrowdFunding{
	struct Funder{
	  address addr;//投资人地址
	  uint amount;//投资人金额
	}
    //存储运动员相关信息的结构体
	struct Campaign{
	  address beneficiary;//受益人钱包地址
	  uint fundingGoal;//需要赞助的总额度
	  uint numFunders;//有多少人赞助
	  uint amount;//已赞助金额
	  mapping(uint=>Funder) funders;//按照索引存储投资人信息
	}

	uint public  numCampaigns;//统计运动员数量
	mapping(uint=>Campaign) campaigns;//以键对形式存储赞助人的信息
    
//新增一个Campaign对象，需要传入受益人的地址和需要筹资的金额
	function newCampaign(address beneficiary,uint goal)public returns(uint campaignID){
	  campaignID=numCampaigns++;//计数
	  //创建一个Campaing对象，并存储到campaigns里面
	  campaigns[campaignID]=Campaign(beneficiary,goal,0,0);
	}
    //通过campaignID给某个Campaign对象赞助
	function contribute(uint campaignID) public payable{
      Campaign storage c=campaigns[campaignID];
      c.funders[c.numFunders++]=Funder({addr:msg.sender,amount:msg.value});
	  c.amount+=msg.value;//计算收到的总数
	  c.beneficiary.transfer(msg.value);
	}
 
    //检查某个campaignID编号的受益人集资是否达标，不达标返回false
	function checkGoalReached(uint compaignID) public returns(bool reached){
	  Campaign storage c=campaigns[compaignID];
	  if(c.amount<c.fundingGoal){
	    return false;
	  }
	  return true;
	}
}

function show(){
	function mess(){
      var year=Number(document.getElementById("inyear").value);
      var month=Number(document.getElementById("inmonth").value)-1;
      var day=Number(document.getElementById("inday").value);
      //获取截至时间
      var endDate= new Date(year,month,day);
      //获取当前时间
      var nowDate=Date.now();
      //时间差
      var left_time=Math.round((endDate-nowDate)/1000);
      var day1=parseInt(left_time/(3600*24));
      document.getElementById("1").innerHTML=day1;
}
setInterval(mess,1000);
}

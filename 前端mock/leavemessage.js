var nocache =  new Date().getTime();
var data=Mock.mock("leavemessage.php","post",function(a1){
	console.log(a1);
	let a2=new URLSearchParams(a1.body);
	let content=a2.get("content");
	if(content){
		var data1='{"status":"10001","msg":"留言成功,就算失败了,你也别联系管理员,管理员没心情回你"}';
		return data1;
	}else{
		return '{"status":"30001","msg":"留言失败,算了,你也别联系管理员了,管理员没心情回你"}';
	}
})
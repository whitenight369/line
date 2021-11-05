<?php
if($_SERVER['REQUEST_METHOD']=="POST"){
	$jwt=$_POST['HTTP_X_TOKEN'];
	include("vaidata");
	if(vaildata($jwt)=="success"){
		$messageId=$_POST['messageId'];
		$reply=$_POST['reply'];
		include("conn.php");
		 $flag=mysql_query($conn,"update messages set reply='$reply' where messageId='$messageId'");
			  if($flag){
			    echo '{"status":"10001","msg":"success"}';	
			   }else{
			     echo '{"status":"20001","msg":"回复失败,请联系管理员"}';
			   }
	}
	
}else{
	header("location:error.php");
}

?>
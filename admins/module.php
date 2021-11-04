<?php
date_default_timezone_set('PRC');
require 'JWT.php';
use \Firebase\JWT\JWT;
define("KEY",'1gHuiop975cdashyex9Ud23ldsvm2Xq');
$action=$_GET['action'];
$res['result']="failed";
if($action=="login"){
	if($_SERVER['REQUEST_METHOD']=="POST"){
		$userName=$_POST['userName'];
		$pwd=$_POST['pwd'];
		include("conn.php");
		
		
	}
}else{
	$jwt=$_SERVER['HTTP_X_TOKEN'];
	if(empty($jwt)){
		$res['msg']="非法登录";
		echo json_encode($res);
		exit;
	}
	try{
		JWT::$leeway=60;
		$decoded=JWT::decode($jwt,KEY,['HS256']);
		$arr=(array)$decoded;
		if($res['exp']<time()){
			$res['msg']="请重新登录";
		}else{
			$res['result']="success";
			$res['info']=$arr;
		}
	}catch(Exception $e){
		$res['msg']="Token验证错误,请联系管理员";
	}
	echo json_encode($res);
}

?>
<?
	session_start();
	$userid=$_SESSION['userid'];
	$userlevel=$_SESSION['userlevel'];
?>

    <div id="logo"><a href="index.php"><img src="./img/start_cau.jpg" border="0"width="55px" height="55px"></a></div>
	<div id="moto"><img src="./img/moto.gif"></div>
	<div id="top_login">
<?
    if(!$userid)
	{
?>
          <a href="./login/login_form.php">로그인</a> | <a href="./member/member_form.php">회원가입</a>
<?
	}
	else
	{
?>
<?=$userid?>(level:<?=$userlevel?>) |
	<a href="./login/logout.php">로그아웃</a> | <a href="./login/member_form_modify.php">정보수정</a>
<?
	}
?>
	 </div>

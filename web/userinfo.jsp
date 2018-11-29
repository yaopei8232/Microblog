<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" href="css/global.css" />
<link rel="stylesheet" type="text/css" href="css/userinfo.css" />
<title>微博 - 账号管理</title>
<script type="text/javascript" src="script/userinfo.js"></script>
  </head>
 <body>
<!-- header开始-->
<table id="header" align="center" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="20%" align="center"><img src="images/logo.png" width="178" height="62" /></td>
    <td width="55%" align="left">账号设置</td>
    <td width="25%" align="right">&nbsp;</td>
  </tr>
</table>
<!-- header结束-->
<!-- container 开始-->
<table border="0" align="center" cellpadding="0" cellspacing="0" id="container">
  <tr>
    <td width="670" height="600" valign="top"><form action="" method="get">
      <table border="0" align="center" cellpadding="0" cellspacing="0" id="userinfo">
        <tr>
          <td class="title">个人资料</td>
          </tr>
        <tr>
          <td class="menu">基本资料 | <a href="mypassword.jsp">修改密码</a> | <a href="myface.jsp">修改头像</a></td>
        </tr>
        <tr>
          <td align="center"><table width="90%" border="0" cellpadding="5" cellspacing="0" id="userinfo_content">
            <tr>
              <td width="20%" align="right">登录账号：</td>
              <td width="53%">bielaipengwo@126.com</td>
              </tr>
            <tr>
              <td align="right">昵称：</td>
              <td><input name="password" type="text" class="input1" id="password" /></td>
              </tr>
            <tr>
              <td align="right">真实姓名：</td>
              <td><input name="rpassword" type="text" class="input1" id="rpassword" /></td>
              </tr>
            <tr>
              <td align="right">所在地：</td>
              <td><input name="nickname" type="text" class="input1" id="nickname" /></td>
              </tr>
            <tr>
              <td align="right">性别：</td>
              <td><input type="radio" name="sex" id="radio" value="radio" />
                男
                &nbsp; &nbsp; &nbsp; &nbsp; <input type="radio" name="sex" id="radio2" value="radio" />
                女</td>
              </tr>
            <tr>
              <td align="right">出生日期：</td>
              <td><select name="year" id="year">
                </select>
                年
                <select name="month" id="month">
                  </select>
                月
                <select name="day" id="day">
                  </select>
                日</td>
              </tr>
            <tr>
              <td align="right">QQ：</td>
              <td><input name="nickname2" type="text" class="input1" id="nickname2" /></td>
              </tr>
            <tr>
              <td align="right">MSN：</td>
              <td align="left"><input name="nickname3" type="text" class="input1" id="nickname3" /></td>
              </tr>
            <tr>
              <td align="right">签名：</td>
              <td align="left"><input name="nickname4" type="text" class="input1" id="nickname4" /></td>
              </tr>
            <tr>
              <td align="right">&nbsp;</td>
              <td align="left">
              <a href="home.jsp"  ><img border="0" src="images/editbtn.png" width="150" height="37" /></a></td>
            </tr>
            </table></td>
          </tr>
        </table>
      </form>
      
    </td>
  </tr>
	</table>
<!-- container 结束-->

<!--footer开始-->
<table id="footer" border="0" align="center" cellpadding="3" cellspacing="0">
  <tr>
    <td width="534" align="left"><a href="#">帮助</a>&nbsp;&nbsp; <a href="#">意见反馈</a>&nbsp;&nbsp; <a href="#">微博认证及合作</a>&nbsp;&nbsp; <a href="#">开放平台</a>&nbsp;&nbsp; <a href="#">微博招聘</a>&nbsp;&nbsp; <a href="#">微博导航</a></td>        
    <td width="447" align="right">Copyright: 2011-2015<a href="#"> 微博系统 版权所有</a></td>
  </tr>
  <tr>
    <td align="left">客服电话：400 123 12345（按当地市话标准收费）</td>
    <td align="right">语言：
      <select name="select" id="select">
        <option>中文(简体)</option>
        <option>中文(繁体)</option>
    </select></td>
  </tr>        
</table>
<!--footer结束-->
</body>
</html>

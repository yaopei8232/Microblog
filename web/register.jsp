<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" href="css/global.css" />
<link rel="stylesheet" type="text/css" href="css/register.css" />
<title>微博 - 快速注册</title>
<script type="text/javascript" src="script/register.js"></script>
  </head>
 <body>
<!-- header开始-->
<table id="header" align="center" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="20%" align="center"><img src="images/logo.png" width="178" height="62" /></td>
    <td width="55%" align="left">用户注册</td>
    <td width="25%" align="right">&nbsp;</td>
  </tr>
</table>
<!-- header结束-->
<!-- container 开始-->
<table border="0" align="center" cellpadding="0" cellspacing="0" id="container">
  <tr>
    <td width="670" valign="top"><form action="" method="get">
      <table border="0" align="center" cellpadding="0" cellspacing="0" id="register">
        <tr>
          <td class="title">30秒快速开通微博</td>
        </tr>
        <tr>
          <td><table width="90%" border="0" cellpadding="5" cellspacing="0" id="register_content">
            <tr>
              <td width="20%" align="right">我的邮箱：</td>
              <td width="53%"><input name="email" type="text" class="input1" id="email" onblur="checkemail()" /></td>
              <td width="27%"><span id="emailmsg"><a href="#">还没有邮箱</a><span></td>
            </tr>
            <tr>
              <td align="right">创建密码：</td>
              <td><input name="password" type="text" class="input1" id="password" /></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td align="right">确认密码：</td>
              <td><input name="rpassword" type="text" class="input1" id="rpassword" /></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td align="right">昵称：</td>
              <td><input name="nickname" type="text" class="input1" id="nickname" /></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td align="right">性别：</td>
              <td><input type="radio" name="sex" id="radio" value="radio" />
                男
                  &nbsp; &nbsp; &nbsp; &nbsp; <input type="radio" name="sex" id="radio2" value="radio" />
                  女</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td align="right">所在地：</td>
              <td><input name="city" type="text" class="input1" id="city" /></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td align="right">验证码：</td>
              <td><input name="yzm" type="text" class="input2" id="yzm" />
                <img src="images/yzm.gif" width="70" height="25" /></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td align="center">&nbsp;</td>
              <td align="left"><img src="images/regbtn.png" width="150" height="37" /></td>
              <td align="center">&nbsp;</td>
              </tr>
            <tr>
              <td align="center">&nbsp;</td>
              <td align="left">《微博网络使用协议》</td>
              <td align="center">&nbsp;</td>
            </tr>
          </table></td>
        </tr>
      </table>
    </form>
     
    </td>
	    <td width="280" align="center" valign="top" class="pageright">
        <!-- userlogin 开始-->
        <form id="form1" name="form1" method="post" action="home.jsp" onsubmit="return checkForm()">
        <table id="login" width="220" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td colspan="2" class="title">已有微博登录账号？</td>
          </tr>
          <tr>
            <td colspan="2" align="left">邮箱/会员账号/手机号：<br />
              <input name="userid" type="text" class="logininput" id="userid" onmouseover="this.focus()" />
            </td>
          </tr>
          <tr>
            <td colspan="2" align="left">输入你的登录密码：<br />
              <input name="password" type="password" class="logininput" id="password" onmouseover="this.focus()"/>
            </td>
          </tr>
          <tr>
            <td width="120"><input name="save" type="checkbox" id="save" value="yes" />下次自动登录</td>
            <td width="100"><a href="#" style="text-decoration:none"><font color="#0066CC">找回登录密码</font></a></td>
          </tr>
          <tr>
            <td colspan="2" align="center"><input name="Submit" type="submit" class="loginbtn" id="Submit" value="  登录微博  " /></td>
          </tr>
        </table>
        </form>
    	<!-- userlogin 结束-->
        <table id="msnlogin">
         <tr>
          <td align="center"><img src="images/msnlogin.png" width="143" height="32" /></td></tr>
        </table>
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

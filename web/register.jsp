<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" href="css/global.css" />
<link rel="stylesheet" type="text/css" href="css/register.css" />
<title>΢�� - ����ע��</title>
<script type="text/javascript" src="script/register.js"></script>
  </head>
 <body>
<!-- header��ʼ-->
<table id="header" align="center" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="20%" align="center"><img src="images/logo.png" width="178" height="62" /></td>
    <td width="55%" align="left">�û�ע��</td>
    <td width="25%" align="right">&nbsp;</td>
  </tr>
</table>
<!-- header����-->
<!-- container ��ʼ-->
<table border="0" align="center" cellpadding="0" cellspacing="0" id="container">
  <tr>
    <td width="670" valign="top"><form action="" method="get">
      <table border="0" align="center" cellpadding="0" cellspacing="0" id="register">
        <tr>
          <td class="title">30����ٿ�ͨ΢��</td>
        </tr>
        <tr>
          <td><table width="90%" border="0" cellpadding="5" cellspacing="0" id="register_content">
            <tr>
              <td width="20%" align="right">�ҵ����䣺</td>
              <td width="53%"><input name="email" type="text" class="input1" id="email" onblur="checkemail()" /></td>
              <td width="27%"><span id="emailmsg"><a href="#">��û������</a><span></td>
            </tr>
            <tr>
              <td align="right">�������룺</td>
              <td><input name="password" type="text" class="input1" id="password" /></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td align="right">ȷ�����룺</td>
              <td><input name="rpassword" type="text" class="input1" id="rpassword" /></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td align="right">�ǳƣ�</td>
              <td><input name="nickname" type="text" class="input1" id="nickname" /></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td align="right">�Ա�</td>
              <td><input type="radio" name="sex" id="radio" value="radio" />
                ��
                  &nbsp; &nbsp; &nbsp; &nbsp; <input type="radio" name="sex" id="radio2" value="radio" />
                  Ů</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td align="right">���ڵأ�</td>
              <td><input name="city" type="text" class="input1" id="city" /></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td align="right">��֤�룺</td>
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
              <td align="left">��΢������ʹ��Э�顷</td>
              <td align="center">&nbsp;</td>
            </tr>
          </table></td>
        </tr>
      </table>
    </form>
     
    </td>
	    <td width="280" align="center" valign="top" class="pageright">
        <!-- userlogin ��ʼ-->
        <form id="form1" name="form1" method="post" action="home.jsp" onsubmit="return checkForm()">
        <table id="login" width="220" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td colspan="2" class="title">����΢����¼�˺ţ�</td>
          </tr>
          <tr>
            <td colspan="2" align="left">����/��Ա�˺�/�ֻ��ţ�<br />
              <input name="userid" type="text" class="logininput" id="userid" onmouseover="this.focus()" />
            </td>
          </tr>
          <tr>
            <td colspan="2" align="left">������ĵ�¼���룺<br />
              <input name="password" type="password" class="logininput" id="password" onmouseover="this.focus()"/>
            </td>
          </tr>
          <tr>
            <td width="120"><input name="save" type="checkbox" id="save" value="yes" />�´��Զ���¼</td>
            <td width="100"><a href="#" style="text-decoration:none"><font color="#0066CC">�һص�¼����</font></a></td>
          </tr>
          <tr>
            <td colspan="2" align="center"><input name="Submit" type="submit" class="loginbtn" id="Submit" value="  ��¼΢��  " /></td>
          </tr>
        </table>
        </form>
    	<!-- userlogin ����-->
        <table id="msnlogin">
         <tr>
          <td align="center"><img src="images/msnlogin.png" width="143" height="32" /></td></tr>
        </table>
    </td>
  </tr>
	</table>
<!-- container ����-->

<!--footer��ʼ-->
<table id="footer" border="0" align="center" cellpadding="3" cellspacing="0">
  <tr>
    <td width="534" align="left"><a href="#">����</a>&nbsp;&nbsp; <a href="#">�������</a>&nbsp;&nbsp; <a href="#">΢����֤������</a>&nbsp;&nbsp; <a href="#">����ƽ̨</a>&nbsp;&nbsp; <a href="#">΢����Ƹ</a>&nbsp;&nbsp; <a href="#">΢������</a></td>        
    <td width="447" align="right">Copyright: 2011-2015<a href="#"> ΢��ϵͳ ��Ȩ����</a></td>
  </tr>
  <tr>
    <td align="left">�ͷ��绰��400 123 12345���������л���׼�շѣ�</td>
    <td align="right">���ԣ�
      <select name="select" id="select">
        <option>����(����)</option>
        <option>����(����)</option>
    </select></td>
  </tr>        
</table>
<!--footer����-->
</body>
</html>

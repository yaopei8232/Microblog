<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" href="css/global.css" />
<link rel="stylesheet" type="text/css" href="css/userinfo.css" />
<title>΢�� - �˺Ź���</title>
<script type="text/javascript" src="script/userinfo.js"></script>
  </head>
 <body>
<!-- header��ʼ-->
<table id="header" align="center" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="20%" align="center"><img src="images/logo.png" width="178" height="62" /></td>
    <td width="55%" align="left">�˺�����</td>
    <td width="25%" align="right">&nbsp;</td>
  </tr>
</table>
<!-- header����-->
<!-- container ��ʼ-->
<table border="0" align="center" cellpadding="0" cellspacing="0" id="container">
  <tr>
    <td width="670" height="600" valign="top"><form action="" method="get">
      <table border="0" align="center" cellpadding="0" cellspacing="0" id="userinfo">
        <tr>
          <td class="title">��������</td>
          </tr>
        <tr>
          <td class="menu">�������� | <a href="mypassword.jsp">�޸�����</a> | <a href="myface.jsp">�޸�ͷ��</a></td>
        </tr>
        <tr>
          <td align="center"><table width="90%" border="0" cellpadding="5" cellspacing="0" id="userinfo_content">
            <tr>
              <td width="20%" align="right">��¼�˺ţ�</td>
              <td width="53%">bielaipengwo@126.com</td>
              </tr>
            <tr>
              <td align="right">�ǳƣ�</td>
              <td><input name="password" type="text" class="input1" id="password" /></td>
              </tr>
            <tr>
              <td align="right">��ʵ������</td>
              <td><input name="rpassword" type="text" class="input1" id="rpassword" /></td>
              </tr>
            <tr>
              <td align="right">���ڵأ�</td>
              <td><input name="nickname" type="text" class="input1" id="nickname" /></td>
              </tr>
            <tr>
              <td align="right">�Ա�</td>
              <td><input type="radio" name="sex" id="radio" value="radio" />
                ��
                &nbsp; &nbsp; &nbsp; &nbsp; <input type="radio" name="sex" id="radio2" value="radio" />
                Ů</td>
              </tr>
            <tr>
              <td align="right">�������ڣ�</td>
              <td><select name="year" id="year">
                </select>
                ��
                <select name="month" id="month">
                  </select>
                ��
                <select name="day" id="day">
                  </select>
                ��</td>
              </tr>
            <tr>
              <td align="right">QQ��</td>
              <td><input name="nickname2" type="text" class="input1" id="nickname2" /></td>
              </tr>
            <tr>
              <td align="right">MSN��</td>
              <td align="left"><input name="nickname3" type="text" class="input1" id="nickname3" /></td>
              </tr>
            <tr>
              <td align="right">ǩ����</td>
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

<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<link rel="stylesheet" type="text/css" href="css/global.css" />
		<link rel="stylesheet" type="text/css" href="css/register.css" />
		<title>Catalyst΢�� - ����ע��</title>
		<script type="text/javascript" src="script/register.js"></script>

	<script type="text/javascript" src="script/Validform.js"></script>
	<script type="text/javascript">
$(function(){
	$(".registerform:last").Validform({
		tiptype:2
	});
	//��ȡ���÷�����ʾ��Ϣ��ʾ�򣬿�����ȫվͳһ�ĵ�������ʾЧ��;

	//$.Showmsg("Test Info here!");  //���÷�����ʾ��Ϣ��ʾ��;
})
</script>
<script> 
$(document).ready(function () { 
setInterval("startRequest()",1000); 
}); 
function startRequest() 
{ 
$("#date").text((new Date()).toString()); 
} 

 function changeimg()   
  {   
  var cn = document.getElementById("cn");   
  cn.src="image.jsp?"+Math.random();//�������һ�����֣���ͼƬ��������Ϊ����ͬһ��������    
  }   
</script> 
	<link rel="stylesheet" href="css/css.css" type="text/css"></link>
	</head>
	<body onload="init()">

		<!-- header��ʼ-->
		<table id="header" align="center" border="0" cellspacing="0"
			cellpadding="0">
			<tr>
				<td width="20%" align="center">
					<img src="images/logo.png" width="178" height="62" />
				</td>
				<td width="55%" align="left" >
					�û�ע��
				</td>
				<td width="25%" align="right">&nbsp;
					
				</td>
			</tr>
		</table>
		<!-- header����-->
		<!-- container ��ʼ-->

		<table border="0" align="center" cellpadding="0" cellspacing="0"
			id="container">
		
			<tr>
				<td width="670" valign="top">
	
                 <form action="servlet/UserRegServlet" method="post" name="form" class="registerform" >
 
    <div align="center"><h3>ע����Ϣ</h3></div>
   <table  style="table-layout: fixed; left: 0px; " height="328" align="left">
           <tr>
            <td width="10" align="right" class="need">*</td>
            <td width="90">Email:</td>
            <td width="182" align="left"><input name="u_email" type="text" class="inputxt" id="userName" title="Email" value=""  datatype="e"  nullmsg="�����������õ����䣡" ajaxurl="servlet/ServiceServlet" errormsg="�����ʽ����ȷ��" /></td>
            <td width="178" align="left"><div class="Validform_checktip">�����������õ�����</div></td>
        </tr>
        <tr>
            <td align="right" class="need">*</td>
            <td>���룺</td>
            <td align="left"><input type="password" value="" name="u_password" title="����" class="inputxt" datatype="*4-16" nullmsg="���������룡" errormsg="���뷶Χ��4~16λ֮��,����ʹ�ÿո�" /></td>
            <td width="178" align="left"><div class="Validform_checktip">���뷶Χ��4~16λ</div></td>
        </tr>
        <tr>
            <td align="right" class="need">*</td>
            <td>ȷ�����룺</td>
            <td align="left"><input type="password" value="" name="u_password2" title="ȷ������" class="inputxt" datatype="*4-16" recheck="u_password" nullmsg="��������һ�����룡" errormsg="�����������벻һ�£�" /></td>
            <td width="178" align="left"><div class="Validform_checktip">��������������һ��</div></td>
        </tr>
        <tr>
            <td  align="right" class="need">*</td>
            <td style="width:90px;">�ǳƣ�</td>
            <td align="left"><input type="text" value="" name="u_nickname" title="�ǳ�" class="inputxt" datatype="*4-16"  errormsg="�ǳ�4~8���ַ���" /></td>
            <td width="178" align="left"><div class="Validform_checktip">�ǳ�4~8���ַ���</div></td>
        </tr>
  
        <tr>
            <td align="right" class="need">*</td>
            <td>�Ա�</td>
            <td align="left"><input type="radio" value="1" name="u_gender" id="male" class="pr1" datatype="radio" errormsg="��ѡ���Ա�" /><label for="male">��</label> <input type="radio" value="2" name="u_gender" id="female" class="pr1" /><label for="female">Ů</label></td>
            <td width="178" align="left"><div class="Validform_checktip"></div></td>
        </tr>
        <tr>
            <td class="need" >*</td>
            <td>����ʡ�ݣ�</td>
            <td >
             <select name="province" datatype="select" errormsg="��ѡ��ʡ�ݣ�" onchange = "select()"></select>
            </td>
            <td width="178" align="left"><div class="Validform_checktip"></div></td>
        </tr>
         <tr>
            <td class="need" >*</td>
            <td>���ڳ��У�</td>
            <td ><select name="city" datatype="select" errormsg="��ѡ����У�" onchange = "select()"></select>
            </td>
            <td width="178" align="left"><div class="Validform_checktip"></div></td>
        </tr>
         <tr>
            <td align="right" class="need"></td>
            <td>��֤�룺</td>
            <td align="left">
               <img src="images/yanzhengma/1.png" id="img" width="70" height="25"  style=" border:#999 1px solid;" />
               <a href="javascript:changeCode()">���������һ��</a>
            </td>
            <td width="178" align="left"><div class="Validform_checktip"></div></td>
        </tr>
        <tr>
            <td align="right" class="need">*</td>
            <td>������֤�룺</td>
           <td align="left">
           <input type="text" name="checkcode" value="" class="input2" id="checkcode" onblur="checkyzm(this)" /></td>
            <td width="178" align="left"><div class="Validform_checktip"></div></td>
        </tr>
        <tr>
            <td class="need"></td>
            <td></td>
            <td colspan="2" style="padding:10px 0 18px 0;">
            <input type="hidden" name="type" value="add"/>
            <input type="submit" class="loginbtn" id="Submit" value="������ͨ" />
                <!--<input type="image" src="images/regbtn1.png" width="150" height="37" onclick="document.form.submit();" />
            --></td>
        </tr>
    </table>
  
</form>

				</td>
				<td width="280" align="center" valign="top" class="pageright">
					<!-- userlogin ��ʼ-->
					<form id="form1" name="form1" method="post" action="servlet/LoginServlet"
						onsubmit="return checkForm()">
						<table id="login" width="220" border="0" cellspacing="0"
							cellpadding="0">
							<tr>
								<td colspan="2" class="title">
									����΢����¼�˺ţ�
								</td>
							</tr>
							 <tr>
            <td colspan="2" align="left">���䣺<br />
              <input name="u_email" type="text" class="logininput" id="userid" onmouseover="this.focus()" />
            </td>
          </tr>
          <tr>
            <td colspan="2" align="left">������ĵ�¼���룺<br />
              <input name="u_password" type="password" class="logininput" id="password" onmouseover="this.focus()"/>
            </td>
          </tr>
          <tr>
            <td width="120"><input type="checkbox" name="autologin"/>�������Զ���¼</td>
            <td width="100"><a href="findpwd.jsp" style="text-decoration:none"><font color="#0066CC">�һص�¼����</font></a></td>
          </tr>
          <tr>
							<tr>
								<td colspan="2" align="center">
									<input name="Submit" type="submit" class="loginbtn" id="Submit"
										value="  ��¼΢��  " />
								</td>
							</tr>
						</table>
					</form>
					<!-- userlogin ����-->
					<table id="msnlogin">
						<tr>
							<td align="center">
								
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>&nbsp; 
		<!-- container ����-->

		<!--footer��ʼ-->
	  <table id="footer" border="0" align="center" cellpadding="3"
			cellspacing="0">
			<tr>
				<td width="534" align="left">
					<a href="page/about.jsp">����</a>&nbsp;&nbsp;	
					<a href="page/taobao.jsp">΢����֤������</a>&nbsp;&nbsp;
					<a href="page/open.jsp">����ƽ̨</a>&nbsp;&nbsp;
				</td>
				<td width="447" align="right">Copyright: 2011<a href="page/about.jsp"> ΢��ϵͳ ��Ȩ����</a></td>
			</tr>
			<tr>
				<td align="left">
					�ͷ��绰��400 123 12345���������л���׼�շѣ�
				</td>
				<td align="right">
					<div id="date"></div>
				</td>
			</tr>
		</table>
		<!--footer����-->
<%
				if (request.getParameter("msg")!=null){
					int res = Integer.parseInt(request.getParameter("msg"));
					if(res == 111)
					out.print("<script>alert('��֤�����');</script>");
				}
			%>
	</body>
</html>

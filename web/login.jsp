<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<link rel="stylesheet" type="text/css" href="css/global.css" />
		<link rel="stylesheet" type="text/css" href="css/register.css" />
		<title>΢�� - ����ע��</title>
		<script type="text/javascript" src="script/register.js"></script>
	<style type="text/css">
	html {
		overflow: hidden;
	}
	body {
		background: #222;
		width: 100%;
		height: 100%;
		cursor: crosshair;
	}
	.spanSlide {
		position: absolute;
		background: #000;
		font-size: 1px;
		overflow: hidden;
	}
	.imgSlide {
		position: absolute;
		left: 5%;
		top: 5%;
		width: 90%;
		height: 90%;
		overflow: hidden;
	}
	.txtSlide {
		position: absolute;
		top: 5%;
		left: 50px;
		width:100%;
		color:#FFF;
		font-family: arial, helvetica, verdana, sans-serif;
		font-weight: bold;
		font-size:96px;
		letter-spacing:12px;
		filter: alpha(opacity=70);
		-moz-opacity:0.7;
		opacity:0.7;
	}
</style>	
<script type="text/javascript">

var ym=0;
var ny=0;

createElement = function(container, type, param){
	o=document.createElement(type);
	for(var i in param)o[i]=param[i];
	container.appendChild(o);
	return o;
	
}

mooz = {
	O:[],
	/////////
	mult:6,
	nbI:5,
	/////////
	rwh:0,
	imgsrc:0,
	W:0,
	H:0,

	Xoom:function(N){
		this.o = createElement(document.getElementById("screen"), "span", {
			'className':'spanSlide'
		});
		img = createElement(this.o, "img", {
			'className':"imgSlide",
			'src':mooz.imgsrc[N%mooz.imgsrc.length].src
		});
		spa = createElement(this.o, "span", {
			'className':"imgSlide"
		});
		txt = createElement(spa, "span", {
			'className':"txtSlide",
			'innerHTML':mooz.imgsrc[N%mooz.imgsrc.length].title
		});
		this.N = 10000+N;
	},

	mainloop:function(){
		with(this){
			for(i=0; i<mooz.nbI; i++) {
				O[i].N += (ym-ny)/8000;
				N = O[i].N%nbI;
				ti = Math.pow(mult,N);
				with(O[i].o.style){
					left   = Math.round((W-(ti*rwh))/(W+ti)*(W*.5))+"px";
					top    = Math.round((H-ti)/(H+ti)*(H*.5))+"px";
					zIndex = Math.round(10000-ti*.1);
					width  = Math.round(ti*rwh)+"px";
					height = Math.round(ti)+"px";
				}
			}
		}
		setTimeout("mooz.mainloop();", 16);
	},

	oigres:function(){
		with(this){
			W = parseInt(document.getElementById("screen").style.width);
			H = parseInt(document.getElementById("screen").style.height);
			imgsrc = document.getElementById("images").getElementsByTagName("img");
			rwh = imgsrc[0].width/imgsrc[0].height;
			for(var i=0;i<nbI;i++) O[i] = new Xoom(i);
			mainloop();
		}
	}
}

document.onmousemove = function(e){
	if(window.event) e=window.event;
	ym = (e.y || e.clientY);
	if(ym/2>ny)ny=ym/2;
}

window.onload = function(){
	ym = ny+50;
	mooz.oigres();
}

</script>		
	
	</head>
	<body>
		<!-- header��ʼ-->
		<table id="header" align="center" border="0" cellspacing="0"
			cellpadding="0">
			<tr>
				<td width="20%" align="center">
					<img src="images/logo.png" width="178" height="62" />
				</td>
				<td width="55%" align="left"></td>

				<td width="25%" align="right">&nbsp;
					
				</td>
			</tr>
		</table>
		<!-- header����    style="position:absolute;left:50%;top:50%"-->	
				<center>
<%--<div style="position:absolute; width: 700px;height: 400px;top:50%" >
	<div style="position:absolute;width:700px;height:440px;left:-360px;top:-280px;background:#fff"></div>
	<div style="position:absolute;left:-40px;top:-6px;color:#000;font-family:arial;font-size:0.9em">Loading...</div>
	<div id="screen" style="position:absolute;width:660px;height:410px;left:-340px;top:-260px;overflow:hidden"></div>
</div>--%>
<div id="images" style="visibility:hidden" >
	<img title="infinite" src="face/22.jpg" />
	<img title="yellow" src="face/18.jpg" />
	<img title="earth"  src="face/25.jpg" />
	<img title="dream" src="face/30.jpg" />
	<img title="flowers" src="face/60.jpg" />
    <img title="flowr" src="face/1023.jpg" />
</div>
		</center>
<p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>
		<center>
			<!-- container -->
			<form action="LoginServlet" method="post" onsubmit="return checkForm()" id="Checkform">
			<table width="50%" border="0">
				<tr>
				 <td>
				  <table width="100%" border="0" cellpadding="5" cellspacing="0" id="register_content">								
					<tr>
						<td width="111" align="left">�˺�:</td>
						<td width="414" align="left">
						 <input name="usn" type="text" class="input1" id="userid" onblur="" /></td>						
					</tr>		
					<tr>					
						<td width="111" align="left">����:</td>
					    <td width="414" align="left">
					     <input name="pwd" type="password" class="input1" id="password" /></td>         				
					</tr>					
					<tr align="left">
					<td width="111" align="left"><input type="submit" value="" id="post" /></td>
                        <td align="left"><input type="checkbox" name="keep" />�Զ���¼</td>   
					</tr>
				   </table>
				 </td>
			    </tr>
			 	</table>						
		</form>
		</center>
		<center>
          <table>  
           <tr>           
			<td width="304" height="50" align="left">
				<font color="#666666">&copy; 2011-2012 ħ��΢��ϵͳ ��Ȩ��ver 1.0 </font>
			</td>
			</tr>
			</table>
		</center>
</body>
</html>
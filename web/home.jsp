<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt"  prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>微博 - 我的主页</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" href="css/global.css" />
<link rel="stylesheet" type="text/css" href="css/home.css" />
<script type="text/javascript" src="script/home.js"></script>
  </head>
 <body>
<!-- header开始-->
<table id="header" align="center" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="20%" align="center"><img src="images/logo.png" width="178" height="62" /></td>
    <td width="55%" align="right">
      <table border="0" align="right" cellpadding="0" cellspacing="0" id="daohang">
        <tr>
          <td width="20%"><a href="home.jsp">我的首页</a></td>
          <td width="20%"><a href="profile.jsp">我的博客</a></td>
          <td width="20%"><a href="friend.jsp">我的好友</a></td>
          <td width="20%"><a href="user.jsp">微博热议</a></td>
        </tr>
      </table>
    </td>
    <td width="25%" align="right">
      <table id="welcome" border="0" cellspacing="0" cellpadding="0">
        <tr>          
          <td width="30" height="30" rowspan="2" class="userface_bg"><img src="face/9.jpg" border="0" width="20" height="20" /></td>
          <td>欢迎您, ${sessionScope.userinfo.uname }！</td>
        </tr>
        <tr>
          <td><a href="index.jsp">[ 退出 ]</a></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<!-- header结束-->
<!-- container 开始-->
<table border="0" align="center" cellpadding="0" cellspacing="0" id="container">
  <tr>
    <td width="670" height="600" valign="top"><form action="" method="get"><table width="100%" border="0" cellpadding="0" cellspacing="0" id="input">
      <tr>
        <td width="160" height="48">&nbsp;</td>
        <td width="479">&nbsp;</td>
        <td width="31">&nbsp;</td>
      </tr>
      <tr>
        <td height="84">&nbsp;</td>
        <td><textarea id="inputbox" name="inputbox" cols="45" rows="5"></textarea></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td align="right" valign="top"><a href="#"><img src="images/imgupload.png" width="47" height="22"  /></a><a href="#"><img src="images/btn_input.png" width="100" height="26" align="absmiddle" /></a></td>
        <td>&nbsp;</td>
      </tr>
    </table></form>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" id="menu">
          <tr>
            <td width="33%" align="center"><table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td align="center" class="menu_btn">全部</td>
                <td align="center"><a href="friend.jsp">关注</a></td>
                <td align="center"><a href="friend.jsp">粉丝</a></td>
              </tr>
            </table></td>
            <td width="18%" align="right">&nbsp;</td>
            <td width="49%" align="center"><form id="form1" name="form1" method="post" action="">
              <input name="textfield" type="text" class="input" id="textfield" />
              <input name="button" type="submit" class="btnsearch" id="button" value="搜索" />
            </form></td>
          </tr>
      </table>
        <!-- weibo 开始-->
        
        <c:if test="${!empty sessionScope.weiboList}">
         <c:forEach items="${sessionScope.weiboList.data}" var="weibo">
             <table id="weibo" width="90%" border="0" align="center" cellpadding="3" cellspacing="0">
          <tr>
            <td rowspan="3" align="center" valign="top"><img src="${weibo.use.upic}" width="50" height="50" /></td>
            <td width="88%" class="content"><a href="user.jsp">${weibo.use.uname}</a><img src="icon/v.gif" width="11" height="10" align="middle" />： ${weibo.wcontent}</td>
          </tr>
          <tr>
            <td>
            <c:if test="${weibo.wimage!=''}">
               <img src="${weibo.wimage}" width="89" height="120" />   
            </c:if>
           </td>
          </tr>
          <tr>
            <td height="25"><table width="100%" border="0" cellpadding="0" cellspacing="0" id="weibo_status">
              <tr>
                <td>${weibo.wdate}</td>
                <td align="right"><a href="forWardServlet?wid=${weibo.wid}&wcontent=${weibo.wcontent}&wimage=${weibo.wimage}&np=${weiboList.currentPage}">转发</a> (${weibo.wtimes})&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;收藏&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;评论(${weibo.wcountcomment})</td>
              </tr>
            </table></td>
          </tr>
    </table>
         </c:forEach>
     </c:if>
    
    <br>    
    <table align="center" id="page">
      <tr>
        <td align="left">第${weiboList.currentPage}页 &nbsp;&nbsp; 共${weiboList.totalPages}页</td>
        <td align="right"><a href="PageChangeServlet?np=1">首页</a>&nbsp;&nbsp;
          <c:if test="${weiboList.currentPage>1}"><a href="PageChangeServlet?np=${weiboList.currentPage-1}">上一页</a> </c:if>
          <c:if test="${weiboList.currentPage<weiboList.totalPages}"><a href="PageChangeServlet?np=${weiboList.currentPage+1}">下一页</a></c:if>
          <a href="PageChangeServlet?np=${weiboList.totalPages}">尾页</a>&nbsp;&nbsp;
        </td>
      </tr>
    </table>
    <!-- weibo 结束-->
    </td>
	    <td width="280" align="center" valign="top" class="pageright">
        <!-- userinfo 开始-->
        <table align="center" id="userinfo">
          <tr>
            <td width="25%" rowspan="2"><img src="face/9.jpg" width="50" height="50" /></td>
            <td width="75%"><a href="profile.jsp">${sessionScope.userinfo.uname }</a></td>
          </tr>
          <tr>
            <td valign="top">天津</td>
          </tr>
          <tr>
            <td colspan="2" align="left"><table width="80%" border="0" align="left" cellpadding="3" cellspacing="0">
              <tr>
                <td align="center" class="split2"><a href="3">关注</a><br>${countRelation}</td>
                <td align="center" class="split2"><a href="3">粉丝</a><br>
                ${countVeri}</td>
                <td align="center"><a href="#">微博</a><br>
                ${countblog}</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td colspan="2" class="split1"><a href="userinfo.jsp">个人账户设置</a></td>
          </tr>
        </table>
        <table border="0" align="center" cellpadding="0" cellspacing="0" id="userlist">
          <tr>
            <td class="title" height="29">可能感兴趣的人</td>
            <td align="right" class="title"><a href="ChangeUserServlet">[换一换]</a></td>
          </tr>
          <c:if test="${!empty sessionScope.userList}">
            <c:forEach items="${sessionScope.userList}" var="usl">
              <tr>
                <td colspan="2"><table border="0" cellpadding="0" cellspacing="0" class="userdetail">
                  <tr>
                    <td width="26%"><a href="user.jsp"><img src="${usl.upic}" width="50" height="50" border="0" /></a></td>
                    <td width="74%"><a href="user.jsp">${usl.uname}</a>
                      <a href="InsertAttentionServlet?gid=${usl.uid}" style="border: 0px;" >
                        <span class="btnguanzhu" style="width:50px;height: 3px;" id="button3">+关注</span></a>
                      <br /><font  color="#333333" size="2px">
                          ${usl.uaddress}</font><br /><font  color="#333333" size="2px">Time：${usl.udate}</font></td>
                  </tr>
                </table></td>
              </tr>


            </c:forEach>
          </c:if>

        </table>
        <!-- userinfo 结束--></td>
  </tr>
	</table>
<!-- container 结束-->

<!--footer开始-->
<table id="footer" border="0" align="center" cellpadding="3" cellspacing="0">
  <tr>
    <td width="534" align="left"><a href="#">帮助</a>&nbsp;&nbsp; <a href="#">意见反馈</a>&nbsp;&nbsp; <a href="#">微博认证及合作</a>&nbsp;&nbsp; <a href="#">开放平台</a>&nbsp;&nbsp; <a href="#">微博招聘</a>&nbsp;&nbsp; <a href="#">微博导航</a></td>        
    <td width="447" align="right">2011-2015<a href="#"> 微博系统 版权所有</a></td>
  </tr>
  <tr>
    <td align="left">客服电话：400 123 12345（按当地市话标准收费）</td>
    <td align="right">语言：
      <select name="select" id="select">
        <option>中文(简体)</option>
        <option>英文</option>
    </select></td>
  </tr>        
</table>
<!--footer结束-->
</body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" href="css/global.css" />
<link rel="stylesheet" type="text/css" href="css/user.css" />
<title>微博 - 阿迪ada的微博</title>
<script type="text/javascript" src="script/user.js"></script>
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
          <td>欢迎您，别来碰我！</td>
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
    <td width="670" height="600" valign="top"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" id="curruser">
      <tr>
        <td width="24%"><img src="face/15.jpg" width="120" height="120" class="userphoto" /></td>
        <td width="76%" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" id="curruserdetail">
          <tr>
            <td class="title">阿迪ada</td>
          </tr>
          <tr>
            <td><p><a href="#">http://weibo.com/ada<br />
              </a>北京<br />
            签名：等待我是你的痛！<br />
            <a href="#">+添加关注</a></p></td>
          </tr>
        </table></td>
      </tr>
    </table>
      <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" id="menu">
          <tr>
            <td width="33%" align="center"><table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td align="center" class="menu_btn">全部</td>
                <td align="center">关注</td>
                <td align="center">明星</td>
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
        <table id="weibo" width="90%" border="0" align="center" cellpadding="3" cellspacing="0">
          <tr>
            <td width="88%" class="content">24岁的浙江人鄂皆豪在《非诚勿扰》节目中找到结婚对象，谈及婚嫁时女方孙雅莉突然悔婚。皆豪要求孙雅莉返还30万元宝马车及夏普电视，却遭到拒绝。于是  鄂皆豪将孙雅莉告上法庭。目前，此案正在进一步审理中。</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="25"><table width="100%" border="0" cellpadding="0" cellspacing="0" id="weibo_status">
              <tr>
                <td>5月28日 18:56</td>
                <td align="right">&nbsp;&nbsp;转发(10)&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;收藏&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;评论(5)</td>
              </tr>
            </table></td>
          </tr>
    </table>
    <table id="weibo" width="90%" border="0" align="center" cellpadding="3" cellspacing="0">
          <tr>
            <td width="88%" class="content">【十二星座富翁排行榜】第一名：处女座；第二名：天蝎座；第三名：白羊座；第四名：水瓶座；第五名：狮子座；第六名：天秤座；第七名：摩羯座；第八名：双  子座；第九名：金牛座；第十名：巨蟹座；第十一：双鱼座；第十二：射手座。看见此图你要是不转发，说明你不爱钱。你要是转发了，钱就会去找你！</td>
          </tr>
          <tr>
            <td><img src="upload/pic/6825e3acjw1dhng01vyklj.jpg" width="89" height="120" /></td>
          </tr>
          <tr>
            <td height="25"><table width="100%" border="0" cellpadding="0" cellspacing="0" id="weibo_status">
              <tr>
                <td>5月28日 18:56</td>
                <td align="right">&nbsp;&nbsp;转发(10)&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;收藏&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;评论(5)</td>
              </tr>
            </table></td>
          </tr>
    </table>
    <table id="weibo" width="90%" border="0" align="center" cellpadding="3" cellspacing="0">
          <tr>
            <td width="88%" class="content">今天直接被教练的盐汽水喷死。。。</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="25"><table width="100%" border="0" cellpadding="0" cellspacing="0" id="weibo_status">
              <tr>
                <td>5月28日 18:56</td>
                <td align="right">&nbsp;&nbsp;转发(10)&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;收藏&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;评论(5)</td>
              </tr>
            </table></td>
          </tr>
    </table>
      <table align="center" id="page">
        <tr>
        <td align="right">第1页 
          &nbsp; &nbsp; <input name="button2" type="button" class="nextpage" id="button2" value="下一页" /></td>
      </tr>
    </table>
    <!-- weibo 结束-->
    </td>
	    <td width="280" align="center" valign="top" class="pageright">
        <!-- userinfo 开始-->
        <table align="center" id="userinfo">
          <tr>
            <td width="25%" rowspan="2"><img src="face/9.jpg" width="50" height="50" /></td>
            <td width="75%"><a href="profile.jsp">别来碰我</a></td>
          </tr>
          <tr>
            <td valign="top">天津</td>
          </tr>
          <tr>
            <td colspan="2" align="left"><table width="80%" border="0" align="left" cellpadding="3" cellspacing="0">
              <tr>
                <td align="center" class="split2"><a href="3">关注</a><br>3</td>
                <td align="center" class="split2"><a href="3">粉丝</a><br>
                5</td>
                <td align="center"><a href="#">微博</a><br>
                10</td>
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
            <td align="right" class="title"><a href="#">[换一换]</a></td>
          </tr>
          <tr>
            <td colspan="2"><table border="0" cellpadding="0" cellspacing="0" class="userdetail">
              <tr>
                <td width="26%"><a href="user.jsp"><img src="face/3.jpg" width="50" height="50" border="0" /></a></td>
                <td width="74%"><a href="user.jsp">张无忌</a> <input name="button3" type="button" class="btnguanzhu" id="button3" value="+关注" />
                <br />
                北京市<br />生日：1990年4月17日</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td colspan="2"><table border="0" cellpadding="0" cellspacing="0" class="userdetail">
              <tr>
                <td width="26%"><a href="user.jsp"><img src="face/zxw.jpg" width="50" height="50" border="0" /></a></td>
                <td width="74%"><a href="user.jsp">郑秀文</a>
                  <input name="button4" type="button" class="btnguanzhu" id="button4" value="+关注" />
                  <br />
                  香港<br />
                  生日：1989年12月7日</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td colspan="2"><table border="0" cellpadding="0" cellspacing="0" class="userdetail">
              <tr>
                <td width="26%"><a href="user.jsp"><img src="face/10.jpg" width="50" height="50" border="0" /></a></td>
                <td width="74%"><a href="user.jsp">苏吉利</a>
                  <input name="button5" type="button" class="btnguanzhu" id="button5" value="+关注" />
                  <br />
                  天津市<br />生日：1985年6月21日</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td colspan="2"><table border="0" cellpadding="0" cellspacing="0" class="userdetail">
              <tr>
                <td width="26%"><a href="user.jsp"><img src="face/syz.jpg" width="50" height="50" border="0" /></a></td>
                <td width="74%"><a href="user.jsp">史玉柱</a>
                  <input name="button6" type="button" class="btnguanzhu" id="button6" value="+关注" />
                  <br />
                  北京市<br />生日：1923年3月11日</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td colspan="2"><table border="0" cellpadding="0" cellspacing="0" class="userdetail">
              <tr>
                <td width="26%"><a href="user.jsp"><img src="face/11.jpg" width="50" height="50" border="0" /></a></td>
                <td width="74%"><a href="user.jsp">张楠</a>
                  <input name="button7" type="button" class="btnguanzhu" id="button7" value="+关注" />
                  <br />
                  天津市<br />生日：1989年5月21日</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td colspan="2"><table border="0" cellpadding="0" cellspacing="0" class="userdetail">
              <tr>
                <td width="26%"><a href="user.jsp"><img src="face/13.jpg" width="50" height="50" border="0" /></a></td>
                <td width="74%"><a href="user.jsp">Rain</a>
                  <input name="button8" type="button" class="btnguanzhu" id="button8" value="+关注" />
                  <br />
                  韩国<br />生日：1991年10月16日</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td colspan="2"><table border="0" cellpadding="0" cellspacing="0" class="userdetail">
              <tr>
                <td width="26%"><a href="user.jsp"><img src="face/21.jpg" width="50" height="50" border="0" /></a></td>
                <td width="74%"><a href="user.jsp">布莱克</a>
                  <input name="button9" type="button" class="btnguanzhu" id="button9" value="+关注" />
                  <br />
                  美国<br />生日：1988年1月12日</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td colspan="2"><table border="0" cellpadding="0" cellspacing="0" class="userdetail">
              <tr>
                <td width="26%"><a href="user.jsp"><img src="face/6.jpg" width="50" height="50" border="0" /></a></td>
                <td width="74%"><a href="user.jsp">王晓霞</a>
                  <input name="button10" type="button" class="btnguanzhu" id="button10" value="+关注" />
                <br />
                杭州市<br />生日：1981年12月11日</td>
              </tr>
            </table></td>
          </tr>
        </table>
        <!-- userinfo 结束--></td>
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

<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" href="css/global.css" />
<link rel="stylesheet" type="text/css" href="css/friend.css" />
<title>΢�� - fans</title>
<script type="text/javascript" src="script/friend.js"></script>
  </head>
  <!-- header��ʼ-->
<table id="header" align="center" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="20%" align="center"><img src="images/logo.png" width="178" height="62" /></td>
    <td width="55%" align="right">
      <table border="0" align="right" cellpadding="0" cellspacing="0" id="daohang">
        <tr>
          <td width="20%"><a href="home.html">�ҵ���ҳ</a></td>
          <td width="20%"><a href="profile.html">�ҵĲ���</a></td>
          <td width="20%"><a href="friend.html">�ҵĺ���</a></td>
          <td width="20%"><a href="user.html">��㿴��</a></td>
        </tr>
      </table>
    </td>
    <td width="25%" align="right">
      <table id="welcome" border="0" cellspacing="0" cellpadding="0">
        <tr>          
          <td width="30" height="30" rowspan="2" class="userface_bg"><img src="face/9.jpg" border="0" width="20" height="20" /></td>
          <td>��ӭ����${sessionScope.userinfo.uname}��</td>
          
        </tr>
        <tr>
          <td><a href="index.html">[ �˳� ]</a></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<!-- header����-->
<!-- container ��ʼ-->
<table border="0" align="center" cellpadding="0" cellspacing="0" id="container">
  <tr>
    <td width="670" height="600" valign="top">
    <table border="0" align="center" cellpadding="5" cellspacing="0" id="guanzhu">
      <tr>
        <td>���� ${sessionScope.countVeri} �����ҵķ�˿</td><td align="right">&nbsp;</td>
      </tr>
    </table>
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" id="menu">
          <tr>
            <td width="33%" align="center"><table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td align="center"><a href="friend.jsp">΢��</a></td>
                <td align="center"><a href="friend.jsp">��ע</a></td>
                <td align="center" class="menu_btn">��˿</td>
              </tr>
            </table></td>
            <td width="18%" align="right">&nbsp;</td>
            <td width="49%" align="center">&nbsp;</td>
          </tr>
      </table>
        <!-- weibo ��ʼ-->
        <table id="weibo" width="90%" border="0" align="center" cellpadding="3" cellspacing="0">
          <tr>
            <td rowspan="3" align="center" valign="top"><img src="face/6.jpg" width="50" height="50" /></td>
            <td width="88%" class="content"><a href="user.html">����ϼXiaoxia</a><img src="icon/v.gif" width="11" height="10" align="middle" />�� Ů�˾͵�����������---��Ȼ������ңԶ�ġ��������ˡ��������ǰ�����һ�Ľ�Ŀ����</td>
          </tr>
          <tr>
            <td><img src="upload/pic/64af7143jw1dhnehn278bj.jpg" width="89" height="120" /></td>
          </tr>
          <tr>
            <td height="25"><table width="100%" border="0" cellpadding="0" cellspacing="0" id="weibo_status">
              <tr>
                <td>5��28�� 18:56</td>
                <td align="right">ת��(10)&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;�ղ�&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;����(5)</td>
              </tr>
            </table></td>
          </tr>
    </table>
    <table id="weibo" width="90%" border="0" align="center" cellpadding="3" cellspacing="0">
          <tr>
            <td rowspan="3" align="center" valign="top"><img src="face/syz.jpg" width="50" height="50" /></td>
            <td width="88%" class="content"><a href="user.html">ʷ����</a><img src="icon/v.gif" width="11" height="10" align="middle" />���ҵĹԹԣ�����˰����з���Ա�Ա��Ե����������Գ��ĵ�Ӱ����Ȼ����ô�󶯾�,ӰƬ�������ۼƲ�����1000��Ρ��ⲿ��Ӱȫ���������Ѳ�6�򣬽��൱��  1���з���Ա�����������롣Ǯ���������ܵΡ�</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="25"><table width="100%" border="0" cellpadding="0" cellspacing="0" id="weibo_status">
              <tr>
                <td>5��28�� 18:56</td>
                <td align="right">ת��(10)&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;�ղ�&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;����(5)</td>
              </tr>
            </table></td>
          </tr>
    </table>
    <table id="weibo" width="90%" border="0" align="center" cellpadding="3" cellspacing="0">
          <tr>
            <td rowspan="3" align="center" valign="top"><img src="face/10.jpg" width="50" height="50" /></td>
            <td width="88%" class="content"><a href="user.html">�ռ���Jili</a><img src="icon/v.gif" width="11" height="10" align="middle" />�� ��λ����֪����ʿ: �̽���������&bull;����˹��Nizan Guanaes�������ʦ��˹��&bull;÷�����أ�Oskar   Metsavaht����������ά��&bull;����˹��Vik Muniz��   ��5��27�������ڽ̿�����֯�����ܲ�������¥���е�һ����ʽ�ϣ��ɽ̿�����֯�ܸ���������&bull;����������Ϊ�̿�����֯���ƴ�ʹ��</td>
          </tr>
          <tr>
            <td><img src="upload/pic/2011Kedf454667574.jpg" width="120" height="90" /></td>
          </tr>
          <tr>
            <td height="25"><table width="100%" border="0" cellpadding="0" cellspacing="0" id="weibo_status">
              <tr>
                <td>5��28�� 18:56</td>
                <td align="right">ת��(10)&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;�ղ�&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;����(5)</td>
              </tr>
            </table></td>
          </tr>
    </table>
    <table id="weibo" width="90%" border="0" align="center" cellpadding="3" cellspacing="0">
          <tr>
            <td rowspan="3" align="center" valign="top"><img src="face/zxw.jpg" width="50" height="50" /></td>
            <td width="88%" class="content"><a href="user.html">֣����Sammi</a><img src="icon/v.gif" width="11" height="10" align="middle" />��������MCM   ���_Ļ��ӣ����Ϻܶ�ܾò�Ҋ�����ѣ����X�_�ġ��F�������ܶ࣬��������ž�Ȼ����ٝ��ǰ���ڶ�ʮ����·��У������͎����˃�С�r�������@���b����һ��  ֵ�á�</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="25"><table width="100%" border="0" cellpadding="0" cellspacing="0" id="weibo_status">
              <tr>
                <td>5��28�� 18:56</td>
                <td align="right">ת��(10)&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;�ղ�&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;����(5)</td>
              </tr>
            </table></td>
          </tr>
    </table>
    <table id="weibo" width="90%" border="0" align="center" cellpadding="3" cellspacing="0">
          <tr>
            <td rowspan="3" align="center" valign="top"><img src="face/6.jpg" width="50" height="50" /></td>
            <td width="88%" class="content"><a href="user.html">����ϼXiaoxia</a><img src="icon/v.gif" width="11" height="10" align="middle" />����܇�ϡ�����ɰ����򡣬F������һ�ط��Ĕz���ゃ������°ࡣ�Ҳ��wĽ����顣����ĺ����Щ����@ӰƬ��������o�������µײ��܏ص���ɡ��ã��Q����Ц  ���^�m��</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="25"><table width="100%" border="0" cellpadding="0" cellspacing="0" id="weibo_status">
              <tr>
                <td>5��28�� 18:56</td>
                <td align="right">ת��(10)&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;�ղ�&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;����(5)</td>
              </tr>
            </table></td>
          </tr>
    </table>
    <table id="weibo" width="90%" border="0" align="center" cellpadding="3" cellspacing="0">
          <tr>
            <td rowspan="3" align="center" valign="top"><img src="face/zxw.jpg" width="50" height="50" /></td>
            <td width="88%" class="content"><a href="user.html">֣����Summi</a><img src="icon/v.gif" width="11" height="10" align="middle" />�� æ��һ�졣���ٻؼҡ�����Ҫԇ�V�����͡�p.s. ����K��ҵ�һ���ɹ����D����ͣ��ǣ�������j���r���ء��x�xBilly .    �x�xRoy.(ʮ����ĬĬ�ĸ������x�xHair Culture.</td>
        </tr>
          <tr>
            <td><img src="upload/pic/64af7143jw1dhhiw88l33j.jpg" width="85" height="120" /></td>
          </tr>
          <tr>
            <td height="25"><table width="100%" border="0" cellpadding="0" cellspacing="0" id="weibo_status">
              <tr>
                <td>5��28�� 18:56</td>
                <td align="right">ת��(10)&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;�ղ�&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;����(5)</td>
              </tr>
            </table></td>
          </tr>
    </table>
    <table id="weibo" width="90%" border="0" align="center" cellpadding="3" cellspacing="0">
          <tr>
            <td rowspan="3" align="center" valign="top"><img src="face/10.jpg" width="50" height="50" /></td>
            <td width="88%" class="content"><a href="user.html">�ռ���Jili</a><img src="icon/v.gif" width="11" height="10" align="middle" />���ҷ�����һ���н�ͶƱ������ȥһ��δ����ͯЬ�ǣ�����Ϊ�����������ܴ�������˵�MP3��MP4?������ַ��<a href="http://t.cn/heBVxy" target="_blank" >http://t.cn/heBVxy </a></td>
          </tr>
          <tr>
            <td><img src="upload/pic/759e787fjw1dhg2tywb00j.jpg" width="89" height="120" /></td>
          </tr>
          <tr>
            <td height="25"><table width="100%" border="0" cellpadding="0" cellspacing="0" id="weibo_status">
              <tr>
                <td>5��28�� 18:56</td>
                <td align="right">ת��(10)&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;�ղ�&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;����(5)</td>
              </tr>
            </table></td>
          </tr>
    </table>
    <table id="weibo" width="90%" border="0" align="center" cellpadding="3" cellspacing="0">
          <tr>
            <td rowspan="3" align="center" valign="top"><img src="face/syz.jpg" width="50" height="50" /></td>
            <td width="88%" class="content"><a href="user.html">ʷ����</a><img src="icon/v.gif" width="11" height="10" align="middle" />������֣��⼸����Ƶ������&ldquo;ɶʱ��˽����&rdquo;������Ҫ˽����Ҫ�����Ҿ͹��������컯�մ��·��������ߡ�</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="25"><table width="100%" border="0" cellpadding="0" cellspacing="0" id="weibo_status">
              <tr>
                <td>5��28�� 18:56</td>
                <td align="right">ת��(10)&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;�ղ�&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;����(5)</td>
              </tr>
            </table></td>
          </tr>
    </table>
    <table align="center" id="page">
      <tr>
        <td align="right">��1ҳ 
          &nbsp; &nbsp; <input name="button2" type="button" class="nextpage" id="button2" value="��һҳ" /></td>
      </tr>
    </table>
    <!-- weibo ����-->
    </td>
	    <td width="280" align="center" valign="top" class="pageright">
        <!-- userinfo ��ʼ-->
        <table align="center" id="userinfo">
          <tr>
            <td width="25%" rowspan="2"><img src="face/9.jpg" width="50" height="50" /></td>
            <td width="75%"><a href="profile.html">${sessionScope.userinfo.uname }</a></td>
          </tr>
          <tr>
            <td valign="top">���</td>
          </tr>
          <tr>
            <td colspan="2" align="left"><table width="80%" border="0" align="left" cellpadding="3" cellspacing="0">
              <tr>
                <td align="center" class="split2"><a href="3">��ע</a><br>3</td>
                <td align="center" class="split2"><a href="3">��˿</a><br>
                5</td>
                <td align="center"><a href="#">΢��</a><br>
                10</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td colspan="2" class="split1"><a href="userinfo.html">�����˻�����</a></td>
          </tr>
        </table>
        <table border="0" align="center" cellpadding="0" cellspacing="0" id="userlist">
          <tr>
            <td class="title" height="29">���ܸ���Ȥ����</td>
            <td align="right" class="title"><a href="#">[��һ��]</a></td>
          </tr>
          <tr>
            <td colspan="2"><table border="0" cellpadding="0" cellspacing="0" class="userdetail">
              <tr>
                <td width="26%"><a href="user.html"><img src="face/3.jpg" width="50" height="50" border="0" /></a></td>
                <td width="74%"><a href="user.html">���޼�</a> <input name="button3" type="button" class="btnguanzhu" id="button3" value="+��ע" />
                <br />
                ������<br />���գ�1990��4��17��</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td colspan="2"><table border="0" cellpadding="0" cellspacing="0" class="userdetail">
              <tr>
                <td width="26%"><a href="user.html"><img src="face/zxw.jpg" width="50" height="50" border="0" /></a></td>
                <td width="74%"><a href="user.html">֣����</a>
                  <input name="button4" type="button" class="btnguanzhu" id="button4" value="+��ע" />
                  <br />
                  ���<br />
                  ���գ�1989��12��7��</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td colspan="2"><table border="0" cellpadding="0" cellspacing="0" class="userdetail">
              <tr>
                <td width="26%"><a href="user.html"><img src="face/10.jpg" width="50" height="50" border="0" /></a></td>
                <td width="74%"><a href="user.html">�ռ���</a>
                  <input name="button5" type="button" class="btnguanzhu" id="button5" value="+��ע" />
                  <br />
                  �����<br />���գ�1985��6��21��</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td colspan="2"><table border="0" cellpadding="0" cellspacing="0" class="userdetail">
              <tr>
                <td width="26%"><a href="user.html"><img src="face/syz.jpg" width="50" height="50" border="0" /></a></td>
                <td width="74%"><a href="user.html">ʷ����</a>
                  <input name="button6" type="button" class="btnguanzhu" id="button6" value="+��ע" />
                  <br />
                  ������<br />���գ�1923��3��11��</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td colspan="2"><table border="0" cellpadding="0" cellspacing="0" class="userdetail">
              <tr>
                <td width="26%"><a href="user.html"><img src="face/11.jpg" width="50" height="50" border="0" /></a></td>
                <td width="74%"><a href="user.html">���</a>
                  <input name="button7" type="button" class="btnguanzhu" id="button7" value="+��ע" />
                  <br />
                  �����<br />���գ�1989��5��21��</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td colspan="2"><table border="0" cellpadding="0" cellspacing="0" class="userdetail">
              <tr>
                <td width="26%"><a href="user.html"><img src="face/13.jpg" width="50" height="50" border="0" /></a></td>
                <td width="74%"><a href="user.html">Rain</a>
                  <input name="button8" type="button" class="btnguanzhu" id="button8" value="+��ע" />
                  <br />
                  ����<br />���գ�1991��10��16��</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td colspan="2"><table border="0" cellpadding="0" cellspacing="0" class="userdetail">
              <tr>
                <td width="26%"><a href="user.html"><img src="face/21.jpg" width="50" height="50" border="0" /></a></td>
                <td width="74%"><a href="user.html">������</a>
                  <input name="button9" type="button" class="btnguanzhu" id="button9" value="+��ע" />
                  <br />
                  ����<br />���գ�1988��1��12��</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td colspan="2"><table border="0" cellpadding="0" cellspacing="0" class="userdetail">
              <tr>
                <td width="26%"><a href="user.html"><img src="face/6.jpg" width="50" height="50" border="0" /></a></td>
                <td width="74%"><a href="user.html">����ϼ</a>
                  <input name="button10" type="button" class="btnguanzhu" id="button10" value="+��ע" />
                <br />
                ������<br />���գ�1981��12��11��</td>
              </tr>
            </table></td>
          </tr>
        </table>
        <!-- userinfo ����--></td>
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

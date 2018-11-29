package com.Microblog.dao.impl;

import com.Microblog.dao.IWeiboDao;
import com.Microblog.model.PageBean;
import com.Microblog.model.Users;
import com.Microblog.model.Weibo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

/**
 * Created by Administrator on 2018/11/2 0002.
 */
public class WeiboDaoImpl extends BaseDao implements IWeiboDao {
    /*
    *
    *  Step1 :显示登陆者和其关注人的信息
    * */
    @Override
    public List<Weibo> findByLogin(int uid) {
        String sql ="SELECT * FROM weibo WHERE w_uid IN (SELECT g_id FROM relations where r_id=? ) OR w_uid =? ORDER BY wdate DESC";
        //获取链接
        this.getCon();
        //执行sql
        ResultSet rs = this.execQuery(sql, new Object[]{uid,uid});
        //遍历微博数据
        List<Weibo> list = new LinkedList<>();

        try {
            while(rs.next()){
               Weibo weibo = new Weibo();
                weibo.setWid(rs.getInt(1));
               weibo.setWcontent(rs.getString("wcontent"));
                weibo.setWdate(rs.getString("wdate"));
                weibo.setWimage(rs.getString("wimage"));
                weibo.setWtimes(rs.getInt("wtimes"));
                weibo.setW_uid(rs.getInt("w_uid"));
                Users  use = new Users();
                ResultSet re=  this.execQuery("select * from users where uid = ?",new Object[]{1});
                while(re.next()){
                    use.setUid(re.getInt("uid"));
                    use.setUname(re.getString("uname"));
                    use.setUpwd(re.getString("upwd"));
                    use.setUnickname(re.getString("unickname"));
                    use.setUsex(re.getString("usex"));
                    use.setUaddress(re.getString("uaddress"));
                    use.setUdate(re.getString("udate"));
                    use.setUpic(re.getString("upic"));
                    use.setUqq(re.getString("uqq"));
                    use.setUedu(re.getString("uedu"));
                    use.setUques(re.getString("uques"));
                    use.setUrealname(re.getString("urealname"));
                    use.setUremarks(re.getString("uremarks"));
                }
                weibo.setUse(use);
                weibo.setWremarks(rs.getString("wremarks"));
                weibo.setWcountcomment(rs.getInt("wcountcomment"));
                list.add(weibo);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public int countByMicroblog(int uid) {
        String sql = "select count(*) from weibo where w_uid =?";
        Object[] objects = new Object[]{uid};
        ResultSet rs = this.execQuery(sql, objects);
        int countblog=0;
        try {
            while (rs.next()){
             countblog=rs.getInt(1);
                return countblog;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            this.close();
            return countblog;
        }
    }

    @Override
    public int getCounts(int uid) throws SQLException {
        String sql ="SELECT count(*) FROM weibo WHERE w_uid IN (SELECT g_id FROM relations where r_id=? ) OR w_uid =? ORDER BY wdate DESC";
        Object[] objects = new Object[]{uid,uid};
        ResultSet rs = this.execQuery(sql, objects);
        int count=0;
        while(rs.next()){
             count = rs.getInt(1);
        }
        this.close();
        return count;
    }

    @Override
    public PageBean findByPage(int uid, int currentpage, int pageSize) {
            PageBean pageBean = new PageBean();
        int count=0;
        List<Weibo> list=null;
        try {
            count= this.getCounts(uid);
            String sql  =  "SELECT * FROM weibo WHERE w_uid IN (SELECT g_id FROM relations where r_id=? ) OR w_uid =? ORDER BY wdate DESC limit ?,?";
            Object[] objects = new Object[]{uid,uid,(currentpage-1)*pageSize,pageSize};
            ResultSet rs = this.execQuery(sql, objects);
            list = new LinkedList<>();
            while(rs.next()){
                Weibo weibo = new Weibo();
                weibo.setWid(rs.getInt(1));
                weibo.setWcontent(rs.getString("wcontent"));
                weibo.setWdate(rs.getString("wdate"));
                weibo.setWimage(rs.getString("wimage"));
                weibo.setWtimes(rs.getInt("wtimes"));
                weibo.setW_uid(rs.getInt("w_uid"));
                Users  use = new Users();
                ResultSet re=  this.execQuery("select * from users where uid = ?",new Object[]{1});
                while(re.next()){
                    use.setUid(re.getInt("uid"));
                    use.setUname(re.getString("uname"));
                    use.setUpwd(re.getString("upwd"));
                    use.setUnickname(re.getString("unickname"));
                    use.setUsex(re.getString("usex"));
                    use.setUaddress(re.getString("uaddress"));
                    use.setUdate(re.getString("udate"));
                    use.setUpic(re.getString("upic"));
                    use.setUqq(re.getString("uqq"));
                    use.setUedu(re.getString("uedu"));
                    use.setUques(re.getString("uques"));
                    use.setUrealname(re.getString("urealname"));
                    use.setUremarks(re.getString("uremarks"));
                }
                weibo.setUse(use);
                weibo.setWremarks(rs.getString("wremarks"));
                weibo.setWcountcomment(rs.getInt("wcountcomment"));
                list.add(weibo);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        pageBean.setPageSize(pageSize);
        pageBean.setCurrentPage(currentpage);
        pageBean.setTotalPages(count%pageSize==0?count/pageSize:count/pageSize+1);
        pageBean.setTotalRows(count);
        pageBean.setData(list);

        return pageBean;
    }

    @Override
    public int forWordMicroblog(int uid, String wcontent, int wid, String wimage) {
        /*
        *1、确定是否发送过转发
        *  String sql = "select * from weibo where wcontent=? amd wimage=?";
        * 2、确定完成后更新转发次数
        * String sql = update weibo set wtimes= ? where wid=?;
        * 3确定转发次数
        *
        * */
        String  sql=  "select * from weibo where wcontent=? and wimage=?";
        ResultSet rs = this.execQuery(sql, new Object[]{wcontent, wimage});
        try {
            if(rs.next()){
                //说明已经转发过
                return 0;
            }else {
                //如果没有转发过首先确定要修改转发次数
                String  usql = "update weibo set wtimes=wtimes+1 where wid=?";
                int i = this.exexOther(usql, new Object[]{wid});
                int flg=0;
                if(i>0){
                    String sql1="INSERT INTO weibo(wcontent,wdate,wimage,wtimes,w_uid) VALUES(?,NOW(),?,0,?)";
                    flg = this.exexOther(sql1, new Object[]{wcontent, wimage, uid});

                    return flg;
                }
              return flg;

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            this.close();
        }


        return 0;
    }


    public static void main(String[] args) throws SQLException {
      new WeiboDaoImpl().forWordMicroblog(1,"fdf",1,"fdsf");
    }
}

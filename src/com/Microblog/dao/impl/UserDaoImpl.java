package com.Microblog.dao.impl;

import com.Microblog.dao.IUserDao;
import com.Microblog.model.Users;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

/**
 * Created by Administrator on 2018/11/1 0001.
 */
public class UserDaoImpl  extends BaseDao implements IUserDao {

    @Override
    public Users userLogin(String usn, String pwd) throws SQLException {
        //step1:编写sql
        String sql="select * from users where uname=? and upwd =?";
        this.getCon();
        ResultSet rs = this.execQuery(sql, new Object[]{usn, pwd});
        //step2:创建实体类对象
        Users use = new Users();
        if(rs.next()){
            use.setUid(rs.getInt("uid"));
            use.setUname(rs.getString("uname"));
            use.setUpwd(rs.getString("upwd"));
            use.setUnickname(rs.getString("unickname"));
            use.setUsex(rs.getString("usex"));
            use.setUaddress(rs.getString("uaddress"));
            use.setUdate(rs.getString("udate"));
            use.setUpic(rs.getString("upic"));
            use.setUqq(rs.getString("uqq"));
            use.setUedu(rs.getString("uedu"));
            use.setUques(rs.getString("uques"));
            use.setUrealname(rs.getString("urealname"));
            use.setUremarks(rs.getString("uremarks"));
            return use;

        }

        return null;
    }

    /*
 * 获取登录者关注人的信息
 *
 * */
    @Override
    public List<Users> FindByInsert(int uid) {
        //获取未关注人信息
        String sql = "SELECT * FROM users WHERE uid!=? AND uid not IN (SELECT g_id FROM relations WHERE r_id=?)";
        Object[] objects = new Object[]{uid,uid};
        ResultSet rs = this.execQuery(sql, objects);
        List<Users> list = new LinkedList<>();

        try {
            while (rs.next()){
                Users use = new Users();
                use.setUid(rs.getInt("uid"));
                use.setUname(rs.getString("uname"));
                use.setUpwd(rs.getString("upwd"));
                use.setUnickname(rs.getString("unickname"));
                use.setUsex(rs.getString("usex"));
                use.setUaddress(rs.getString("uaddress"));
                use.setUdate(rs.getString("udate"));
                use.setUpic(rs.getString("upic"));
                use.setUqq(rs.getString("uqq"));
                use.setUedu(rs.getString("uedu"));
                use.setUques(rs.getString("uques"));
                use.setUrealname(rs.getString("urealname"));
                use.setUremarks(rs.getString("uremarks"));
                list.add(use);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<Users> findByListener() {
        String sql = "select * from users";
        Object[] objects  = new Object[]{};
        ResultSet rs = this.execQuery(sql, objects);
        List<Users> list = new LinkedList<>();

        try {
            while (rs.next()){
                Users use = new Users();
                use.setUid(rs.getInt("uid"));
                use.setUname(rs.getString("uname"));
                use.setUpwd(rs.getString("upwd"));
                use.setUnickname(rs.getString("unickname"));
                use.setUsex(rs.getString("usex"));
                use.setUaddress(rs.getString("uaddress"));
                use.setUdate(rs.getString("udate"));
                use.setUpic(rs.getString("upic"));
                use.setUqq(rs.getString("uqq"));
                use.setUedu(rs.getString("uedu"));
                use.setUques(rs.getString("uques"));
                use.setUrealname(rs.getString("urealname"));
                use.setUremarks(rs.getString("uremarks"));
                list.add(use);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return list;
    }

    public static void main(String[] args) throws SQLException {
        UserDaoImpl userDao = new UserDaoImpl();
        List<Users> usersList = userDao.FindByInsert(1);
        System.out.println(usersList.size());
        for(int i =0;i<usersList.size();i++){
            System.out.println(usersList.get(i).getUid());
        }
    }
}

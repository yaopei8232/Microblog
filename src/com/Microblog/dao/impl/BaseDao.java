package com.Microblog.dao.impl;

import com.Microblog.util.ConfigUtil;

import java.sql.*;

/**
 * Created by Administrator on 2018/11/1 0001.
 */
public class BaseDao {
    private ResultSet rs = null;
    private PreparedStatement ps = null;
    private Connection conn=null;

    public Connection  getCon(){


        //step1:加载驱动
        try {
            Class.forName(ConfigUtil.DRIVER);
            //step2:创建数据库连接
             conn = DriverManager.getConnection(ConfigUtil.URL,ConfigUtil.USER,ConfigUtil.PASSWORD);

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return conn;
    }

    /*
    * 关闭资源
    * */

    public void close(){
        try {
            if(conn!=null)conn.close();
            if(ps!=null)ps.close();
            if(rs!=null)rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }




   /*
   *
   * 编写增删改常用方法
   * */

   public int exexOther(final String sql,final Object[] params){

       //创建数据库连接
        this.getCon();
       //step2:生成一个数据prepareStatement
       try {
           ps = conn.prepareStatement(sql);
           //step3:往ps中设置数据
           for(int i=0;i<params.length;i++){
               ps.setObject(i+1,params[i]);
           }
           //step4：执行sql
           int i = ps.executeUpdate();
           return i;
       } catch (SQLException e) {
           e.printStackTrace();
       }
       return -1;
   }

   /*
   *
   * 编写查询通用方法
   * */
   public ResultSet  execQuery(final  String sql,final Object[] params){
       this.getCon();
       try {
           ps = conn.prepareStatement(sql);

               for (int i=0;i<params.length;i++){
                   ps.setObject(i+1,params[i]);
               }


           rs=ps.executeQuery();
       } catch (SQLException e) {
           e.printStackTrace();
       }
       return rs;
   }







}

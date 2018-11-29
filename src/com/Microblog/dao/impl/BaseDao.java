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


        //step1:��������
        try {
            Class.forName(ConfigUtil.DRIVER);
            //step2:�������ݿ�����
             conn = DriverManager.getConnection(ConfigUtil.URL,ConfigUtil.USER,ConfigUtil.PASSWORD);

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return conn;
    }

    /*
    * �ر���Դ
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
   * ��д��ɾ�ĳ��÷���
   * */

   public int exexOther(final String sql,final Object[] params){

       //�������ݿ�����
        this.getCon();
       //step2:����һ������prepareStatement
       try {
           ps = conn.prepareStatement(sql);
           //step3:��ps����������
           for(int i=0;i<params.length;i++){
               ps.setObject(i+1,params[i]);
           }
           //step4��ִ��sql
           int i = ps.executeUpdate();
           return i;
       } catch (SQLException e) {
           e.printStackTrace();
       }
       return -1;
   }

   /*
   *
   * ��д��ѯͨ�÷���
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

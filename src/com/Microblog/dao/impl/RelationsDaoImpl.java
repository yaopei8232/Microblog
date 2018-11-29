package com.Microblog.dao.impl;

import com.Microblog.dao.IRelationsDao;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Administrator on 2018/11/24 0024.
 */
public class RelationsDaoImpl extends  BaseDao implements IRelationsDao{
/*
*
* 显示登录者关注人的数量
* */
    @Override
    public int countByAttention(int uid) {
        String sql ="select count(*) from relations where r_id=?";
        ResultSet rs = this.execQuery(sql, new Object[]{uid});
        int countrelation=0;
        try {
            if(rs.next()){
                //step6:遍历结果集
                countrelation=rs.getInt(1);
                return countrelation;
            }else {
                return 0;
            }



        } catch (SQLException e) {

            e.printStackTrace();
            return 0;
        }finally {
            this.close();
        }
    }

    @Override
    public int countByVermicelli(int uid) {
        String sql ="select count(*) from relations where r_id !=? and g_id =? ";
        ResultSet rs = this.execQuery(sql,new Object[]{uid,uid});
        int countver=0;
        try {
            if(rs.next()){
                countver = rs.getInt(1);
                return countver;
            }

            return 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        }finally {
            this.close();
        }
    }

    public static void main(String[] args) {
        int i = new RelationsDaoImpl().countByAttention(2);
        System.out.println(i);
    }
}

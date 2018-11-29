package com.Microblog.dao;

/**
 * Created by Administrator on 2018/11/24 0024.
 */
public interface IRelationsDao {
    //显示登陆者关注人的数量
    public int countByAttention(int uid);
    //显示登陆者粉丝数量
    public int countByVermicelli(int uid);

}

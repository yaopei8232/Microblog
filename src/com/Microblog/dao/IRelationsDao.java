package com.Microblog.dao;

/**
 * Created by Administrator on 2018/11/24 0024.
 */
public interface IRelationsDao {
    //��ʾ��½�߹�ע�˵�����
    public int countByAttention(int uid);
    //��ʾ��½�߷�˿����
    public int countByVermicelli(int uid);

}

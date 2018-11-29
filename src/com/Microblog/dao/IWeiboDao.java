package com.Microblog.dao;

import com.Microblog.model.PageBean;
import com.Microblog.model.Weibo;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by Administrator on 2018/11/2 0002.
 */
public interface IWeiboDao {
    public List<Weibo> findByLogin(int uid);
    public  int  countByMicroblog(int uid);
    public int  getCounts(int uid) throws SQLException;
    public PageBean findByPage(int uid,int currentpage,int pageSize);
    /*
    * ×ª·¢Î¢²©
    * */
    public int forWordMicroblog(int uid,String wcontent,int wid,String wimage);
}

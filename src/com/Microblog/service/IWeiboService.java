package com.Microblog.service;

import com.Microblog.model.PageBean;
import com.Microblog.model.Weibo;

import java.util.List;

/**
 * Created by Administrator on 2018/11/2 0002.
 */
public interface IWeiboService {
    public List<Weibo> selectByLogin(int uid);
    public int countByMicroblog(int uid);
    public PageBean SelectByPage(int uid,int currentPage,int pageSize);
    public  boolean ForWardMicroblog(int uid,String wcontent,int wid,String image);
}

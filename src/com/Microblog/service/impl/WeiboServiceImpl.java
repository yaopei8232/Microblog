package com.Microblog.service.impl;

import com.Microblog.dao.IWeiboDao;
import com.Microblog.dao.impl.WeiboDaoImpl;
import com.Microblog.model.PageBean;
import com.Microblog.model.Weibo;
import com.Microblog.service.IWeiboService;

import java.util.List;

/**
 * Created by Administrator on 2018/11/2 0002.
 */
public class WeiboServiceImpl implements IWeiboService {
    IWeiboDao weiboDao = new WeiboDaoImpl();
    @Override
    public List<Weibo> selectByLogin(int uid) {
        return weiboDao.findByLogin(uid);
    }

    @Override
    public int countByMicroblog(int uid) {
        return weiboDao.countByMicroblog(uid);
    }

    @Override
    public PageBean SelectByPage(int uid, int currentPage, int pageSize) {
        return weiboDao.findByPage(uid,currentPage,pageSize);
    }

    @Override
    public boolean ForWardMicroblog(int uid, String wcontent, int wid, String image) {
        int i = weiboDao.forWordMicroblog(uid, wcontent, wid, image);
        if(i==0){
            return false;
        }else {
            return true;
        }

    }

    public static void main(String[] args) {
        List<Weibo> weibos = new WeiboServiceImpl().selectByLogin(1);
        for(Weibo weibo:weibos){
            System.out.println(weibo.getWimage());
        }
    }
}

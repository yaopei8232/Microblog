package com.Microblog.service.impl;

import com.Microblog.dao.IRelationsDao;
import com.Microblog.dao.impl.RelationsDaoImpl;
import com.Microblog.service.IRelationsService;

/**
 * Created by Administrator on 2018/11/24 0024.
 */
public class RelationsServiceImpl implements IRelationsService {
    IRelationsDao  relationsDao = new RelationsDaoImpl();
    @Override
    public int countByAttention(int uid) {
        return relationsDao.countByAttention(uid);
    }

    /*
    *
    * 查看粉丝数量
    * */
    @Override
    public int CountByVermicelli(int uid) {
        return relationsDao.countByVermicelli(uid);
    }
}

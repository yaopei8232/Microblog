package com.Microblog.util;

import java.io.IOException;
import java.util.Properties;

/**
 * Created by Administrator on 2018/11/1 0001.
 */
public class ConfigUtil {
    //创建properties对象
    private  static  Properties pros=new Properties();
    static {
        try {
            //将文件加载如properties对象中
            pros.load(ConfigUtil.class.getResourceAsStream("db.properties"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    //查询几个常见的变量
    public static final  String DRIVER=pros.getProperty("mysql.driver");
    public static final String  URL = pros.getProperty("mysql.url");
    public static final String USER = pros.getProperty("mysql.user");
    public static final String PASSWORD=pros.getProperty("mysql.password");

    public static void main(String[] args) {
        System.out.println(ConfigUtil.pros);
    }

}

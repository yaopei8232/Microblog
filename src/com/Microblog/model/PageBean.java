package com.Microblog.model;

import javax.xml.bind.Marshaller;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by ibf on 2018/11/27.
 */
public class PageBean {
    //总行数
    private int totalRows;
    //页大小
    private  int pageSize;
    //当前的页数
    private int currentPage;
    //总页数
    private int totalPages;
    //分页集合的内容
    private List<Weibo>  data=new LinkedList<>();

    @Override
    public String toString() {
        return "PageBean{" +
                "totalRows=" + totalRows +
                ", pageSize=" + pageSize +
                ", currentPage=" + currentPage +
                ", totalPages=" + totalPages +
                ", data=" + data +
                '}';
    }

    public int getTotalRows() {
        return totalRows;
    }

    public void setTotalRows(int totalRows) {
        this.totalRows = totalRows;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(int totalPages) {
        this.totalPages = totalPages;
    }

    public List<Weibo> getData() {
        return data;
    }

    public void setData(List<Weibo> data) {
        this.data = data;
    }

    public PageBean(int totalRows, int pageSize, int currentPage, int totalPages, List<Weibo> data) {
        this.totalRows = totalRows;
        this.pageSize = pageSize;
        this.currentPage = currentPage;
        this.totalPages = totalPages;
        this.data = data;
    }

    public PageBean() {
    }
}

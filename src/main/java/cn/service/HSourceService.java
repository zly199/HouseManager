package cn.service;

import cn.entity.HouseMsg;

import java.util.List;

/**
 * Created by ZLY on 2017-04-21.
 */
public interface HSourceService {
    /**
     * 查询所有的房源信息
     * @return
     */
    List<HouseMsg> list();
}

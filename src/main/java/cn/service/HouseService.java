package cn.service;

import cn.dto.HouseList;
import cn.entity.Housemsg;

import java.util.List;

/**
 * Created by ZLY on 2017-05-19.
 */
public interface HouseService {
    /**
     * 根据当前登录用户权限查询房源信息
     * @return
     */
    List<Housemsg> findHouseByPermission();

    /**
     *
     * @return
     */
    int add();

    /**
     * 查找全部房源到房源列表
     * @return
     */
    List<HouseList> findAll();


}

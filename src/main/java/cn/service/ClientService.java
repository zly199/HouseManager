package cn.service;

import cn.entity.Client;
import cn.entity.Takelook;

import java.util.List;

/**
 * 客源
 */
public interface ClientService {
    /**
     * 返回列表
     * @return
     */
    List<Client> findAll();

    /**
     * 删除
     * @param clientId
     * @return
     */
    int delClient(int clientId);

    Client findById(int clientId);

    /**
     * 带看单增加
     * @param userId
     * @param houseId
     * @return
     */
    int addTakeWatch(Long userId, String houseId);
    /**
     * 根据客源编号获取带看信息
     * @param userId
     * @return
     */
    List<Takelook> findTakeWatchByuserId(Long userId);
}

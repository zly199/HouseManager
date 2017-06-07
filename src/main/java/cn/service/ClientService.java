package cn.service;

import cn.entity.Client;

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
}

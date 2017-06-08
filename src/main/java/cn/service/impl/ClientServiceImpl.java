package cn.service.impl;

import cn.dao.ClientMapper;
import cn.dao.TakelookMapper;
import cn.entity.Client;
import cn.entity.Takelook;
import cn.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service
public class ClientServiceImpl implements ClientService {
    @Autowired
    ClientMapper clientDao;
    @Autowired
    TakelookMapper takelookDao;
    /**
     * 返回列表
     *
     * @return
     */
    @Override
    public List<Client> findAll() {
        return clientDao.selectAll();
    }

    /**
     * 删除
     * @param clientId
     * @return
     */
    @Override
    public int delClient(int clientId) {
        return clientDao.deleteByPrimaryKey(clientId);
    }

    @Override
    public Client findById(int clientId) {
        return clientDao.selectByPrimaryKey(clientId);
    }
    /**
     * 带看单增加
     * @param userId
     * @param houseId
     * @return
     */
    @Override
    public int addTakeWatch(Long userId, String houseId) {

        return takelookDao.insertSelective(
                new Takelook(
                        null,
                        new Date(),
                        null,
                        null,
                        null,
                        UUID.randomUUID().toString(),
                        userId.toString(),
                        null,
                        "有效",
                        new Date(),
                        houseId,
                        new Date()
                ));
    }
    /**
     * 根据客源编号获取带看信息
     * @param userId
     * @return
     */
    @Override
    public List<Takelook> findTakeWatchByuserId(Long userId) {
        return takelookDao.selectByUserid(userId);
    }
}

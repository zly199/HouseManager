package cn.service.impl;

import cn.dao.ClientMapper;
import cn.entity.Client;
import cn.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ClientServiceImpl implements ClientService {
    @Autowired
    ClientMapper clientDao;
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
}

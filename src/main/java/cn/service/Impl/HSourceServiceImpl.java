package cn.service.Impl;

import cn.dao.HouseMsgMapper;
import cn.entity.HouseMsg;
import cn.service.HSourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by ZLY on 2017-04-21.
 */
@Service
public class HSourceServiceImpl implements HSourceService {

    @Autowired
    private HouseMsgMapper houseMsgMapper;

    @Override
    public List<HouseMsg> list() {
        List<HouseMsg> houseMsgList= houseMsgMapper.list();

        return houseMsgList;
    }
}

package cn.service.impl;

import cn.dao.HousesDictionaryMapper;
import cn.entity.HousesDictionary;
import cn.service.DictionaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by ZLY on 2017-05-25.
 */
@Service
public class DictionaryServiceImpl implements DictionaryService {

    @Autowired
    HousesDictionaryMapper housesDictionaryDao;
    @Override
    public HousesDictionary findById(int id) {
        return housesDictionaryDao.selectByPrimaryKey(id);
    }
}

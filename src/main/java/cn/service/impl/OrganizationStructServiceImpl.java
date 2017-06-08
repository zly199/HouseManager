package cn.service.impl;

import cn.dao.OrganizationStructureMapper;
import cn.dao.UserDutiesMapper;
import cn.service.OrganizationStructService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrganizationStructServiceImpl implements OrganizationStructService {
    @Autowired
    OrganizationStructureMapper organizationStructureDao;
    @Autowired
    UserDutiesMapper userDutiesDao;
    /**
     * 根据组织id查找组织里所有的人员名字
     * @param organizationId
     * @return
     */
    @Override
    public List<String> findNameByOrganizationId(String organizationId) {

        return userDutiesDao.selectNameByOrganizationid(organizationId);
    }
    /**
     * 返回所有的组织机构名
     * @return
     */
    @Override
    public List<String> findNameAll() {
        return organizationStructureDao.selectNameAll();
    }
}

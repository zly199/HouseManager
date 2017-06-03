package cn.service;

import java.util.Collection;
import java.util.List;

public interface OrganizationStructService {
    /**
     * 根据组织id查找组织里所有的人员名字
     * @param organizationId
     * @return
     */
    List<String> findNameByOrganizationId(String organizationId);

    /**
     * 返回所有的组织机构名
     * @return
     */
    List<String> findNameAll();
}

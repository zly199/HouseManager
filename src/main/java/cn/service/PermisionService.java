package cn.service;

public interface PermisionService {
    /**
     * 通过id修改权限
     * @param userId
     * @param permissionList
     * @return 修改的行数
     */
    int ediPermissionsById(Long userId, String[] permissionList);
}

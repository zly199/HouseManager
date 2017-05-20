package cn.service.impl;

import cn.dao.FollowupHouseMapper;
import cn.dao.HousemsgMapper;
import cn.dao.OrganizationStructureMapper;
import cn.dao.UserMapper;
import cn.dto.HouseList;
import cn.entity.FollowupHouse;
import cn.entity.Housemsg;
import cn.service.HouseService;
import cn.utils.DataTransferUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by ZLY on 2017-05-19.
 */
@Service
public class HouseServiceImpl implements HouseService {

    @Autowired
    HousemsgMapper housemsgDao;
    @Autowired
    OrganizationStructureMapper organizationStructureDao;
    @Autowired
    UserMapper userDao;
    @Autowired
    FollowupHouseMapper followupHouseDao;

    /**
     * 根据当前登录用户权限查询房源信息
     *
     * @return
     */
    @Override
    public List<Housemsg> findHouseByPermission() {
        return null;
    }

    /**
     * @return
     */
    @Override
    public int add() {
        return 0;
    }

    /**
     * 查找全部房源到房源列表
     * @return
     */
    @Override
    public List<HouseList> findAll() {
//        从数据源到列表格式转换
        List<Housemsg> housemsgList = housemsgDao.selectAll();
        List<HouseList> houseListList = new ArrayList<>();
        SimpleDateFormat  dateFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date lastFollowDate=new Date();
        for (Housemsg housemsg:housemsgList){
            HouseList houseList=DataTransferUtil.HouseMsgToHouseList(housemsg);
//一些id到名称的转换
    //组织id-》组织名
            houseList.setOrganization(
                    organizationStructureDao.selectByPrimaryKey(
                            houseList.getOrganization()
                    ).getOrganizationName());
    //员工ID-》员工名
            houseList.setUserName(
                    userDao.selectByPrimaryKey(houseList.getUserName()).getUserName()
            );
//  确定最后跟进日
            List<FollowupHouse> followupHouses=followupHouseDao.selectByHouseId(houseList.getId());
            try {
                lastFollowDate = dateFormat2.parse("1980-01-01 00:00:00");
            } catch (ParseException e) {
                e.printStackTrace();
            }

            for (FollowupHouse followupHouse:followupHouses){
                lastFollowDate=
                        (lastFollowDate.before(followupHouse.getTime()))?
                                followupHouse.getTime():lastFollowDate;
            }
            houseList.setLastFollowDate(lastFollowDate);

            houseListList.add(houseList);
        }


        return houseListList;
    }
}

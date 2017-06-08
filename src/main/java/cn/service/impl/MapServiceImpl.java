package cn.service.impl;

import cn.dao.HousemsgMapper;
import cn.dao.PositionMapper;
import cn.dto.HouseList;
import cn.dto.PositionForm;
import cn.entity.Housemsg;
import cn.entity.Position;
import cn.service.MapService;
import cn.utils.DataTransferUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
@Service
public class MapServiceImpl implements MapService {
    @Autowired
    PositionMapper positionDao;
    @Autowired
    HousemsgMapper housemsgDao;


    /**
     * 根据坐标返回旁边的坐标列表
     *
     * @param positionForm
     * @return
     */
    @Override
    public List<PositionForm> findNearby(PositionForm positionForm) {
        /*121.462253,31.226764中心点
        *121.466709,31.227474
        *121.458804,31.227227
        *121.458804,31.227227
        *121.458804,31.227227
        *121.465487,31.228956
        *121.465487,31.228956
        *121.465487,31.228956
        *121.465487,31.228956
        * 121.465487,31.228956
        * 121.465487,31.228956
        * 121.472098,31.219692
        * 121.457079,31.236923
        *
        * */
        //搜索数据库所有坐标
        List<Position> positionList = positionDao.selectAll();
        //计算距离少于两公里的坐标
        List<PositionForm> result = new ArrayList<>();

        for (Position position:positionList){
            if (distance(Double.parseDouble(positionForm.x),Double.parseDouble(positionForm.y),
                    Double.parseDouble(position.getPosizitionx()),Double.parseDouble(position.getPosizitiony()))<2000){
                PositionForm positionForm1 = new PositionForm();
                positionForm1.setX(position.getPosizitionx());positionForm1.setY(position.getPosizitiony());
                result.add(positionForm1);
            }
        }
        return result;
    }
    /**
     * 通过坐标查询房源信息
     * @param positionForm
     * @return
     */
    @Override
    public HouseList getHouseMessageByPosition(PositionForm positionForm) {
        //获取坐标信息
        Position position = positionDao.selectByPositionXAndPositionY(positionForm.x,positionForm.y);
        if (position!=null){
            //通过坐标获取房源id
            String houseId = position.getHousePositionid();
            //查询房源信息
            Housemsg housemsg = housemsgDao.selectByPrimaryKey(houseId);

            //转换成相应格式返回
            return DataTransferUtil.HouseMsgToHouseList(housemsg);
        }else
            return new HouseList();

    }
    /**
     * 根据房源id获取坐标信息
     * @param houseId
     * @return
     */
    @Override
    public Position findPositionByHouseId(String houseId) {
        return positionDao.selectByHouseId(houseId);
    }

    /**
     * 计算地球上任意两点(经纬度)距离
     *
     * @param long1
     *            第一点经度
     * @param lat1
     *            第一点纬度
     * @param long2
     *            第二点经度
     * @param lat2
     *            第二点纬度
     * @return 返回距离 单位：米
     */
    private double distance(double long1, double lat1, double long2,
                                  double lat2) {
        double a, b, R;
        R = 6378137; // 地球半径
        lat1 = lat1 * Math.PI / 180.0;
        lat2 = lat2 * Math.PI / 180.0;
        a = lat1 - lat2;
        b = (long1 - long2) * Math.PI / 180.0;
        double d;
        double sa2, sb2;
        sa2 = Math.sin(a / 2.0);
        sb2 = Math.sin(b / 2.0);
        d = 2
                * R
                * Math.asin(Math.sqrt(sa2 * sa2 + Math.cos(lat1)
                * Math.cos(lat2) * sb2 * sb2));
        return d;
    }
}

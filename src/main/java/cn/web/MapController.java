package cn.web;

import cn.dto.HouseList;
import cn.dto.PositionForm;
import cn.service.MapService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/api/map")
public class MapController {

    @Autowired
    MapService mapService;
    @RequestMapping("/getNearby")
    @ResponseBody
    public List<PositionForm> getNearby(@RequestBody PositionForm positionForm){

        if (positionForm.x!=null&&positionForm.y!=null)
            return mapService.findNearby(positionForm);
        else return null;
    }

    /**
     * 通过坐标查询房源信息
     * 121.462253   31.226764
     * 121.465487   31.227956
     * 121.463687   31.239956
     * 121.472098   31.219692
     * 121.457079   31.236923
     * 121.466709   31.215674
     * 121.457704   31.223627
     * 121.452604   31.200527
     * 121.458804   31.227357
     * 121.446287   31.249956
     * 121.466637   31.236956
     * 121.476527   31.228956
     * 121.455587   31.215956
     * @param positionForm
     * @return
     */
    @RequestMapping("/getHouseMsgByPosition")
    @ResponseBody
    public HouseList getHouseMessageByPosition(@RequestBody PositionForm positionForm){
         return mapService.getHouseMessageByPosition(positionForm);
    }
}

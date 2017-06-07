package cn.web;

import cn.dto.HouseList;
import cn.dto.PositionForm;
import cn.dto.TestC;
import cn.service.MapService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

    @RequestMapping("/test")
    @ResponseBody
    public HouseList fdsa(@RequestBody TestC c){
         return null;
    }
}

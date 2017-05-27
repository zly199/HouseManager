package cn.web;

import cn.entity.HousesDictionary;
import cn.service.DictionaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by ZLY on 2017-05-25.
 */
@Controller
@RequestMapping("/back/dictionary")
public class DictionaryController {
    @Autowired
    DictionaryService dictionaryService;
    @RequestMapping("/index")
    public String index(){
        int id = 1;
        HousesDictionary dictionary = dictionaryService.findById(id);
        System.out.println();
        return "dictionary";
    }
}

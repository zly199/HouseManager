package cn.web;

import cn.entity.Client;
import cn.service.ClientService;
import cn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/back/client")
public class ClientController {
    @Autowired
    ClientService clientService;
    @RequestMapping("/view")
    public String clientView(){
        return "userSelect";
    }
    @RequestMapping("/getList")
    @ResponseBody
    public List<Client> getList(){
        return clientService.findAll();
    }
    @RequestMapping("/delete/{clientId}")
    @ResponseBody
    public int delClient(@PathVariable int clientId){
        return clientService.delClient(clientId);
    }
    @RequestMapping("/detail/{clientId}")
    public String clientDetail(@PathVariable int clientId, Model model){
        Client client = clientService.findById(clientId);
        model.addAttribute("client",client);
        return "userDetail";
    }
    @RequestMapping("/detail/edit/{clientDetailId}")
    public String editClient(@PathVariable int clientDtailId){

        return "useredit";
    }
}

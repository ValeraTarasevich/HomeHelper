package bntu.fitr.practic.Tarasevich.controller;

import bntu.fitr.practic.Tarasevich.domain.Message;
import bntu.fitr.practic.Tarasevich.repos.MessageRepos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class MainController {

    @Autowired
    private MessageRepos msgRep;

    @GetMapping("/")
    public String greeting(Map<String, Object> model) {
        return "greeting";
    }

    @GetMapping("/main")
    public String main(Map<String, Object> model){
        Iterable<Message> msg = msgRep.findAll();
        model.put("messages", msg);
        return "main";
    }

    @PostMapping("/main")
    public String add(@RequestParam String text, @RequestParam String tag, Map<String, Object> model)
    {
        Message msg = new Message(text, tag);
        msgRep.save(msg);
        Iterable<Message> message = msgRep.findAll();
        model.put("messages", message);
        return "main";
    }
}

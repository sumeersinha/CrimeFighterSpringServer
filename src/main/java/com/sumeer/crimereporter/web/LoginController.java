package com.sumeer.crimereporter.web;
import com.sumeer.crimereporter.domain.Login;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/logins")
@Controller
@RooWebScaffold(path = "logins", formBackingObject = Login.class)
@RooWebJson(jsonObject = Login.class)
public class LoginController {
}

package com.sumeer.crimereporter.web;
import com.sumeer.crimereporter.domain.Crime;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/crimes")
@Controller
@RooWebScaffold(path = "crimes", formBackingObject = Crime.class)
@RooWebJson(jsonObject = Crime.class)
public class CrimeController {
}

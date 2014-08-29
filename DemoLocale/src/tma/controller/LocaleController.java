package tma.controller;

import java.util.Locale;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping(value = "/locale")
public class LocaleController {

	@Autowired
	private MessageSource messageSource;

	@RequestMapping(method = RequestMethod.GET)
	public String index(Locale locale, ModelMap mm) {
		mm.addAttribute("title",
				messageSource.getMessage("home.title", null, locale));
		mm.addAttribute("language", locale.getLanguage());
		mm.addAttribute("currentLocale", locale);
		return "index";
	}

	@RequestMapping(value = "/aboutus", method = RequestMethod.GET)
	public String aboutus(Locale locale, ModelMap mm) {
		mm.addAttribute("title",
				messageSource.getMessage("aboutus.title", null, locale));
		mm.addAttribute("language", locale.getLanguage());
		return "index";
	}

	@RequestMapping(value = "/news", method = RequestMethod.GET)
	public String news(Locale locale, ModelMap mm) {
		mm.addAttribute("title",
				messageSource.getMessage("news.title", null, locale));
		mm.addAttribute("language", locale.getLanguage());
		return "index";
	}

}

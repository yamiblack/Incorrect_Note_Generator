package kr.ac.jbnu;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main(Locale locale, Model model) {
		return "home";
	}
	
	@RequestMapping(value = "main", method = RequestMethod.GET)
	public String main(Model model) {
		return "main";
	}

	// template/category
	@RequestMapping(value = "/template/category/category", method = RequestMethod.GET)
	public String category(Model model) {
		return "/template/category/category";
	}

	@RequestMapping(value = "/template/category/categoryChoose", method = RequestMethod.GET)
	public String categoryChoose(Model model) {
		return "/template/category/categoryChoose";
	}

	@RequestMapping(value = "/template/category/categoryProblem", method = RequestMethod.GET)
	public String categoryProblem(Model model) {
		return "/template/category/categoryProblem";
	}

	@RequestMapping(value = "/template/category/categoryProblemChoose", method = RequestMethod.GET)
	public String categoryProblemChoose(Model model) {
		return "/template/category/categoryProblemChoose";
	}

	@RequestMapping(value = "/template/category/testCategoryChoose", method = RequestMethod.GET)
	public String testCategoryChoose(Model model) {
		return "/template/category/testCategoryChoose";
	}

	// tempate/mypage
	@RequestMapping(value = "/template/myPage/editProfile", method = RequestMethod.GET)
	public String editProfile(Model model) {
		return "/template/myPage/editProfile";
	}

	@RequestMapping(value = "/template/myPage/mypage", method = RequestMethod.GET)
	public String mypage(Model model) {
		return "/template/myPage/mypage";
	}

	// template/problem
	@RequestMapping(value = "/template/problem/problemRegist", method = RequestMethod.GET)
	public String problemRegist(Model model) {
		
		return "/template/problem/problemRegist";
	}

	@RequestMapping(value = "/template/problem/showProblem", method = RequestMethod.GET)
	public String showProblem(Model model) {
		return "/template/problem/showProblem";
	}

	@RequestMapping(value = "/template/problem/testPage", method = RequestMethod.GET)
	public String testPage(Model model) {
		return "/template/problem/testPage";
	}
	
	@RequestMapping(value = "/schedule/schedule", method = RequestMethod.GET)
	public String calendarPage(Model model) {
		return "/schedule/schedule";
	}
	
	@RequestMapping(value = "/schedule/schedulePopup", method = RequestMethod.GET)
	public String calendarPopupPage(Model model) {
		return "/schedule/schedulePopup";
	}
	
	@RequestMapping(value = "/list/notelist", method = RequestMethod.GET)
	public String notelistPage(Model model) {
		return "/list/notelist";
	}
	
	@RequestMapping(value = "/list/select", method = RequestMethod.GET)
	public String selectPage(Model model) {
		return "/list/select";
	}
}

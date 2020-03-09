package com.osu.lecture.lecture.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.osu.lecture.lecture.LectureVO;
import com.osu.lecture.lecture.service.LectureService;
import com.osu.lecture.user.service.UserService;

@Controller
public class LectureController {
	@Inject
	private LectureService lectureService;
	@Inject
	private UserService userService;
	private static final Logger logger = LoggerFactory.getLogger(LectureController.class);

	@RequestMapping(value = "/mypage/add", method = RequestMethod.GET)
	public String createGET(LectureVO lecture, HttpServletRequest request, Model model) throws Exception {
		HttpSession session = request.getSession();
		if (session.getAttribute("userId") == null)
			return "redirect:/login";
		logger.info("Lecture create page");
		return "create";
	}

	@RequestMapping(value = "/mypage/add", method = RequestMethod.POST)
	public String createPOST(LectureVO lecture, RedirectAttributes ra, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		lecture.setInstructorId(lectureService.getInstructorId((String) session.getAttribute("userId")));
		lectureService.create(lecture);
		ra.addFlashAttribute("result", "Done!");
		logger.info("Lecture is added = {}", lecture.toString());
		return "redirect:/mypage";
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request, Model model) throws Exception {
		logger.info("Upcoming Lecture Page");
		List<LectureVO> list = lectureService.upcomingLectureList();
		model.addAttribute("list", list);
		return "upcoming";
	}

	@RequestMapping(value = "/past", method = RequestMethod.GET)
	public String past(Model model) throws Exception {
		logger.info("Past Lecture Page");
		List<LectureVO> list = lectureService.pastLectureList();
		model.addAttribute("list", list);
		return "past";
	}

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detailLecture(@RequestParam("lectureId") int lectureId, Model model) throws Exception {
		logger.debug("Lecture id = {} is being called", lectureId);
		model.addAttribute("lecture", lectureService.selectLecture(lectureId));
		model.addAttribute("instructor", userService.selectInstructor(lectureId));
		return "lectureview";
	}

	@RequestMapping(value = "/mypage/delete/{lectureId}", method = RequestMethod.GET)
	public String deleteLecture(@PathVariable String lectureId) throws Exception {
		logger.debug("Delete lecture = {}", lectureId);
		lectureService.deleteLecture(Integer.parseInt(lectureId));
		return "redirect:/mypage";
	}

	@RequestMapping(value = "/mypage/edit/{lectureId}", method = RequestMethod.GET)
	public String editLectureGET(@PathVariable String lectureId, Model model) throws Exception {
		logger.debug("Edit lecture = {}", lectureId);
		model.addAttribute("lecture", lectureService.selectLecture(Integer.parseInt(lectureId)));
		return "editLecture";
	}

	@RequestMapping(value = "/mypage/edit/{id}", method = RequestMethod.POST)
	public String editLecturePOST(@RequestParam("lectureId") int id, @ModelAttribute LectureVO lecture)
			throws Exception {
		lectureService.updateLecture(lecture);
		return "redirect:/mypage";
	}
}

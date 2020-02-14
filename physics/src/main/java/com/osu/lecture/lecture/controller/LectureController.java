package com.osu.lecture.lecture.controller;

import java.util.List;

import javax.inject.Inject;

import com.osu.lecture.lecture.service.LectureService;
import com.osu.lecture.lecture.LectureVO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class LectureController {
	private static final Logger logger = LoggerFactory.getLogger(LectureController.class);
    @Inject
    private LectureService service;

    @RequestMapping(value="/create", method=RequestMethod.GET)
    public String createGET(LectureVO lecture, Model model) throws Exception{
        System.out.println("creat. GET");
        return "lecture/create"; 
    }

    @RequestMapping(value="/create", method=RequestMethod.POST)
    public String createPOST(LectureVO lecture, RedirectAttributes ra) throws Exception{
        System.out.println("create. POST");
        System.out.println(lecture.toString());

        service.create(lecture);
        ra.addFlashAttribute("result", "Done!");

        return "redirect:/listAll";
    }
    
    @RequestMapping(value="/", method=RequestMethod.GET)
    public String home(Model model){
    	List<LectureVO> list = service.upcomingLectureList();
    	model.addAttribute("list", list);
        return "upcoming";
    }
    
    @RequestMapping(value="/past", method=RequestMethod.GET)
    public String past(Model model){
    	List<LectureVO> list = service.pastLectureList();
    	model.addAttribute("list", list);
        return "past";
    }
    
    @RequestMapping(value = "/mypage/addLecture", method = RequestMethod.GET)
    public String addLecture() {
		logger.info("Here is add new lecture page");
    	return "addLecture"; 
    } 
    
}

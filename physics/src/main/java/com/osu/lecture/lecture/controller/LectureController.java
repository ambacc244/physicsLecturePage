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
    private LectureService lectureService;

    @RequestMapping(value="/mypage/add", method=RequestMethod.GET)
    public String createGET(LectureVO lecture, Model model) throws Exception{
        System.out.println("creat. GET");
        return "create"; 
    }

    @RequestMapping(value="/mypage/add", method=RequestMethod.POST)
    public String createPOST(LectureVO lecture, RedirectAttributes ra) throws Exception{
        System.out.println("create. POST");
        System.out.println(lecture.toString());

        lectureService.create(lecture);
        ra.addFlashAttribute("result", "Done!");

        return "redirect:/mypage";
    }
    
    @RequestMapping(value="/", method=RequestMethod.GET)
    public String home(Model model){
    	List<LectureVO> list = lectureService.upcomingLectureList();
    	model.addAttribute("list", list);
        return "upcoming";
    }
    
    @RequestMapping(value="/past", method=RequestMethod.GET)
    public String past(Model model){
    	List<LectureVO> list = lectureService.pastLectureList();
    	model.addAttribute("list", list);
        return "past";
    }
    
    @RequestMapping(value = "/mypage/delete", method = RequestMethod.GET)
    public String deleteLecture(int lectureId) throws Exception {
    	lectureService.deleteLecture(lectureId);
    	return "mypage"; 
    } 
    
}

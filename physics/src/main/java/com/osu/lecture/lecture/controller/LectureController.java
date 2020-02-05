package com.osu.lecture.lecture.controller;

import javax.inject.Inject;

import com.osu.lecture.lecture.service.LectureServiceItf;
import com.osu.lecture.lecture.service.LectureVO;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/lecture/")
public class LectureController {
    @Inject
    private LectureServiceItf service;

    @RequestMapping(value="/create",method=RequestMethod.GET)
    public void createGET(LectureVO lecture, Model model) throws Exception{
        System.out.println("/lecture/creat. GET");
    }

    @RequestMapping(value="/create", method=RequestMethod.POST)
    public String createPOST(LectureVO lecture, RedirectAttributes ra) throws Exception{
        System.out.println("/lecture/create. POST");
        System.out.println(lecture.toString());

        service.create(lecture);
        ra.addFlashAttribute("result", "Done!");

        return "redirect:/lecture/listAll";
    }

    @RequestMapping(value="/listAll", method=RequestMethod.GET)
    public void listAll(Model model) throws Exception{
        System.out.println("/lecture/listAll Page");
        model.addAttribute("lecureList", service.listAll());
    }
}

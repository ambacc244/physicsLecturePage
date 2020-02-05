package com.osu.lecture.lecture.controller;

import javax.inject.Inject;

import com.osu.lecture.lecture.service.LectureServiceItf;
import com.osu.lecture.lecture.service.LectureVO;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
    public String createPOST(LectureVO lecture, Model model) throws Exception{
        System.out.println("/lecture/create. POST");
        System.out.println(lecture.toString());

        service.create(lecture);
        model.addAttribute("result", "Done!");

        return "/lecture/success";
    }
}

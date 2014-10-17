package com.wojtek.controller;

import java.util.Map;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.wojtek.model.Campaign;
import com.wojtek.service.CampaignService;

@Controller
public class CampaignController {
	
	@Autowired
	private CampaignService campaignService;
	
	 @RequestMapping("")  
	 public ModelAndView welcome(@ModelAttribute Campaign campaign) {  
	  return new ModelAndView("index");  
	 } 
	
	 @RequestMapping("index")  
	 public ModelAndView in(@ModelAttribute Campaign campaign) {  
	  return new ModelAndView("index");  
	 } 
	
	 @RequestMapping("add")  
	 public ModelAndView getForm(@ModelAttribute Campaign campaign) {  
	  return new ModelAndView("add");  
	 }  
	  
	 @RequestMapping("register")  
	 public ModelAndView registerUser(@ModelAttribute Campaign campaign) {  
	  campaignService.add(campaign);
	  return new ModelAndView("add");  
	 }  
	  
	 @RequestMapping("list")  
	 public ModelAndView getList() {  
	  List campaignList = campaignService.getAllCampaign(); 
	  return new ModelAndView("list", "campaignList", campaignList);  
	 }  
	  
	 @RequestMapping("delete")  
	 public ModelAndView deleteUser(@RequestParam int id) {  
	  campaignService.delete(id); 
	  return new ModelAndView("redirect:list");  
	 }  
	  
	 @RequestMapping("edit")  
	 public ModelAndView editUser(@RequestParam int id,  
	   @ModelAttribute Campaign campaign) {  
	  Campaign campaignObject = campaignService.getCampaign(id);
	  return new ModelAndView("edit", "campaignObject", campaignObject);  
	 }  
	  
	 @RequestMapping("update")  
	 public ModelAndView updateUser(@ModelAttribute Campaign campaign) {  
	  campaignService.edit(campaign);
	  return new ModelAndView("redirect:list");  
	 }  
}

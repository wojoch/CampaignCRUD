package com.wojtek.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wojtek.dao.CampaignDao;
import com.wojtek.model.Campaign;
import com.wojtek.service.CampaignService;

@Service
public class CampaignServiceImpl implements CampaignService {

	@Autowired
	private CampaignDao campaignDao;
	
	@Transactional
	public void add(Campaign campaign) {
		campaignDao.add(campaign);
	}

	@Transactional
	public void edit(Campaign campaign) {
		campaignDao.edit(campaign);
	}

	@Transactional
	public void delete(int id) {
		campaignDao.delete(id);
	}

	@Transactional
	public Campaign getCampaign(int id) {
		return campaignDao.getCampaign(id);
	}

	@Transactional
	public List<Campaign> getAllCampaign() {
		return campaignDao.getAllCampaign();
	}

}

package com.wojtek.service;

import java.util.List;

import com.wojtek.model.Campaign;

public interface CampaignService {
	public void add(Campaign campaign);
	public void edit(Campaign campaign);
	public void delete(int id);
	public Campaign getCampaign(int id);
	public List<Campaign> getAllCampaign();

}

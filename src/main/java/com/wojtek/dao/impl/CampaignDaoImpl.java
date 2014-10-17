package com.wojtek.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.wojtek.dao.CampaignDao;
import com.wojtek.model.Campaign;

@Repository
public class CampaignDaoImpl implements CampaignDao {

	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(Campaign campaign) {
		session.getCurrentSession().save(campaign);
	}

	@Override
	public void edit(Campaign campaign) {
		session.getCurrentSession().update(campaign);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getCampaign(id));
	}

	@Override
	public Campaign getCampaign(int id) {
		return (Campaign) session.getCurrentSession().get(Campaign.class, id);
	}

	@Override
	public List<Campaign> getAllCampaign() {
		return session.getCurrentSession().createQuery("from Campaign").list();
	}

}

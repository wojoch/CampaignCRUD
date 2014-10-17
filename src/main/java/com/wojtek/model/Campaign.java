package com.wojtek.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "campaign")
public class Campaign {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	@Column(name = "name")
	private String name;
	@Column(name = "keywords")
	private String keywords;
	@Column(name = "bid_amount")
	private int bidamount;
	@Column(name = "fund")
	private float fund;
	@Column(name = "status")
	private boolean status;
	@Column(name = "town")
	private String town;
	@Column(name = "radius")
	private float radius;
	private static float remainingFunds;
	
	public Campaign(){}
	public Campaign(int id, String name, String keywords, int bidamount,
			float fund, boolean status, String town, float radius) {
		super();
		this.id = id;
		this.name = name;
		this.keywords = keywords;
		this.bidamount = bidamount;
		this.fund = fund;
		this.status = status;
		this.town = town;
		this.radius = radius;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public int getBidamount() {
		return bidamount;
	}

	public void setBidamount(int bidamount) {
		this.bidamount = bidamount;
	}

	public float getFund() {
		return fund;
	}

	public void setFund(float fund) {
		this.fund = fund;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public String getTown() {
		return town;
	}

	public void setTown(String town) {
		this.town = town;
	}

	public float getRadius() {
		return radius;
	}

	public void setRadius(float radius) {
		this.radius = radius;
	}

	@Override
	public String toString() {
		return "Campaign [id=" + id + ", name=" + name + ", keywords="
				+ keywords + ", bidamount=" + bidamount + ", fund=" + fund
				+ ", status=" + status + ", town=" + town + ", radius="
				+ radius + "]";
	}
	
	
}

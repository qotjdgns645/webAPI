package com.myproj.myapp;

public class SummonerDTO {
	public String getAccountId() {
		return accountId;
	}
	public void setAccountId(String accountId) {
		this.accountId = accountId;
	}
	public String getProfileIconId() {
		return profileIconId;
	}
	public void setProfileIconId(String profileIconId) {
		this.profileIconId = profileIconId;
	}
	public String getRevisionDate() {
		return revisionDate;
	}
	public void setRevisionDate(String revisionDate) {
		this.revisionDate = revisionDate;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPuuid() {
		return puuid;
	}
	public void setPuuid(String puuid) {
		this.puuid = puuid;
	}
	public String getSummonerLevel() {
		return summonerLevel;
	}
	public void setSummonerLevel(String summonerLevel) {
		this.summonerLevel = summonerLevel;
	}
	private String accountId = null;
	private String profileIconId = null;
	private String revisionDate = null;
	private String name = null;
	private String id = null;
	private String puuid = null;
	private String summonerLevel = null;
}

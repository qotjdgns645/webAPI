package com.myproj.myapp;

import java.net.http.HttpHeaders;

import javax.swing.text.html.parser.Entity;

import org.springframework.http.HttpEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

public class RIOTAPICaller {
	private String APIKEY = "RGAPI-aea90361-4eae-41ef-8d2e-3e3cee29a555";
	
	public ResponseEntity<SummonerDTO> getSummonerDTO(String name){
		
		String reURL = "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/" + name + "?api_key="
				+ APIKEY;
		HttpEntity entity = new MakeEntity();
		SummonerDTO userInfo = (SummonerDTO) entity.getBody();
		ResponseEntity<SummonerDTO> responseEntity = restTemplate.exchange(url, HttpMethod.GET, entity, SummonerDTO.class);
		
		return httpHeaders;
	}
	
}

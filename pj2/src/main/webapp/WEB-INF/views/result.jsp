<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language='java' contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<title>Home</title>
<link rel="stylesheet" href="../../resources/style.css">
</head>
<style>
	.header{
		border: solid blue;
		width: 1080px;
		height: 100%px;
		font-family: Helvetica,"Malgun Gothic","Apple SD Gothic Neo",AppleGothic,Dotum,Arial,Tahoma;
		
		
	}
	/* 이미지 프로필 영역 시작 */
	.IconLayout{
		float: left;
		width: 180px;
		height: 180px;
		border: solid red;	
		
		display:flex;
		justify-content: center;
		align-items: center; 
	}
	.summonerIcon{
		position:relative;
		width: calc(100% - 60px);
		height: calc(100% - 60px);
	}
	.level{
		margin-top: 120px;
		position:absolute;	
		display:block;
		color:#eabd56;
		text-align: center;
		width: 44px;
    	height: 24px;
		background: url("/resources/bg-levelbox.png");
	}
	/* 이미지 프로필 영역 끝 */
	
	.profile > .name{ 
		margin-top: 40px;
		border: solid purple;
		font-size: 20px;
		font-weight: bold;
	}
	
	.profile > .rank{
		font-size : 11px;
		color : #555e5e;
	}
	
	
</style>
<body>
	<div class="data">
		<div>AccountId : ${SummonerDTO.accountId}</div>
		<!-- https://ddragon.leagueoflegends.com/api/versions.json 버전 리스트 -->
		<div>profileIconId : ${SummonerDTO.profileIconId}</div>
		<div>revisionDate : ${SummonerDTO.revisionDate}</div>
		<div>name : ${SummonerDTO.name}</div>
		<div>id : ${SummonerDTO.id}</div>
		<div>puuid : ${SummonerDTO.puuid}</div>
		<div>summonerLevel : ${SummonerDTO.summonerLevel}</div>
	</div>
	<hr>
	<div class="header">
		<div class="IconLayout">
			<img class="summonerIcon" src="http://ddragon.leagueoflegends.com/cdn/11.10.1/img/profileicon/${SummonerDTO.profileIconId}.png">
			<span class="level">${SummonerDTO.summonerLevel}</span>
		</div>
		<div class="profile">
			<div class="name">
				<span>${SummonerDTO.name}</span>
			</div>
			<div class="rank">
				<span>랭킹 100위 (상위 : 0.01%)</span>
			</div>
		</div>
	</div>
</body>
</html>




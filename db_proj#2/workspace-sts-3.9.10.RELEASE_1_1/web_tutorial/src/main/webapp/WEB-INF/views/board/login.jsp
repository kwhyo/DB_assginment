<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
   <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">

    <title>Login</title>

    <!-- Required Stylesheets -->
    <link type="text/css" rel="stylesheet" href="https://unpkg.com/bootstrap/dist/css/bootstrap.min.css"/>
    <link type="text/css" rel="stylesheet" href="https://unpkg.com/bootstrap-vue@latest/dist/bootstrap-vue.css"/>

    <!-- Required scripts -->
    <script src="https://unpkg.com/vue"></script>
    <script src="https://unpkg.com/babel-polyfill@latest/dist/polyfill.min.js"></script>
    <script src="https://unpkg.com/bootstrap-vue@latest/dist/bootstrap-vue.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <title>네이버로그인</title>
  </head>
  
  
      <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
      
        <a href="http://www.naver.com" class="link_naver">
        <img src="https://ssl.pstatic.net/static/cafe/icon_naver.png" width="56" height="10" alt="NAVER"></a>
       
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
 
          </ul>
        </div>
      </div>
    </nav>
  
  
  
  <body>
  	<form name="frm" action="homepage" method="post" style="background-image: url('img/home-bg.jpg')">
    <!-- Our application root element -->
    <div id="app">
      <b-container>
        <b-jumbotron header="광운 중고 나라"
                     lead="각종 중고 물품 광운 중고 나라에서~">
        </b-jumbotron>

        <b-form-group horizontal
                      :label-cols="3"
                      description="Let us know your name."
                      label="ID"
        >
           <b-form-input v-model.trim="username" name="id"></b-form-input>
        </b-form-group>
        <b-form-group horizontal
                      :label-cols="3"
                      description="Let us know your password."
                      label="Password"
        >
           <input type="password" name="password" v-model.trim="password" class="form-control">
        </b-form-group>

        <b-alert variant="danger" :show="showAlert">{{ errMsg }}</b-alert>

		<b-btn variant="primary" @click="jssubmit">Login</b-btn>

		  <%
    String clientId = "rvhtu6521NzyEszJ9xHD";//애플리케이션 클라이언트 아이디값";
    String redirectURI = URLEncoder.encode("http://www.localhost:8080/board/list", "UTF-8");
    SecureRandom random = new SecureRandom();
    String state = new BigInteger(130, random).toString();
    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
    apiURL += "&client_id=" + clientId;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&state=" + state;
    session.setAttribute("state", state);
 %>
		
		<div id="naver_id_login" style="text-align:left"><a href="<%=apiURL%>"> 
<img width="223" src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png"/></a></div>
		
		
      </b-container>
    </div>
  	</form>

    <!-- Start running your app -->
    <script>
      window.app = new Vue({
        el: "#app",
        data: {
        	username: '',
        	password: '',
        	showAlert: false,
        	errMsg: ''
        },
        methods: {
        	jssubmit: function() {
        		if ( this.username == '' ) {
        			this.showAlert = true;
        			this.errMsg = 'Please enter your username';
        			return;
        		}
        		if ( this.password == '' ) {
        			this.showAlert = true;
        			this.errMsg = 'Please enter the password';
        			return;
        		}
        		this.showAlert = false;
        		document.frm.submit();
        	}
        }
      })
    </script>



  </body>
</html>
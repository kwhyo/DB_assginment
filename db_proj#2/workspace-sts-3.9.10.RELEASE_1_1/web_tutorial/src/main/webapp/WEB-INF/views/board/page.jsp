<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.11/handlebars.min.js"></script>
    <%@include file="../include/header.jsp"%>
    <div class="row">
    <div class="col-lg-12">
    <h1 class="page-header">마이페이지</h1>
    </div><!-- /.col-lg-12-->
    </div><!-- /.row -->
    <div class="row">
    <div class="col-lg-12">
    <div class="panel panel-default">
    <div class="panel-heading">회원정보<img src="/resources/img/a.PNG" alt="a" border="3px" width="200px" height="200px" align="right"><br><br><br><br><br><br><br><br><br><br></div>
    <!--  /.panel-heading -->
    
    <div class="panel-body">
    <div class="form-group">
       
    <label>이름</label><input class="form-control" name='title'
    value='<c:out value="홍진혁"/>' readonly="readonly">
    </div>
    <div class="form-group">
    <label>직업</label>
    <textarea class="form-control" rows="3" name='content'
    readonly="readonly"><c:out value="대학생"/></textarea> 
    </div>
    <label>번호</label>
    <textarea class="form-control" rows="3" name='content'
    readonly="readonly"><c:out value="010-2168-5726"/></textarea> 
    </div>
    <label>주소</label>
    <textarea class="form-control" rows="3" name='content'
    readonly="readonly"><c:out value="서울특별시 도봉구 창2동 601-106, 해성빌라 B동 201호"/></textarea> 
    
    <label>이메일</label>
    <textarea class="form-control" rows="3" name='content'
    readonly="readonly"><c:out value="ghdzhf@naver.com"/></textarea> 
    </div>
    </div>
    <div class="form-group">
    <label>신용등급</label><input class="form-control" name='writer'
    value='<c:out value="믿음신"/>' readonly="readonly">
    </div>
    
    <button id="ModiBtn" class="btn btn-default">수정</button>
    <button id="ListBtn" class="btn btn-default" onclick="location.href='/board/list'">홈페이지</button>
    
<%@include file="../include/footer.jsp"%>
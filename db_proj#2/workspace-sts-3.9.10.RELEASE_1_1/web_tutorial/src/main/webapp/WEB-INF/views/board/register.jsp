<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@include file="../include/header.jsp"%>
    <div class="row">
    <div class="col-lg-12">
    <h1 class="page-header">새로운 영화 등록</h1>
    </div><!-- /.col-lg-12-->
    </div><!-- /.row -->
    <div class="row">
    <div class="col-lg-12">
    <div class="panel panel-default">
    <div class="panel-heading">Register</div><!--  /.panel-heading -->
    
    <div class="panel-body">
    <form role="form" action="/board/register" method="POST">
    <div class="form-group">s
    <label>제목</label><input class="form-control" name='m_title'>
    </div>
    <div class="form-group">
    <label>장르</label><input class="form-control" name='m_genre'>
    </div>
    <div class="form-group">
    <label>제작국가</label><input class="form-control" name='m_country'>
    </div>
    <div class="form-group">
    <label>상영시간</label><input class="form-control" name='m_running'>
    </div>
    <div class="form-group">
    <label>평점</label><input class="form-control" name='m_grade'>
    </div>
    <div class="form-group">
    <label>개봉일</label><input class="form-control" name='m_opening'>
    </div>
    <div class="form-group">
    <label>개봉기간</label><input class="form-control" name='m_period'>
    </div>
    <div class="form-group">
    <label>관람등급</label><input class="form-control" name='m_rating'>
    </div>
    <div class="form-group">
    <label>감독</label><input class="form-control" name='d_name'>
    </div>
    <div class="form-group">
    <label>예매율</label><input class="form-control" name='m_ticketing'>
    </div>
   
    <button id="SubmitBtn" type="submit" class="btn btn-default">Submit Button</button>
    <button type="reset" class="btn btn-default">Reset Button</button>
    <button id="ListBtn" class="btn btn-default">List</button>
    </form>
    </div><!-- end panel-body --> 
    </div><!-- end panel-body -->
    </div><!-- end panel -->
    </div><!-- /.row -->
    
    <script>
    $(document).ready(function(){
       var Formobj= $("form[role='form']");
       
       $("#ListBtn").on("click", function(){
          Formobj.attr("action","/board/list");
          Fromobj.attr("method", "POST");
          Formobj.submit();
       });
       
       $("#SubmitBtn").on("click", function(){
          if($("input[name=title]").val()==""){
             alert("제목을 입력하세요!");
             $("input[name='title']").focus();
             return false;
             }
          if($("input[name=genre]").val()==""){
             alert("장르를 입력하세요!");
             $("input[name='genre']").focus();
             return false;
          }
       if($("input[name='country']").val()==""){
       alert("제작국가를 입력하세요!");
       $("input[name='country']").focus();
       return false;
    }
    });
    });
    </script>
    <%@include file="../include/footer.jsp"%>
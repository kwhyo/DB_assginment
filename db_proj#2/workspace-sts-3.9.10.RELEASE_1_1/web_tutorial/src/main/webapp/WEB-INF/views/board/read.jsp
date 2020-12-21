<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.11/handlebars.min.js"></script>
    <%@include file="../include/header.jsp"%>
    <div class="row">
    <div class="col-lg-12">
    <h1 class="page-header">광운 영화 소개</h1>
    </div><!-- /.col-lg-12-->
    </div><!-- /.row -->
    <div class="row">
    <div class="col-lg-12">
    <div class="panel panel-default">
    <div class="panel-heading">광운 영화 소개</div>
    <!--  /.panel-heading -->    
    <div class="panel-body">
    
    <div class="form-group">
    <label>번호</label><input class="form-control" name='m_ID'
    value='<c:out value="${boardVO.m_ID }"/>' readonly="readonly">
    </div>
    
    <div class="form-group">
    <label>영화 제목</label><input class="form-control" name='m_title'
    value='<c:out value="${boardVO.m_title }"/>' readonly="readonly">
    </div>
    
    <img src="${boardVO.m_img }" alt="air" border="3px" width="300px" height="300px" align="middle"/>
   
    <div class="form-group">
    <label>장르</label><input class="form-control" name='m_genre'
    value='<c:out value="${boardVO.m_genre }"/>' readonly="readonly">
    </div>
    <div class="form-group">
    <label>평점</label><input class="form-control" name='m_grade'
    value='<c:out value="${boardVO.m_grade}"/>' readonly="readonly">
    </div>
    <div class="form-group">
    <label>제작국가</label><input class="form-control" name='m_country'
    value='<c:out value="${boardVO.m_country}"/>' readonly="readonly">
    </div>
    <div class="form-group">
    <label>상영시간(분)</label><input class="form-control" name='m_running'
    value='<c:out value="${boardVO.m_running}"/>' readonly="readonly">
    </div>
    <div class="form-group">
    <label>개봉일</label><input class="form-control" name='m_opening'
    value='<c:out value="${boardVO.m_opening}"/>' readonly="readonly">
    </div>
    <div class="form-group">
    <label>개봉기간(개월)</label><input class="form-control" name='m_period'
    value='<c:out value="${boardVO.m_period}"/>' readonly="readonly">
    </div>
    <div class="form-group">
    <label>관람등급(0: 전체관람가, 12: 12세이상 관람가, 15: 15세이상 관람가, 19: 청소년관람불가)</label><input class="form-control" name='m_rating'
    value='<c:out value="${boardVO.m_rating}"/>' readonly="readonly">
    </div>
    <div class="form-group">
    <label>감독</label><input class="form-control" name='d_name'
    value='<c:out value="${boardVO.d_name}"/>' readonly="readonly">
    </div>
    <div class="form-group">
    <label>예매율</label><input class="form-control" name='m_ticketing'
    value='<c:out value="${boardVO.m_ticketing}"/>' readonly="readonly">
    </div>
    <button id="ModiBtn" class="btn btn-default">Modify</button>
    <button id="ListBtn" class="btn btn-default" onclick="location.href='/board/list'">List</button>
    <button id="DelBtn" class="btn btn-default">Delete</button>
    <button id="SellBTn" class="btn btn-default" onclick="location.href='/board/list'">Sell</button>
    
    
    </div><!-- end panel-body -->
    <form id="Form" method="post">
    <input type="hidden" name="m_ID" value="${boardVO.m_ID}">
    </form>
    </div>
    <!-- end panel-body -->
    </div>
    <!-- end panel -->
    </div>
    <!-- /.row -->
         <%--댓글 등록 영역--%>
                <div class="panel panel-warning">
                    <div class="panel-header with-border">
                        <a href="#" class="link-black text-lg"><i class="fa fa-pencil"></i> 댓글작성</a>
                    </div>
                    <div class="panel-body">
                        <form class="form-horizontal">
                            <div class="form-group margin-bottom-none">
                                <div class="col-sm-8">
                                    <input class="form-control input-sm" id="newReplyText" type="text" placeholder="댓글 입력...">
                                </div>
                                <div class="col-sm-2">
                                    <input class="form-control input-sm" id="newReplyWriter" type="text" placeholder="작성자">
                                </div>
                                <div class="col-sm-2">
                                    <button type="button" class="btn btn-primary btn-sm btn-block replyAddBtn"><i class="fa fa-save"></i> 저장</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

             
    
    <script>
    $(document).ready(function(){
       var Formobj=$("#Form");
       $("#ModiBtn").on("click",function(){
          Formobj.attr("action","/board/modify");
          Formobj.attr("method", "get");
          Formobj.submit();
       });
       $("#ListBtn").on("click", function(){
          self.location="/board/list";
       });
       $("#DelBtn").on("click",function(){
          Formobj.attr("action","/board/remove");
          Formobj.submit();
       });
       $("#SellBtn").on("click",function(){
          self.location="/board/list";
        });
    });
    
    function fileSubmit() {
        var formData = new FormData($("#fileUploadForm")[0]);
        $.ajax({
            type : 'post',
            url : '/board/read',
            data : formData,
            processData : false,
            contentType : false,
            success : function(html) {
                alert("파일 업로드하였습니다.");
            },
            error : function(error) {
                alert("파일 업로드에 실패하였습니다.");
                console.log(error);
                console.log(error.status);
            }
        });
    }
   
    </script>
    <%@include file="../include/footer.jsp"%>
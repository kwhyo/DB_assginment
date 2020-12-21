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
          <label>이름</label><input class="form-control" name='a_name'
          value='<c:out value="${read_actor[0].a_name}"/>' readonly="readonly">    
          </div>
          <div class="form-group">
          <label>생년월일</label><input class="form-control" name='a_birthday'
          value='<c:out value="${read_actor[0].a_birthday}"/>' readonly="readonly">
          </div>
          <div class="form-group">
          <label>성별</label><input class="form-control" name='a_gender'
          value='<c:out value="${read_actor[0].a_gender}"/>' readonly="readonly">
          </div>
          <c:set var="i" value = "1"/>
     <table class="table table-striped table-bordered table-hover">
    <thead>
    <tr>
    <th>제목</th>
    <th>장르</th>
    <th>평점</th>
    <th>러닝타임</th>
    <th>개봉일</th>
    <th>관람등급</th>
    </tr>
    </thead>
    
    <c:forEach var="boardVO" items="${read_actor}">
    <tr>
       <td>${boardVO.m_title}</td>
       <td>${boardVO.m_genre}</td>
       <td>${boardVO.m_grade}</td>
       <td>${boardVO.m_running} 분</td>
       <td>${boardVO.m_opening}</td>
       <td>${boardVO.m_rating}세 관람가</td>
    
       </tr>
          </c:forEach>
          
    </table>
    
    
    <button id="ModiBtn" class="btn btn-default">Modify</button>
    <button id="ListBtn" class="btn btn-default" onclick="location.href='/board/list'">List</button>

    
    
    </div><!-- end panel-body -->
    <form id="Form" method="post">
    <input type="hidden" name="a_ID" value="${boardVO.a_ID}">
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
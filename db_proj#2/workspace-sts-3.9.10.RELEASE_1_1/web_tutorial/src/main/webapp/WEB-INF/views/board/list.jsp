<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@include file="../include/header.jsp"%>
    <div class="row">

    <div class="col-lg-12">
   <div id="front-cafe" style="cursor:hand;cursor:pointer;background-image:none;width:1080px;max-height: 340px">
              <a name="myCafeUrlLink" onclick="updateMoveMenu()" href="homepage" target="cafe_main">
               <img src="img/banner.jpg" alt="광운영화나라" onload="resizeTopSkin(this)" class="png24" width="1080">
              </a>
           </div>
    </div><!-- /.col-lg-12-->
    </div><!-- /.row -->
    <div class="row">
    <div class="col-lg-12">
    <div class="panel panel-default">
    <div class="panel-heading">
          영화 목록
    <button id='regBtn' type="button" onclick="location.href='/board/register'" class="btn btn-xs pull-right">게시글 추가</button>
    </div><!-- /.panel-heading -->
    
    <div class="panel-body">
    <table class="table table-striped table-bordered table-hover">
    <thead>
    <tr>
    <th>#번호</th>
    <th>제목</th>
    <th>장르</th>
    <th>평점</th>
    <th>수정일</th>
    <th>조회수</th>
    </tr>
    </thead>
    
    <c:forEach var="boardVO" items="${list}">
    <tr>
       <td>${boardVO.m_ID}</td>
       <td><a href="${path}/board/read${pageMaker.makeSearch(pageMaker.criteria.page)}&m_ID=${boardVO.m_ID}">${boardVO.m_title}</a></td>
       <td>${boardVO.m_genre}</td>
       <td>${boardVO.m_grade}</td>
       <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" 
          value="${boardVO.regdate}" /></td>
       <td><span class="badge bg-red">${boardVO.viewcnt}</span></td>
       </tr>
          </c:forEach>
          
    </table>
    </div><!-- end panel-body -->
    <div class= "panel-footer">
       <div class="text-center">
          <ul class="pagination">
             <c:if test="${pageMaker.prev}">
                   <li>
                      <a href="${path}/board/list${pageMaker.makeSearch(pageMaker.startPage - 1)}">&laquo;</a>
                   </li>
                       </c:if>
                          <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                          <li <c:out value="${pageMaker.criteria.page == idx? 'class=active':''}"/>>
                             <a href="${path}/board/list${pageMaker.makeSearch(idx)}">${idx}</a>
                           </li>
                         </c:forEach>
                  <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                      <li>
                        <a href="${path}/board/list${pageMaker.makeSearch(pageMaker.endPage + 1)}">&raquo;</a>
                       </li>
                 </c:if>
          </ul>
       </div>
    </div>
    <div class="box-footer">
                        <br/>
                        <div class="form-group col-sm-2">
                            <select class="form-control" name="searchType" id="searchType">
                                <option value="n" <c:out value="${criteria.searchType == null ? 'selected' : ''}"/>>:::::: 선택 ::::::</option>
                                <option value="t" <c:out value="${criteria.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
                                <option value="c" <c:out value="${criteria.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
                                <option value="w" <c:out value="${criteria.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
                                <option value="tc" <c:out value="${criteria.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
                                <option value="cw" <c:out value="${criteria.searchType eq 'cw' ? 'selected' : ''}"/>>내용+작성자</option>
                                <option value="tcw" <c:out value="${criteria.searchType eq 'tcw' ? 'selected' : ''}"/>>제목+내용+작성자</option>
                            </select>
                        </div>
                        <div class="form-group col-sm-10">
                            <div class="input-group">
                                <input type="text" class="form-control" name="keyword" id="keywordInput" value="${criteria.keyword}" placeholder="검색어">
                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-primary btn-flat" id="searchBtn">
                                        <i class="fa fa-search"></i> 검색
                                    </button>
                                </span>
                            </div>
                        </div>
                    </div>
    </div><!-- end panel -->
    </div><!-- /.col-lg-12 -->
    </div><!-- /.row -->
    
    <script>
       var result='${msg}';
       
       if(result == 'SUCCESS'){
          alert("처리가 완료되었습니다.");
       }
        $(document).ready(function () {
           
               $("#searchBtn").on("click", function (event) {
                   self.location = "list${pageMaker.makeQuery(1)}"
                       + "&searchType=" + $("select option:selected").val()
                       + "&keyword=" + encodeURIComponent($('#keywordInput').val());
               });
        });
    </script>
    <%@include file="../include/footer.jsp"%>
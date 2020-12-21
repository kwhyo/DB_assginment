<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.11/handlebars.min.js"></script>
    <%@include file="../include/header.jsp"%>
    <div class="row">
    <div class="col-lg-12">
    <h1 class="page-header">����������</h1>
    </div><!-- /.col-lg-12-->
    </div><!-- /.row -->
    <div class="row">
    <div class="col-lg-12">
    <div class="panel panel-default">
    <div class="panel-heading">ȸ������<img src="/resources/img/a.PNG" alt="a" border="3px" width="200px" height="200px" align="right"><br><br><br><br><br><br><br><br><br><br></div>
    <!--  /.panel-heading -->
    
    <div class="panel-body">
    <div class="form-group">
       
    <label>�̸�</label><input class="form-control" name='title'
    value='<c:out value="ȫ����"/>' readonly="readonly">
    </div>
    <div class="form-group">
    <label>����</label>
    <textarea class="form-control" rows="3" name='content'
    readonly="readonly"><c:out value="���л�"/></textarea> 
    </div>
    <label>��ȣ</label>
    <textarea class="form-control" rows="3" name='content'
    readonly="readonly"><c:out value="010-2168-5726"/></textarea> 
    </div>
    <label>�ּ�</label>
    <textarea class="form-control" rows="3" name='content'
    readonly="readonly"><c:out value="����Ư���� ������ â2�� 601-106, �ؼ����� B�� 201ȣ"/></textarea> 
    
    <label>�̸���</label>
    <textarea class="form-control" rows="3" name='content'
    readonly="readonly"><c:out value="ghdzhf@naver.com"/></textarea> 
    </div>
    </div>
    <div class="form-group">
    <label>�ſ���</label><input class="form-control" name='writer'
    value='<c:out value="������"/>' readonly="readonly">
    </div>
    
    <button id="ModiBtn" class="btn btn-default">����</button>
    <button id="ListBtn" class="btn btn-default" onclick="location.href='/board/list'">Ȩ������</button>
    
<%@include file="../include/footer.jsp"%>
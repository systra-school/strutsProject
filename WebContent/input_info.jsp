<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic" %>
<!DOCTYPE html>
<html:html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>入力画面</title>
</head>
<body>
<div class="container">
<h1>入力画面</h1>
<html:form method="post" action="test.do">
<div class="form-group row">
	<label for="name" class="col-md-2 control-label">アカウント</label>
	<div class="col-md-10">
		<html:text property="text" />
	</div>
</div>
<div class="form-group row">
	<label for="name" class="col-md-2 control-label">パスワード</label>
	<div class="col-md-10">
		<html:password property="pass" />
	</div>
</div>
<div class="form-group row">
	<label for="name" class="col-md-2 control-label">備考</label>
	<div class="col-md-10">
		<html:textarea property="area" />
	</div>
</div>
<div class="form-group row">
	<label for="name" class="col-md-2 control-label">(hidden)</label>
	<div class="col-md-10">
		<html:hidden property="hidden" value="hoge" />
	</div>
</div>
<br />
<div class="form-group row">
	<div class="col-md-offset-1 col-md-11">
		<html:submit value="ok" />
		<html:reset value="リセット" />
	</div>
</div>
</html:form>
</div>
</body>
</html:html>
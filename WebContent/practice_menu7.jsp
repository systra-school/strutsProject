<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
<%@ page import="bean.Practice7DataList" %>
<!DOCTYPE html>
<bean:define id="dataList" name="dataList" scope="session" type="bean.Practice7DataList" />
<html:html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>メニュー画面</title>
	    <!-- BootStrap -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
	</head>
	<body>
		<h1>メニュー画面</h1>
		<div class="container" >
			<html:form method="post" action="action7.do">
				<div class="row" style="margin: middle;">
					<div class="col-sm-5">
						<div>開発部に追加する従業員を選択してください！</div>
						<html:select property="empSelect" size="5" style="width: 150px;">
							<%-- dataListからempDataArrをセレクトボックス内に表示 --%>
							<html:options name="dataList" labelName="dataList" property="empDataArr" labelProperty="empDataArr"/>
						</html:select>
					</div>
					<div class="col-sm-2" style="display: lfex; justify-content: center; align-items:center;">
						<div><html:submit property="mode" value="追加&gt;"/></div>
						<%-- <div><html:submit property="mode" value="&lt;削除"/></div> --%>
					</div>
					<div class="col-sm-5">
						<html:select property="addSelect" size="5" style="width: 150px;">
							<%-- dataListからaddSelectをセレクトボックス内に表示 --%>
							<html:options name="dataList" labelName="dataList" property="values" labelProperty="values"/>
						</html:select><br />
						<span><bean:message name="dataList" property="removeMsg"/></span>
					</div>
				</div>
				<bean:message name="dataList" property="resultMsg"/>
			</html:form>
		</div>

	</body>
</html:html>

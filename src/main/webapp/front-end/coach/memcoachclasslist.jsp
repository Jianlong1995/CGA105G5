<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="com.musclebeach.coachclassorder.model.*"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- �����Ƚm�߱ĥ� Script ���g�k���� --%>

<%
  CoachClassOrderVO coachClassOrderVO = (CoachClassOrderVO) request.getAttribute("coachClassOrderVO");
 
%>

<html>






<!-- 					<li> -->
<!-- 						<FORM METHOD="post" ACTION="coach.do"> -->
<!-- 							<b>�e�x�H�|���s���d�ߩҦ��q����:</b> <select size="1" name="memid"> -->
<%-- 								<c:forEach var="CoachClassOrderVO" items="${coachSvc.all}"> --%>
<%-- 									<option value="${CoachClassOrderVO.memID}">${CoachClassOrderVO.memID} --%>
<%-- 								</c:forEach> --%>
<!-- 							</select> <input type="hidden" name="action" -->
<!-- 								value="getMem_For_DisplayFront"> <input type="submit" -->
<!-- 								value="�e�X"> -->
<!-- 						</FORM> -->
<!-- 					</li> -->







<head>
<title>���u��� </title>


<!-- Favicon -->
    <link href="<%=request.getContextPath()%>/front-end/resources/img/favicon.ico" rel="icon">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Flaticon Font -->
    <link href="<%=request.getContextPath()%>/front-end/resources/lib/flaticon/font/flaticon.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="<%=request.getContextPath()%>/front-end/resources/css/style.min.css" rel="stylesheet">
    
    <style>
		

  table#table-1 {
	background-color: #CCCCFF;
    border: 2px solid black;
    text-align: center;
    width:100%;
  }
    table#table-2 {
	background-color: cyan;
    border: 3px solid black;
    text-align: center;
    width:100%;
  }
  table#table-1 h4 {
    color: red;
    display: block;
    margin-bottom: 1px;
    
  }
  h4 {
    color: blue;
    display: inline;
  }
</style>

<style>
  table {
	width: 600px;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
  }
  table, th, td {
    border: 1px solid #CCCCFF;
  }
  th, td {
    padding: 5px;
    text-align: center;
  }
</style>

</head>
<body bgcolor='white'>




<table id="table-1">
	<tr><td>
		 <h3>�q�����</h3>
		 <h4><a href="../indexlogin.jsp">�^����</a></h4>
	</td></tr>
</table>






<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<table id="table-2">
<c:forEach var="VO2" items="${coachClassOrderVO2}">
	<tr>
		<th>�нm�q��s��</th>
		<th>�нm�s��</th>
		<th>�q�榨�߮ɶ�</th>
		<th>�нm�q�檬�A</th>
		<th>�ҵ{�ɶ�</th>
		<th>�ҵ{�ɬq</th>
	</tr>
	<tr>
	
		<td>${VO2.orderID}</td>
		<td>${VO2.empID}</td>
		<td><fmt:formatDate value="${VO2.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
		<td class="orderstauts">${VO2.orderstatus==0 ? '�����w��':'���\�w�� '}</td>
		<td>${VO2.classTime}</td> 
		<td class="coachclassperiod" >${VO2.coachclassperiod}</td>	
	</tr>
		</c:forEach>

</table>



    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath()%>/front-end/resources/lib/easing/easing.min.js"></script>
    <script src="<%=request.getContextPath()%>/front-end/resources/lib/waypoints/waypoints.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="<%=request.getContextPath()%>/front-end/resources/mail/jqBootstrapValidation.min.js"></script>
    <script src="<%=request.getContextPath()%>/front-end/resources/mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="<%=request.getContextPath()%>/front-end/resources/js/main.js"></script>

</body>

<script>

const a = document.getElementsByClassName("coachclassperiod");

const b = document.getElementsByClassName("orderstauts");

const c = document.getElementsByClassName("update");

const d = document.getElementsByClassName("delete");

for (let i = 0 ; i<a.length ; i++){
	if(a[i].innerHTML==="222222222222222222222222"){
		a[i].textContent=("�w����")
	}
	for(let j=0;j<24;j++){
//			console.log(a[i].innerHTML.charAt(j));
		if(a[i].innerHTML.charAt(j)==='0'){
			console.log("��m�b"+j);
			if(j>=12){
				a[i].textContent=("�U��"+(j-12)+"�I-"+(j+1-12)+"�I");
				break;
			}
			else{
				a[i].textContent=("�W��"+j+"�I-"+(j+1)+"�I");
				break;
			}
		}
	}
}

</script>


</html>
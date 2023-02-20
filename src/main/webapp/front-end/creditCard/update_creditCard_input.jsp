<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.musclebeach.creditCard.model.*" %>

<%
    CreditCardVO creditCardVO = (CreditCardVO) request.getAttribute("creditCardVO");
%>

<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>�H�Υd��ƭק� - update_creditCard_input.jsp</title>

    <style>
        table#table-1 {
            background-color: #CCCCFF;
            border: 2px solid black;
            text-align: center;
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
            width: 450px;
            background-color: white;
            margin-top: 1px;
            margin-bottom: 1px;
        }

        table, th, td {
            border: 0px solid #CCCCFF;
        }

        th, td {
            padding: 1px;
        }
    </style>

</head>
<body bgcolor='white'>

<table id="table-1">
    <tr>
        <td>
            <h3>�H�Υd��ƭק� - update_creditCard_input.jsp</h3>
            <h4><a href="select_page.jsp">
                <width
                ="100" height="32" border="0">�^����</a></h4>
        </td>
    </tr>
</table>

<h3>��ƭק�:</h3>

<%-- ���~��C --%>
<c:if test="${not empty errorMsgs}">
    <font style="color:red">�Эץ��H�U���~:</font>
    <ul>
        <c:forEach var="message" items="${errorMsgs}">
            <li style="color:red">${message}</li>
        </c:forEach>
    </ul>
</c:if>

<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/front-end/creditCard/creditCard.do" name="form1">
    <table>
        <tr>
            <td>�H�Υd�s��:<font color=red><b>*</b></font></td>
            <td><%=creditCardVO.getCcID()%>
            </td>
        </tr>
        <tr>
            <td>�|���s��:</td>
            <td><input type="TEXT" name="memID" size="45" value="<%=creditCardVO.getMemID()%>"/></td>
        </tr>
        <tr>
            <td>�H�Υd��:</td>
            <td><input type="TEXT" name="ccNumber" size="45" value="<%=creditCardVO.getCcNumber()%>"/></td>
        </tr>
        <tr>
            <td>���d�H�m�W:</td>
            <td><input type="TEXT" name="ccName" size="45" value="<%=creditCardVO.getCcName()%>"/></td>
        </tr>
        <tr>
            <td>�H�Υd����:</td>
            <td><input type="TEXT" name="ccTime" size="45" value="<%=creditCardVO.getCcTime()%>"/></td>
        </tr>
        <tr>
            <td>���ҽX:</td>
            <td><input type="TEXT" name="ccvc" size="45" value="<%=creditCardVO.getCcvc()%>"/></td>
        </tr>


    </table>
    <br>
    <input type="hidden" name="action" value="update">
    <input type="hidden" name="ccID" value="<%=creditCardVO.getCcID()%>">
    <input type="submit" value="�e�X�ק�"></FORM>
</body>
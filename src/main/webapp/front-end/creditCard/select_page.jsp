<%@ page import="com.musclebeach.creditCard.model.CreditCardVO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.musclebeach.creditCard.model.CreditCardService" %>
<%@ page import="com.musclebeach.common.util.ApplicationContextUtil" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>GYM CreditCard: Home</title>

    <style>
        table#table-1 {
            width: 450px;
            background-color: #CCCCFF;
            margin-top: 5px;
            margin-bottom: 10px;
            border: 3px ridge Gray;
            height: 80px;
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

</head>
<body bgcolor='white'>

<table id="table-1">
    <tr>
        <td><h3>GYM CreditCard: Home</h3><h4>( MVC )</h4></td>
    </tr>
</table>

<p>This is the Home page for GYM CreditCard: Home</p>

<h3>��Ƭd��:</h3>

<%-- ���~��C --%>
<c:if test="${not empty errorMsgs}">
    <font style="color:red">�Эץ��H�U���~:</font>
    <ul>
        <c:forEach var="message" items="${errorMsgs}">
            <li style="color:red">${message}</li>
        </c:forEach>
    </ul>
</c:if>

<ul>
    <li><a href='listAllCreditCard.jsp'>List</a> all CreditCards. <br><br></li>


    <li>
        <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/front-end/creditCard/creditCard.do">
            <b>��J�H�Υd�s��:</b>
            <input type="text" name="ccID">
            <input type="hidden" name="action" value="getOne_For_Display">
            <input type="submit" value="�e�X">
        </FORM>
    </li>

    <%
        ApplicationContext ctx = ApplicationContextUtil.getContext();
        assert ctx != null;
        CreditCardService creditCardSvc = ctx.getBean(CreditCardService.class);
        List<CreditCardVO> list = creditCardSvc.getAll();
        pageContext.setAttribute("list", list);
    %>
    <li>
        <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/front-end/creditCard/creditCard.do">
            <b>��ܷ|���s��:</b>
            <select size="1" name="ccID">
                <c:forEach var="creditCardVO" items="${list}">
                <option value="${creditCardVO.ccID}">${creditCardVO.memID}
                    </c:forEach>
            </select>
            <input type="hidden" name="action" value="getOne_For_Display">
            <input type="submit" value="�e�X">
        </FORM>
    </li>

</ul>


<h3>�ҵ{�޲z</h3>

<ul>
    <li><a href='addCreditCard.jsp'>Add</a> �ɯŷ|��</li>
    <li><a href='addCreditCard1.jsp'>Add</a> �I�ڭ���</li>
</ul>

</body>
</html>
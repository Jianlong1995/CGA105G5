<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5" %>
<%@ page import="com.musclebeach.creditCard.model.*" %>
<%-- �����Ƚm�߱ĥ� Script ���g�k���� --%>

<%
    CreditCardVO creditCardVO = (CreditCardVO) request.getAttribute("creditCardVO");
%>

<html>
<head>
    <title>�H�Υd��� - listOneCreditCard.jsp</title>

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

<h4>�����Ƚm�߱ĥ� Script ���g�k����:</h4>
<table id="table-1">
    <tr>
        <td>
            <h3>�H�Υd��� - ListOneCreditCard.jsp</h3>
            <h4><a href="select_page.jsp">
                <width
                ="100" height="32" border="0">�^����</a></h4>
        </td>
    </tr>
</table>

<table>
    <tr>
        <th>�H�Υd�s��</th>
        <th>�|���s��</th>
        <th>�H�Υd�d��</th>
        <th>���d�H�m�W</th>
        <th>�H�Υd����</th>
        <th>���ҽX</th>
    </tr>
    <tr>
        <td><%=creditCardVO.getCcID()%>
        </td>
        <td><%=creditCardVO.getMemID()%>
        </td>
        <td><%=creditCardVO.getCcNumber()%>
        </td>
        <td><%=creditCardVO.getCcName()%>
        </td>
        <td><%=creditCardVO.getCcTime()%>
        </td>
        <td><%=creditCardVO.getCcvc()%>
        </td>

    </tr>
</table>

</body>
</html>
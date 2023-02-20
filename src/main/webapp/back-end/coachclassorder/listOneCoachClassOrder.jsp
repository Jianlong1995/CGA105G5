<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5" %>
<%@ page import="java.util.*" %>
<%@ page import="com.musclebeach.coachclassorder.model.CoachClassOrderVO" %>
<%-- �����Ƚm�߱ĥ� Script ���g�k���� --%>

<%
    CoachClassOrderVO coachClassOrderVO = (CoachClassOrderVO) request.getAttribute("coachClassOrderVO"); //EmpServlet.java(Concroller), �s�Jreq��empVO����
%>


<html>
<head>
    <title>�нm�޲z</title>
    <link href="css/index.css" rel="stylesheet"/>
    <link href="css/flaticon.css" rel="stylesheet"/>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css"
            rel="stylesheet"/>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
            rel="stylesheet"/>
    <link rel="canonical"
          href="https://getbootstrap.com/docs/5.3/examples/headers/"/>
    <link rel="canonical"
          href="https://getbootstrap.com/docs/5.3/examples/sidebars/"/>
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
            rel="stylesheet">

    <style>
        table#table-1 {
            background-color: #CCCCFF;
            border: 2px solid black;
            text-align: center;
            width: 100%;
        }

        table#table-2 {
            background-color: cyan;
            border: 3px solid black;
            text-align: center;
            width: 100%;
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
<%@ include file="/back-end/header_sidebar.jsp" %>
<div class="tab-content" id="v-pills-tabContent"
     style="width: 100%; height: calc(100vh - 70px);">
    <!-- ============================================ ���� ============================================ -->
    <div class="tab-pane fade " id="v-pills-home" role="tabpanel"
         aria-labelledby="v-pills-home-tab" tabindex="0">
        <img
                src="<%=request.getContextPath()%>/back-end/allcss/image/welcome.gif"
                style="width: 96%" alt=""/>
    </div>
    <!-- ========================================= ���u�޲z ========================================= -->
    <div class="tab-pane fade" id="v-pills-employee" role="tabpanel"
         aria-labelledby="v-pills-employee-tab" tabindex="0"
         style="border: 2px solid green">employee section
    </div>
    <!-- ========================================= �|���޲z ========================================= -->
    <div class="tab-pane fade" id="v-pills-member" role="tabpanel"
         aria-labelledby="v-pills-member-tab" tabindex="0">member
        section
    </div>
    <!-- ========================================= �ӫ��޲z ========================================= -->
    <div class="tab-pane fade " id="v-pills-shop" role="tabpanel"
         aria-labelledby="v-pills-shop-tab" tabindex="0"
         style="border: 2px solid brown">shop section
    </div>
    <!-- ========================================= �нm�޲z ========================================= -->
    <div class="tab-pane fade show active" id="v-pills-coach"
         role="tabpanel" aria-labelledby="v-pills-coach-tab" tabindex="0"
         style="border: 2px solid rgb(214, 122, 122); height: 100%; width: 100%">


        <table id="table-1">
            <tr>
                <td>
                    <h3>�нm�q����</h3>
                    <h4>
                        <a href="selectCoachClassOrderPage.jsp">�^����</a>
                    </h4>
                </td>
            </tr>
        </table>


        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <table id="table-2">
            <tr>
                <th>�нm�q��s��</th>
                <th>���u�s��</th>
                <th>�|���s��</th>
                <th>�q�榨�߮ɶ�</th>
                <th>�нm�q�檬�A</th>
                <th>�ҵ{�ɶ�</th>
                <th>�ҵ{�ɬq</th>
                <th>�q��ק�ɶ�</th>
            </tr>
            <tr>
                <td><%=coachClassOrderVO.getOrderID()%>
                </td>
                <td><%=coachClassOrderVO.getEmpID()%>
                </td>
                <td><%=coachClassOrderVO.getMemID()%>
                </td>
                <td><fmt:formatDate value="${coachClassOrderVO.createTime}"
                                    pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td>${coachClassOrderVO.orderstatus==0 ? '�����w��':'���\�w�� '}</td>
                <!--  	<td><%=coachClassOrderVO.getOrderstatus()%></td> -->
                <td><%=coachClassOrderVO.getClassTime()%>
                </td>
                <td class="coachclassperiod">${coachClassOrderVO.coachclassperiod}</td>
                <td><fmt:formatDate value="${coachClassOrderVO.updateTime}"
                                    pattern="yyyy-MM-dd HH:mm:ss"/></td>
            </tr>
        </table>
    </div>
    <!-- ========================================= �ҵ{�޲z ========================================= -->
    <div class="tab-pane fade" id="v-pills-class" role="tabpanel"
         aria-labelledby="v-pills-class-tab" tabindex="0"
         style="border: 2px solid purple">class section
    </div>
    <!-- ========================================= ���a�޲z ========================================= -->
    <div class="tab-pane fade" id="v-pills-room" role="tabpanel"
         aria-labelledby="v-pills-room-tab" tabindex="0"
         style="border: 2px solid greenyellow">room section
    </div>
    <!-- ========================================= �׾º޲z ========================================= -->
    <div class="tab-pane fade" id="v-pills-article" role="tabpanel"
         aria-labelledby="v-pills-article-tab" tabindex="0"
         style="border: 2px solid rgb(253, 250, 66)">article
    </div>
    <!-- ========================================= �ȪA�޲z ========================================= -->
    <div class="tab-pane fade" id="v-pills-service" role="tabpanel"
         aria-labelledby="v-pills-service-tab" tabindex="0"
         style="border: 2px solid rgb(15, 198, 42)">service section
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="sidebars.js"></script>
<script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="allcss/lib/easing/easing.min.js"></script>
<script src="allcss/lib/waypoints/waypoints.min.js"></script>
<script src="js/main.js"></script>
<script src="mail/jqBootstrapValidation.min.js"></script>
<script src="mail/contact.js"></script>
<script>
    $(function () {
        $("#toCoach").addClass("active");
        $("#toCoach").attr("aria-selected", "true");
    })
</script>


</body>

<script>
    const a = document.getElementsByClassName("coachclassperiod");

    const b = document.getElementsByClassName("orderstauts");

    const c = document.getElementsByClassName("update");

    const d = document.getElementsByClassName("delete");

    for (let i = 0; i < a.length; i++) {
        if (a[i].innerHTML === "222222222222222222222222") {
            a[i].textContent = ("�w����")
        }
        for (let j = 0; j < 24; j++) {
            //			console.log(a[i].innerHTML.charAt(j));
            if (a[i].innerHTML.charAt(j) === '0') {
                console.log("��m�b" + j);
                if (j >= 12) {
                    a[i].textContent = ("�U��" + (j - 12) + "�I-" + (j + 1 - 12) + "�I");
                    break;
                } else {
                    a[i].textContent = ("�W��" + j + "�I-" + (j + 1) + "�I");
                    break;
                }
            }
        }

        if (b[i].innerHTML === "�����w��") {
            c[i].setAttribute("disabled", "disabled")
            d[i].setAttribute("disabled", "disabled")
        }
    }
</script>


</html>
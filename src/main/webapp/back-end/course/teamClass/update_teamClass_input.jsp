<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.musclebeach.teamClass.model.*" %>

<%
    TeamClassVO teamClassVO = (TeamClassVO) request.getAttribute("teamClassVO");
%>
--<%=teamClassVO == null%>
<!-- line 100 -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Muscle Beach ��x����</title>
    <link rel="canonical"
          href="https://getbootstrap.com/docs/5.3/examples/headers/"/>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css"/>
    <link rel="canonical"
          href="https://getbootstrap.com/docs/5.3/examples/sidebars/"/>
    <link
            href="<%=request.getContextPath()%>/back-end/course/resources/Back_end_workspace/assets/dist/css/bootstrap.min.css"
            rel="stylesheet"/>
    <style type="text/css"></style>
    <link
            href="<%=request.getContextPath()%>/back-end/course/resources/Back_end_workspace/index/index.css"
            rel="stylesheet"/>
    <!-- Flaticon Font -->
    <link
            href="<%=request.getContextPath()%>/back-end/course/resources/Back_end_workspace/lib/flaticon/font/flaticon.css"
            rel="stylesheet"/>
    <title>GYM</title>

    <style>
        div#v-pills-class {
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
        }

        table#table-1 {
            width: 95%;
            background-color: #CDA581;
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

    <title>GYM Course</title>


</head>
<body bgcolor='white'>
<%@ include file="../../header_sidebar.jsp" %>
<div class="tab-content" id="v-pills-tabContent"
     style="width: 100%; height: calc(100vh - 70px);">
    <!-- ============================================ ���� ============================================ -->
    <div class="tab-pane fade " id="v-pills-home" role="tabpanel"
         aria-labelledby="v-pills-home-tab" tabindex="0">
        <img src="/image/welcome.gif" style="width: 96%" alt=""/>
    </div>
    <!-- ========================================= ���u�޲z ========================================= -->
    <div class="tab-pane fade" id="v-pills-employee" role="tabpanel"
         aria-labelledby="v-pills-employee-tab" tabindex="0"
         style="border: 2px solid green">employee section Lorem ipsum
        dolor sit amet consectetur adipisicing elit. Minima reprehenderit
        adipisci praesentium atque! Corrupti ratione itaque magni unde culpa
        ex?
    </div>
    <!-- ========================================= �|���޲z ========================================= -->
    <div class="tab-pane fade" id="v-pills-member" role="tabpanel"
         aria-labelledby="v-pills-member-tab" tabindex="0"></div>
    <!-- ========================================= �ӫ��޲z ========================================= -->
    <div class="tab-pane fade" id="v-pills-shop" role="tabpanel"
         aria-labelledby="v-pills-shop-tab" tabindex="0"
         style="border: 2px solid brown">shop section
    </div>
    <!-- ========================================= �нm�޲z ========================================= -->
    <div class="tab-pane fade" id="v-pills-coach" role="tabpanel"
         aria-labelledby="v-pills-coach-tab" tabindex="0"
         style="border: 2px solid rgb(214, 122, 122)">coach section
    </div>
    <!-- ========================================= �ҵ{�޲z ========================================= -->
    <div class="tab-pane fade  show active" id="v-pills-class"
         role="tabpanel" aria-labelledby="v-pills-class-tab" tabindex="0"
         style="border: 2px solid purple">

        <table id="table-1">
            <tr>
                <td>
                    <h3>�ҵ{��ƭק� </h3>

                </td>
            </tr>
        </table>


        <%-- ���~��C --%>
        <c:if test="${not empty errorMsgs}">
        <font style="color: red">�Эץ��H�U���~:</font>
        <ul>
            <c:forEach var="message" items="${errorMsgs}">
                <li style="color: red">${message}</li>
            </c:forEach>
        </ul>
        </c:if>

        <FORM METHOD="post" ACTION="teamClass.do" name="form1">
            <table id="table-2">
                <tr>
                    <td>�ҵ{�s��:<font color=red><b>*</b></font></td>
                    <td><%=teamClassVO.getClassID()%>
                    </td>
                </tr>
                <tr>
                    <td>���u�s��:</td>
                    <td><input type="TEXT" name="empID" size="45"
                               value="<%=teamClassVO.getEmpID()%>" required/></td>
                </tr>
                <tr>
                    <td>�ҵ{���O:</td>
                    <td><input type="TEXT" name="typeID" size="45"
                               value="<%=teamClassVO.getTypeID()%>" required/></td>
                </tr>
                <tr>
                    <td>�ҵ{�W��:</td>
                    <td><input type="TEXT" name="className" size="45"
                               value="<%=teamClassVO.getClassName()%>" required/></td>
                </tr>
                <tr>
                    <td>�ҵ{�H�ƤW��:</td>
                    <td><input type="TEXT" name="peopleMax" size="45"
                               value="<%=teamClassVO.getPeopleMax()%>" required/></td>
                </tr>
                <tr>
                    <td>�ҵ{���e:</td>
                    <td><input type="TEXT" name="classContent" size="45"
                               value="<%=teamClassVO.getClassContent()%>" required/></td>
                </tr>


                <tr>
                    <td>�ҵ{���A:</td>
                    <td><input type="TEXT" name="classStatus" size="45"
                               value="<%=teamClassVO.getClassStatus()%>" required/></td>
                </tr>

            </table>
            <br> <input type="hidden" name="action" value="update">
            <input type="hidden" name="classID"
                   value="<%=teamClassVO.getClassID()%>"> <input
                type="submit" value="�e�X�ק�">
        </FORM>
</body>
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
</main>
<script
        src="<%=request.getContextPath()%>/back-end/course/resources/Back_end_workspace/js/popper.min.js"></script>
<script
        src="<%=request.getContextPath()%>/back-end/course/resources/Back_end_workspace/js/bootstrap.min.js"></script>
<script
        src="<%=request.getContextPath()%>/back-end/course/resources/Back_end_workspace/assets/dist/js/bootstrap.bundle.min.js"></script>
<script
        src="<%=request.getContextPath()%>/back-end/course/resources/Back_end_workspace/index/sidebars.js"></script>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script>
    $(function () {
        $("#toClass").addClass("active");
        $("#toClass").attr("aria-selected", "true");
    })
</script>

</body>
</html>




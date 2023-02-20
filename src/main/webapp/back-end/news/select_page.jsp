<%@ page import="com.musclebeach.news.model.NewsService" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>�ȪA�޲z</title>
    <link href="css/index.css" rel="stylesheet"/>
    <link href="css/flaticon.css" rel="stylesheet"/>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css"
            rel="stylesheet"/>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
            rel="stylesheet"/>
    <link rel="canonical"
          href="https://getbootstrap.com/doc	s/5.3/examples/headers/"/>
    <link rel="canonical"
          href="https://getbootstrap.com/docs/5.3/examples/sidebars/"/>
    <style type="text/css"></style>
    <style>
        table#table-1 {
            width: 1056px;
            background-color: #CEFFCE;
            margin-top: 5px;
            margin-bottom: 10px;
            border: 3px ridge Gray;
            height: 80px;
            text-align: center;
            ext-align: center
        }
    </style>
</head>
<body>
<%@ include file="/back-end/header_sidebar.jsp" %>
<%
    NewsService newsSvc = context.getBean(NewsService.class);
    pageContext.setAttribute("newsSvc", newsSvc);
%>
<div class="tab-content" id="v-pills-tabContent"
     style="width: 100%; height: calc(100vh - 70px);">
    <!-- ============================================ ���� ============================================ -->
    <div class="tab-pane fade" id="v-pills-home" role="tabpanel"
         aria-labelledby="v-pills-home-tab" tabindex="0">
        <img src="/image/welcome.gif" style="width: 96%" alt=""/>
    </div>
    <!-- ========================================= ���u�޲z ========================================= -->
    <div class="tab-pane fade " id="v-pills-employee" role="tabpanel"
         aria-labelledby="v-pills-employee-tab" tabindex="0"
         style="border: 2px solid green">employee section
    </div>
    <!-- ========================================= �|���޲z ========================================= -->
    <div class="tab-pane fade" id="v-pills-member" role="tabpanel"
         aria-labelledby="v-pills-member-tab" tabindex="0">member
        section
    </div>
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
    <div class="tab-pane fade show active" id="v-pills-service"
         role="tabpanel" aria-labelledby="v-pills-service-tab" tabindex="0"
         style="width:100%">
        <table id="table-1">
            <tr>
                <td><h3>�̷s�����޲z</h3></td>
            </tr>
        </table>


        <div style="text-align: center;">
            <h3>������Ƭd��:</h3>
        </div>

        <%-- ���~��C --%>
        <c:if test="${not empty errorMsgs}">
            <font style="color: red">�Эץ��H�U���~:</font>
            <ul>
                <c:forEach var="message" items="${errorMsgs}">
                    <li style="color: red">${message}</li>
                </c:forEach>
            </ul>

        </c:if>
        <div style="text-align: center;">
            <hr>
            <a href='listAllNews.jsp'>
                <button type="button" class="btn btn-outline-info">�����̷s����</button>
            </a> <br> <br> <a href='addNews.jsp'>
            <button type="button" class="btn btn-outline-secondary">�s�W�̷s����</button>
        </a> <br> <br>
            <ul>
                <FORM METHOD="post" ACTION="news.do">
                    <input type="text" name="newsTitle" placeholder="�п�J�d�ߦr��">
                    <input type="hidden" name="action" value="listNewsByNewsTitleB">
                    <input class="btn btn-outline-danger" type="submit" value="�e�X">

                </FORM>
            </ul>
            <ul>
                <FORM METHOD="post" ACTION="news.do">
                    <input type="text" name="empID" placeholder="�п�J���u�s��"> <input
                        type="hidden" name="action" value="listNewsByEmpID"> <input
                        class="btn btn-outline-danger" type="submit" value="�e�X">
                </FORM>
            </ul>


            <ul>
                <FORM METHOD="post" ACTION="news.do">
                    <b id="b1">��ܮ������D:</b> <select size="1" name="newsID">
                    <c:forEach var="newsVO" items="${newsSvc.all}">
                    <option value="${newsVO.newsID}">${newsVO.newsTitle}
                        </c:forEach>
                </select> <input type="hidden" name="action" value="getOne_For_Display">
                    <input class="btn btn-outline-primary" type="submit" value="�e�X">

                </FORM>
            </ul>

        </div>


    </div>
</div>
</main>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="index/sidebars.js"></script>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script>
    $(function () {
        $("#toService").addClass("active");
        $("#toService").attr("aria-selected", "true");
    })
</script>
</body>
</html>
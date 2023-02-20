<%@ page import="com.musclebeach.news.model.NewsVO" %>
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
          href="https://getbootstrap.com/docs/5.3/examples/headers/"/>
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
        }

        intput
        table, th, td {
            border: 1px solid #CCCCFF;
        }
    </style>
    <style type="text/css">
        textarea {
            resize: none;
        }
    </style>
</head>
<body>
<%@ include file="/back-end/header_sidebar.jsp" %>
<div class="tab-content" id="v-pills-tabContent"
     style="width: 100%; height: calc(100vh - 70px);">
    <!-- ============================================ ���� ============================================ -->
    <div class="tab-pane fade" id="v-pills-home" role="tabpanel"
         aria-labelledby="v-pills-home-tab" tabindex="0">
        <img src="/image/welcome.gif" style="width: 96%" alt=""/>
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
            <%
                NewsVO newsVO = (NewsVO) request.getAttribute("newsVO");
            %>

            <tr>
                <td>
                    <h3>�s�W�̷s����</h3>
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

        <FORM METHOD="post" ACTION="news.do" name="form1"
              style="margin-left: 250px">
            <table>
                <tr>
                    <td>���u�s��:</td>
                    <td><input type="TEXT" name="empID" size="45">
                </tr>
                <tr style="margin-left: 200px">
                    <td>�������D:</td>
                    <td><input type="TEXT" name="newsTitle" size="45"></td>
                </tr>
                <tr>
                    <td>�������e:</td>
                    <td>
						<textarea name="newsContent" rows="10" cols="45"
                                  placeholder="xxx"/>
                        </textarea>
                    </td>
                </tr>
            </table>
            <br> <input type="hidden" name="action" value="insert">
            <input style="margin-left: 150px;" type="submit" value="�e�X�s�W">
            <input type="button" onclick="history.back()" value="��^"/>

        </FORM>
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
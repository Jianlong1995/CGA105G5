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
            background-color: #CCCCFF;
            margin-top: 5px;
            margin-bottom: 10px;
            border: 3px ridge Gray;
            height: 80px;
            text-align: center;
        }
    </style>
</head>
<body>
<%@ include file="/back-end/header_sidebar.jsp" %>
<div class="tab-content" id="v-pills-tabContent"
     style="width: 100%; height: calc(100vh - 70px);">
    <!-- ============================================ ���� ============================================ -->
    <div class="tab-pane fade show active" id="v-pills-home"
         role="tabpanel" aria-labelledby="v-pills-home-tab" tabindex="0">
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
         style="display: flex; flex-direction: column; margin-left: 250px; ">
        <br> <input type="button" value="�̷s�����޲z"
                    onclick="location.href='<%=request.getContextPath()%>/back-end/news/select_page.jsp '"
                    style="width: 500px; height: 100px"> <br> <br> <br>
        <input type="button" value="�`�����D�޲z"
               onclick="location.href='<%=request.getContextPath()%>/back-end/question/select_page.jsp '"
               style="width: 500px; height: 100px">

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
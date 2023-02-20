<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<%@ page import="com.musclebeach.coachtime.model.CoachTimeVO" %>
<%@ page import="com.musclebeach.coachtime.model.CoachTimeService" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="com.musclebeach.common.util.ApplicationContextUtil" %>


<html>
<head>

    <!-- Css Styles -->
    <link rel="stylesheet" href="css2/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css2/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css2/flaticon.css" type="text/css">
    <link rel="stylesheet" href="css2/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css2/barfiller.css" type="text/css">
    <link rel="stylesheet" href="css2/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css2/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css2/style.css" type="text/css">



    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
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
</head>

<style>
    table#table-1 {
        background-color: #CCCCFF;
        text-align: center;
        width: 100%;
    }

    table#table-2 {
        background-color: cyan;
        border: 1px solid black;
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

    #v-pills-coach {
        background-image: url("");
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-position: center;
        background-size: cover;
    }
    @import url('https://fonts.googleapis.com/css?family=Lato:400,700');

    body{
        font-family: 'Lato', sans-serif;
    }
</style>


<body>
<%@ include file="/back-end/header_sidebar.jsp" %>
<div class="tab-content" id="v-pills-tabContent"
     style="width: 100%; height: calc(100vh - 70px);">
    <%
        CoachTimeService coachSvc = context.getBean(CoachTimeService.class);
        List<CoachTimeVO> list = coachSvc.getAll();
        pageContext.setAttribute("list", list);
    %>
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




        <div class="gettouch-section" style="text-align:center ;background-color:darkcyan">
            <div class="container" >
                <div class="row">
                    <div class="col-md-4">
                        <div class="gt-text">

                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="gt-text">
                            <ul >
                                <li><b style="font-size:25px">�нm�ɬq���</b></li>
                                <li style="text-decoration:none;"><a href="selectCoachTimePage.jsp"><b style="color:black">�^����</b></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="gt-text email">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End -->

        <div id="middlee" style="display: block; text-align: center;">


            <table id="table-2">
                <tr>
                    <th>�إ߽s��</th>
                    <th>�нm�s��</th>
                    <th>�i�w���ɬq</th>
                    <th>�i�w�����</th>
                    <th>�ק�</th>
                    <th>�R��</th>


                </tr>
                <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                <%@ include file="page1.file" %>
                <c:forEach var="coachTimeVO" items="${list}" begin="<%=pageIndex%>"
                           end="<%=pageIndex+rowsPerPage-1%>">

                    <tr>
                        <td>${coachTimeVO.timeID}</td>
                        <td>${coachTimeVO.empID}</td>
                        <td class="coachtTimeJs">${coachTimeVO.coachTime}</td>
                        <td>${coachTimeVO.coachDate}</td>
                        <td>
                            <FORM METHOD="post"
                                  ACTION="<%=request.getContextPath()%>/back-end/coachtime/coach.do"
                                  style="margin-bottom: 0px;">
                                <input type="submit" value="�ק�"> <input type="hidden"
                                                                          name="timeID" value="${coachTimeVO.timeID}">
                                <input
                                        type="hidden" name="action" value="getOne_For_Update">
                            </FORM>
                        </td>
                        <td>
                            <FORM METHOD="post"
                                  ACTION="<%=request.getContextPath()%>/back-end/coachtime/coach.do"
                                  style="margin-bottom: 0px;">
                                <input type="submit" value="�R��"> <input type="hidden"
                                                                          name="timeID" value="${coachTimeVO.timeID}">
                                <input
                                        type="hidden" name="action" value="delete">
                            </FORM>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <%@ include file="page2.file" %>

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
</main>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="sidebars.js"></script>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script>
    $(function () {
        $("#toCoach").addClass("active");
        $("#toCoach").attr("aria-selected", "true");
    })
</script>
</body>

<script>
    const e = document.getElementsByClassName("coachtTimeJs");
    const a = [];

    for (let i = 0; i < e.length; i++) {
        for (let j = 0; j < 24; j++) {
            if (e[i].innerHTML.charAt(j) === "0") {
                a.push(j);
            }
            if (j === 23) {

                for (let k = 0; k < a.length; k++) {
                    for (let l = 0; l < 24; l++) {
                        if (a[k] === l) {
                            if (l > 12 && l !== 23) {
                                a[k] = "�U��" + (l - 12) + "�I~�U��" + (l - 12 + 1)
                                    + "�I ";
                            } else if (l === 23) {
                                a[k] = "�U��" + (l - 12) + "�I~�W��" + (l - 12 + 1)
                                    + "�I ";
                            } else if (l < 12 && l !== 12) {
                                a[k] = "�W��" + (l) + "�I~�W��" + (l + 1) + "�I ";
                            } else if (l === 12) {
                                a[k] = "�W��" + (l) + "�I~�U��" + (l - 12 + 1)
                                    + "�I ";
                            }
                        }
                    }

                }

                e[i].textContent = a;
                console.log(a.length);
                a.length = 0;

            }

        }

    }
</script>
</html>
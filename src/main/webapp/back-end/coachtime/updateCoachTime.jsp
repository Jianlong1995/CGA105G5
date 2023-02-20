<%@page import="java.sql.Timestamp" %>
<%@page import="java.sql.Date" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<%@ page import="com.musclebeach.coachtime.model.CoachTimeVO" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="com.musclebeach.common.util.ApplicationContextUtil" %>
<%@ page import="com.musclebeach.emp.model.EmpService" %>


<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
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


    <style>
        .login {
            display: inline;
            position: relative;
            Left: calc(100% - 150px);
            top: 5px;
        }

        .register {
            display: inline;
            position: relative;
            Left: calc(100% - 150px);
            top: 5px;
            color: white;
        }

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
<%@ include file="/back-end/header_sidebar.jsp" %>
<div class="tab-content" id="v-pills-tabContent"
     style="width: 100%; height: calc(100vh - 70px);">
    <%
        EmpService empService = context.getBean(EmpService.class);
        pageContext.setAttribute("EmpSvc", empService);
        CoachTimeVO coachTimeVO = (CoachTimeVO) request.getAttribute("coachTimeVO"); //EmpServlet.java (Concroller) �s�Jreq��empVO���� (�]�A�������X��empVO, �]�]�A��J��ƿ��~�ɪ�empVO����)
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


        <table id="table-1">
            <tr>
                <td>
                    <h3>�нm�i�w���ɬq�ק�</h3>
                    <h4>
                        <a href="selectCoachTimePage.jsp">�^����</a>
                    </h4>
                </td>
            </tr>
        </table>

        <h3>��ƭק�:</h3>

        <%-- ���~��C --%>
        <c:if test="${not empty errorMsgs}">
            <font style="color: red">�Эץ��H�U���~:</font>
            <ul>
                <c:forEach var="message" items="${errorMsgs}">
                    <li style="color: red">${message}</li>
                </c:forEach>
            </ul>
        </c:if>


        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

        <FORM METHOD="post" ACTION="coach.do" name="form1">
            <table id="table-2">
                <tr>
                    <td>�إ߽s��:<font color=red><b>*</b></font></td>
                    <td><%=coachTimeVO.getTimeID()%>
                    </td>
                </tr>
                <tr>
                    <td>�нm�s��:</td>
                    <td><input type="TEXT" name="empid" size="45"
                               disabled="disabled"
                               value="<%=(coachTimeVO == null) ? "6" : coachTimeVO.getEmpID()%>"/></td>
                </tr>
                <tr style="position: relative; left: 48%">
                    <td><b>�W�Ȯɬq</b></td>
                </tr>
                <tr>
                    <td style="position: relative; bottom: -10px;">�i�w���ɬq:</td>
                    <td><input type="checkbox" value=0 name="coachTime">12:00-1:00
                        <input type="checkbox" value=1 name="coachTime">1:00-2:00
                        <input type="checkbox" value=2 name="coachTime">2:00-3:00
                        <input type="checkbox" value=3 name="coachTime">3:00-4:00
                        <input type="checkbox" value=4 name="coachTime">4:00-5:00
                        <input type="checkbox" value=5 name="coachTime">5:00-6:00
                        <input type="checkbox" value=6 name="coachTime">6:00-7:00
                        <input type="checkbox" value=7 name="coachTime">7:00-8:00
                        <input type="checkbox" value=8 name="coachTime">8:00-9:00
                        <input type="checkbox" value=9 name="coachTime">9:00-10:00
                        <input type="checkbox" value=10 name="coachTime">10:00-11:00
                        <input type="checkbox" value=11 name="coachTime">11:00-12:00
                    </td>
                </tr>
                <tr style="position: relative; left: 48%">
                    <td><b>�U�Ȯɬq</b></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="checkbox" value=12 name="coachTime">12:00-1:00
                        <input type="checkbox" value=13 name="coachTime">1:00-2:00
                        <input type="checkbox" value=14 name="coachTime">2:00-3:00
                        <input type="checkbox" value=15 name="coachTime">3:00-4:00
                        <input type="checkbox" value=16 name="coachTime">4:00-5:00
                        <input type="checkbox" value=17 name="coachTime">5:00-6:00
                        <input type="checkbox" value=18 name="coachTime">6:00-7:00
                        <input type="checkbox" value=19 name="coachTime">7:00-8:00
                        <input type="checkbox" value=20 name="coachTime">8:00-9:00
                        <input type="checkbox" value=21 name="coachTime">9:00-10:00
                        <input type="checkbox" value=22 name="coachTime">10:00-11:00
                        <input type="checkbox" value=23 name="coachTime">11:00-12:00
                    </td>
                </tr>
                <tr>
                    <td>�w�����:</td>
                    <td><input type="TEXT" name="coachDate" size="45"
                               id="f_date1"
                               value="<%=(coachTimeVO == null) ? "2023-02-02 02:00" : coachTimeVO.getCoachDate()%>"/>
                    </td>
                </tr>


                <!-- 	<tr>
		<td>����:<font color=red><b>*</b></font></td>
		<td><select size="1" name="coachContent">
			<c:forEach var="empVO" items="${EmpSvc.all}">
				<option value="${empVO.coachContent}" ${"0"?'selected':'' } >${empVO.coachContent}
			</c:forEach>
		</select></td>
	</tr>
 -->

            </table>
            <br> <input type="hidden" name="timeID"
                        value="<%=coachTimeVO.getTimeID()%>"> <input type="hidden"
                                                                     name="empid" value="<%=coachTimeVO.getEmpID()%>">
            <input
                    type="hidden" name="coachDate"
                    value="<%=coachTimeVO.getCoachDate()%>"> <input
                type="hidden" name="action" value="update"> <input
                type="submit" style="position: relative; left: 45%;" value="�e�X�ק�">
        </FORM>
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


<!-- =========================================�H�U�� datetimepicker �������]�w========================================== -->


<%
    Date hiredate = null;
    try {
        hiredate = coachTimeVO.getCoachDate();
    } catch (Exception e) {
        hiredate = new Date(System.currentTimeMillis());
    }
%>

<link rel="stylesheet" type="text/css"
      href="../datetimepicker/jquery.datetimepicker.css"/>
<script src="../datetimepicker/jquery.js"></script>
<script
        src="../datetimepicker/jquery.datetimepicker.full.js"></script>

<style>
    .xdsoft_datetimepicker .xdsoft_datepicker {
        width: 300px; /* width:  300px; */
    }

    .xdsoft_datetimepicker .xdsoft_timepicker .xdsoft_time_box {
        height: 151px; /* height:  151px; */
    }
</style>

<script>
    $.datetimepicker.setLocale('zh');
    $('#f_date1').datetimepicker({
        theme: '', //theme: 'dark',
        timepicker: false, //timepicker:true,
        step: 60, //step: 60 (�o�Otimepicker���w�]���j60����)
        format: 'Y-m-d ', //format:'Y-m-d H:i:s',
        value: '<%=hiredate%>',
        // value:   new Date(),
        //disabledDates:        ['2017/06/08','2017/06/09','2017/06/10'], // �h���S�w���t
        //startDate:	            '2017/07/10',  // �_�l��
        minDate: '-1970-01-01', // �h������(���t)���e
        //maxDate:               '+1970-01-01'  // �h������(���t)����
    });

    // ----------------------------------------------------------�H�U�ΨӱƩw�L�k��ܪ����-----------------------------------------------------------

    //      1.�H�U���Y�@�Ѥ��e������L�k���
    var somedate1 = new Date(minDate);
    $('#f_date1')
        .datetimepicker(
            {
                beforeShowDay: function (date) {
                    if (date.getYear() < somedate1.getYear()
                        || (date.getYear() == somedate1.getYear() && date
                            .getMonth() < somedate1.getMonth())
                        || (date.getYear() == somedate1.getYear()
                            && date.getMonth() == somedate1
                                .getMonth() && date
                                .getDate() < somedate1.getDate())) {
                        return [false, ""]
                    }
                    return [true, ""];
                }
            });

    //      2.�H�U���Y�@�Ѥ��᪺����L�k���
    //      var somedate2 = new Date('2017-06-15');
    //      $('#f_date1').datetimepicker({
    //          beforeShowDay: function(date) {
    //        	  if (  date.getYear() >  somedate2.getYear() ||
    //		           (date.getYear() == somedate2.getYear() && date.getMonth() >  somedate2.getMonth()) ||
    //		           (date.getYear() == somedate2.getYear() && date.getMonth() == somedate2.getMonth() && date.getDate() > somedate2.getDate())
    //              ) {
    //                   return [false, ""]
    //              }
    //              return [true, ""];
    //      }});

    //      3.�H�U����Ӥ�����~������L�k��� (�]�i���ݭn������L���)
    //      var somedate1 = new Date('2017-06-15');
    //      var somedate2 = new Date('2017-06-25');
    //      $('#f_date1').datetimepicker({
    //          beforeShowDay: function(date) {
    //        	  if (  date.getYear() <  somedate1.getYear() ||
    //		           (date.getYear() == somedate1.getYear() && date.getMonth() <  somedate1.getMonth()) ||
    //		           (date.getYear() == somedate1.getYear() && date.getMonth() == somedate1.getMonth() && date.getDate() < somedate1.getDate())
    //		             ||
    //		            date.getYear() >  somedate2.getYear() ||
    //		           (date.getYear() == somedate2.getYear() && date.getMonth() >  somedate2.getMonth()) ||
    //		           (date.getYear() == somedate2.getYear() && date.getMonth() == somedate2.getMonth() && date.getDate() > somedate2.getDate())
    //              ) {
    //                   return [false, ""]
    //              }
    //              return [true, ""];
    //      }});
</script>
</html>
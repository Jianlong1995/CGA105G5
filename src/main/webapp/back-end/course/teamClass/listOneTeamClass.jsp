<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5" %>
<%@ page import="com.musclebeach.teamClass.model.*" %>
<%
    TeamClassVO teamClassVO = (TeamClassVO) request.getAttribute("teamClassVO");
%>
<!DOCTYPE html>
<html lang="en">
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
    <!-- DataTables  -->
    <link rel="stylesheet"
          href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">


    <!-- jq DataTables -->
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script
            src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>


    <title>�Ҧ��ҵ{���</title>
    <style>


        td {
            max-width: 250px;
            /* �]�m�̤j�e�� */
            overflow: hidden;
            /* ���öW�X���� */
            text-overflow: ellipsis;
            /* �K�[�ٲ��� */
            white-space: nowrap;
            /* ������ */
            color: maroon;
        }

        .showTd {
            max-width: none;
            overflow: visible;
            white-space: normal;
            /* ���� */
        }
    </style>
    <style>
        div#v-pills-class {
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
        }

        table#table-2 {
            width: 100%;
            border: 2px solid black;
            text-align: center;
        }

        table {
            background-color: white;
            margin-top: 5px;
            margin-bottom: 5px;
        }

        th {
            background-color: #9D7553;
            color: #DABEA7;

        }

        #table-2 td {
            background-color: azure;
            color: silver;
            text-align: center;
            transition: all 0.5s ease-in-out;
        }


        #table-2 tr td {
            color: maroon;

            transition: all 0.5s ease-in-out;
        }


    </style>
</head>
<%@ include file="../../header_sidebar.jsp" %>
<div class="tab-content" id="v-pills-tabContent"
     style="width: 100%; height: calc(100vh - 70px);">
    <!-- ============================================ ���� ============================================ -->
    <div class="tab-pane fade" id="v-pills-home" role="tabpanel"
         aria-labelledby="v-pills-home-tab" tabindex="0">
        <img src="/image/welcome.gif" style="width: 96%" alt=""/>
    </div>

    <!-- ========================================= �ҵ{�޲z ========================================= -->
    <div class="tab-pane fade show active" id="v-pills-class"
         role="tabpanel" aria-labelledby="v-pills-class-tab" tabindex="0"
         style="border: 2px solid purple">


        <table id="table-2">
            <tr>
                <th>�ҵ{�s��</th>
                <th>���u�s��</th>
                <th>�ҵ{���O</th>
                <th>�ҵ{�W��</th>
                <th>�ҵ{�H�ƤW��</th>
                <th>�ҵ{���e</th>
                <th>�ҵ{���A</th>
            </tr>
            <tr>
                <td><%=teamClassVO.getClassID()%>
                </td>
                <td><%=teamClassVO.getEmpID()%>
                </td>
                <td><%=teamClassVO.getTypeID()%>
                </td>
                <td><%=teamClassVO.getClassName()%>
                </td>
                <td><%=teamClassVO.getPeopleMax()%>
                </td>
                <td><%=teamClassVO.getClassContent()%>
                </td>
                <td><%=teamClassVO.getClassStatus() == 1 ? "�W�[" : "�U�["%>
                </td>
            </tr>
        </table>
        <script>
            $(document).on('click', 'td', function () {
                $(this).toggleClass('showTd');
            });
        </script>

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

<%-- 
    Document   : cuu_chuong
    Created on : Mar 9, 2026, 1:19:53 PM
    Author     : CNTT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                font-family: Arial;
            }
            .box{
                width:400px;
                margin:auto;
                padding:20px;
                border:1px solid #ccc;
                background:#f5e6c8;
            }
            .form{
                padding:10px;
                background:#e0f2f1;
                text-align:center;
            }
            input[type=text]{
                width:120px;
                margin:5px;
            }
            .result{
                padding:10px;
                text-align: center;
            }
            .header{
                background:#0a9;
                color:white;
                text-align: center;
                padding:10px;
                font-weight:bold;
            }
        </style>
    </head>
    <body>
        <%
            String result= "";
            int sonhap = 0;
            if(request.getMethod().equalsIgnoreCase("POST")){
                sonhap = Integer.parseInt(request.getParameter("so"));
                for(int i = 1;i<10;i++){
                    result += sonhap + " * " + i + " = " + (sonhap*i) + "<br>";
                }
            }
        %>
        <div class="box">
            <div class="header">BANG CUU CHUONG</div>
            <div class="form">
                <form method="post">
                    cuu chuong :
                    <input type="text" name="so" value="<%=sonhap%>">
                    <input type="submit" value="thuc hien">
                </form>
            </div>
                    <div class="header"> KET QUA </div>
                    <div class="result"><%=result%></div>
        </div>
    </body>
</html>

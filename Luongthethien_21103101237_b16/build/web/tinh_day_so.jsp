<%-- 
    Document   : tinh_day_so
    Created on : Mar 9, 2026, 11:55:31 AM
    Author     : CNTT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TINH DAY SO</title>
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
            input[type=text]{
                width:120px;
                margin:5px;
            }
        </style>
    </head>
    <body>
        <%
            int start = 1;
            int end = 10;
            int tong = 0;
            int tich = 1;
            int tongchan = 0;
            int tongle = 0;
            if(request.getMethod().equalsIgnoreCase("POST")){
                start = Integer.parseInt(request.getParameter("start"));
                end = Integer.parseInt(request.getParameter("end"));
                for(int i = start; i<= end;i++){
                    tong += i;
                    tich *= i;
                    if(i % 2 == 0){
                    tongchan += i;
                    }else{
                    tongle += i;
                    }
                }
            }
        %>
        <div class ="box">
            <h3 align="center">TINH TOAN TREN DAY SO</h3>
            <form method="post">
                so bat dau :
                <input type="text" name="start" value="<%=start%>"><br>
                so ket thuc :
                <input type="text" name="end" value="<%=end%>">
                        <br><br><!-- comment -->

                        tong cac so:
                        <input type="text" value="<%=tong%>" readonly><br><!-- comment -->
                        tich cac so:
                        <input type="text" value="<%=tich%>" readonly><br><!-- comment -->
                        tong cac so chan:
                        <input type="text" value="<%=tongchan%>" readonly><br><!-- comment -->
                        tong cac so le:
                        <input type="text" value="<%=tongle%>" readonly><br><br><!-- comment -->

                        <input type="submit" value="tinh toan">


                        </form>
                        </div>
                        </body>
                        </html>

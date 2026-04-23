<%-- 
    Document   : bai22
    Created on : Mar 17, 2026, 1:46:08 AM
    Author     : CNTT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post">
            <table>
                <tr>
                    <td>
                        Phuong trinh
                    </td>
                    <td>
                        <input type="number" required name="a">
                        x^2 + 
                        <input type="number" required name="b">x+ 
                        <input type="number" required name="c"> = 0
                    </td>
                </tr>
                
                <%
                String sa = request.getParameter("a");
                String sb = request.getParameter("b");
                String sc = request.getParameter("c");
                String kq = "";
                if(sa != null && sb != null && sc != null){
                    int a = Integer.parseInt(sa);
                    int b = Integer.parseInt(sb);
                    int c = Integer.parseInt(sc);
                    double d = b*b - 4*a*c;
                    if(a == 0) kq = "Khong phai phuong trinh bac 2";
                    else if(d < 0) kq = "Vo nghiem";
                    else if(d == 0) kq = "Nghiem kep x = " + (-b/(2*a));
                    else{
                        double x1 = (-b + Math.sqrt(d)) / (2 * a);
                        double x2 = (-b - Math.sqrt(d)) / (2 * a);
                        kq = "Hai nghiem p/b: x1 = " + x1 + ", x2 = " + x2;
                    }
                }
            %>
                
                <tr>
                    <td>
                        Nghiem
                    </td>
                    <td>
                        <input type="number" readonly name="kq" value="<%=kq%>">
                    </td>
                </tr>
            </table>
            
            <button type="submit">Giai phuong trinh</button>
        </form>
    </body>
</html>

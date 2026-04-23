<%-- 
    Document   : bai21
    Created on : Mar 17, 2026, 1:32:55 AM
    Author     : CNTT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.math.BigInteger"%>
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
                    <td>So A</td>
                    <td>
                        <input type="number" name="a" required >
                    </td>
                </tr>
                <tr>
                    <td>So B</td>
                    <td>
                        <input type="number" name="b" required >
                    </td>
                </tr>
                <%
                    String a = request.getParameter("a");
                    String b = request.getParameter("b");
                    int ucln = 0, bcnn = 0;
                    if(a != null && b != null){
                        int sa = Integer.parseInt(a);
                        int sb = Integer.parseInt(b);
                        ucln = BigInteger.valueOf(sa).gcd(BigInteger.valueOf(sb)).intValue();
                        bcnn = sa * sb / ucln;
                    }
                %>
                <tr>
                    <td>UCLN</td>
                    <td>
                        <input type="number" name="ucln" readonly value="<%=ucln%>">
                    </td>
                </tr><tr>
                    <td>BCNN</td>
                    <td>
                        <input type="number" name="bcnn" readonly value="<%=bcnn%>">
                    </td>
                </tr>
            </table>
                    <button type="submit">Tim UCLN va BCNN</button>
        </form>
    </body>
</html>

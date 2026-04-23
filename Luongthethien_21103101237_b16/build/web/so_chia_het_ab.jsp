<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Số chia hết cho A và B</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #d4fc79 0%, #96e6a1 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background: #ffffffee;
            backdrop-filter: blur(8px);
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.25);
            width: 500px;
            animation: fadeIn 1s ease;
        }
        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 25px;
            font-size: 28px;
            text-transform: uppercase;
            letter-spacing: 2px;
        }
        label {
            font-weight: bold;
            display: block;
            margin-top: 15px;
            color: #34495e;
        }
        input[type="text"] {
            width: 100%;
            padding: 12px;
            margin-top: 8px;
            border: 1px solid #ccc;
            border-radius: 10px;
            font-size: 16px;
        }
        textarea {
            width: 100%;
            height: 200px;
            margin-top: 10px;
            padding: 12px;
            font-size: 15px;
            border-radius: 10px;
            border: 1px solid #ccc;
            background: #f7f9fa;
            resize: none;
            color: #2c3e50;
        }
        input[type="submit"] {
            margin-top: 30px;
            width: 100%;
            padding: 14px;
            background: linear-gradient(135deg, #56ab2f, #a8e063);
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 18px;
            cursor: pointer;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }
        input[type="submit"]:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.25);
        }
        @keyframes fadeIn {
            from {opacity: 0; transform: translateY(20px);}
            to {opacity: 1; transform: translateY(0);}
        }
    </style>
</head>
<body>
<div class="container">
    <h2>SỐ CHIA HẾT CHO A VÀ B</h2>
    <form method="post" action="chia_het.jsp">
        <label>Nhập N:</label>
        <input type="text" name="N" required>
        <label>Nhập A:</label>
        <input type="text" name="A" required>
        <label>Nhập B:</label>
        <input type="text" name="B" required>

        <label>Kết quả:</label>
        <textarea name="ketQua" readonly><%= request.getAttribute("ketQua") == null ? "" : request.getAttribute("ketQua") %></textarea>

        <input type="submit" name="tim" value="Các số chia hết cho A và B">
    </form>
</div>

<%
if (request.getParameter("tim") != null) {
    int N = Integer.parseInt(request.getParameter("N"));
    int A = Integer.parseInt(request.getParameter("A"));
    int B = Integer.parseInt(request.getParameter("B"));

    String ketQua = "";
    for (int i = 1; i <= N; i++) {
        if (i % A == 0 && i % B == 0) {
            ketQua += i + " ";
        }
    }

    request.setAttribute("ketQua", ketQua.trim());
%>
    <script>
        document.getElementsByName("ketQua")[0].value = "<%= ketQua.trim() %>";
    </script>
<%
}
%>
</body>
</html>

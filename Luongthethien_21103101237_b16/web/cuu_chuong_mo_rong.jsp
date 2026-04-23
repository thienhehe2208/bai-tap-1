<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bảng cửu chương mở rộng</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #fdfbfb 0%, #ebedee 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background: #ffffffee;
            backdrop-filter: blur(6px);
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            width: 600px;
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
            height: 300px;
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
            background: linear-gradient(135deg, #00b09b, #96c93d);
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
    <h2>IN BẢNG CỬU CHƯƠNG</h2>
    <form method="post" action="cuu_chuong_mo_rong.jsp">
        <label>Bắt đầu từ:</label>
        <input type="text" name="batDau" required>
        <label>Kết thúc tại:</label>
        <input type="text" name="ketThuc" required>

        <label>Kết quả:</label>
        <textarea name="ketQua" readonly><%= request.getAttribute("ketQua") == null ? "" : request.getAttribute("ketQua") %></textarea>

        <input type="submit" name="inBang" value="In bảng cửu chương">
    </form>
</div>

<%
if (request.getParameter("inBang") != null) {
    int batDau = Integer.parseInt(request.getParameter("batDau"));
    int ketThuc = Integer.parseInt(request.getParameter("ketThuc"));
    String ketQua = "";

    for (int i = 1; i <= 10; i++) {
        for (int j = batDau; j <= ketThuc; j++) {
            ketQua += String.format("%d x %d = %-4d\t", j, i, j * i);
        }
        ketQua += "\n";
    }

    request.setAttribute("ketQua", ketQua);
%>
    <script>
        document.getElementsByName("ketQua")[0].value = `<%= ketQua %>`;
    </script>
<%
}
%>
</body>
</html>

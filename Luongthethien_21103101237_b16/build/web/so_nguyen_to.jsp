<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%! 
    // Khai báo hàm kiểm tra số nguyên tố
    boolean isPrime(int x) {
        if (x < 2) return false;
        for (int i = 2; i <= Math.sqrt(x); i++) {
            if (x % i == 0) return false;
        }
        return true;
    }
%>

<%
String ketQua = "";
if (request.getParameter("tim") != null) {
    int N = Integer.parseInt(request.getParameter("N"));
    for (int i = 2; i <= N; i++) {
        if (isPrime(i)) ketQua += i + " ";
    }
}
%>

<html>
<head>
    <title>Tìm số nguyên tố</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #ffecd2 0%, #fcb69f 100%);
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
            background: linear-gradient(135deg, #ff6a00, #ee0979);
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
    <h2>TÌM SỐ NGUYÊN TỐ</h2>
    <form method="post" action="so_nguyen_to.jsp">
        <label>Nhập N:</label>
        <input type="text" name="N" required>

        <label>Các số nguyên tố ≤ N:</label>
        <textarea name="ketQua" readonly><%= ketQua %></textarea>

        <input type="submit" name="tim" value="Các số nguyên tố ≤ N">
    </form>
</div>
</body>
</html>



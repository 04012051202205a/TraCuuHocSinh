<%-- 
    Document   : bai2
    Created on : Oct 16, 2024, 8:15:58 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tính Diện Tích-Chu Vi Hình Chữ Nhật</h1>
        <form action="bai2.jsp" method="POST">
            <table border="1">
                <thead>
                    <tr>
                        <th>Nhập chiều dài</th>
                        <th><input type="text"name="dai"value="" required=""/></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Nhập chiều rộng</td>
                        <td><input type="text"name="rong"value="" required=""/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Tính toán"></td>
                        <td><input type="reset" value="Tiếp tục"></td>
                    </tr>
                </tbody>
            </table>

        </form>
        <%
      String dai=request.getParameter("dai");
      String rong=request.getParameter("rong");
      if(dai!=null && rong!=null){
            double d=Double.parseDouble(dai);
            double r=Double.parseDouble(rong);
            double dt=d*r;
            double cv=(d+r)*2;
            %>
            <hr>
            Diện Tích <%= dt %><br>
            Chu Vi <%=cv %> <br>
            <%
                }

            %>

    </body>
</html>

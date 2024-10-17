<%-- 
    Document   : bai3
    Created on : Oct 16, 2024, 8:50:35 AM
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
          <h1>Đổi Tiền Tệ</h1>
        <form action="bai3.jsp" method="POST">
            <table border="1">
                <thead>
                    <tr>
                        <th>Nhập Số tiền</th>
                        <th><input type="text"name="sotien"value="" required=""/></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Chọn loại ngoại tệ</td>
                        <td><input type="text"name="ngoaite"value="" required=""/>
                            <select name="ngoaite">
                                <option value="USD">USD</option>
                                <option value="GBD">GBP</option>
                                <option value="EUR">EUR</option>
                                <option value="JPY">JPY</option>
                                <option value="AUD">AUD</option>
 
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Đổi tiền"></td>
                        <td><input type="reset" value="Tiếp tục"></td>
                    </tr>
                </tbody>
            </table>
        </form>
          <%
              String soTien=request.getParameter("sotien");
              String ngoaite=request.getParameter("ngoaite");
              if(soTien !=null && ngoaite !=null){
              try{
              double tien=Double.parseDouble(soTien);
              double tigia=0;
              switch (ngoaite) {
                      case "USD":
                      tigia=21380.00;                          
                          break;
                          case "GBP":
                      tigia=32622.80;                          
                          break;
                          case "EUR":
                      tigia=235557.67;                          
                          break;
                          case "JPY":
                      tigia=178.61;                          
                          break;
                          case "AUD":
                      tigia=16727.44;                          
                          break;
                     
                  }
                  double kq=tigia*tien;
              
              
              
              }
              }
     

      
        
  
           
            %>
            
            <%
                
                

            %>
    </body>
</html>

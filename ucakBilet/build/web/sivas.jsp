<%-- 
    Document   : sivas
    Created on : 20.Oca.2022, 04:05:32
    Author     : yusuf
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataBase.dataBase" %>
<!DOCTYPE html>
<%
      dataBase db = new dataBase();
      
    %>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Styles/istanbul.css">
</head>
<body>
     <div class ="baslik"></div>

        <div class="a_baslik">
            <p  class="slogan">Yeni ihtimallere bir uçak bileti mesafe...</p>
        </div>

       <img class="logo" src="logo.png" alt="logo" width="15%" height="10%">
                <%!
             String fiyatt3;
             String fiyatt4;
             
             %>
             <%
              ResultSet result = db.fiyatlistesi();
              
                while (result.next()) {
                  fiyatt3=  result.getString("fiyat3");
                  fiyatt4=  result.getString("fiyat4");
                
                 
                }
             %>
               
           
           
        <div class="d-iç">
        
            <form action="index.jsp">
                <button id="logout" type="submit">ÇIKIŞ</button>
            </form>
    
        </div>

        <div class="main">
    
            <img class="resim" src="ucak.jpg" alt="ortaimg" width="100%" height="100%" />
            
        
        <div class="bilet">
            <form id="contact" action="" method="post">
              
                <div class="sivas">
                    <button type="submit" name="buton3" class="ilk_btn">
                       <h3 class="ilk_saat">10.00</h3>
                       <h3 class="son_saat">11.20</h3>
                       <h2 class="yol">SİVAS -------------------------------> İSTANBUL</h2>
                       <div class="dik"></div>
                       <h2 class="fiyat"><%out.print(fiyatt3); %></h2>
                    </button>

                    <button type="submit" name="buton4"  class="son_btn">
                        <h3 class="ilk_saat">16.30</h3>
                        <h3 class="son_saat">17.50</h3>
                        <h2 class="yol">SİVAS -------------------------------> İSTANBUL</h2>
                        <div class="dik"></div>
                        <h2 class="fiyat"><%out.print(fiyatt4); %></h2>
                     </button>
                </div>

            </form>
          </div>
        
          <div class="cizgi"></div>

      <div class="alt">
        <h1>Yepyeni bir hikâye için şimdi bir uçak bileti alın</h1>
      </div>
              <%
              HttpSession bilet = request.getSession(true);
              String bilet3 = request.getParameter("buton3");
              String bilet4 = request.getParameter("buton4");
              
              if(bilet3 !=null){
                  System.out.println("bilet3");
                 bilet.setAttribute("fiyat", fiyatt3);
                 bilet.setAttribute("durum", "3");
                  response.sendRedirect("bilet.jsp");
              }
              
              if(bilet4 !=null){
                  bilet.setAttribute("fiyat", fiyatt4);
                   bilet.setAttribute("durum", "4");
                  response.sendRedirect("bilet.jsp");
              }
              
              %>
          
          
</body>
</html>

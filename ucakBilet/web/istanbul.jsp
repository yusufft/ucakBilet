<%-- 
    Document   : istanbul
    Created on : 20.Oca.2022, 04:05:19
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
              
        <div class="d-iç">
        
            <form action="index.jsp">
                <button id="logout" type="submit">ÇIKIŞ</button>
            </form>
    
        </div>

        <div class="main">
    
            <img class="resim" src="ucak.jpg" alt="ortaimg" width="100%" height="100%" />
            
              <%!
             String fiyatt1;
             String fiyatt2;
             
             %>
             <%
              ResultSet result = db.fiyatlistesi();
              
                while (result.next()) {
                  fiyatt1=  result.getString("fiyat1");
                  fiyatt2=  result.getString("fiyat2");
                
                 
                }
             %>
            
            
            
        </form>
        
        <div class="bilet">
            <form id="contact" action="" method="post">
              
                <div class="istanbul">
                    <button  type="submit" name="buton1" class="ilk_btn">
                       <h3 class="ilk_saat">09.00</h3>
                       <h3 class="son_saat">10.20</h3>
                       <h2 class="yol">İSTANBUL -------------------------------> SİVAS</h2>
                       <div class="dik"></div>
                       <h2 class="fiyat"><%out.print(fiyatt1); %></h2>
                    </button>

                    <button type="submit" name="buton2" class="son_btn">
                        <h3 class="ilk_saat">21.30</h3>
                        <h3 class="son_saat">22.50</h3>
                        <h2 class="yol">İSTANBUL -------------------------------> SİVAS</h2>
                        <div class="dik"></div>
                        <h2 class="fiyat"><%out.print(fiyatt2); %></h2>
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
              String bilet1 = request.getParameter("buton1");
              String bilet2 = request.getParameter("buton2");
              if(bilet1 !=null){
                 bilet.setAttribute("fiyat", fiyatt1);
                 bilet.setAttribute("durum", "1");
                  response.sendRedirect("bilet.jsp");
              }
              
              if(bilet2 !=null){
                  bilet.setAttribute("fiyat", fiyatt2);
                   bilet.setAttribute("durum", "2");
                  response.sendRedirect("bilet.jsp");
              }
              
              %>
                         
          
          
</body>
</html>

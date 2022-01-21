<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataBase.dataBase"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Oturum Aç</title>
        <link rel="stylesheet" href="Styles/oturum_ac.css">
</head>
<body>
    <div class ="baslik"></div>

        <div class="a_baslik">
            <p  class="slogan">Yeni ihtimallere bir uçak bileti mesafe...</p>
        </div>

       <img class="logo" src="logo.png" alt="logo" width="15%" height="10%">
              
        <div class="d-iç">
        
            <form action="yonetici_gir.jsp" method="get">
                <input id="admin_btn" type="submit" value="YÖNETİCİ GİRİŞİ" />
            </form>

            <form action="oturum_ac.jsp" method="get">
                <input  id="user_btn" type="submit" value="OTURUM AÇ" />
            </form>

            <form action="kaydol.jsp" method="get">
                <input  id="kayit_btn" type="submit" value="KAYDOL" />
            </form>
    
        </div>

        <div class="main">
    
            <img class="resim" src="ucak.jpg" alt="ortaimg" width="100%" height="100%" />
            
        </form>
        
        <div class="bilet">
            <form id="contact" action="" method="post">
              <h1 class="jet">FIRAT JET</h1>
              <div class="çiz"></div>
              <h3 class="aç">Oturum Aç</h3>
                
                <label class="email" for="email">EMAIL :</label>
                <input class="mail" name="email" placeholder="E-posta" type="input">
              
                <label class="password" for="password">ŞIFRE :</label>
                <input class="pw1" name="password" placeholder="Şifre" type="password"/>
              
                <button class="btn" name="oturumbtn" type="submit" id="contact-submit" data-submit="...Sending">OTURUM AÇ</button>
                
            </form>
          </div>
        
          <div class="cizgi"></div>

      <div class="alt">
        <h1>Yepyeni bir hikâye için şimdi bir uçak bileti alın</h1>
      </div>
          
    <%
        dataBase db = new dataBase();
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String oturumbtn = request.getParameter("oturumbtn");
            
                  if(oturumbtn !=null){
                      if (db.hesapKontrolKullanici(email, password)) {
                                response.sendRedirect("kullanici.jsp");
                                System.out.println("YÖNETİCİ GELDİ");
                            }
                      else{
                          System.out.println("GİRİŞ BİLGİLERİ SIKINTILI");
                      }
                  }
    %>
          
</body>
</html>

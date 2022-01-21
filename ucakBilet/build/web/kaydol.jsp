<%-- 
    Document   : kaydol
    Created on : 12.Oca.2022, 20:31:47
    Author     : yusuf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="data.*"%>
<%@page import="DataBase.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kaydol</title>
        <link rel="stylesheet" href="Styles/kaydol.css">

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
              <h3>Kayıt Formu</h3>
              
                <input class="ad" name="firstname" placeholder="Adınız" type="input"/>
              
                <input class="soyad" name="lastname" placeholder="Soyadınız" type="input"/>
              
                <input class="TC" name="tc" placeholder="T.C. Kimlik No" type="input"/>
              
                <input class="tel" name="number" placeholder="Telefon(555-555-55-55)" type="input"/>
              
                <input class="mail" name="email" placeholder="E-posta" type="input"/>
                
                <input class="pw1" name="password1" placeholder="Şifre" type="password"/>
              
                <input class="pw2" name="password2" placeholder="Şifreyi Tekrar Giriniz" type="password"/>
              
                <button class="btn" name="submit" type="submit" id="contact-submit" data-submit="...Sending">KAYDOL</button>
              
            </form>
          </div>
        
          <div class="cizgi"></div>

      <div class="alt">
        <h1>Yepyeni bir hikâye için şimdi bir uçak bileti alın</h1>
      </div>
          
    <%
        dataBase db = new dataBase();
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String tc = request.getParameter("tc");
        String phone_number = request.getParameter("number");
        String email = request.getParameter("email");
        String password1 = request.getParameter("password1");
        String password2 = request.getParameter("password2");
        String kaydolbtn = request.getParameter("submit");
        
        if (kaydolbtn != null) {
                if (!firstname.equals("")&&!lastname.equals("")&&!tc.equals("")&&!phone_number.equals("")&&!email.equals("")&&
                        !password1.equals("")&&!password2.equals("")) {
                    kullanici personel = new kullanici(firstname, lastname, tc, phone_number, email, password1, password2);
                    db.insertKullanici(personel);
                    
                        response.sendRedirect("oturum_ac.jsp");
                    }else{
                    response.sendRedirect("kaydol.jsp");
                }
            }

 
    
    %>

          
</body>
</html>

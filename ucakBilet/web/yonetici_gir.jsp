<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="data.*"%>
<%@page import="DataBase.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Yönetici Girişi</title>
        <link rel="stylesheet" href="Styles/yonetici_gir.css">
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
              <h3 class="aç">Yönetici Girişi</h3>
                
                <label class="email" for="email">Email :</label>
                <input class="mail" name="kullaniciadi" placeholder="kullanıcı adı" type="input"/>
              
                <label class="password" for="password">Şifre :</label>
                <input class="pw1" name="password" placeholder="Şifre" type="password"/>
               
       <input type="checkbox" name="remember" id="remember">
           <label id="remember1">Beni Hatırla :</label>
  
                <button class="btn" name="oturumbtn" type="submit" id="contact-submit" data-submit="...Sending">OTURUM AÇ</button>
                
            </form>
          </div>
        
          <div class="cizgi"></div>

      <div class="alt">
        <h1>Yepyeni bir hikâye için şimdi bir uçak bileti alın</h1>
      </div>
          
    <%
        dataBase db = new dataBase();
        String kullaniciadi = request.getParameter("kullaniciadi");
        String password = request.getParameter("password");
        String oturumbtn = request.getParameter("oturumbtn");
       
        
        Cookie ckMail = null;
        Cookie ckSifre = null;
        Cookie ckDurum = null;
        String name = "";
        String pass = "";
        
        
        HttpSession oturum = request.getSession(true);
        oturum.setAttribute("mail", kullaniciadi);
        
        
         boolean durum = request.getParameter("remember") != null;
        
if(oturumbtn != null && !kullaniciadi.equals("") && !password.equals("")){
             ckDurum = new Cookie("durum", "true");
             ckMail = new Cookie("mail", kullaniciadi);
             ckSifre = new Cookie("sifre", password);
    
    
}
        
     Cookie[] allCookies = request.getCookies();
         if (allCookies != null) {
                 for(Cookie cook: allCookies){
                     if(cook.getName().equalsIgnoreCase("mail")){
                         name = cook.getValue();
                     }
                     else if(cook.getName().equalsIgnoreCase("sifre")){
                         pass = cook.getValue();
                     }
                 }
             }
           if(allCookies != null){
             for(int i = 0; i < allCookies.length; i++){
             if(allCookies[i].getValue().contains("true")){
                      response.sendRedirect(request.getContextPath() + "/yonetici.jsp");
                      break;
                  }
             else{
                 System.out.println("bulunamadi");
             }
         }
         }
           
           
        
        
                  if(oturumbtn !=null){
                      if (db.hesapKontrolYonetici(kullaniciadi, password)) {
                                if(durum){
                         ckDurum.setMaxAge(1000);
                         response.addCookie(ckDurum);
                         ckMail.setMaxAge(1000);
                         response.addCookie(ckMail);
                         ckSifre.setMaxAge(1000);
                         response.addCookie(ckSifre);
                }
                response.sendRedirect("yonetici.jsp");
                               
                            }
                      else{
                          System.out.println("GİRİŞ BİLGİLERİ SIKINTILI");
                      }
                  }
    %>   
          
</body>
</html>

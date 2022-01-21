package DataBase;
import java.sql.*;

import data.*;
import java.sql.Statement;

public class dataBase {
    
    static final String DB_URL = "jdbc:mysql://localhost:3306/ucakbilet";
    static final String USER="root";
    static final String PASSWORD="root";
    
   /* public static void insertCar(AracKayitlar aracKayit) {

        Connection con =null;
        PreparedStatement psnt = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            String sql ="INSERT INTO arac_kayit(tc,ad,soyad,telefon,email,plaka,marka,renk,parkyeri) VALUES( ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            psnt = con.prepareStatement(sql);
            
            psnt.setString(1,AracKayitlar.getTc());
            psnt.setString(2,AracKayitlar.getAd());
            psnt.setString(3,AracKayitlar.getSoyad());
            psnt.setString(4,AracKayitlar.getTelefon());
            psnt.setString(5,AracKayitlar.getEmail());
            psnt.setString(6,AracKayitlar.getPlaka());
            psnt.setString(7,AracKayitlar.getMarka());
            psnt.setString(8,AracKayitlar.getRenk());
            psnt.setString(9,AracKayitlar.getParkyeri());
           
            psnt.executeUpdate();
           // veri tabanı kullanıldıktan sonra kapatılıyor

            psnt.close();
            con.close();
        } catch (Exception e) {
            System.out.println("HATA :  "+ e);
        }
    }*/
    public static void insertKullanici(kullanici kullanici) {

        Connection con =null;
        PreparedStatement psnt = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            String sql ="INSERT INTO kullanici(ad,soyad,tc,telefon,email,sifre1,sifre2) VALUES( ?, ?, ?, ?, ?, ?, ?)";
            psnt = con.prepareStatement(sql);
            
            psnt.setString(1,kullanici.getFirstname());
            psnt.setString(2,kullanici.getLastname());
            psnt.setString(3,kullanici.getTc());
            psnt.setString(4,kullanici.getPhone_number());
            psnt.setString(5,kullanici.getEmail());
            psnt.setString(6,kullanici.getPassword1());
            psnt.setString(7,kullanici.getPassword2());
            
            psnt.executeUpdate();
           // veri tabanı kullanıldıktan sonra kapatılıyor

            psnt.close();
            con.close();
        } catch (Exception e) {
            System.out.println("HATA :  "+ e);
        }
    }
    
    public boolean hesapKontrolKullanici(String eposta, String sifre){
        Connection con =null;
        Statement st = null;
        ResultSet rst=null;
        boolean durum = false;
        try {
           Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            st = con.createStatement();
            String sql ="SELECT * FROM kullanici";
            rst = st.executeQuery(sql);
            
            while(rst.next()){
                if(rst.getString("email").equals(eposta) && rst.getString("sifre1").equals(sifre)){
                    System.out.println("YÖNETİCİ BULDU");
                    durum = true;
                    break;
                }else{
                    durum = false;
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(" HATA : " );

        }
        return durum;
    }
    public boolean hesapKontrolYonetici(String kullaniciadi, String sifre){
        Connection con =null;
        Statement st = null;
        ResultSet rst=null;
        boolean durum = false;
        try {
           Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            st = con.createStatement();
            String sql ="SELECT * FROM yonetici";
            rst = st.executeQuery(sql);
            
            while(rst.next()){
                if(rst.getString("kullaniciadi").equals(kullaniciadi) && rst.getString("sifre").equals(sifre)){
                    System.out.println("YÖNETİCİ BULDU");
                    durum = true;
                    break;
                }else{
                    durum = false;
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(" HATA : " );

        }
        return durum;
    }
    
    
    public  ResultSet kullaniciGetir() {
        Connection con =null;
        Statement st = null;
        ResultSet rs=null;
        
        try {
           Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);   
            st = con.createStatement();  
            String sql ="SELECT * FROM kullanici";
            
            rs = st.executeQuery(sql);
      
            
        } catch (Exception e) {
            
            System.out.println(" HATA : " + e );
            
        }
        return rs;
    }

    
     public  void kullanicisil(int id){
     Connection conn = null;  
         PreparedStatement sorgu = null;
        
         
          try {
             Class.forName("com.mysql.jdbc.Driver");
             conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);
             
             sorgu = conn.prepareStatement("DELETE   FROM kullanici WHERE ID='" + id + "'");
             sorgu.executeUpdate();
            
                
             
        } catch (Exception ex) {
            ex.printStackTrace();
                    
        }
    }
    
     
      public  ResultSet fiyatlistesi() {
        Connection con =null;
        Statement st = null;
        ResultSet rs=null;
        
        try {
           Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL,USER,PASSWORD);   
            st = con.createStatement();  
            String sql ="SELECT * FROM fiyat";
            
            rs = st.executeQuery(sql);
            
        } catch (Exception e) {
            System.out.println(" HATA : "+e );
            
        }
        return rs;
    }
     
  public  void fiyat_guncelle(kullanici user2){
        Connection con =null;
    Statement st = null;
    ResultSet rs=null;
   
    
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);   
            st = con.createStatement();
            String sql ="UPDATE fiyat set fiyat1='" + user2.getFiyat1() + "', fiyat2='" + user2.getFiyat2() + 
                            "', fiyat3='"+ user2.getFiyat3()+ "', fiyat4='" + user2.getFiyat4() + "' WHERE id='1'";
            
            
            
            st.executeUpdate(sql);
      
        }catch(Exception e){
            System.out.println(" HATA22 : " + e);
        }
        
        
    }
    /*
    public ResultSet calisanKayitTablo(){
        Connection con =null;
        Statement st = null;
        ResultSet rst=null;

        try {
           Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            st = con.createStatement();
            String sql ="SELECT * FROM calisanlar";
            rst = st.executeQuery(sql);

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(" HATA : " );
        }
        return rst;
    }
    public  void personelsil(int id){
     Connection conn = null;
         PreparedStatement sorgu = null;


          try {
             Class.forName("com.mysql.jdbc.Driver");
             conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);

             sorgu = conn.prepareStatement("DELETE   FROM calisanlar WHERE ID='" + id + "'");
             sorgu.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();

        }
    }
    public  void personelguncelle(Kullanici2 kullanici, String eposta){
        Connection con =null;
    Statement st = null;
    ResultSet rs=null;


        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            st = con.createStatement();
            String sql ="UPDATE calisanlar set kullaniciadi='" + Kullanici2.getGuncelkullaniciadi()+ "', sifre='" + Kullanici2.getGuncelsifre() + 
                            "', ad='" + Kullanici2.getGuncelad() + "', soyad='" + Kullanici2.getGuncelsoyad()+
                            "', email='"+ Kullanici2.getGuncelemail()+ "', telefon='" + Kullanici2.getGunceltelefon()+"',adres='"+Kullanici2.getGunceladres()+"',tc='"+Kullanici2.getGunceltc()+
                    "',kullanicituru='"+Kullanici2.getGuncelkullanicituru()+"' WHERE email='"+ eposta+"'";
            st.executeUpdate(sql);

        }catch(Exception e){
            System.out.println(" HATA2 : " + e);
        }


    }
    public ResultSet AracKayitTablo(){
        Connection con =null;
        Statement st = null;
        ResultSet rst=null;

        try {
           Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            st = con.createStatement();
            String sql ="SELECT * FROM arac_kayit";
            rst = st.executeQuery(sql);
            
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(" HATA : " );

        }
        return rst;
    }
     public  void arackayitsil(int id){
     Connection conn = null;
         PreparedStatement sorgu = null;


          try {
             Class.forName("com.mysql.jdbc.Driver");
             conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);

             sorgu = conn.prepareStatement("DELETE   FROM arac_kayit WHERE ID='" + id + "'");
             sorgu.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();

        }
    }*/
}

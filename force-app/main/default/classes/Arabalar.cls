//  ARABALAR CLASSI

public class Arabalar {

    Public  String  marka = 'JEEP';
    Public  String  renk  = 'GRI';
    Public  Integer yil = 2020 ;
    
    //  bir class olusturuldugunda apex default olarak 
    //  bir constructor  olusturur 
    //   mesela  Arabalar kuzu = new Arabalar(); sekilinde
    //   bu constructor  calistirilarak bir INSTANCE olusturulmus olur

     
    
   Public Arabalar(){
        
    }
    
    
    //  Ya biz  farkli ozellikte bir araba istersek
 //  eger custom bir constructor  olusturulursa
 //   APEX in default olan constructori iptal olur
    
       public Arabalar(String arabarengi){
           
       this.renk =  arabarengi ;   
        
    }
    
    
        public Arabalar(String arabarengi, Integer arabininYili){
           
       this.renk =  arabarengi ; 
       this.yil = arabininYili;
        
    }
    
          public Arabalar(String arabaMarkasi, String arabarengi, Integer arabininYili){
        
       this.marka=  arabaMarkasi;     
       this.renk =  arabarengi ; 
       this.yil = arabininYili;
        
    }
}
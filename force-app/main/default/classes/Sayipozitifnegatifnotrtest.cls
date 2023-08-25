@istest
public class Sayipozitifnegatifnotrtest {
    
    @istest
    private static void pozitif(){
        string sonuc = Sayipozitifnegatifnotr.spnn(8);
        system.assertEquals('pozitif', sonuc);
        system.assertNotEquals('negatif', sonuc);
        
        
         string sonuc1 = Sayipozitifnegatifnotr.spnn(-1);
        system.assertEquals('negatif', sonuc1);
        system.assertNotEquals('pozitif', sonuc1);
        
         string sonuc2 = Sayipozitifnegatifnotr.spnn(0);
        system.assertEquals('notr', sonuc2);
        system.assertNotEquals('negatif', sonuc2);
        
        
        
    }
    

}
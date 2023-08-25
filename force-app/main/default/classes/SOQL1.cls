public class SOQL1 {
    
    public void accountisimleri(){
        List<Account> accIsimler =  [SELECT industry FROM Account];
               
        for (Account w :accIsimler){
             System.debug('acc isim:  ' + w);
        }
       
    }
        
    
    
    
    
    
    
    
    
}
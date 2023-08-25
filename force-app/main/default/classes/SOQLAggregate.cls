public class SOQLAggregate {
  
    public void f5(){
        //  not Aggregate function kullanilan queryler ancak AggregateResult[]  icerisinde depolanir
        //  LISt icerisinde depolanmaz..
     AggregateResult[]  adiNeyse = [SELECT   MIN(NumberOfEmployees),MAX(NumberOfEmployees), SUM(NumberOfEmployees),  AVG(NumberOfEmployees) ,COUNT(name) FROM Account];   
        
                                         System.debug('MINIMUM ' + adiNeyse[0].get('expr0')); 
                                         System.debug('Maximum ' + adiNeyse[0].get('expr1'));
                                         System.debug('Toplam '  + adiNeyse[0].get('expr2')); 
                                         System.debug('Ortalama  ' + adiNeyse[0].get('expr3')); 
                                         System.debug('Toplam sayi ' + adiNeyse[0].get('expr4'));
        
    }
 
    
    public void f6(){
       //  ALIAS    verilebilir  
       // 
     AggregateResult[]  adiNeyse = [SELECT   MIN(NumberOfEmployees) kucuk,MAX(NumberOfEmployees) buyuk, SUM(NumberOfEmployees) toplam,  AVG(NumberOfEmployees) ortalama,COUNT(name) sayi FROM Account];   
        
                                         System.debug('MINIMUM ' + adiNeyse[0].get('kucuk')); 
                                         System.debug('Maximum ' + adiNeyse[0].get('buyuk'));
                                         System.debug('Toplam '  + adiNeyse[0].get('toplam')); 
                                         System.debug('Ortalama  ' + adiNeyse[0].get('ortalama')); 
                                         System.debug('Toplam sayi ' + adiNeyse[0].get('sayi'));
        
    }
  
  
        public void f7(){
       //  ALIAS    verilebilir  
       // 
     AggregateResult[]  adiNeyse = [SELECT industry,  MIN(NumberOfEmployees) kucuk, MAX(NumberOfEmployees) buyuk, SUM(NumberOfEmployees) toplam,  AVG(NumberOfEmployees) orta FROM Account GROUP BY industry ];   
        
            for (AggregateResult  sepet : adiNeyse )  { // adiNeyse[0] == sepet
                
                System.debug( sepet.get('industry') +' ------> '+  sepet.get('kucuk')  +' ------> '+  sepet.get('buyuk')  +' ------> '+  sepet.get('toplam') +' ------> '+  sepet.get('orta') );
                
            }
      }
      
}
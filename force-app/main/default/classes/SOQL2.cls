public class SOQL2 {

    public void f2(){
        
        
    List<Account> hesaplar = [SELECT name ,(SELECT name, amount FROM OPPortunities WHERE Amount>500000)FROM Account];
        for(Account acc : hesaplar){
            for(opportunity opp:acc.opportunities){
            
            System.debug('Accountismi :---> '+ acc.Name + ',  amount:---> '+opp.Amount +  ',  opportunity ---> '+ opp.Name);
                
            }
            
            
        }
        

        
    }
    Public void f3(){
        
        List<opportunity> firsat= [SELECT name,amount, account.name  FROM Opportunity WHERE amount>500000 order by amount];
        for(opportunity opp: firsat){
           
                system.debug('opp --->'+ opp.name+'   '+ opp.Amount+  '   '+ '   account  --->'+ opp.account.name);
                
            }
            
        
        
    }
    
    
    
    
    

}
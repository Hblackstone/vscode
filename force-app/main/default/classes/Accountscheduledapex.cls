public class Accountscheduledapex implements schedulable {
    
    public void execute(SchedulableContext sc){
     
        List<Account> accList = [SELECT id,name  FROM account WHERE name LIKE '%Wise'];
        database.delete(acclist);
     
        
        
           }     
    }
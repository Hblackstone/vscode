public class AccountTriggerHandler {
    
    
    public static void newContacts(List<Account> acclist){
        


          List<contact> conList= new List<Contact> ();
          for( Account acc: acclist){
              Contact cnt = new Contact();
              cnt.LastName = 'A TEST '  + '  '  + acc.name;
              cnt.AccountId= acc.Id;
              conList.add(cnt)  ;
              
          }  
          Database.insert(conlist);
        
    }

}
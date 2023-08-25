public class ContactBatchApexUpdate implements Database.Batchable<sObject> {
       
    public Database.QueryLocator start(Database.BatchableContext BC) {
   return Database.getQueryLocator([SELECT id, MailingCountry,account.billingcountry from contact 
                                    WHERE name 
                                    Like '%AAA%']);
    }
    public void execute(Database.BatchableContext BC, List<Contact> conList) {
       
            for(Contact cnt: conList ){
                cnt.MailingCountry = cnt.account.BillingCountry;
              
   }
      update conList;
}

    public void finish(Database.BatchableContext BC) {
          system.debug('Batch apex finished the job');
         
    }
}
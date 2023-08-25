trigger Accounttrigger on Account    (before insert , before update , before delete , after insert , after update, after delete, after undelete) {

      if ( Trigger.IsBefore &&  Trigger.isInsert) { 
          
          for (account acc:trigger.new){
              
              acc.Name= acc.Name + '  inserted';
              
              
          }
      
      
      
      
      }
      if ( Trigger.IsBefore &&  Trigger.isUpdate) { 
          
          
           for (account acc:trigger.new){
              
              acc.Name= acc.Name + '  updated';
           }
              
              
         /* for (Account acc: trigger.new){
              Account oldacc = Trigger.oldmap.get(acc.Id);
              If (acc.Phone !=oldacc.Phone){
                  acc.Name = acc.Name + '  ' +oldacc.Phone;
                  
              }
              
          }*/
      
      
      }
      if ( Trigger.IsBefore &&  Trigger.isDelete) {     }
      if ( Trigger.IsAfter  &&  Trigger.isInsert) {
          /*
      AccountTriggerHandler.newContacts(trigger.new);
      	*/
      }
      if ( Trigger.IsAfter  &&  Trigger.isUpdate) { 
          /*
          List<Account> acclist = New List<account> ();
          for (Account acc:Trigger.new){
              
              if (acc.BillingCity != trigger.oldmap.get(acc.Id).BillingCity){
                  acclist.add(acc);                  
                  
              }              
          }
          
          List<Contact> conlist = [SELECT MailingCity, account.BillingCity from contact Where AccountId in:acclist];
          for (contact con:conlist){
              con.MailingCity= con.account.BillingCity;
              
          }
          Database.update(conlist);
		*/
         
      }
      if ( Trigger.IsAfter  &&  Trigger.isDelete) { }
	  if ( Trigger.IsAfter  &&  Trigger.isUndelete) {}
    
      
}
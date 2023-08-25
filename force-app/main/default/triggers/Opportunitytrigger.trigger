trigger Opportunitytrigger on Opportunity (before insert , before update , before delete , after insert , after update, after delete, after undelete) {

     if ( Trigger.IsBefore &&  Trigger.isInsert) { 
     
         for(opportunity opp:trigger.new){
             
             if(opp.Description==null){
                 opp.Description= ' yeni olusturuldu';
                 
                }            
         }
     
     }
      if ( Trigger.IsBefore &&  Trigger.isUpdate) { }
      if ( Trigger.IsBefore &&  Trigger.isDelete) {     }
      if ( Trigger.IsAfter  &&  Trigger.isInsert) { }
      if ( Trigger.IsAfter  &&  Trigger.isUpdate) {
          
          
       List<task> tasklist = new List <Task> ();
          
          for(opportunity opp: trigger.new){
              
             
              if(opp.StageName=='Negotiation/Review'){
                  task gorev = new Task();
                  gorev.Subject='Yeni opp var bi bakiver' + opp.Name;
                  gorev.Status = 'Not Started';
                  gorev.OwnerId = opp.OwnerId;
                  gorev.Priority= 'High';
                  gorev.WhatId= opp.AccountId;
                  tasklist.add(gorev);                  
                  
              }
              
          }
          Database.insert(tasklist)  ;      
          
      
      }
      if ( Trigger.IsAfter  &&  Trigger.isDelete) { }
	   if ( Trigger.IsAfter  &&  Trigger.isUndelete) {}
}
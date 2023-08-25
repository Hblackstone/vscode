trigger LeadTrigger on Lead (before insert , before update , before delete , after insert , after update, after delete, after undelete) {

     if ( Trigger.IsBefore &&  Trigger.isInsert) { }
      if ( Trigger.IsBefore &&  Trigger.isUpdate) {
          LeadTriggerHandler.eskitelefon (trigger.new , trigger.oldMap);
          
      }
      if ( Trigger.IsBefore &&  Trigger.isDelete) {     }
      if ( Trigger.IsAfter  &&  Trigger.isInsert) { }
      if ( Trigger.IsAfter  &&  Trigger.isUpdate) { }
      if ( Trigger.IsAfter  &&  Trigger.isDelete) { }
	   if ( Trigger.IsAfter  &&  Trigger.isUndelete) {}
}
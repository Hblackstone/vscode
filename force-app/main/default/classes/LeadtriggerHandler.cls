public class LeadtriggerHandler {
    
    
    
    public static void eskitelefon (List<Lead> yeniListe, Map<id,Lead> esliListe){

	
          for (Lead yenilead:yeniListe){
              
              Lead eskilead = esliListe.get(yeniLead.id);
              
              If(eskiLead.phone != yenilead.Phone){
                  
                  yeniLead.Eski_Telefon__c = eskiLead.Phone ;
              }
              
          }      
        
    }

}
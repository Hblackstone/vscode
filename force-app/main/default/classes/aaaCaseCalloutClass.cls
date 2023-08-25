public class aaaCaseCalloutClass {
    
    
    public static void getCasesFromProvider(){
        Http h =new Http();
        HttpRequest req = new HttpRequest();
        req.setMethod('GET');
        req.setEndpoint('callout:AAACaseNamedCredential' + ('/services/apexrest/cases'));
       // req.setEndpoint('https://wqcom3-dev-ed.develop.my.salesforce.com/services/apexrest/cases');

        HttpResponse res = h.send(req);
        
        if (res.getStatusCode()==200){
            
            List<Object> jsonCaseList = (List<Object>)JSON.deserializeUntyped(res.getBody());
            List<Case> caseList = new List<Case>();
            
            for(Object obj:jsonCaseList){
                
                Map<String,Object> mapCase= (Map<String,Object>) obj;
                
                Case tempCase =new Case ();
                tempCase.Status= (string) mapcase.get('Status');
               // tempCase.CaseNumber= (string) mapcase.get('CaseNumber');
                tempCase.Origin= 'Web';
                tempCase.Subject= (string) mapcase.get('Subject');
                
                caseList.add(tempCase);               
                
            }
           database.insert(caseList);
           
        }else{
			system.debug('Error>>>>>>   '+res.getStatusCode());

        }
        
        
        
        
        
    }
     public static void sendCasesFromProvider(){
        Http h =new Http();
        HttpRequest req = new HttpRequest();
        req.setMethod('POST');
        req.setEndpoint('callout:AAACaseNamedCredential' + ('/services/apexrest/cases'));
		req.setHeader('content-Type', 'application/json;charset=UTF-8');
        string body = '{"caseSubject":"aaaDENEME POST","casePriority":"Low"}';
       	req.setBody(body);
         HttpResponse res = h.send(req);
        
        if (res.getStatusCode()==200  ||res.getStatusCode()==201){
            
            system.debug('basarili>>>   ' + res.getBody());
            system.debug(res.getStatus());
                
                      
           
        }else{
			system.debug('Error>>>>>>   '+res.getStatusCode());
           system.debug(res.getStatus());

        }
}
        
  
      
    


}
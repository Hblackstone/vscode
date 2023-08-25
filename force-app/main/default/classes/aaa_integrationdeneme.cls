public class aaa_integrationdeneme {
    
    // end pointi butun methotlarda kullanacagim icin burada tanimladim
    private static string API_ENDPOINT= 'https://gorest.co.in/public/v2/users';
    /////****************************************************************
    public static void fethAllCustomers () {
        
        Http h = new Http();//postman acildi
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://gorest.co.in/public/v2/users');
        req.setMethod('GET');     
        
   		 // gelen response isle
   		 HttpResponse res = h.send(req);
         if(res.getStatusCode()==200){
                            
            system.debug( 'Response  getBody>>>>>'+ res.getBody()); 
            system.debug( 'Response>>>>>'+ res.getHeaderKeys());
     
        }else {
            
            system.debug('ERRORRRR>>>>>>   '+ res.getStatusCode());
             system.debug( 'Errorrrr>>>>>'+ res.toString());
        }
	 }
    //**************************************************************************************
     public static void searchCustomerById (string userId) {

            Http h = new Http();//postman acildi
            HttpRequest req = new HttpRequest();
            req.setEndpoint('https://gorest.co.in/public/v2/users/'+ userId);
            req.setMethod('GET');     
        
            // gelen response isle
            
            HttpResponse res = h.send(req);
                if(res.getStatusCode()==200){
                    
                    
                                    
                    system.debug( 'Response  getBody>>>>>'+ res.getBody()); 
                    system.debug( 'Response>>>>>'+ res.getHeaderKeys());
             
                }else {
                    
                    system.debug('ERRORRRR>>>>>>   '+ res.getStatusCode());
                     system.debug( 'Errorrrr>>>>>'+ res.toString());
           
                }
             
            
          }
    
//**********************************************************************************   
    public static void searchCustomerByName (string name) {

            Http h = new Http();//postman acildi
            HttpRequest req = new HttpRequest();
            req.setEndpoint(API_ENDPOINT+'?name='+ name);
          //https://gorest.co.in/public/v2/users?name=Minakshi
            req.setMethod('GET');     
        
            // gelen response isle
            
            HttpResponse res = h.send(req);
        	 
        
                if(res.getStatusCode()==200){             
                    system.debug( 'Response  getBody>>>>>'+ res.getBody()); 
                    system.debug( 'Response>>>>>'+ res.getHeaderKeys());
             
                }else {                    
                    system.debug('ERRORRRR>>>>>>   '+ res.getStatusCode());
                     system.debug( 'Errorrrr>>>>>'+ res.toString());
           
                }           
          }
//********************************************************************************
    	public static void fethAndInsertAllMusteriler () {
        
        Http h = new Http();//postman acildi
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://gorest.co.in/public/v2/users');
        req.setMethod('GET');     
        
   		 // gelen response isle
   		 HttpResponse res = h.send(req);
         if(res.getStatusCode()==200){
             
            
             //DESERIALIZE
             
             system.debug( 'Response  getBody>>>>>'+ res.getBody());            
             /*
               id problemi yasamamak icin temporary object(class) olusturur gelen 
             datalari ilk orda tutar sonra kendi objemize for loop ile tasiriz. 
              Bu ornekte gecici aaaFakeMusteri classi olusturuldu.
              */
             List<aaaFakeMusteri> aaaMusteriList =(List<aaaFakeMusteri>)json.deserialize(res.getBody(), List<aaaFakeMusteri>.class) ;
             system.debug( 'json.deserialize(res.getBody()>>>>>'+ aaaMusteriList);
             
             List<Musteri__c> newmusteriList = new List<Musteri__c>();
             for (aaaFakeMusteri fm: aaaMusteriList){
                 Musteri__c yenimst= new Musteri__c();
                 yenimst.name= fm.name;
                 yenimst.email__c= fm.email;
                 yenimst.gender__c= fm.gender;
                 yenimst.status__c= fm.status;
                 newmusteriList.add(yenimst);
             }             
             database.insert(newmusteriList);
             //(aaaFakeMusteri:[email=minakshi_sethi@brekke-murazik.test, gender=male, id=4228136, name=Minakshi Sethi, status=inactive], 
             //aaaFakeMusteri:[email=sinha_shanti@douglas.test, gender=female, id=4228135, name=Shanti Sinha, status=active], 
             //aaaFakeMusteri:[email=aanandaswarup_rana@kovacek.test, gender=male, id=4228134, name=Aanandaswarup Rana, status=active], 
             //aaaFakeMusteri:[email=jyotis_ii_malik@bode-grady.test, gender=female, id=4228133, name=Jyotis Ma

        }else {            
            system.debug('ERRORRRR>>>>>>   '+ res.getStatusCode());
             system.debug( 'Errorrrr>>>>>'+ res.toString());
        }
	 }
 //******************************************************************************
    public static void fethAndInsertByName (string name) {
        
        Http h = new Http();//postman acildi
        HttpRequest req = new HttpRequest();
        req.setEndpoint(API_ENDPOINT+'?name='+ name);
        req.setMethod('GET');     
        
   		 // gelen response isle
   		 HttpResponse res = h.send(req);
         if(res.getStatusCode()==200){
             
            
             //DESERIALIZE
             
             system.debug( 'Response  getBody>>>>>'+ res.getBody());            
             List<aaaFakeMusteri> aaaMusteriList =(List<aaaFakeMusteri>)json.deserialize(res.getBody(), List<aaaFakeMusteri>.class) ;
             system.debug( 'json.deserialize(res.getBody()>>>>>'+ aaaMusteriList);
             
             List<Musteri__c> newmusteriList = new List<Musteri__c>();
             for (aaaFakeMusteri fm: aaaMusteriList){
            
                 Musteri__c yenimst= new Musteri__c();
                 yenimst.name= fm.name ;
                 yenimst.email__c= fm.email;
                 yenimst.gender__c= fm.gender;
                 yenimst.status__c= fm.status;
               
                
                 newmusteriList.add(yenimst);
               
             }             
             database.insert(newmusteriList);
             
        }else {            
            system.debug('ERRORRRR>>>>>>   '+ res.getStatusCode());
             system.debug( 'Errorrrr>>>>>'+ res.toString());
        }
    }
    //*********************************************************************************
    public static void postMethod(){
        
        Http h = new Http();//postman acildi
        
        String accessToken = '3ce882600d54408ba8e946b4213e68d7ad9df49666b59a218be193041e019a39';
        HttpRequest req = new HttpRequest();
        req.setEndpoint(API_ENDPOINT);
        req.setMethod('POST'); 
        req.setHeader('content-Type', 'application/json;charset=UTF-8');
        req.setHeader('Authorization', 'Bearer '+ accessToken);
        //req.setHeader('Authorization' , 'Bearer 3ce882600d54408ba8e946b4213e68d7ad9df49666b59a218be193041e019a39');
        String userForGoRest='{"name": "bbbbbabbbbYENI","email": "aakkkannbbbayeni@ggg.ccc","gender": "male","status": "active"}';
        req.setBody(userForGoRest);
        
   		 // gelen response isle
   		 HttpResponse res = h.send(req);
         if(res.getStatusCode()==201){
             system.debug( 'Response  getBody>>>>>'+ res.getBody());            
              
        }else {            
            system.debug('ERRORRRR>>>>>>   '+ res.getStatusCode());
             system.debug( 'Errorrrr>>>>>'+ res.toString());
        }
        
        
    }
    //**************************************************************************************
        public static void postMethodFromSalesforce(){
        
        Http h = new Http();//postman acildi
        
        String accessToken = '3ce882600d54408ba8e946b4213e68d7ad9df49666b59a218be193041e019a39';
        HttpRequest req = new HttpRequest();
        req.setEndpoint(API_ENDPOINT);
        req.setMethod('POST'); 
        req.setHeader('content-Type', 'application/json;charset=UTF-8');
        req.setHeader('Authorization', 'Bearer '+ accessToken);
        //req.setHeader('Authorization' , 'Bearer 3ce882600d54408ba8e946b4213e68d7ad9df49666b59a218be193041e019a39');
        
        Musteri__c mus= [SELECT name, email__c,gender__c, status__c FROM Musteri__c WHERE id='a097Q00000EnT2OQAV'];
        
            aaaFakeMusteri afk =new aaaFakeMusteri();
            afk.name=mus.Name;
            afk.email=mus.email__c;
            afk.gender= mus.gender__c;
            afk.status= mus.status__c;
               
            string sonjson= JSON.serialize(afk);
            system.debug(afk);
            
          //  String userForGoRest='{"name": "bbabbbbYENI","email": "aaabbbayeni@ggg.ccc","gender": "male","status": "active"}';
        req.setBody(sonjson);
        
   		 // gelen response isle
   		 HttpResponse res = h.send(req);
    
         if(res.getStatusCode()==201){
             system.debug( 'Response  getBody>>>>>'+ res.getBody());            
              
        }else {            
            system.debug('ERRORRRR>>>>>>   '+ res.getStatusCode());
             system.debug( 'Errorrrr>>>>>'+ res.toString());
        }
        
        
    }
    //*******************************************************************+
            public static void postObjectFromSalesforce(String Isim, String posta, String cins, String statu){
        
        Http h = new Http();//postman acildi
        
        String accessToken = '3ce882600d54408ba8e946b4213e68d7ad9df49666b59a218be193041e019a39';
        HttpRequest req = new HttpRequest();
        req.setEndpoint(API_ENDPOINT);
        req.setMethod('POST'); 
        req.setHeader('content-Type', 'application/json;charset=UTF-8');
        req.setHeader('Authorization', 'Bearer '+ accessToken);
        //req.setHeader('Authorization' , 'Bearer 3ce882600d54408ba8e946b4213e68d7ad9df49666b59a218be193041e019a39');
        
        
            aaaFakeMusteri afk =new aaaFakeMusteri();
            afk.name=Isim;
            afk.email=posta;
            afk.gender= cins;
            afk.status= statu;
               
            string sonjson= JSON.serialize(afk);
            
            
          //  String userForGoRest='{"name": "bbabbbbYENI","email": "aaabbbayeni@ggg.ccc","gender": "male","status": "active"}';
        req.setBody(sonjson);
        
   		 // gelen response isle
   		 HttpResponse res = h.send(req);
    
         if(res.getStatusCode()==201){
             system.debug( 'Response  getBody>>>>>'+ res.getBody());            
              
        }else {            
            system.debug('ERRORRRR>>>>>>   '+ res.getStatusCode());
             system.debug( 'Errorrrr>>>>>'+ res.toString());
        }
        
        
    }
    
   
}
public with sharing class LWCgetAccountlar {
   
   @AuraEnabled(cacheable=True)
    public static List<Account> getAccount(string filter) {
        string accName= '%'+ filter +'%';
        List<Account> accList = [SELECT id, name FROM Account WHERE name LIKE:accName];
        return accList;
    }
}
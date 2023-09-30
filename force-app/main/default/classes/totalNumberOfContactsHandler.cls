public with sharing class totalNumberOfContactsHandler {
    public totalNumberOfContactsHandler() {
        public static void  countContacts (List<contact> newList,List<contact> oldList){
            set<id> accountIds = new set<id>();
            if(newList != null){
                        for (contact con : newList){
                if(con.accountId != null){
                    accountIds.add(con.accountId);
                }
            }
            }
            If(oldList != null){
                        for (contact con : oldList){
                if(con.accountId != null){
                    accountIds.add(con.accountId);
                }
            }
            }
            List<Account> accounts = [SELECT Id,Number_of_Contacts__c ,(SELECT Id FROM Contacts)From Account WHERE Id in :accountIds];
            If(!accounts.isEmpty())   {
                for(Account acc : accounts){
                    acc.Number_of_Contacts__c = acc.contacts.size();
                }
            } 
            update accounts;
        }
    }
}
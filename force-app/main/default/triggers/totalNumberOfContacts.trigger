trigger totalNumberOfContacts on Contact (after insert,after update, after delete, after undelete) {
    if(trigger.isAfter){
        if(trigger.isInsert || trigger.isUpdate || trigger.isDelete ||trigger.isUndelete ){
            totalNumberOfContactsHandler.countContacts(trigger.new,trigger.old);
        }
    }

}
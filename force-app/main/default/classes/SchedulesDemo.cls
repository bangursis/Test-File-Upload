public with sharing class SchedulesDemo {
    public SchedulesDemo() {
        List<Object> schs = insertRecords();
        schedule(schs);
    }

    private static List<Schedule__c> insertRecords(){
        List<Schedule__c> schs = new List<Schedule__c>();

        for(Integer i = 0; i < 100; i++){
            schs.add(new Schedule__c(
                  When__c = DateTime.now() + i
            ));
        }
        upsert schs;
        return schs;
    }

    private static schedule(List<Object> schs){
        for (Object sch : schs){

        }
    }

}

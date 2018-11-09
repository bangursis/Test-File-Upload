public with sharing class SchedulesDemo {
    public SchedulesDemo() {
        List<Schedule__c> schs = insertRecords();
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

    private void schedule(List<Schedule__c> schs){
        for (Schedule__c sch : schs){
            Datetime review = sch.When__c;
            String cron = '* ' + review.minute() + ' '  + review.hour() + ' ' + review.day() + ' ' + review.month() + ' ?';
            System.debug(cron);

            system.schedule(sch.Id, cron, new schedJon());
        }
    }


}

global with sharing class schedJob implements Schedulable{
    DateTime when;
    global void execute(SchedulableContext SC){
        SchedulesDemo.updateSchedule(when);
    }

    public schedJob(DateTime when){
        this.when = when;
    }
}

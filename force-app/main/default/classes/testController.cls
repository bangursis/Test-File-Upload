public with sharing class testController {
    @AuraEnabled
    public static void test(List<Object> files){
        System.debug(files);
    }
}

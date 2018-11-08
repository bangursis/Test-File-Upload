public with sharing class testController {
    @AuraEnabled
    public static void test(String file){
        System.debug(file);
        System.debug(file.length());
    }
}

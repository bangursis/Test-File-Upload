public with sharing class testController {
    @AuraEnabled
    public static void test(Object files){
      System.debug(files);
    }
}

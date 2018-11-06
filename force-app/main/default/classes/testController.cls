public with sharing class testController {
    @AuraEnabled
    public static void testMethod(Object files){
      System.debug(files);
    }
}

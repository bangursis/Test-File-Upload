public with sharing class testController {
    @AuraEnabled
    public static void test(String file, String fileType){
        String data = EncodingUtil.urlDecode(file, 'UTF-8');
        System.debug(file);
        System.debug(fileType);
    }
}

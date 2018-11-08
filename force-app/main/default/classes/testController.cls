public with sharing class testController {
    @AuraEnabled
    public static void test(String file, String fileType){
        String data = EncodingUtil.urlDecode(file, 'UTF-8');
        System.debug(data);
        System.debug(fileType);

        Http http = new Http();
        HttpRequest req = new HttpRequest();

        req.setMethod('POST');
        req.setEndpoint('https://script.google.com/macros/s/AKfycbw31ZByWeF9Gchl8WcAKINq2IgLC917GUcGqhjPIOgpRt85GMo/exec');

        req.setBody('{data:' + data + ', fileType:' + fileType + '}');

        http.send(req);
    }
}

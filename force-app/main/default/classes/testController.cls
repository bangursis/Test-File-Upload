public with sharing class testController {
    @AuraEnabled
    public static void test(String file, String fileType){
        String data = EncodingUtil.urlDecode(file, 'UTF-8');
        System.debug(data);
        System.debug(fileType);

        Http http = new Http();
        HttpRequest req = new HttpRequest();
        String jsonBody =  '{"data":"' + data + '", "fileType":"' + fileType + '"}'; 
        req.setMethod('POST');
        req.setEndpoint('https://script.googleapis.com/v1/scripts/Mzt4kVKkwpgl51oz13mFNJtw1nH9IbQoU:run');
        req.setHeader('Content-Type', 'application/json; charset=utf-8');

        req.setBody(jsonBody);
        HttpResponse res = http.send(req);

        System.debug(res.getStatusCode());
        System.debug(res.getBody());
    }
}

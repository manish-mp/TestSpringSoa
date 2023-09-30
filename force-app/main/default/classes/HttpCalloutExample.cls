public with sharing class HttpCalloutExample {
    public class HttpCalloutExample {

        public void makeHttpCallout() {
            String endpointUrl = 'https://postman-echo.com/get?foo1=bar1&foo2=bar2';
            HttpRequest request = new HttpRequest();
            request.setEndpoint(endpointUrl);
            request.setMethod('GET');

            Http http = new Http();
    
            try {
               
                HttpResponse response = http.send(request);
    
                
                if (response.getStatusCode() == 200) {
                    
                    String responseBody = response.getBody();
                    System.debug('HTTP Response: ' + responseBody);
                } else {
                    System.debug('HTTP Request failed with status code: ' + response.getStatusCode());
                }
            } catch (Exception e) {
                System.debug('An error occurred while making the HTTP callout: ' + e.getMessage());
            }
        }
    }
    
}
public class Spoonacular {
    
    private static final string SPOONACULAR_API = 'https://api.spoonacular.com';
    private static final string API_KYE = '5a3bf189b1f6411981188300024dfd34'; //Api Key from spoonacular API
    
    @AuraEnabled
    public static string getRandomRecipe(){
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint(SPOONACULAR_API+'/recipes/random?apiKey='+API_KYE);
        req.setMethod('GET');

        HttpResponse res = http.send(req);
        //if the Request is successfull, parse the JSON response
        if(res.getStatusCode() == 200) {
            return res.getBody();
        }
        return '';
    }

    @AuraEnabled
    public static string getRecipe(String recipeId) {
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndPoint(SPOONACULAR_API+'/recipes/'+recipeId+'/information?apiKey='+API_KYE);
        req.setMethod('GET');

        HttpResponse res = http.send(req);
        //if the Request is successfull, parse the JSON response
        if(res.getStatusCode() == 200) {
            return res.getBody();
        }
        return '';
        
    }

    @AuraEnabled
    public static string getRecipeByIngredients(String ingredients) {
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndPoint(SPOONACULAR_API+'/recipes/findByIngredients?ingredients='+ingredients+'&number=10&apiKey='+API_KYE);
        req.setMethod('GET');

        HttpResponse res = http.send(req);
        //if the Request is successfull, parse the JSON response
        if(res.getStatusCode() == 200) {
            return res.getBody();
        }
        return '';
        
    }
}
import ballerina/http;

service /pharmacy on new http:Listener(9093) {
    resource function get medicines(http:Caller caller, http:Request req) returns error? {
        json medicines = [
            { "medicine": "Metformin", "stock": 20 },
            { "medicine": "Amlodipine", "stock": 5 }
        ];
        check caller->respond(medicines);
    }
}

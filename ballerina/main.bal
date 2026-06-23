import ballerina/http;
import ballerina/log;

listener http:Listener ep = new (9090); // Port 9090 = Centralized hub

public service /api on ep {
    resource function get health() returns string {
        return "MediLink API Hub is up and running!";
    }

    // Patient Service Gateway
    resource function get hub/patients(http:Caller caller, http:Request req) returns error? {
        log:printInfo("Request received for patient service");
        http:Client patientClient = new ("localhost", 9091);
        
        var response = patientClient->/patients/getAll();
        if response is error {
            http:Response errorResponse = new;
            errorResponse.statusCode = 500;
            errorResponse.setPayload("Error: " + response.message());
            check caller->respond(errorResponse);
            return;
        }
        
        check caller->respond(response);
    }

    // Lab Service Gateway
    resource function get hub/labs(http:Caller caller, http:Request req) returns error? {
        log:printInfo("Request received for lab service");
        http:Client labClient = new ("localhost", 9092);
        
        var response = labClient->/labs/reports();
        if response is error {
            http:Response errorResponse = new;
            errorResponse.statusCode = 500;
            errorResponse.setPayload("Error: " + response.message());
            check caller->respond(errorResponse);
            return;
        }
        
        check caller->respond(response);
    }

    // Pharmacy Service Gateway
    resource function get hub/pharmacy(http:Caller caller, http:Request req) returns error? {
        log:printInfo("Request received for pharmacy service");
        http:Client pharmacyClient = new ("localhost", 9093);
        
        var response = pharmacyClient->/pharmacy/medicines();
        if response is error {
            http:Response errorResponse = new;
            errorResponse.statusCode = 500;
            errorResponse.setPayload("Error: " + response.message());
            check caller->respond(errorResponse);
            return;
        }
        
        check caller->respond(response);
    }
}

import ballerina/http;

listener http:Listener ep = new (9090);

public service /api on ep {
    resource function get health() returns string {
        return "MediLink API Hub is up and running!";
    }
}

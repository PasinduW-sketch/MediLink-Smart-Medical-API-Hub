import ballerina/http;

service /patients on new http:Listener(9091) {
    resource function get getAll(http:Caller caller, http:Request req) returns error? {
        json patientList = [
            { "id": 1, "name": "John Doe", "condition": "Diabetes" },
            { "id": 2, "name": "Jane Smith", "condition": "Hypertension" }
        ];
        check caller->respond(patientList);
    }
}

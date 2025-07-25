import ballerina/http;

service /labs on new http:Listener(9092) {
    resource function get reports(http:Caller caller, http:Request req) returns error? {
        json reports = [
            { "patientId": 1, "report": "Blood Test", "status": "Completed" },
            { "patientId": 2, "report": "X-Ray", "status": "Pending" }
        ];
        check caller->respond(reports);
    }
}

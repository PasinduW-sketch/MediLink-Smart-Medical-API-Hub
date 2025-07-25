module logger;

public function logInfo(string msg) {
    io:println("[INFO] " + msg);
}

public function logError(string msg) {
    io:println("[ERROR] " + msg);
}

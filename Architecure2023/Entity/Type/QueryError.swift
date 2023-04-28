enum QueryError: Error {
    case timeout
    case connectionFailed
    // 400
    case badRequest
    // 404
    case notFound
    // 500
    case serverError
    // 503
    case serviceUnavailable
}

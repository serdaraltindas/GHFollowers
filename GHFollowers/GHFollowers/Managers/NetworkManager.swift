
import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    let baseURL = "https://api.github.com/users/"
    
    private init() {}
    
    func getFollowers(for username: String, page: Int, completed: @escaping ([Follower]?, String?) -> Void ) {
        let endpoint = baseURL + "/users/\(username)/followers?per_page=100&page=\(page)"
    }
}

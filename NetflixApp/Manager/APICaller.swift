import Foundation


struct Constants {
    
    static let apiKey = "8dedbde569dd837722ee8eb38cac2faf"
    static let baseUrl = "https://api.themoviedb.org"
    // "https://api.themoviedb.org/3/trending/all/day?api_key=8dedbde569dd837722ee8eb38cac2faf"
}

enum APIError: Error {
    case failedToGetData
}

class APICaller {
    
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (String) -> Void) {
        
        guard let url = URL(string: "\(Constants.baseUrl)/3/trending/all/day?api_key=\(Constants.apiKey)") else { return }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else { return }
            
            do {
                let results = try JSONDecoder().decode(TrendingMovieResponse.self, from: data )
                print(results)
            } catch {
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
    // https://api.themoviedb.org/3/trending/tv/day?api_key=8dedbde569dd837722ee8eb38cac2faf
    
     func getTrendingTv(completion: @escaping(String) -> Void) {
        guard let url = URL(string: "\(Constants.baseUrl)/3/trending/tv/day?api_key=\(Constants.apiKey)") else { return }
         let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
             guard let data = data, error == nil else { return }
             do {
                 let results = try JSONDecoder().decode(ResponseTrendingTV.self, from: data)
                 print(results)
             } catch {
                 print(error.localizedDescription)
             }
         }
         task.resume()
    }
    
    // https://api.themoviedb.org/3/movie/popular?api_key=8dedbde569dd837722ee8eb38cac2faf&language=en-US&page=1
    func getPupularMovies(completion: @escaping(String) -> Void) {
        guard let url = URL(string: "\(Constants.baseUrl)/movie/popular?api_key=\(Constants.apiKey)&language=en-US&page=1") else { return }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else { return }
            
            do{
                let results = try JSONDecoder().decode(ResponsePopularMovie.self, from: data)
                print(results)
            } catch {
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
}

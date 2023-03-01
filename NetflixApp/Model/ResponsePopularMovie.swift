import Foundation

struct ResponsePopularMovie: Codable {
    let results: [PopularMovie]
}

struct PopularMovie: Codable {
    let adult: Bool
    let backdrop_path: String?
    let id: Int
    let title: String?
    let original_language: String?
    let original_title: String?
    let overview: String?
    let poster_path: String?
    let video: Bool
    let vote_average: Double
    let vote_count: Int
    
}


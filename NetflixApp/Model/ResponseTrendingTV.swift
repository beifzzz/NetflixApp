import Foundation

struct ResponseTrendingTV: Codable {
    let results: [TrendingTv]
}

struct TrendingTv: Codable {
    let adult: Bool
    let backdrop_path: String?
    let id: Int
    let name: String?
    let original_language: String?
    let original_name: String?
    let overview: String?
    let poster_path: String?
    let media_type: String?
    
}

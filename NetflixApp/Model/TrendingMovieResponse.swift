import Foundation

struct TrendingMovieResponse: Codable {
    let results: [Movie]
}

struct Movie: Codable {
    let adult: Bool
    let backdrop_path: String?
    let genre_ids: [Genre]
    let id: Int
    let media_type: String?
    let original_language: String?
    let original_title: String?
    let overview: String?
    let popularity: Double
    let poster_path: String?
    let release_date: String?
    let title: String?
    let vote_average: Double
    let vote_count: Int
}

struct Genre: Codable {
    
}
    
/*
 {
     page = 1;
     results =     (
                 {
             adult = 0;
             "backdrop_path" = "/6VX3TrYBtnMOHp3v44lIWWnEp7N.jpg";
             "genre_ids" =             (
                 14,
                 10751,
                 35,
                 12
             );
             id = 852096;
             "media_type" = movie;
             "original_language" = en;
             "original_title" = "We Have a Ghost";
             overview = "After Kevin finds a ghost named Ernest haunting his new home, he becomes an overnight social media sensation. But when Kevin and Ernest go rogue to investigate the mystery of the latter's past, they become targets of the CIA.";
             popularity = "173.201";
             "poster_path" = "/xo0fgAUoEeVQ7KsKeMWypyglvnf.jpg";
             "release_date" = "2023-02-24";
             title = "We Have a Ghost";
             video = 0;
             "vote_average" = "6.7";
             "vote_count" = 119;
         },
 */

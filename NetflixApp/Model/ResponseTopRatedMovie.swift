import Foundation

struct ResponseTopRatedMovie: Codable {

    let results: [TopRatedMovie]
    
}

struct TopRatedMovie: Codable {
    
    let adult: Bool
    let backdrop_path: String?
    let id: Int
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

/*
 
 results =     (
             {
         adult = 0;
         "backdrop_path" = "/tmU7GeKVybMWFButWEGl2M4GeiP.jpg";
         "genre_ids" =             (
             18,
             80
         );
         id = 238;
         "original_language" = en;
         "original_title" = "The Godfather";
         overview = "Spanning the years 1945 to 1955, a chronicle of the fictional Italian-American Corleone crime family. When organized crime family patriarch, Vito Corleone barely survives an attempt on his life, his youngest son, Michael steps in to take care of the would-be killers, launching a campaign of bloody revenge.";
         popularity = "105.087";
         "poster_path" = "/3bhkrj58Vtu7enYsRolD1fZdja1.jpg";
         "release_date" = "1972-03-14";
         title = "The Godfather";
         video = 0;
         "vote_average" = "8.699999999999999";
         "vote_count" = 17552;
 */

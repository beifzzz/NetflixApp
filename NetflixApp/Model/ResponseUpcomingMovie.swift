import Foundation

struct ResponseUpcomingMovie: Codable {
    let results: [UpcomingMovie]
}

struct UpcomingMovie: Codable {
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
    let video: Bool
    let vote_average: Double
    let vote_count: Int
}

/*
 results =     (
             {
         adult = 0;
         "backdrop_path" = "/b1Y8SUb12gPHCSSSNlbX4nB3IKy.jpg";
         "genre_ids" =             (
             16,
             12,
             35,
             10751
         );
         id = 315162;
         "original_language" = en;
         "original_title" = "Puss in Boots: The Last Wish";
         overview = "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.";
         popularity = "2820.651";
         "poster_path" = "/kuf6dutpsT0vSVehic3EZIqkOBt.jpg";
         "release_date" = "2022-12-07";
         title = "Puss in Boots: The Last Wish";
         video = 0;
         "vote_average" = "8.4";
         "vote_count" = 4235;
 */

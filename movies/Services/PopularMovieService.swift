//
//  PopularMovieService.swift
//  movies
//
//  Created by Felipe Santos on 09/04/25.
//

import Foundation
import Alamofire

class MovieService {
    private let baseURL = "https://api.themoviedb.org/3"
    private let apiKey = "bb22dc40dba4adc46d4a235166d798d1"
    
    func fetchPopularMovies(completion: @escaping ([PopularMovie]?) -> Void) {
        let url = "\(baseURL)/movie/popular?api_key=\(apiKey)"
        
        AF.request(url).validate().responseDecodable(of: PopularMovieResponse.self) { response in
            switch response.result {
            case .success(let movieResponse):
                completion(movieResponse.results)
            case .failure(let error):
                print("❌ Erro ao buscar filmes populares: \(error.localizedDescription)")
                completion(nil)
            }
        }
    }
}

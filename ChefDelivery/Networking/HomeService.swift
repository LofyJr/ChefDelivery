//
//  HomeService.swift
//  ChefDelivery
//
//  Created by Juliano Lofy Junior on 13/02/24.
//

import Foundation
import Alamofire

enum RequestError: Error {
    case invalidURL
    case errorRequest(error: String)
}

struct HomeService {
    func fetchData() async throws -> Result<[StoreType], RequestError>{
        guard let url = URL(string: "https://private-844cd9-swifthttpconnector.apiary-mock.com/home") else {
            return .failure(.invalidURL)
        }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        let (data, _) = try await URLSession.shared.data(for: request)
        let storesObjects = try JSONDecoder().decode([StoreType].self, from: data)

        return .success(storesObjects)
    }

    func confirmOrder(product: ProductType) async throws -> Result<[String: Any]?, RequestError> {
        guard let url = URL(string: "https://private-844cd9-swifthttpconnector.apiary-mock.com/home") else {
            return .failure(.invalidURL)
        }

        let encondedObject = try JSONEncoder().encode(product)
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = encondedObject

        let(data,_) = try await URLSession.shared.data(for: request)
        let message = try JSONSerialization.jsonObject(with: data) as? [String: Any]

        return .success(message)
    }

    func fetchDataWithAlamofire(completion: @escaping ([StoreType]?, Error?) -> Void) {
        AF.request("https://private-844cd9-swifthttpconnector.apiary-mock.com/home").responseDecodable(of: [StoreType].self) { response in
            switch response.result {
                case .success(let stores):
                    completion(stores, nil)
                default:
                    break
            }
        }
    }
}

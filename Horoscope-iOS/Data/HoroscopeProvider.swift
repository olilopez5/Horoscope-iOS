//
//  HoroscopeProvider.swift
//  Horoscope-iOS
//
//  Created by Mañanas on 21/5/25.
//

import Foundation

enum HoroscopeError: Error {
    case invalidURL
    case decodingFailed
    case networkError(Error)
}

class HoroscopeProvider {
    static func getHoroscopeLuck(horoscopeId: String, for period: String) async throws -> String {
        guard let url = URL(string: "https://horoscope-app-api.vercel.app/api/v1/get-horoscope/\(period)?sign=\(horoscopeId)&day=TODAY") else {
            throw HoroscopeError.invalidURL
        }

        let (data, _) = try await URLSession.shared.data(from: url)

        guard let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any],
              let dataJson = json["data"] as? [String: Any],
              let horoscopeLuck = dataJson["horoscope_data"] as? String else {
            throw HoroscopeError.decodingFailed
        }

        return horoscopeLuck
    }
}

//
//  CryptoViewModel.swift
//  CryptoPrices
//
//  Created by Shubham Kumar on 28/01/22.
//

import SwiftUI
import Foundation
import Alamofire

class CryptoViewModel: ObservableObject {
    
    @Published var coins:[Coin] = []
    
    init() {
        fetchData()
    }
    
    func fetchData() {
        let headers: HTTPHeaders = [
            "Accepts": "application/json",
            "X-CMC_PRO_API_KEY": "ebcfabd4-5dbf-4b99-bb0b-4905f12e97b7",
        ]
        
        AF.request("https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?start=1&limit=500&convert=USD", headers: headers).responseDecodable(of: Data.self) { response in
            guard let data = response.data else {
                return
            }
            
            do {
                let coinsData = try JSONDecoder().decode(Data.self, from: data)
                self.coins = coinsData.data
            } catch {
                print(error)
                fatalError("Error Occurred!")
            }
            
        }
    }
}

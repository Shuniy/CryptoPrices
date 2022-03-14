//
//  CoinModel.swift
//  CryptoPrices
//
//  Created by Shubham Kumar on 28/01/22.
//

import Foundation
import SwiftUI

struct Coin: Decodable, Identifiable {
    var id: Int?
    var slug: String?
    var symbol: String?
    var quote: Quote?
}

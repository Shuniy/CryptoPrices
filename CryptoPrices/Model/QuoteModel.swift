//
//  QuoteModel.swift
//  CryptoPrices
//
//  Created by Shubham Kumar on 28/01/22.
//

import Foundation
import SwiftUI

struct Quote: Decodable {
    var USD: Usd?
}

struct Usd: Decodable {
    var price: Double?
}

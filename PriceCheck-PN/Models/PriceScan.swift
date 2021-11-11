// Created for PriceCheck-PN on 11/4/20 
// Using Swift 5.0 
// Running on macOS 11.0
// Qapla'
//

import Foundation
import SwiftUI

struct PriceScan: Identifiable, Codable, Comparable {
  
  var id = UUID()  // To conform to Identifiable protocol
  var item: String
  var date: String
  var price: Double
  
  // To conform to Codable protocol
  enum CodingKeys: String, CodingKey {
    case item
    case date
    case price
  }
  
  func onDate() -> String {
    return Helper.getShortDate(self.date)
  }
  
  // To conform to Comparable protocol
  static func < (lhs: PriceScan, rhs: PriceScan) -> Bool {
    lhs.item < rhs.item
  }
  
  // MARK: Example for SwiftUI
  static let example = PriceScan(id: UUID(), item: "Charmin Soft 12 Mega Rolls", date: "2020-10-10T16:48:00", price: 14.79)
  
}

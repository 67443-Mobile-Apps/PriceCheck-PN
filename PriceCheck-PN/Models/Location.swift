// Created for PriceCheck-PN on 11/4/20 
// Using Swift 5.0 
// Running on macOS 11.0
// Qapla'
//

import Foundation
import SwiftUI

struct Location: Identifiable, Codable, Comparable {
  
  var id = UUID()  // to conform to Identifiable protocol
  var name: String
  var scans: [PriceScan]
  
  // To conform to Codable protocol
  enum CodingKeys: String, CodingKey {
    case name = "location"
    case scans
  }
  
  // To conform to Comparable protocol
  static func < (lhs: Location, rhs: Location) -> Bool {
    lhs.name < rhs.name
  }
  
  static func == (lhs: Location, rhs: Location) -> Bool {
    lhs.name == rhs.name
  }
  
  // MARK: Example for SwiftUI
  static let example = Location(id: UUID(), name: "Target", scans: [PriceScan.example])
  
}

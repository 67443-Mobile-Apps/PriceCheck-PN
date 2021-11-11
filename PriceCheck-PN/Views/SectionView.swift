// Created for PriceCheck on 10/10/20 
// Using Swift 5.0 
// Running on macOS 11.0
// Qapla'
//

import SwiftUI

struct SectionView: View {
  let location: Location
  
  var body: some View {
    Section(header: Text(location.name), content: {
      ForEach(location.scans.sorted(by: { $0 < $1 })) { scan in
        ScanView(scan: scan)
      }
    })
  }
}

struct SectionView_Previews: PreviewProvider {
  static var previews: some View {
    SectionView(location: Location.example)
  }
}

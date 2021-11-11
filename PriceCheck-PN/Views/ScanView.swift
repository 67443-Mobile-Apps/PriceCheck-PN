// Created for PriceCheck on 10/10/20 
// Using Swift 5.0 
// Running on macOS 11.0
// Qapla'
//

import SwiftUI

struct ScanView: View {
  var scan: PriceScan
  
  var body: some View {
    NavigationLink(
      destination: ScanDetailsView(scan: scan),
      label: {
        HStack(alignment: .bottom, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
          Text(scan.item)
          Spacer()
          Text(Helper.asCurrency(scan.price))
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }).padding()
      })
  }
}

struct ScanView_Previews: PreviewProvider {
  static var previews: some View {
    ScanView(scan: PriceScan.example)
  }
}

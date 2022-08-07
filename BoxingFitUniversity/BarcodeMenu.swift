//
//  BarcodeMenu.swift
//  BoxingFitUniversity
//
//  Created by Chad Weirick on 7/26/22.
//

import SwiftUI

struct BarcodeMenu: View {
    @State private var keynumber = ""
    let MyImage = generateBarcode(from: "U08868")
    let SoWimage = Image("SoWCount 6 17 22.jpg")
    var body: some View {
        Text("Hello, Worwwwld!")
            .font(.largeTitle)
        Image(uiImage: MyImage!)
            .resizable()
                .aspectRatio(contentMode: .fit)
        Image("SoWCount 6 17 22.jpg")
            .resizable()
                .aspectRatio(contentMode: .fit)
    }
    
}

struct BarcodeMenu_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeMenu()
    }
}

func generateBarcode(from string: String) -> UIImage? {
    let data = string.data(using: String.Encoding.ascii)

    if let filter = CIFilter(name: "CICode128BarcodeGenerator") {
        filter.setValue(data, forKey: "inputMessage")
        let transform = CGAffineTransform(scaleX: 3, y: 3)

        if let output = filter.outputImage?.transformed(by: transform) {
            return UIImage(ciImage: output)
        }
    }

    return nil
}

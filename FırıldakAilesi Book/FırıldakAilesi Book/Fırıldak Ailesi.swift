//
//  Fırıldak Ailesi.swift
//  FırıldakAilesi Book
//
//  Created by Cüneyt Erçel on 30.07.2022.
//

import Foundation
import UIKit // bunu yazmassak diğer tarafa erişemiyor

// 4 BURDA HEM CLASS HEM İNİTALİZERS ÖĞRENİCEZ VE  VC SAYFASINDA KULLANICAZ BU CLASSI
class FırıldakAilesi {
    
    var name :String
    var info : String
    var image : UIImage
    
    init(fırıldakName: String, fırıldakInfo: String, fırıldakImage : UIImage) {
        name = fırıldakName
        info = fırıldakInfo
        image = fırıldakImage
    }
}

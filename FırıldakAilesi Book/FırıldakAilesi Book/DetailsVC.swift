//
//  DetailsVC.swift
//  FırıldakAilesi Book
//
//  Created by Cüneyt Erçel on 30.07.2022.
//

import UIKit

class DetailsVC: UIViewController {

    
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    //10
    var selectedFırıldakAilesi : FırıldakAilesi? // burayı anlayamadım soru işareti koyduk çünkü kabul etmiyodu opsiyonele çevirdik
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
// 11 burda dedik ki sayfa açılınca selectedfırıldak ailesindeki kısmı yazdır. Ama işte şöyle bir eksik var, selectedfırıldak ailesini tanımlamadık oda bir sonraki adım VC de yapıcaz didselect ile.
        nameLabel.text = selectedFırıldakAilesi?.name
        infoLabel.text = selectedFırıldakAilesi?.info
        imageView.image = selectedFırıldakAilesi?.image
        
    }
    

    

}

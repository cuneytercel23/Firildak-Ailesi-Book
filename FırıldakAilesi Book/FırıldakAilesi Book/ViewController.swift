//
//  ViewController.swift
//  FırıldakAilesi Book
//
//  Created by Cüneyt Erçel on 30.07.2022.
//

import UIKit
// 1 ÖNCE UI LARI YAZDIK

// 6 Bi aile arrayi acacağım ki rowlara isim bağlantısı kurabiliyem.
var Aile = [FırıldakAilesi]()

// 13 aşağıda tanımlayınca okumuyor diye buraya yazdık, amaç burdakı chosenı detailsdeki selecteda bağlamak 14 en aşşada
var chosenFırıldakAilesi : FırıldakAilesi? // gene soru işareti verdik çünkü içerideki initalizerı doldurmamızı istiyor

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        
        
        //3 buda sabit datasors ve delegatı view controllerdan alıyorum demek
        tableView.dataSource = self
        tableView.delegate = self
        
        /* 5 - 4 te (Fırıldak Ailesi swift dosyasında olan şeyleri class ve initializerzsı burada kulanacağım.
        
     5 Fırıldak Ailesi Objects */
        
        let sabri = FırıldakAilesi(fırıldakName: "Sabri Fırıldak", fırıldakInfo: "Tuttuğu futbol takımı sürekli değişir, desteklediği parti sürekli değişir. Nabza göre şerbet verir. Şark kurnazı denebilecek bir yapısı vardır. Birçok olayda yanar-döner tavrını gösteriyor.", fırıldakImage: UIImage(named: "sabri")!)
        let yildiz = FırıldakAilesi(fırıldakName: "Yıldız Fırıldak", fırıldakInfo: "Alışveriş tutkunu, kredi kartını ele geçirdiğinde yakıyor. Yine de ailede en toparlayıcı insan o.", fırıldakImage: UIImage(named: "yildiz")!)
        let durdane = FırıldakAilesi(fırıldakName: "Dürdane Çektir", fırıldakInfo: "Çok fazla damadını sevmeyen, klasik bir Türk ailesinde olduğu gibi, genelde kızını kayırmaya çalışan bir anne.", fırıldakImage: UIImage(named: "durdane")!)
        
        let afet = FırıldakAilesi(fırıldakName: "Afet Fırıldak", fırıldakInfo: "Evin kızı, televizyonda birini gördüğünde ben de böyle olmalıyım, ben de buna sahip olmalıyım diye düşünüyor. Afet, Zeki'nin ablası ve Yıldız'ın kızıdır.", fırıldakImage: UIImage(named: "afet")!)
        
        
        let zeki = FırıldakAilesi(fırıldakName: "Zeki Fırıldak", fırıldakInfo: " Evin oğlu, Sabri, onun babasıdır ve oğluyla tartışma yaşar. Zeki, Afet'in kardeşi ve Sabri'nin oğludur.", fırıldakImage: UIImage(named: "zeki")!)
        
        let tosun = FırıldakAilesi(fırıldakName: "Tosun Fırıldak", fırıldakInfo: " Evin bebeği. Konuşmayı yeni yeni öğreniyor.", fırıldakImage: UIImage(named: "tosun")!)
        
        
        // 7 , 6 da yaptığımız arraye 5 teki isimleri ekliyeceğiz ki ilk sayfadaki rowlara güzelce isim basabilelim
        
        Aile.append(sabri)
        Aile.append(yildiz)
        Aile.append(durdane)
    Aile.append(afet)
        Aile.append(zeki)
        Aile.append(tosun)
        
        
        
        
    }
    // 2 number of row ve cellforrow at mevzuları
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Aile.count // 8 - burayı yazdık basitçe
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell() // SABİT
        cell.textLabel?.text = Aile[indexPath.row].name // 9 indexpathrow ile aile arrayininin içindeki nameleri sırasıyla cell e tanımlıyoruz ve aşağıda da celli returnlüyoruz.
        
        //  cell.textLabel?.text bu soldaki kodla hücre içindeki yazıya erişilebiliyor.
        return cell
    }
    
    // 14 Didselecrow kısmı burda rowa basınca olanı yapmaya calısıcaz selected ve choesnı bağlamaya calısıcaz burda baya da ezber var
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenFırıldakAilesi = Aile[indexPath.row] // 14.1 Burası önemli chosen fırıldaki ailedeki indexpatrowa tanımladık burayı anlayamadım pek ama olsun şimdiliksss
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)// ezber
    }
        // 15 Burada
        
     override func prepare(for segue: UIStoryboardSegue, sender: Any?)  {
            if segue.identifier == "toDetailsVC" { // ezber tamemen
            
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedFırıldakAilesi = chosenFırıldakAilesi
            
            
        }
        
    }
}


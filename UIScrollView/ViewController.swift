//
//  ViewController.swift
//  UIScrollView
//
//  Created by TurkishKit on 2019-03-12.
//  Copyright © 2019 TurkishKit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var isimTextField: UITextField!
    @IBOutlet weak var soyisimTextField: UITextField!
    @IBOutlet weak var yasTextField: UITextField!
    @IBOutlet weak var cinsiyetTextField: UITextField!
    @IBOutlet weak var konumTextField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    
    }
    
    
    @IBAction func kaydetPressed(_ sender: Any) {
        
        if let isim = isimTextField.text,
        let soyisim = soyisimTextField.text,
        let yas = yasTextField.text,
        let cinsiyet = cinsiyetTextField.text,
            let konum = konumTextField.text{
            
            let metin = """
            Merhaba \(isim), aramıza hoşgeldin. Bilgilerin aşağıda:
            İsim Soyisim: \(isim) \(soyisim)
            Yaş: \(yas)
            Cinsiyet: \(cinsiyet)
            Konum: \(konum)
            
            """
            
            let uyariKutusu = UIAlertController(title: "Başarılı", message: metin, preferredStyle: .alert)
            let tamamButonu = UIAlertAction(title: "Tamam", style: .default, handler: nil)
            let iptalButonu = UIAlertAction(title: "İptal", style: .destructive, handler: nil)
            uyariKutusu.addAction(iptalButonu)
            uyariKutusu.addAction(tamamButonu)
            self.present(uyariKutusu, animated: true, completion: nil)
            
            isimTextField.text = ""
            soyisimTextField.text = ""
            yasTextField.text = ""
            cinsiyetTextField.text = ""
            konumTextField.text = ""
            
            
        }
        
        
    }
    

}


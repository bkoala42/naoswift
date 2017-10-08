//
//  SwiftViewController.swift
//  LAN Scan
//
//  Created by giovanniiodice on 22/09/2017.
//  Copyright © 2017 Smart Touch. All rights reserved.
//

import UIKit
import Foundation

public class SwiftViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    //ATTENZIONE DEVI DICHIARARE PUBLIC + @OBJC + NON OPTIONAL
    @objc public var textstr: String=""
    
    
    
    //Collego alla vista che sta nell'altro progetto
    /*
    @IBAction func startSpeech(_ sender: Any) {
        let bundle = Bundle(identifier: "it.diem.naosocket")
        let storyBoard = UIStoryboard(name: "SpeechS", bundle: bundle)
        let vc = storyBoard.instantiateViewController(withIdentifier: "speechvc")
        self.present(vc, animated: true, completion: {})
    }
    */
    
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Indirizzo di nao: " + textstr
        // Do any additional setup after loading the view.
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override public func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if(segue.identifier == "dialogue"){
            let nextvc = segue.destination as! SpeechViewController
            nextvc.host = self.textstr
        }
    }
    

}

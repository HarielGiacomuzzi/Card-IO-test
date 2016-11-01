//
//  ViewController.swift
//  CardIOTest
//
//  Created by Hariel Giacomuzzi on 01/11/16.
//  Copyright © 2016 Giacomuzzi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CardIOPaymentViewControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        CardIOUtilities.preload()
    }

    override func viewDidAppear(_ animated: Bool) {
        let Cardview = CardIOPaymentViewController(paymentDelegate: self)
        Cardview?.modalPresentationStyle = .formSheet
        self.present(Cardview!, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func userDidCancel(_ paymentViewController: CardIOPaymentViewController!) {
        
    }

    func userDidProvide(_ cardInfo: CardIOCreditCardInfo!, in paymentViewController: CardIOPaymentViewController!) {
        print(cardInfo)
    }
}


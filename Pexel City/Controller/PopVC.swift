//
//  PopVC.swift
//  Pexel City
//
//  Created by MANAS VIJAYWARGIYA on 02/07/1940 Saka.
//  Copyright © 1940 MANAS VIJAYWARGIYA. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var popImageView: UIImageView!
    
    var passedImage: UIImage!
    
    func initData(forImage image: UIImage){
        self.passedImage = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        popImageView.image = passedImage
        
        addDoubleTapToDismiss()
    }

    
    func addDoubleTapToDismiss(){
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector (screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
        
    }
    @objc func screenWasDoubleTapped(){
        dismiss(animated: true, completion: nil)
    }
}

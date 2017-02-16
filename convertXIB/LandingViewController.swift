//
//  LandingViewController.swift
//  convertXIB
//
//  Created by Mark Russo on 2/15/17.
//  Copyright © 2017 markatlarge. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    var text = "new text"
    
    @IBAction func button(_ sender: Any) {
      
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //textField.text = "please work"
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addBottomSheetView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addBottomSheetView(scrollable: Bool? = true) {
       // let bottomSheetVC = ScrollableBottomSheetViewController()
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let bottomSheetVC = sb.instantiateViewController(withIdentifier: "ScrollableBottomSheetViewController") as! ScrollableBottomSheetViewController
        
        bottomSheetVC.text = "work pretty please"
        
        
        self.addChildViewController(bottomSheetVC)
        self.view.addSubview(bottomSheetVC.view)
        bottomSheetVC.didMove(toParentViewController: self)
        
        let height = view.frame.height
        let width  = view.frame.width
        bottomSheetVC.view.frame = CGRect(x: 0, y: self.view.frame.maxY, width: width, height: height)
    }


}

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
      
        addBottomSheetView()
        
    }
    //let blurEffect = UIBlurEffect(style: .dark)
    var blurredEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .dark))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
  
       // let blurEffect = UIBlurEffect(style: .dark)
      //  let blurredEffectView = UIVisualEffectView(effect: blurEffect)
       
        
        //blurViewEffect.effect = //
        //textField.text = "please work"
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addBottomSheetView(scrollable: Bool? = true) {
   
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let bottomSheetVC = sb.instantiateViewController(withIdentifier: "ScrollableBottomSheetViewController") as! ScrollableBottomSheetViewController
        print("did press add bottom")
        bottomSheetVC.text = "work pretty please"
        
         blurEffectOn ()
        displayContentController(content: bottomSheetVC)
      
        /*
        blurEffectOn ()
        self.addChildViewController(bottomSheetVC)
        self.view.addSubview(bottomSheetVC.view)
        bottomSheetVC.didMove(toParentViewController: self)
        
        let height = view.frame.height
        let width  = view.frame.width
        bottomSheetVC.view.frame = CGRect(x: 0, y: self.view.frame.maxY, width: width, height: height)
        
        */
        
       // self.prepareBackgroundView()
    }
   /*
    func prepareBackgroundView(){
        let blurEffect = UIBlurEffect.init(style: .dark)
        let visualEffect = UIVisualEffectView.init(effect: blurEffect)
        let bluredView = UIVisualEffectView.init(effect: blurEffect)
        bluredView.contentView.addSubview(visualEffect)
        visualEffect.frame = UIScreen.main.bounds
        bluredView.frame = UIScreen.main.bounds
        view.insertSubview(bluredView, at: 0)
    } */
    
    func blurEffectOn () {


        blurredEffectView.frame = view.bounds
        view.addSubview(blurredEffectView)
    }
    
    func blurEffectOff () {
        
        print ("did make it to blur effect off")
        //blurredEffectView.alpha = 0
        blurredEffectView.isHidden = true
        blurredEffectView.removeFromSuperview()
        
        
        
        for subview in blurredEffectView.subviews {
            if subview is UIVisualEffectView {
                subview.removeFromSuperview()
            }
        }
        

        
    }
    func displayContentController(content: ScrollableBottomSheetViewController) {
        
        print("did mkae it to diplay content ")
        /*addChildViewController(content)
        self.view.addSubview(content.view)
        content.didMove(toParentViewController: self)
        
        let height = view.frame.height
        let width  = view.frame.width
        content.view.frame = CGRect(x: 0, y: self.view.frame.maxY, width: width, height: height) */
        
        addChildViewController(content)
        view.addSubview(content.view)
        content.didMove(toParentViewController: self)
        
        let height = view.frame.height
        let width  = view.frame.width
        content.view.frame = CGRect(x: 0, y: self.view.frame.maxY, width: width, height: height)
        
    }
    
    func hideContentController(content: ScrollableBottomSheetViewController) {
        print("was hid accessed")
        
        
        
        if let viewWithTag = content.view.viewWithTag(98) {
            
            viewWithTag.removeFromSuperview()
        }
        
        /*
        content.willMove(toParentViewController: nil)
        content.view.removeFromSuperview()
        content.removeFromParentViewController() */
    }


}

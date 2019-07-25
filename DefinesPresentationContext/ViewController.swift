//
//  ViewController.swift
//  DefinesPresentationContext
//
//  Created by tskim on 25/07/2019.
//  Copyright © 2019 hucet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func touch(_ sender: Any) {
    let child = ViewController()
    child.view.backgroundColor = UIColor.yellow
    child.modalPresentationStyle = .currentContext
    
    self.present(child, animated: true, completion: nil)
  }
  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    self.view.frame = CGRect(x: 50, y: 100, width: 275, height: 275)
  }
}

class ChildViewController: UIViewController {
  @IBOutlet weak var button: UIButton!
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  @IBAction func onDismiss(_ sender: Any) {
    self.dismiss(animated: true)
  }
}

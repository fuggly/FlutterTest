//
//  ViewController.swift
//  FlutterTest
//
//  Created by Roger Misteli on 27.09.22.
//

import UIKit
import Flutter
import FlutterPluginRegistrant

class ViewController: UIViewController {

  lazy var flutterEngines = FlutterEngineGroup(name: "deepId-ident", project: nil)
  
  lazy var flutterEngine: FlutterEngine = {
    let result = flutterEngines.makeEngine(with: nil)
    let thing = result.run(withEntrypoint: nil, initialRoute: "/idBack_document_scan")
    print(thing)
    return result
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction
  func bla() {
    let flutterViewController = FlutterViewController(engine: self.flutterEngine, nibName: nil, bundle: nil)
    self.present(flutterViewController, animated: false, completion: nil)

  }
}


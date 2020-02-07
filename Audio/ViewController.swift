//
//  ViewController.swift
//  Audio
//
//  Created by Jasmine Hanifa Mounir on 10/07/19.
//  Copyright © 2019 Jasmine Hanifa Mounir. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var ting: AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func playButton(_ sender: Any) {
        let audioTing = Bundle.main.path(forResource: "ting", ofType: "mp3")
        do {
            try ting = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioTing!))
        } catch  {
            print(error)
        }
        ting.play()
    }
    
}


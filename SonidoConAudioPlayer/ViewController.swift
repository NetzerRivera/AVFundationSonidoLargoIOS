
//
//  ViewController.swift
//  SonidoConAudioPlayer
//
//  Created by Netzer Rivera on 21/12/15.
//  Copyright © 2015 Netzer Rivera. All rights reserved.
//

import UIKit
import AVFoundation



class ViewController: UIViewController {

    private var reproductor: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    // inicializar
        
        let sonidoURL = NSBundle.mainBundle().URLForResource("Inspiracion", withExtension: "mp3")
    do{
        
        try reproductor = AVAudioPlayer(contentsOfURL: sonidoURL!)
        
    }catch {
        print("Error al cargar el archivo de sonido")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func stop() {
        
        if reproductor.playing{

        reproductor.stop()
            reproductor.currentTime = 0.0
        
        }

    }
    @IBAction func pause() {
        if reproductor.playing{
            reproductor.pause()
        }
    }
    @IBAction func play() {
        if !reproductor.playing{
            reproductor.play()
        }

        
    }
}


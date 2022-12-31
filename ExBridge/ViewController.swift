//
//  ViewController.swift
//  ExBridge
//
//  Created by 김종권 on 2022/12/31.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let remoteControl = RemoteControl(device: TV())
        remoteControl.volumnUp()
    }
}

class RemoteControlOld {
    private var volumn = 0
    
    init() {
    }
    
    func volumnUp() {
        volumn += 1
    }
    func volumnDown() {
        volumn -= 1
    }
}

protocol Deviceable {
    func on()
    func volumnUp()
    func volumnDown()
    func channgelUp()
    func channgelDown()
}

class RemoteControl {
    private var device: Deviceable // bridge
    
    init(device: Deviceable) {
        self.device = device
    }
    
    func on() {
        device.on()
    }
    
    func volumnUp() {
        device.volumnUp()
    }
    
    func volumnDown() {
        device.volumnDown()
    }
    
    func channelUp() {
        device.channgelUp()
    }
    
    func channelDown() {
        device.channgelDown()
    }
}

class TV: Deviceable {
    private var volumn = 0
    private var channel = 0
    
    func on() {
        print("turn on")
    }
    
    func volumnUp() {
        volumn -= 1
    }
    
    func volumnDown() {
        volumn -= 1
    }
    
    func channgelUp() {
        channel += 1
    }
    
    func channgelDown() {
        channel -= 1
    }
}

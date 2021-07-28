//
//  VideoCaptur.swift
//  MC3PoseEstimation
//
//  Created by Sri Endah Ramurti on 16/07/21.
//

import Foundation
import AVFoundation

class VideoCapture {
    let captureSession = AVCaptureSession()
    
    init(){
        guard let captureDevice = AVCaptureDevice.default(for: .video),
              let input = try? AVCaptureDeviceInput(device: captureDevice) else{
            return
        }
        
        captureSession.sessionPreset = AVCaptureSession.Preset.high
        captureSession.addInput(input)
        
    }
    func startCuptureSession(){
        captureSession.startRunning()
    }
}

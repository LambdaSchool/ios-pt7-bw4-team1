//
//  NFC_TagViewController.swift
//  Wine Flight
//
//  Created by Bohdan Tkachenko on 12/16/20.
//

import UIKit
import CoreNFC

class NFC_TagViewController: UIViewController, NFCTagReaderSessionDelegate {
    
    @IBOutlet weak var UIDLabel: UILabel!
    var session: NFCReaderSession?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func CaptureButton(_ sender: Any) {
        self.session = NFCTagReaderSession(pollingOption: .iso14443, delegate: self)
        self.session?.alertMessage = "Hold it still!"
        self.session?.begin()
    }

    // MARK: - NFCTagReaderSessionDelegate
    func tagReaderSessionDidBecomeActive(_ session: NFCTagReaderSession) {
        print("Session Begun")
    }
    
    func tagReaderSession(_ session: NFCTagReaderSession, didInvalidateWithError error: Error) {
        print("ERROR")
    }
    
    func tagReaderSession(_ session: NFCTagReaderSession, didDetect tags: [NFCTag]) {
        print("Connecting to tag")
    }
    
    
}



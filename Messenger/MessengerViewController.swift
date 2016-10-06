//
//  ViewController.swift
//  Messenger
//
//  Created by Aaron Taylor on 9/7/16.
//  Copyright © 2016 Aaron Taylor. All rights reserved.
//

import Cocoa
import WebKit

class MessengerViewController: NSViewController {

    @IBOutlet weak var webView: WebView!

    let baseURL = URL(string: "https://www.messenger.com")!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.webView.applicationNameForUserAgent = Bundle.main.bundleIdentifier!

        self.reload()
    }

    func reload() {
        self.webView.mainFrame.load(URLRequest(url: self.baseURL))
    }

}


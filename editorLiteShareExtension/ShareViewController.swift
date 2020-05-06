//
//  ShareViewController.swift
//  editorLiteShareExtension
//
//  Created by jim on 2020/5/6.
//  Copyright © 2020 tnantoka. All rights reserved.
//

import UIKit
import Social

class ShareViewController: SLComposeServiceViewController {

    override func isContentValid() -> Bool {
        // Do validation of contentText and/or NSExtensionContext attachments here
        return true
    }

    override func didSelectPost() {
        // This is called after the user selects Post. Do the upload of contentText and/or NSExtensionContext attachments.
        let inputItem = self.extensionContext?.inputItems.first
        var outItem: NSExtensionItem?
        outItem = inputItem as? NSExtensionItem
        let outputItems = [outItem]
        // Inform the host that we're done, so it un-blocks its UI. Note: Alternatively you could call super's -didSelectPost, which will similarly complete the extension context.
        self.extensionContext!.completeRequest(returningItems: outputItems as Any as? [Any], completionHandler: nil)
    }

    override func configurationItems() -> [Any]! {
        // To add configuration options via table cells at the bottom of the sheet, return an array of SLComposeSheetConfigurationItem here.
        return []
    }

}

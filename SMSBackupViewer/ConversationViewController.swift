//
//  ViewController.swift
//  SMSBackupViewer
//
//  Created by Kyle Zhou on 2020-11-16.
//

import UIKit
import MessageKit

class ConversationViewController: MessagesViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        messagesCollectionView.messagesDataSource = self
        messagesCollectionView.messagesLayoutDelegate = self
        messagesCollectionView.messagesDisplayDelegate = self
    }


}


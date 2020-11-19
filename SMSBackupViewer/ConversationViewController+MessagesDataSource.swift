//
//  ConversationViewControllerExtension.swift
//  SMSBackupViewer
//
//  Created by Kyle Zhou on 2020-11-18.
//

import Foundation
import MessageKit

public struct Sender: SenderType {
    public let senderId: String

    public let displayName: String
}

// Some global variables for the sake of the example. Using globals is not recommended!
let sender = Sender(senderId: "any_unique_id", displayName: "Steven")
let messages: [MessageType] = []

extension ConversationViewController: MessagesDataSource {

    func currentSender() -> SenderType {
        return Sender(senderId: "any_unique_id", displayName: "Steven")
    }

    func numberOfSections(in messagesCollectionView: MessagesCollectionView) -> Int {
        return messages.count
    }

    func messageForItem(at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) -> MessageType {
        return messages[indexPath.section]
    }
}

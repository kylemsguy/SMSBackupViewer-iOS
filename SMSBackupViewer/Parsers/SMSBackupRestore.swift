//
//  SMSBackupRestore.swift
//  SMSBackupViewer
//
//  Created by Kyle Zhou on 2020-11-19.
//

import Foundation

enum MsgType {
    case Received  // 1
    case Sent  // 2
    case Draft  // 3
    case Outbox  // 4
    // The following two are not allowed for MMS
    case Failed  // 5
    case Queued  // 6
}

enum AddrType {
    case BCC  // 129
    case CC  // 130
    case To  // 151
    case From  // 137
}

class SMSes {
    var count = 0
    var backup_date = 0
    var sms = [SMS]()
    var mms = [MMS]()
}


//<sms protocol="0" address="6475555555" date="1376086720526" type="2" subject="null" body="Hello" toa="null" sc_toa="null" service_center="null" read="1" status="-1" locked="0" date_sent="0" sub_id="-1" readable_date="Aug. 9, 2013 3:18:40 p.m." contact_name="Emily" />
class SMS {
    var address = ""
    var date = 0
    var type = MsgType.Received
    var subject = ""
    var body = ""
    var read = true
    var status = 0
    var contact_name = ""
}

class MMS {
    var date = 0
    var msg_box = MsgType.Received
    var subject = ""
    var address = ""
    var m_id = ""
    var read = true
    var contact_name = ""
    var part = [Part]()
    var addr = [Addr]()
}

class Part {
    var seq = 0
    var ct = ""
    var name = ""
    var chset = ""
    var text = ""
    var data = ""
}

class Addr {
    var address = ""
    var type = AddrType.From
    var charset = ""
}

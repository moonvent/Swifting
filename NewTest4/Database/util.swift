//
//  util.swift
//  NewTest4
//
//  Created by Никита Куркурин on 04.12.2021.
//

import Foundation
import SQLite


func add_mail(login: String, password: String) -> Bool {
    let mails = Mails()
    if check_mail(login: login, password: password) {
        return mails.add_mail(login: login, password: password)
    }
    else {
        return false
    }
}


func get_mails() -> Array<String> {
    Mails().get_mails()
}


func get_password(login: String) -> String {
    Mails().get_password(login: login)
}


func delete_mail(mail: String) {
    Mails().delete_mail(mail_: mail)
}


func get_keys(mail: String) -> (String, String, String) {
    Mails().get_keys(mail_: mail)
}

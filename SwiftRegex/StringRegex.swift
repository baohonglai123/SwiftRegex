//
//  StringExtension.swift
//  SwiftRegex
//
//  Created by 包红来 on 2018/6/9.
//  Copyright © 2018年 包红来. All rights reserved.
//

import Foundation

enum ValidateEnum {
    case password(_: String)
    case eosname(_: String)
    case cofferPassword(_: String)
    case tokenAmount(_: String)

    var isRight: Bool {
        var predicateStr: String
        var currObject: String

        switch self {
        case let .password(str):
            predicateStr = "^[a-zA-Z0-9]{6,20}+"
            currObject = str
        case let .eosname(str):
            // eos 的name的命名工程，
            predicateStr = "(^[a-z1-5.]{1,11}[a-z1-5])|(^[a-z1-5.]{12}[a-j1-5])"
            currObject = str
        case let .cofferPassword(str):
            // 限制6位数字
            predicateStr = "[0-9]{6}"
            currObject = str
        case let .tokenAmount(str):
            predicateStr = "^[0-9]+([.]{1}[0-9]+){0,1}"
            currObject = str
        }

        let predicate = NSPredicate(format: "SELF MATCHES %@", predicateStr)
        guard predicate.evaluate(with: currObject) else {
            return false
        }
        return true
    }

}


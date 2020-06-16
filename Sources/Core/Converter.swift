//
//  Converter.swift
//  
//
//  Created by ibrahim oktay on 16.06.2020.
//

import Foundation

public struct Converter {
    
    public static func encode(_ value: String) -> String {
        return value.data(using: .utf8)?.base64EncodedString() ?? ""
    }
    
    public static func decode(_ value: String) -> String {
        return String(data: Data(base64Encoded: value) ?? Data(), encoding: .utf8) ?? ""
    }
}

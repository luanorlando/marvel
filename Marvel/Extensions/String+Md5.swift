//
//  String+Md5.swift
//  Marvel
//
//  Created by Luan Orlando on 20/10/24.
//

import Foundation
import CommonCrypto

extension String {
    func md5() -> String {
        let length = Int(CC_MD5_DIGEST_LENGTH)
        let messageData = self.data(using: .utf8)!
        var digestData = Data(count: length)
        
       digestData.withUnsafeMutableBytes { digestBytes in
            messageData.withUnsafeBytes { messageBytes in
                if let digestBytesBaseAddress = digestBytes.baseAddress,
                   let messageBytesBaseAddress = messageBytes.baseAddress {
                    CC_MD5(messageBytesBaseAddress,CC_LONG(
                        messageData.count
                    ),digestBytesBaseAddress.assumingMemoryBound(to: UInt8.self))
                }
            }
        }
        
        return digestData.map { String(format: "%02hhx", $0) }.joined()
    }
}

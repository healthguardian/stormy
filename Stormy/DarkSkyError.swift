//
//  DarkSkyError.swift
//  Stormy
//
//  Created by Maxence Roy on 9/27/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation

enum DarkSkyError: Error {
    case requestFailed
    case responseFailed(statusCode: Int)
    case invalidData
    case jsonParsingFailed
    case invalidURL
}

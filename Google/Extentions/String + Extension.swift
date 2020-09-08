//
//  1.swift
//  TYOUT
//
//  Created by Ahmed kamal on 9/25/18.
//  Copyright © 2018 Ahmed kamal. All rights reserved.
//

import UIKit

extension String {
    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
}


//
//  WKTextView.swift
//  WinkKit
//
//  Created by Rico Crescenzio on 04/09/17.
//  Copyright © 2017 Wink srl. All rights reserved.
//

import Foundation

/// The `WKTextField` extends `UITextField` and has the same `@IBInspectable` properties of `WKView`.
///
/// - SeeAlso: `WKView`
///
open class WKTextField: UITextField {
    
    // MARK: UIView Lifecycle
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        roundLayerIfNeeded()
        updateShadowIfNeeded()
    }
}
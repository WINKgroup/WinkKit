//
//  WKTableViewCell.swift
//  WinkKit
//
//  Created by Rico Crescenzio on 11/05/17.
//  Copyright © 2017 Wink srl. All rights reserved.
//

import UIKit

open class WKTableViewCell<P: WKPresenter>: UITableViewCell {
    
    /// The reuse identifier accessible before the object instantiation.
    /// You can override this var, default value is `String(describing: self)`.
    open class var reuseIdentifier: String {
        return String(describing: self)
    }
    
    /// The `WKPresenter` subclassed owned by the cell.
    open var presenter: P?

    /// The method to be called to configure the cell with the `WKPresenter`.
    /// You should override this method to configure the cell to follow the MVP design pattern correctly.
    /// If you override this method, you **MUST** call super.
    ///
    /// - Parameter presenter: the `WKPresenter` that will be owned by the cell.
    open func configure(with presenter: P) {
        self.presenter = presenter
    }
    
}
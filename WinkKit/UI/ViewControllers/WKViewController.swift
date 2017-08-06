//
//  WKViewController.swift
//  WinkKit
//
//  Created by Rico Crescenzio on 04/05/17.
//
//

import UIKit
import RxSwift
import RxCocoa

/// The base ViewController that will be subclassed in your project instead of subclassing `UIViewController`.
/// This provides some useful methods like the static instantiation.
///
/// - Important: Please, if your subclassed `WKViewController` is from a `UIStoryboard` and you want
///              to instantiate it by code, **USE** `instantiate(bundle:)` or `instantiate(fromStoryboard:bundle:)`
///              of `WKBaseViewController`.
open class WKViewController: UIViewController, WKBaseViewController {
    
    public var viewModel: WKViewControllerViewModel!
    
    internal(set) public lazy var disposeBag = DisposeBag()
    
    open class var storyboardName: String? {
        return nil
    }
    
    open class var identifier: String? {
        return nil
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        guard viewModel != nil else { fatalError("viewModel is nil. Did you instantiate a WKViewControllerViewModel in your sublcass and assigned to viewModel property before calling super.viewDidLoad()?") }
        
        viewModel.viewDidLoad()
    }
    
    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewModel.viewWillAppear()
    }
    
    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.viewDidAppear()
    }
    
    open override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        viewModel.viewWillDisappear()
    }
    
    open override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        viewModel.viewDidDisappear()
    }
}

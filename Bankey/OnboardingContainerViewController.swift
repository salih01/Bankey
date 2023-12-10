//
//  OnboardingContainerViewController.swift
//  Bankey
//
//  Created by Salih on 7.12.2023.
//

import UIKit

class OnboardingContainerViewController: UIViewController {

    let pageViewController:UIPageViewController
    var pages = [UIViewController]()
    var currentVC:UIViewController {
        didSet {
        }
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        
        self.pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: .none)
        
        let page1 = ViewController1()
        let page2 = ViewController2()
        let page3 = ViewController3()
        
        pages.append(page1)
        pages.append(page2)
        pages.append(page3)
        
        currentVC = pages.first!
        
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPurple
        addChild(pageViewController)
    }


}

// MARK: - ViewController
class ViewController1:UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
// MARK: - ViewController2
class ViewController2:UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
// MARK: - ViewController3
class ViewController3:UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

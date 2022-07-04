
import UIKit

class AssemblyTimer {
    
    static var viewContoller = TimerViewController()
    static var presenter = TimerPresenter(view: viewContoller)
    
    static func assembleModule() -> UIViewController {
        let interactor = TimerInteractor(presenter: presenter)
        let router = TimerRouter(viewController: viewContoller)

        viewContoller.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router

        return viewContoller
    }
}


import UIKit

protocol AssemblySettingsInputs {
    func assemblyModule(with view: SettingsViewController)
}

class AssemblySettings: AssemblySettingsInputs {

    func assemblyModule(with view: SettingsViewController) {
        let presenter = SettingsPresenter(view: view)
        let interactor = SettingsInteractor(presenter: presenter)
        let router = SettingsRouter(viewController: view)

        view.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
        
        let delegate = AssemblyTimer.viewContoller
        presenter.delegate = delegate
    }
}

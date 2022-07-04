
import UIKit

class SelectedButton: UIButton {

    override open var isSelected: Bool {
        didSet {
            self.backgroundColor = isSelected ? UIColor.link.withAlphaComponent(0.3) : UIColor.link.withAlphaComponent(0.7)
        }
    }
}

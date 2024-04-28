import Foundation
import UIKit

final class AppUIFunctions {
    
    static func createImageView(withSize rect: CGRect) -> UIImageView {
        {
            $0.clipsToBounds = true
            $0.contentMode = .scaleAspectFill
            return $0
        }(UIImageView(frame: rect))
    }
    
    static func createLabel(withSize rect: CGRect, textColor color: UIColor = .black, font: UIFont = UIFont.systemFont(ofSize: 16), alignment: NSTextAlignment = .left) -> UILabel {
        {
            $0.textAlignment = alignment
            $0.numberOfLines = .zero
            $0.font = font
            $0.textColor = color
            return $0
        }(UILabel(frame: rect))
    }
    
    static func setViewInfo(toImageView img: UIImageView, label: UILabel? = nil, header: UILabel? = nil, fromItem item: Item) {
        img.image = UIImage(named: item.image)
        guard let label = label else { return }
        label.text = item.label
        guard let header = header else { return }
        header.text = item.header
    }
}

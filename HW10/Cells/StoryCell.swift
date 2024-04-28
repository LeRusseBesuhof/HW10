import UIKit

final class StoryCell : UICollectionViewCell, CellProtocol {
    
    static var reuseID : String = "Story"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    internal lazy var imageView: UIImageView = AppUIFunctions.createImageView(withSize: CGRect(x: 0, y: 0, width: 80, height: 80))
    
    private lazy var name : UILabel = AppUIFunctions.createLabel(
        withSize: CGRect(x: 0, y: 85, width: imageView.frame.width, height: 19),
        alignment: .center
    )
    
    func setCell(item: Item) {
        
        AppUIFunctions.setViewInfo(toImageView: imageView, label: name, fromItem: item)
        
        [imageView, name].forEach { addSubview($0) }
    }
}

import UIKit
import AVKit

final class QRReaderViewController: UIImagePickerController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarItem = UITabBarItem(title: "Leitor QR", image: .checkmark, selectedImage: .strokedCheckmark)
    }
}

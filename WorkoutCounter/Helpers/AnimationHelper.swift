import UIKit

class AnimationHelper: UIViewController {
    //Pictures for animation
    let img1 = UIImage(named: "push1")!
    let img2 = UIImage(named: "push2")!
    let img3 = UIImage(named: "push3")!
    
    //Start loading screen on VC
    func loadinScreen(imageView: UIImageView, animationDurationSpeed: Double ) {
        imageView.animationImages = [img1, img2, img3, img2]
        imageView.animationDuration = animationDurationSpeed
        imageView.startAnimating()
    }
    

    
}

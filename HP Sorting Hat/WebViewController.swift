import UIKit
import WebKit

class WebViewController : UIViewController, WKNavigationDelegate{
    var webView: WKWebView!
    @IBOutlet var homeButton: UIButton!
    @IBOutlet var homeLabel: UILabel!
    
    override func viewDidLoad(){
        
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
        print("WebViewControllers did load")
        let urlstring: String = "https://www.pottermore.com/collection/all-about-\(houseName!)"
        print("Now loading this URL: \(urlstring)");
        let url = URL(string:urlstring)!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        homeButton.center = CGPoint(x: 200, y: 200)
        webView.addSubview(homeButton)
//        view?.addSubview(homeLabel)
        
    }
    
    @IBAction func goHome(_sender : UIButton){
        performSegue(withIdentifier: "homeButton", sender: self)
    }
}
    


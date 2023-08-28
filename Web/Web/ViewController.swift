//
//  ViewController.swift
//  Web
//
//  Created by 서정원 on 2023/08/25.
//
import WebKit
import UIKit

class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var txtUrl: UITextField!
    
    @IBOutlet var myWebView: WKWebView!
    
    @IBOutlet var myAcitivityIndicator: UIActivityIndicatorView!
    
    func loadWebPage(_ url: String){
        let myUrl = URL(string: url)
        let myRequest = URLRequest(url: myUrl!)
        myWebView.load(myRequest)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myWebView.navigationDelegate = self
        loadWebPage("http://2sam.net")
    }
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {       //함수는 로딩실패시 동작함
        myAcitivityIndicator.startAnimating()
        myAcitivityIndicator.isHidden = false       //
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {       //함수는 로딩실패시 동작함
        myAcitivityIndicator.stopAnimating()
        myAcitivityIndicator.isHidden = true       //
    }
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        myAcitivityIndicator.stopAnimating()
        myAcitivityIndicator.isHidden = true
    }
    func checkUrl(_ url: String) -> String {
        var strUrl = url
        let flag = strUrl.hasPrefix("http://")
        if !flag {
            strUrl = "http://" + strUrl
        }
        return strUrl
    }
    @IBAction func btnGotoUrl(_ sender: UIButton) {
        let myUrl = checkUrl(txtUrl.text!)
        txtUrl.text = ""
        loadWebPage(myUrl)
    }
    
    @IBAction func btnGoSite1(_ sender: UIButton) {
        loadWebPage("http://fallinmac.tistory.com")
    }
    
    @IBAction func btnGoSite2(_ sender: UIButton) {
        loadWebPage("http://blog.2sam.net")
    }
    @IBAction func btnLoadHtmlString(_ sender: UIButton) {
        let HtmlString = "<h1> HTML String </h1><p> String 변수를 이용한 웹 페이지 </p> <p><a href=\"http://2sam.net\"</a>으로 이동</p>"
        myWebView.loadHTMLString(HtmlString, baseURL: nil)
    }
    @IBAction func btnLoadHtmlFile(_ sender: UIButton) {
        let filePath = Bundle.main.path(forResource: "htmlView", ofType: "html")
        let myUrl = URL(fileURLWithPath: filePath!)
        let myRequest = URLRequest(url: myUrl)
        myWebView.load(myRequest)
    }
    
    @IBAction func btnStop(_ sender: UIBarButtonItem) {
        myWebView.stopLoading()
    }
    @IBAction func btnReload(_ sender: UIBarButtonItem) {
        myWebView.reload()
    }
   
    @IBAction func btnGoBack(_ sender: UIBarButtonItem) {
        myWebView.goBack()
    }
    @IBAction func btnGoForward(_ sender: UIBarButtonItem) {
        myWebView.goForward()
    }
    
    
}


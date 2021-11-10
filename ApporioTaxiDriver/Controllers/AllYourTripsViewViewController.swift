//
//  AllYourTripsViewViewController.swift
//  ApporioTaxiDriver
//
//  Created by apple on 2/6/19.
//  Copyright © 2019 Atul Jain. All rights reserved.
//

import UIKit
import CarbonKit

class AllYourTripsViewViewController: BaseViewController, CarbonTabSwipeNavigationDelegate  {
    
    @IBOutlet weak var yourtriptopview: UIView!
    @IBOutlet weak var yourtripslbl: UILabel!
    @IBOutlet weak var carbonkityourtripview: UIView!
    @IBOutlet weak var tableviewwidth: NSLayoutConstraint!
    @IBOutlet weak var segmenttableview: UITableView!
    
    var tablecount = 0
    var selectedindex = 0
    var catArray = [String]()
    var carbonTabSwipeNavigation: CarbonTabSwipeNavigation = CarbonTabSwipeNavigation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tablecount = AppConstants.driverconfiguredata.data?.segments?.count ?? 0
        
        if tablecount == 0{
            
            AppConstants.tripstype = ""
            
           // tableviewwidth.constant = 0.0
            //segmenttableview.isHidden = true
            
        }else{
            //tableviewwidth.constant = 80.0
            //segmenttableview.isHidden = false
            AppConstants.tripstype = String((AppConstants.driverconfiguredata.data?.segments![0].id ?? 0)!)
        }
        
        //segmenttableview.reloadData()
        yourtripslbl.text = "Your Trips".localized
        catArray = ["On Going".localized,"Past Trips".localized]
//        catArray = ["On Going".localized,"Scheduled".localized,"Past Trips".localized]

        carbonTabSwipeNavigation = CarbonTabSwipeNavigation(items: catArray, delegate: self)
        carbonTabSwipeNavigation.insert(intoRootViewController: self, andTargetView: carbonkityourtripview)
        self.style()
    }
    
    @IBAction func backbtn(_ sender: Any) {
        self.dismissVC()
    }
    
   func style() {
    
    carbonTabSwipeNavigation.toolbar.isTranslucent = false
    carbonTabSwipeNavigation.toolbar.barTintColor = UIColor.white
    //carbonTabSwipeNavigation.toolbar.tintColor = UIColor.clear
    //carbonTabSwipeNavigation.toolbar.backgroundColor = UIColor.clear
    carbonTabSwipeNavigation.setIndicatorColor(UIColor(red: 253.0 / 255.0, green: 182.0 / 255.0, blue: 76.0 / 255.0, alpha: 1.0))
    carbonTabSwipeNavigation.setIndicatorHeight(1.0)
    
    let n = catArray.count
    
    let s1 = CGFloat(n)
    for i in 0...n-1{
        if tablecount == 0{
            
            carbonTabSwipeNavigation.carbonSegmentedControl!.setWidth((view.frame.width)/s1, forSegmentAt: i)
            
        }else{
            carbonTabSwipeNavigation.carbonSegmentedControl!.setWidth((view.frame.width)/s1, forSegmentAt: i)
            
        }
    }
    carbonTabSwipeNavigation.setSelectedColor(UIColor(red:0.39, green:0.49, blue:0.55, alpha:1.0), font: UIFont.boldSystemFont(ofSize: 13))
    carbonTabSwipeNavigation.setNormalColor(UIColor(red:0.39, green:0.49, blue:0.55, alpha:1.0) , font: UIFont.boldSystemFont(ofSize: 13))
    // carbonTabSwipeNavigation.setSelectedColor(UIColor(hex: APP_COLOR_DARK_GREEN)
    // , font: UIFont.boldSystemFontOfSize(16))
    
    }
    func carbonTabSwipeNavigation(_ carbonTabSwipeNavigation: CarbonTabSwipeNavigation, viewControllerAt index: UInt) -> UIViewController {
        
        switch index {
            
        case  0:
            let mainStory = UIStoryboard.init(name: "Main", bundle: nil)
            let vc  = mainStory.instantiateViewController(withIdentifier: "ActiveTripViewController") as! ActiveTripViewController
            let INDEX: Int  = Int(index)
            print(INDEX)
            
            return vc
            
//        case 1:
//
//            print("Hellllllllllllllllllllloooooo  index  is " , index )
//
//            let mainStory = UIStoryboard.init(name: "Main", bundle: nil)
//            let vc  = mainStory.instantiateViewController(withIdentifier: "ScheduledTripsViewController") as! ScheduledTripsViewController
//            let INDEX: Int  = Int(index)
//            print(INDEX)
//
//            return vc
            
        case 1:
            
            print("Hellllllllllllllllllllloooooo  index  is " , index )
            
            let mainStory = UIStoryboard.init(name: "Main", bundle: nil)
            let vc  = mainStory.instantiateViewController(withIdentifier: "PastTripsViewController") as! PastTripsViewController
            let INDEX: Int  = Int(index)
            print(INDEX)
            
            return vc
            
        default:
            return self.storyboard!.instantiateViewController(withIdentifier: "ActiveTripViewController")
            
        }
    }
    
    func carbonTabSwipeNavigation(_ carbonTabSwipeNavigation: CarbonTabSwipeNavigation, didMoveAt index: UInt) {
        
    }
}


extension AllYourTripsViewViewController: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tablecount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = segmenttableview.dequeueReusableCell(withIdentifier: "segmentcell", for: indexPath) as! YourTripSegmantTableViewCell
        
        let newString = AppConstants.driverconfiguredata.data?.segments![indexPath.row].icon ?? ""
        
        let url1 = NSURL(string: newString)
        
        cell.categoryimageview.af_setImage(withURL: url1! as URL,
                                           placeholderImage: UIImage(named: "truck two"),
                                           filter: nil,
                                           imageTransition: .crossDissolve(1.0))
        
        if(selectedindex == indexPath.item){
            //  cartypeimage.image = UIImage(named: "filled")
            
            //selectedview.makeViewCircular()
            
            cell.selectedview.layer.cornerRadius =  cell.selectedview.frame.height/2
            cell.selectedview.clipsToBounds = true
            cell.selectedview.backgroundColor = UIColor.appThemeColor()
            
        }else{
            //  cartypeimage.image = UIImage(named: "unfilled")
            cell.selectedview.backgroundColor = UIColor.white
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        segmenttableview.deselectRow(at: indexPath, animated: true)
        
        selectedindex = indexPath.row
        
        AppConstants.tripstype = String((AppConstants.driverconfiguredata.data?.segments![indexPath.row].id ?? 0)!)
        
        //  catArray = ["Active".localized,"Past".localized]
        
        carbonTabSwipeNavigation = CarbonTabSwipeNavigation(items: catArray, delegate: self)
        carbonTabSwipeNavigation.insert(intoRootViewController: self, andTargetView: carbonkityourtripview)
        self.style()
        segmenttableview.reloadData()
    }
}

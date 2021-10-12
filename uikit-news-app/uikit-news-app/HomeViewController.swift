//
//  HomeViewController.swift
//  uikit-news-app
//
//  Created by Ahmad Syarifuddin Randiko on 12/10/21.
//

import UIKit

enum HomeItemGroup {
    case covid
    case topNews
    case news
}

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var itemGroups: [HomeItemGroup] = [.covid, .topNews, .news]
    var covidNews: [Any] = [1]
    var topNews: [Any] = [1]
    var news: [Any] = [1, 2, 3]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.dataSource = self
        
        let button = UIButton(type: .system)
        if #available(iOS 13.0, *) {
            button.setImage(UIImage(systemName: "person.fill"), for: .normal)
        } else {
            // Fallback on earlier versions
        }
        button.frame = CGRect(x: 0, y: 0, width: 36, height: 36)
        button.addTarget(self, action: #selector(self.profileButtonTapped(_:)), for: .touchUpInside)
        
        let barItem = UIBarButtonItem(customView: button)
        navigationItem.rightBarButtonItem = barItem
    }
    
    @IBAction func profileButtonTapped(_ sender: Any) {
        print("Profile Button")
    }
    
}

extension HomeViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return itemGroups.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let group = itemGroups[section]
        switch group {
        case .covid:
            return covidNews.count
        case .topNews:
            return topNews.count
        default:
            return news.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let group = itemGroups[indexPath.section]
        
        if group == .covid {
            let cell  = tableView.dequeueReusableCell(withIdentifier: "covidCell", for: indexPath) as! CovidNewsViewCell
            
            let attText = NSMutableAttributedString(string: "Covid-19 News: ", attributes: [
                .font : UIFont.systemFont(ofSize: 16, weight: .semibold),
                .foregroundColor : UIColor(hex: "0077B6")
            ])
            
            attText.append(NSAttributedString(string: "See the latest coverage about Covid-19", attributes: [
                .font : UIFont.systemFont(ofSize: 16, weight: .regular),
                .foregroundColor : UIColor(hex: "ADADAD")
            ]))
            
            cell.titleLabel.attributedText = attText
            
            cell.topCon.constant = indexPath.row == 0 ? 20 : 10
            cell.bottomCon.constant = indexPath.row == covidNews.count - 1 ? 20 : 10
            
            return cell
            
        } else if group == .topNews { //group == .topNews
            let cell = tableView.dequeueReusableCell(withIdentifier: "topNews", for: indexPath) as! TopNewsViewCell
            
            cell.titleLabel.text = "News for you"
            cell.subtitleLabel.text = "Top 5 News of the day"
            cell.topNewsImage.image = UIImage(named: "dummy_image")
            cell.descLabel.text = "Dream home design insipiration for you in the future."
            cell.tagLabel.text = "3 Hours • Architecture"
            
            return cell
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "newsCell", for: indexPath) as! NewsViewCell
            
            cell.titleLabel.text = "Dream home design insipiration for you in the future."
            cell.tagLabel.text = "3 Hours • Architecture"
            cell.newsImage.image = UIImage(named: "dummy_image")
            
            return cell
        }
    }
}

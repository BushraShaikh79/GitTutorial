//
//  CricketVM.swift
//  CricketAssignment
//
//  Created by Bushra on 22/09/20.

import Foundation

class CricketVM: NSObject {
    
    //MARK:- variables
    var countryList: [Country]?
    var playersList: [Player]?
    var selectedItem: Country?

    //MARK:- update GUI
    func numberOfItemsInSection(flag: Int, section: Int) -> Int {
        if flag == 0 {
            return self.countryList?.count ?? 0
        } else {
            return self.playersList?.count ?? 0
        }
    }
    
    func titleForitemAtIndexPath(flag: Int, indexPath: IndexPath) -> String {
        if flag == 0 {
            return self.countryList![indexPath.row].country_name
        }else {
            return self.playersList![indexPath.row].name
        }
    }
    
    func getPlayersList(param: Country, completion: ([Player]?) -> Void) {
        self.playersList?.removeAll()
        self.playersList = param.players
        return completion(param.players)
    }
    
    func getCountryList(completion: @escaping ([Country]?) -> Void) {
        DispatchQueue.main.async {
            if self.countryList?.count != 0 {
                completion(self.countryList)
            }
        }
    }

    //MARK:- data parsing and operations
    func parse(flag: Int, completion: @escaping ([Country]?) -> Void) {
        countryList = [Country]()
        self.countryList?.removeAll()
       
        guard let url = URL(string: Constants.request_url.rawValue) else {
            return
        }
                        
        let session = URLSession.shared
        session.dataTask(with: url) {
        (data, response, error) in
                if let response = response {
                    print("Response : \(response)")
                }
                            
                if let data = data {
                    print("Data : \(data)")
                }
                            
                do {
                    let jsonData = try JSONSerialization.jsonObject(with: data!, options: []) as? NSDictionary

                    guard let countries = jsonData as? [String: [Any]] else {
                        return
                    }
                    print("country: \(countries)")
                    for country in countries {
                        
                        
                        guard let players = country.value as? [Dictionary<String, Any>] else{
                            return
                        }
                        print("players \(players)")
                        self.playersList = [Player]()
                        for player in players {
                            var playerObj: Player?
                            if player[Constants.player_captain.rawValue] != nil {
                                playerObj = Player(name: player[Constants.player_name.rawValue] as! String, captain: player[Constants.player_captain.rawValue] as? Bool)
                            }else {
                                playerObj = Player(name: player[Constants.player_name.rawValue] as! String, captain: false)
                            
                            }
                            
                            self.playersList!.append(playerObj!)
                            
                        }
                        let countryOBj = Country(country_name: country.key, players: self.playersList!)
                        self.countryList!.append(countryOBj)
                        self.playersList?.removeAll()
                        
                    }
                    self.getCountryList(completion: {_ in
                        completion(self.countryList)
                    })
                } catch {
                    print("Error : \(error)")
                }
            }.resume()
        
        if flag == 0 {
            completion(self.countryList)
        }
    }
    
    func sortData(flag: Int, completion: ([Country]) -> ()) {
        switch flag {
        case 0:
            self.countryList!.sort(by: {$0.country_name < $1.country_name})
            
        case 1:
            self.playersList!.sort(by: {$0.name < $1.name})
        case 2:
            self.playersList!.sort(by: {
            String($0.name.components(separatedBy: " ").last!) <
                String($1.name.components(separatedBy: " ").last!)})
        default:
            print("default")
        }
        completion(countryList!)
    }
   
}

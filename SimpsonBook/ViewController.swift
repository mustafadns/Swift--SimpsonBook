//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Mustafa DANIŞAN on 30.05.2024.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    // simpson array'i yazmak için ...
    var mySimpsons = [Simpson]()
    
    // seçilen simspon'u tanımlamak için ...
    var choseSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
        // Simpson Object (simpson'ların özelliklerini yazmak için ...) bu kısım class dosyasındaki tanımlamadan gelen bir sistem içeriyor !!!
        
        let homer = Simpson(simpsonName: "Homer Simpson", simpsonJob: "Nuclear Safety", simpsonİmage: UIImage(named: "homerSimpson")!)
        let marge = Simpson(simpsonName: "Marge Simpson", simpsonJob: "Housewife", simpsonİmage: UIImage(named: "margeSimpson")!)
        let bart = Simpson(simpsonName: "Bart Simpson", simpsonJob: "Student", simpsonİmage: UIImage(named: "bartSimspon")!)
        let lisa = Simpson(simpsonName: "Lisa Simpson", simpsonJob: "Student", simpsonİmage: UIImage(named: "lisaSimpson")!)
        let maggie = Simpson(simpsonName: "Maggie Simpson", simpsonJob: "Baby", simpsonİmage: UIImage(named: "meggieSimpson")!)


        // mySimpson arrayına simpson'ları eklemek için ...
        mySimpsons.append(homer)
        mySimpsons.append(marge)
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
        mySimpsons.append(maggie)
    }
    
    // tableWiew'de kaç tane satırın olacağını ayarlamak için ...
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }

    // tableView'de nelerin olacağını ayarlamak için ...
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
    }
    
    // tableView'in hangi view olduğunu belirlemek için ...
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choseSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    // seçilen simpson'un bilgilerini seçilen view'e göndermek için ...
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue .destination as? detailsVC
            destinationVC?.selectedSimpson = choseSimpson
        }
    }

}


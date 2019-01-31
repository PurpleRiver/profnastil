//
//  ContactsTableViewController.swift
//  Profnastil
//
//  Created by Blurry Rabbit on 29.11.2017.
//  Copyright © 2017 Blurry Rabbit. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    var store: [Store] = [
        Store(city: "Уфа (офис)", adress: "ул. Трамвайная 2/4", payment: "• Наличный расчет • Расчет по карте • Оплата через банк", timeOfWork: " Пн-Пт 9:00 - 18:00    Сб 9:00 - 14:00", phoneNumbers: "(347) 279-85-96    (347) 279-85-97    (347) 279-85-98", phoneNumberToCall: "(347)279-85-97" , email: "bmpt@mail.ru", latitude: 54.796160, longitude: 56.080221),
        Store(city: "Уфа (Производственный цех)", adress: "ул. Соединительное шоссе 2/1", payment: "", timeOfWork: " Пн-Пт 9:00 - 18:00 Обед 13:00 - 14:00    Сб 9:00 - 14:00", phoneNumbers: "(347) 246-28-01", phoneNumberToCall: "(347)246-28-01", email: "", latitude: 54.859573, longitude: 56.101500),
        //        Store(city: "Уфа (филиал)", adress: "ул. Айская 69/2а", payment: "• Наличный расчет", timeOfWork: " Пн-Пт 9:00 - 18:00 Обед 13:00 - 14:00   Сб 9:00 - 14:00", phoneNumbers: "(347) 248-16-16 (347) 228-32-48", phoneNumberToCall: "(347)248-16-16" , email: "", site: "www.stanufa.ru", locationOnMap: ""),
        //        Store(city: "Уфа (филиал)", adress: "с. Михайловка. ул. Стройучасток 28", payment: "• Наличный расчет", timeOfWork: " Пн-Пт 9:00 - 18:00   Сб 9:00 - 14:00", phoneNumbers: "8 917‒350‒51‒49", phoneNumberToCall: "+7‒917‒350‒51‒49", email: "", site: "www.stanufa.ru", locationOnMap: ""),
        Store(city: "Стерлитамак", adress: "ул. Космонавтов 3", payment: "• Наличный расчет", timeOfWork: " Пн-Пт 9:00 - 18:00   Сб 9:00 - 14:00", phoneNumbers: "(3473) 215786    (3473) 216140    (3473) 216156", phoneNumberToCall: "(3473)215786", email: "stanmenst@mail.ru", latitude: 53.682873, longitude: 55.943313),
        Store(city: "Мелеуз", adress: "ул. Промышленная 3", payment: "• Наличный расчет", timeOfWork: " Пн-Пт 9:00 - 18:00   Сб 9:00 - 14:00", phoneNumbers: "8 919-6000-300", phoneNumberToCall: "+79196000300", email: "", latitude: 52.939850, longitude: 55.915037),
        Store(city: "Сибай", adress: "ул. Зилаирское шоссе 11/4а", payment: "• Наличный расчет", timeOfWork: " Пн-Пт 9:00 - 18:00   Сб 9:00 - 14:00", phoneNumbers: "(34775) 2-01-02", phoneNumberToCall: "(34775)2-01-02", email: "stansib@mail.ru", latitude: 52.701156, longitude: 58.668109),
        Store(city: "Туймазы", adress: "ул. Островского 76а", payment: "• Наличный расчет", timeOfWork: " Пн-Пт 9:00 - 18:00   Сб 9:00 - 14:00", phoneNumbers: "(34782) 7-04-63", phoneNumberToCall: "(34782)7-04-63", email: "stantrm@mail.ru", latitude: 54.599379, longitude: 53.676151),
        Store(city: "Баймак", adress: "ул. Есенина 14 тц Мегаполис офис 56", payment: "• Наличный расчет", timeOfWork: " Пн-Пт 9:00 - 18:00   Сб 9:00 - 14:00", phoneNumbers: "8 917-800-57-54", phoneNumberToCall: "+7917-800-57-54",  email: "baimak.stan@mail.ru", latitude: 52.597207, longitude: 58.294190),
        Store(city: "Бугульма", adress: "ул. Нефтянников д. 44а, 2-й этаж", payment: "• Наличный расчет", timeOfWork: " Пн-Пт 9:00 - 18:00   Сб 9:00 - 14:00", phoneNumbers: "8 917-882-35-66", phoneNumberToCall: "+7917-882-35-66",  email: "", latitude: 54.532876, longitude: 52.767768)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return store.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactsCell", for: indexPath) as! StoreTableViewCell
        
        cell.cityLabel.text = store[indexPath.row].city
        cell.adressLabel.text = store[indexPath.row].adress
        cell.paymentLabel.text = store[indexPath.row].payment
        cell.timeOfWork.text = store[indexPath.row].timeOfWork
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPhoneAndMap" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! StoreDetailViewController
                
                destinationController.storeDetail = store[indexPath.row]
            }
        }
    }
}

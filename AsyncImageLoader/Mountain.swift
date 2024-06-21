//
//  Mountain.swift
//  AsyncImageLoader
//
//  Created by Josep Cerdá Penadés on 21/6/24.
//

import Foundation

struct Mountain: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let height: String
    let image: String
}

extension Mountain {
    var imageURL: URL? {
        URL(string: image)
    }
}

extension Array where Element == Mountain  {
    static let mock: [Mountain] = [
        Mountain(name: "Everest", height: "8,848 m", image: "https://upload.wikimedia.org/wikipedia/commons/b/bf/Mt._Everest_from_Gokyo_Ri_November_5%2C_2012_Cropped.jpg"),
        Mountain(name: "K2", height: "8,611 m", image: "https://upload.wikimedia.org/wikipedia/commons/8/8b/Picture_of_K2.jpg"),
        Mountain(name: "Kangchenjunga", height: "8,586 m", image: "https://upload.wikimedia.org/wikipedia/commons/5/57/Kangchenjunga%2C_India.jpg"),
        Mountain(name: "Lhotse", height: "8,516 m", image: "https://upload.wikimedia.org/wikipedia/commons/4/4e/LhotseMountain.jos.500pix.jpg"),
        Mountain(name: "Makalu", height: "8,485 m", image: "https://upload.wikimedia.org/wikipedia/commons/1/19/Makalu.jpg"),
        Mountain(name: "Cho Oyu", height: "8,188 m", image: "https://upload.wikimedia.org/wikipedia/commons/1/1c/ChoOyu-fromGokyo.jpg"),
        Mountain(name: "Dhaulagiri", height: "8,167 m", image: "https://upload.wikimedia.org/wikipedia/commons/a/a7/Dhaulagiri_from_ramrekha.jpg"),
        Mountain(name: "Manaslu", height: "8,163 m", image: "https://upload.wikimedia.org/wikipedia/commons/8/82/Manaslu%2C_from_base_camp_trip.jpg"),
        Mountain(name: "Nanga Parbat", height: "8,126 m", image: "https://upload.wikimedia.org/wikipedia/commons/0/0d/Nanga_parbat%2C_Pakistan_by_gul791.jpg"),
        Mountain(name: "Annapurna I", height: "8,091 m", image: "https://upload.wikimedia.org/wikipedia/commons/2/29/Annapurna_I.jpg"),
        Mountain(name: "Gasherbrum I", height: "8,080 m", image: "https://upload.wikimedia.org/wikipedia/commons/6/6f/HiddenPeak.jpg"),
        Mountain(name: "Broad Peak", height: "8,051 m", image: "https://upload.wikimedia.org/wikipedia/commons/5/5b/7_15_BroadPeak.jpg"),
        Mountain(name: "Gasherbrum II", height: "8,035 m", image: "https://upload.wikimedia.org/wikipedia/commons/3/37/Gasherbrum2.jpg"),
        Mountain(name: "Shishapangma", height: "8,027 m", image: "https://upload.wikimedia.org/wikipedia/commons/e/e9/Shishapangma.jpg"),
        Mountain(name: "Gyachung Kang", height: "7,952 m", image: "https://upload.wikimedia.org/wikipedia/commons/8/88/Gyachung_Kang.jpg"),
        Mountain(name: "Annapurna II", height: "7,937 m", image: "https://upload.wikimedia.org/wikipedia/commons/2/2e/Annapurna_II_north.jpg"),
        Mountain(name: "Gasherbrum III", height: "7,946 m", image: "https://upload.wikimedia.org/wikipedia/commons/4/4e/Gasherbrum_III_%284to3%29%2C_from_Gasherbrum_II.jpg"),
        Mountain(name: "Himalchuli", height: "7,893 m", image: "https://upload.wikimedia.org/wikipedia/commons/4/49/Himalchuli_from_south.jpg"),
        Mountain(name: "Distaghil Sar", height: "7,885 m", image: "https://www.vrcholovka.cz/img/vrchol/14231-500-distaghil-sar.jpg"),
        Mountain(name: "Ngadi Chuli", height: "7,871 m", image: "https://upload.wikimedia.org/wikipedia/commons/b/bc/Manaslu_-_Thulagi_Chuli_-_Ngadi_Chuli.jpg")
    ]
}

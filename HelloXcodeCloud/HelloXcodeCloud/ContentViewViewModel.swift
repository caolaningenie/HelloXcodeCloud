//
//  ContentViewViewModel.swift
//  HelloXcodeCloud
//
//  Created by Caolan Owens on 16/11/2022.
//

import Foundation

final class ContentViewViewModel {
    
    private lazy var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "DD"
        return formatter
    }()
    
    func isDayEven(date: Date) -> Bool {
        guard let day = Int(dateFormatter.string(from: date)) else {
            return false
        }
        return day % 2 == 0
    }
}

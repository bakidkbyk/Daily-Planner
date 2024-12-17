//
//  PlannerCellModel.swift
//  UIComponents
//
//  Created by Baki Dikbıyık on 14.11.2024.
//

import Foundation

public protocol PlannerCellDataSource: AnyObject {
    
}

public protocol PlannerCellEventSource: AnyObject {
    
}

public protocol PlannerCellProtocol: PlannerCellDataSource, PlannerCellEventSource {
    
}

public final class PlannerCellModel: PlannerCellProtocol {
    
}

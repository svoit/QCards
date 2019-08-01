//
//  SettingsUseCase.swift
//  Platform
//
//  Created by Andreas Lüdemann on 01/08/2019.
//  Copyright © 2019 Andreas Lüdemann. All rights reserved.
//

import Domain
import Foundation
import Realm
import RealmSwift
import RxSwift

final class SettingsUseCase: Domain.SettingsUseCase {
    
    private let repository: UserDefaultsRepository
    
    init(repository: UserDefaultsRepository) {
        self.repository = repository
    }
    
    func getSetting(of key: String, defaultValue: Bool = false) -> Observable<Bool> {
        return repository.get(key: key, defaultValue: defaultValue)
    }
    
    func saveSetting(with value: Bool, key: String) -> Observable<Void> {
        return repository.save(value: value, key: key)
    }
}

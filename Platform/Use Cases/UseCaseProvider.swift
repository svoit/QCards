//
//  UseCaseProvider.swift
//  Platform
//
//  Created by Andreas Lüdemann on 27/02/2019.
//  Copyright © 2019 Andreas Lüdemann. All rights reserved.
//

import Domain
import Foundation
import Realm
import RealmSwift

public final class UseCaseProvider: Domain.UseCaseProvider {
    private let configuration: Realm.Configuration
    
    public init(configuration: Realm.Configuration = Realm.Configuration()) {
        self.configuration = configuration
    }
    
    /*public func makePostsUseCase() -> Domain.DeckUseCase {
        let repository = Repository<Post>(configuration: configuration)
        return PostsUseCase(repository: repository)
    }*/
}

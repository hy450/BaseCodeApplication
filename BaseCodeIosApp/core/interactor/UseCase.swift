//
//  UseCase.swift
//  BaseCodeIosApp
//
//  Created by hanyong on 09/08/2019.
//  Copyright © 2019 hanyong. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

protocol UseCase {
    associatedtype ReturnType
    associatedtype Params
    
    func run(_ params: Params) -> Single<Either<Failure,ReturnType>>
}

extension UseCase {
    
    func invoke(_ params: Params) -> Single<Either<Failure,ReturnType>> {
        return run(params)
            .subscribeOn(ConcurrentDispatchQueueScheduler(qos: .background))
    }
    
    
    func invokeAsDriver(_ params: Params) -> Driver<Either<Failure,ReturnType>> {
        return invoke(params)
            .asDriver(onErrorJustReturn: Either.init(left: Failure.UnknownFailure))
    }
    
    func invokeAsSingal(_ params: Params) -> Signal<Either<Failure,ReturnType>> {
        return invoke(params)
            .asSignal(onErrorJustReturn: Either.init(left: Failure.UnknownFailure))
    }
    
    /**
     * loading indicator 와 함께 동작하는 usecase
     */
    func invokeWithLoadingAsDriver(_ params: Params,indicator: ActivityIndicator) -> Driver<Either<Failure,ReturnType>> {
        return invoke(params)
            .trackActivity(indicator)
            .asDriver(onErrorJustReturn: Either.init(left: Failure.UnknownFailure))
    }
    
    func invokeWithLoadingAsSignal(_ params: Params,indicator: ActivityIndicator) -> Signal<Either<Failure,ReturnType>> {
        return invoke(params)
            .trackActivity(indicator)
            .asSignal(onErrorJustReturn: Either.init(left: Failure.UnknownFailure))
    }
}

class None { }

//
//  NSSet+MTCollectionOperators.h
//  Pods
//
//  Created by Mat Trudel on 2013-03-01.
//
//

#import <Foundation/Foundation.h>

@interface NSSet (MTCollectionOperators)

- (instancetype)intersectWith:(NSSet *)other;
- (instancetype)subtractValuesIn:(NSSet *)other;
- (instancetype)map:(id (^)(id evaluatedObject))block;

@end

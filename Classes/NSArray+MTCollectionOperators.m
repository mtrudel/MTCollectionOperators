//
//  NSArray+MTCollectionOperators.m
//  Pods
//
//  Created by Mat Trudel on 2013-03-01.
//
//

#import "NSArray+MTCollectionOperators.h"

@implementation NSArray (MTCollectionOperators)

- (instancetype)intersectWith:(NSArray *)other {
  NSSet *otherAsSet = [NSSet setWithArray:other];
  return [self filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^BOOL(id evaluatedObject, NSDictionary *bindings) {
    return [otherAsSet containsObject:evaluatedObject];
  }]];
}

- (instancetype)subtractValuesIn:(NSArray *)other {
  NSSet *otherAsSet = [NSSet setWithArray:other];
  return [self filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^BOOL(id evaluatedObject, NSDictionary *bindings) {
    return ![otherAsSet containsObject:evaluatedObject];
  }]];
}

- (instancetype)map:(id (^)(id))block {
  NSMutableArray *result = [NSMutableArray arrayWithCapacity:self.count];
  for (id obj in self) {
    [result addObject:block(obj)];
  }
  return result;
}

@end

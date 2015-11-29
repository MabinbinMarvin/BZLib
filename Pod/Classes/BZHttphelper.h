//
//  BZHttphelper.h
//  Pods
//
//  Created by binbinma on 15/11/29.
//
//

#import <Foundation/Foundation.h>

@interface BZHttphelper : NSObject
- (void)getWithUrl:(NSString *)url withCompletion:(void (^)(id responseObject))completion failed:(void (^)(NSError *error))failed;
@end

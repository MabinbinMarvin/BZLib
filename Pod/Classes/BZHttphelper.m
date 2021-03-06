//
//  BZHttphelper.m
//  Pods
//
//  Created by binbinma on 15/11/29.
//
//

#import "BZHttphelper.h"
#import <YSASIHTTPRequest/ASIHTTPRequest.h>

@implementation BZHttphelper

- (void)getWithUrl:(NSString *)url withCompletion:(void (^)(id responseObject))completion failed:(void (^)(NSError *error))failed
{
    ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:[NSURL URLWithString:url]];
    __weak ASIHTTPRequest *weakrequest = request;
    [request setCompletionBlock:^{
        NSString *responseString = [weakrequest responseString];
        completion(responseString);
    }];
    
    [request setFailedBlock:^{
        NSError *error = [weakrequest error];
        failed(error);
    }];
    [request start];
}

@end

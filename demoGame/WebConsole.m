//
//  WebConsole.m
//  demoGame
//
//  Created by 尹家桐 on 2019/4/4.
//  Copyright © 2019 尹家桐. All rights reserved.
//

#import "WebConsole.h"

@implementation WebConsole
+ (void) enable {
    [NSURLProtocol registerClass:[WebConsole class]];
}

+ (BOOL) canInitWithRequest:(NSURLRequest *)request {
    if ([[[request URL] host] isEqualToString:@"debugger"]){
        NSLog(@"%@", [[[request URL] path] substringFromIndex: 1]);
        
    }
    return FALSE;
}
@end

//
//  libjqTests.m
//  libjqTests
//
//  Created by Fred Leitz on 10/9/2013.
//  Copyright (c) 2013 Fred Leitz. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSData+JQ.h"
@interface libjqTests : XCTestCase

@end

@implementation libjqTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
   
    NSData* test = [NSData dataWithContentsOfFile: [[NSBundle bundleForClass:[self class]] pathForResource:@"test" ofType:@"json"]];
    NSData* output = [NSData dataWithContentsOfFile: [[NSBundle bundleForClass:[self class]] pathForResource:@"output" ofType:@"json"]];
    XCTAssertTrue([test length] > 1000,@"Must have data");
    XCTAssertTrue([output length] > 900,@"Must have data");
    NSData* testOutput = [test jq:@"[.data[] | { name } | .]" withOptions:0];
    XCTAssertEqual([testOutput length], [output length], @"Should be same length");
}

@end

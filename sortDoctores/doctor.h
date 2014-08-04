//
//  doctor.h
//  sortDoctores
//
//  Created by guitarrkurt on 04/08/14.
//  Copyright (c) 2014 Williams Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface doctor : NSObject

@property (nonatomic, weak) NSString *nombre;
@property (nonatomic) NSInteger cedula;

-(id)initWithName: (NSString *)nombre cedula:(NSInteger)c;

@end

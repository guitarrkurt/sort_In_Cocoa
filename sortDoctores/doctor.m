//
//  doctor.m
//  sortDoctores
//
//  Created by guitarrkurt on 04/08/14.
//  Copyright (c) 2014 Williams Inc. All rights reserved.
//

#import "doctor.h"

@implementation doctor

-(id)initWithName: (NSString *)nombre cedula:(NSInteger)c{
    self = [super init];
    if (self) {
        self.nombre = nombre; //setter
        self.cedula = c;
    }
    return self;
}

-(NSString *)description{
    return [NSString stringWithFormat:@"Doc: %@ con Cedula: %lu", self.nombre, self.cedula];
}
@end

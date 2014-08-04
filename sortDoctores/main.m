//
//  main.m
//  sortDoctores
//
//  Created by guitarrkurt on 04/08/14.
//  Copyright (c) 2014 Williams Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "doctor.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //Creamos un array vacio
        NSMutableArray *arrayDocs = [[NSMutableArray alloc] init];
        //Creamos a los doctores
        doctor *d1 = [[doctor alloc] initWithName:@"CJuan" cedula:1];
        doctor *d2 = [[doctor alloc] initWithName:@"BPedro" cedula:2];
        doctor *d3 = [[doctor alloc] initWithName:@"DPepito" cedula:3];
        doctor *d4 = [[doctor alloc] initWithName:@"ADavid" cedula:4];
        //Llenar array
        [arrayDocs addObject:d1];
        [arrayDocs addObject:d2];
        [arrayDocs addObject:d3];
        [arrayDocs addObject:d4];
        //Creamos los descriptores
        NSSortDescriptor *nm = [NSSortDescriptor sortDescriptorWithKey:@"nombre" ascending:YES];
        NSSortDescriptor *num = [NSSortDescriptor sortDescriptorWithKey:@"cedula" ascending:YES];
        //Ordenar
        [arrayDocs sortUsingDescriptors:@[num, nm]];
        //Imprimir
        NSLog(@"%@", arrayDocs);
        
    }
    return 0;
}


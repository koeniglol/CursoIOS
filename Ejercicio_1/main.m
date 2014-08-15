//
//  main.m
//  Ejercicio_1
//
//  Created by CCDM19 on 15/08/14.
//  Copyright (c) 2014 N. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *mensaje= @"Hola de calculadora";
        NSLog(@"%@", mensaje);
        
        float primerValor;
        scanf("%f", &primerValor);
        
        int opcion;
        scanf("%d", &opcion);
        
        float segundoValor;
        scanf("%f", &segundoValor);
        
        float resultado = 0;
        switch (opcion) {
            case 0:
                resultado = primerValor + segundoValor;
                break;
            
            case 1:
                resultado = primerValor - segundoValor;
                break;
                
            case 2:
                resultado = primerValor * segundoValor;
                break;
                
            case 3:
                if(segundoValor != 0)
                {
                    resultado = primerValor / segundoValor;
                } else
                    NSLog(@"No se puede dividir entre cero.");
                break;
                
            default:
                NSLog(@"Opción no valida!");
                break;
        }
        
        
        NSMutableArray *arrayOperaciones = [[NSMutableArray alloc] init];
        
        NSNumber *numero =[[NSNumber alloc]initWithFloat:resultado];
        [arrayOperaciones addObject:numero];
        
        [arrayOperaciones count];
        
        
        
        
    }
    return 0;
}


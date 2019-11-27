//
//  main.m
//  ObjC_Lesson1
//
//  Created by Anton Fomkin on 27.11.2019.
//  Copyright © 2019 Anton Fomkin. All rights reserved.
//

#import <Foundation/Foundation.h>

int a,b,c;

void task1(void);
void task2(int a, int b, int c);
void task3(int a, int b, int c);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        task1();
        task2(a, b, c);
        task3(a, b, c);
    }
    return 0;
}


void task1() {
    printf("One number: ");
    scanf("%d", &a);
    printf("Two number: ");
    scanf("%d", &b);
    printf("Three number: ");
    scanf("%d", &c);
    
    a *= b;
    b -= c;
    c += a;
    
}

void task2(int a, int b, int c) {
    NSLog(@"One value - %i, Two value - %i, Three value - %i\n", a, b, c);
}

void task3(int a, int b, int c) {
    int tmp = 0;
    int tmp2 = 0;
    int result = 0;
    
    if (a <= b) {
        tmp = b; tmp2 = a;
    }
    else {
        tmp = a; tmp2 = b;
    }
    
    if (tmp >= c ) { tmp = c; }
    
    if (tmp >= tmp2) {
        result = tmp;
    }
    else {
        result = tmp2;
    }
    
    NSLog(@"Average Value - %i",result);
}


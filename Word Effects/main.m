//
//  main.m
//  Word Effects
//
//  Created by Larry Luk on 2017-10-30.
//  Copyright © 2017 App App Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  
    while (true) {
        
        char inputChars[255];
        printf("Input a string: ");
        fgets(inputChars, 255, stdin);
        if (inputChars[0] == '\n') {
            fgets(inputChars, 255, stdin);
        }
        printf("Your string is %s", inputChars);
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        NSLog(@"Input was : %@", inputString);
        
        int inputOps;
        printf("Input an operation, your choices are 1. Uppercase, 2. Lowercase, 3. Numberize, 4. Canadianize, 5. Respond, 6. De-Space-it. ");
        scanf("%d", &inputOps);
        NSLog(@"Input was : %d", inputOps);


        
        int convertedValue = [inputString intValue];
        
        NSString *editedInput = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        NSString *ehInputString = @", eh?";
        NSString *combinedString = [editedInput stringByAppendingString:ehInputString];
        
        NSString *noSpaceInput = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];


   
        switch (inputOps) {
            case 1:
                NSLog(@"1. Uppercase : %@", [inputString uppercaseString]);
                break;
            case 2:
                NSLog(@"2. Lowercase : %@", [inputString lowercaseString]);
                break;
            case 3:
                if (convertedValue != 0) {
                    NSLog(@"3. Numberize : %d", [inputString intValue]);
                } else {
                    NSLog(@"Cannot convert to integer, or the number input is 0");
                }
                break;
            case 4:
                NSLog(@"4. Canadianize %@", combinedString);
                break;
            case 5:
                if ([editedInput hasSuffix:@"!"]) {
                    NSLog(@"5. Respond Whoa calm down!");
                    
                } else if ([editedInput hasSuffix:@"?"]) {
                    NSLog(@"5. Respond I don't know");
                    
                } else {
                    NSLog(@"5. Respond : %@", inputString);
                }
                break;
            case 6:
                NSLog(@"6. Despace %@", noSpaceInput);
                break;
            default:
                NSLog(@"Incorrect operation");
                break;
        }

    }

    
    

    return 0;
}

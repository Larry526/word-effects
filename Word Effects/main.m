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
        printf("Your string is %s", inputChars);
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        NSLog(@"Input was : %@", inputString);
        NSLog(@"1. Uppercase : %@", [inputString uppercaseString]);
        NSLog(@"2. Lowercase : %@", [inputString lowercaseString]);
        
        int convertedValue = [inputString intValue];
        if (convertedValue != 0) {
            NSLog(@"3. Numberize : %d", [inputString intValue]);
        } else {
            NSLog(@"Cannot convert to integer, or the number input is 0");
        }
   
        NSString *editedInput = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        NSString *ehInputString = @", eh?";
        NSString *combinedString = [editedInput stringByAppendingString:ehInputString];
        NSLog(@"4. Canadianize %@", combinedString);
        
        if ([editedInput hasSuffix:@"!"]) {
            NSLog(@"5. Respond Whoa calm down!");

        } else if ([editedInput hasSuffix:@"?"]) {
            NSLog(@"5. Respond I don't know");

        } else {
            NSLog(@"5. Respond : %@", inputString);
        }
        
        
        
        NSString *noSpaceInput = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
        NSLog(@"6. Despace %@", noSpaceInput);


        



        

    }

    
    

    return 0;
}

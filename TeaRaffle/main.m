//
//  main.m
//  TeaRaffle
//
//  Created by Jon Gold on 30/10/2012.
//  Copyright (c) 2012 Jon Gold. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import <MacRuby/MacRuby.h>

int main(int argc, char *argv[])
{
    return macruby_main("rb_main.rb", argc, argv);
}

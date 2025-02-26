//***************************************************************************
//
// Program for education in subject "Assembly Languages"
// petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
//
// Empty project
//
//***************************************************************************

#include <stdio.h>

// Functions
// void some_asm_function();
void move();

// Variables
// type g_some_c_variable;
char g_char_arr[ 5 ];
int g_int_y = 0x53705041;


int main() {
    move();
    for ( int i = 0; i < 5; i++ ) {
        printf("g_char_arr[ %d ] = %c\n", i, g_char_arr[ i ] );
    }
    printf( "\n" );
    return 0;
}
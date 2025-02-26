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
void swap();
void swap_long();
void convert();
void to_str();

// Variables
// type g_some_c_variable;
char str[] = "nelej";
long arr[ 4 ] = { 33, 44, 55, 66 };
char arr_char[ 2 ] = { -5, 15 };
int arr_int[ 2 ];
long pass = 0x70617373776f7264;
char pass_char[ 8 ];

int main() {
    swap();
    printf( "%s\n\n", str );
    for ( int i = 0; i < 4; i++ ) {
        printf( "%ld ", arr[ i ] );
    }
    printf( "\n" );
    swap_long();
    for ( int i = 0; i < 4; i++ ) {
        printf( "%ld ", arr[ i ] );
    }
    printf( "\n\n" );
    convert();
    for ( int i = 0; i < 2; i++ ) {
        printf( "%d ", arr_int[ i ] );
    }
    printf( "\n\n" );
    to_str();
    printf( "%s\n", pass_char );
    return 0;
}
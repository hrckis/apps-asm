//***************************************************************************
//
// Program for education in subject "Assembly Languages"
// petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
//
// Empty project
//
//***************************************************************************

#include <stdio.h>

void func();
void negative_values();
void count_vowels();
void char_array_replace();

int g_int_array[ 15 ] = { -3, -8, 80, 2710, 32, 439, 9099, 10, 77, -273, 2, 22222, 0, -23, 23 };
char g_char_array[ 32 ] = "testovaci pole pro cv2";  
int vowels = 0;
int g_int_output = 0;
int g_neg_val_array[ 15 ] = {};

int main() {
    func();
    printf( "OUTPUT: %d\n\n", g_int_output );
    negative_values();
    for ( int i = 0; i < 15; i++ ) {
        if ( g_neg_val_array[ i ] < 0 ) {
            printf( "g_neg_val_array[%d] = %d\n", i, g_neg_val_array[ i ] );
        }
    }
    printf( "\n" );
    count_vowels();
    printf( "VOWELS: %d\n\n", vowels );
    char_array_replace();
    printf( "g_char_array: %s\n", g_char_array );
    return 0;
}
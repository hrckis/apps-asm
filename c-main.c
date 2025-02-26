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
void convert();
void get_rec();
void net_add();
void mac_split();

// Variables
// type g_some_c_variable;
__uint32_t ip_int = 2663679810;
__uint8_t ip_bytes[ 4 ];
__uint8_t g_ip[ 4 ] = { 158, 196, 135, 66 };
__uint32_t ip_address = 0x9EC48742;
__uint64_t mac_address = 0x00005056ADA948;
__uint32_t mac_oui;
__uint32_t mac_nic;

int main()
{
    convert();
    printf( "IP address: %d.%d.%d.%d\n", ip_bytes[ 0 ], ip_bytes[ 1 ], ip_bytes[ 2 ], ip_bytes[ 3 ] );
    printf( "\n" );
    printf( "IP address: %d.%d.%d.%d\n", g_ip[ 0 ], g_ip[ 1 ], g_ip[ 2 ], g_ip[ 3 ] );
    get_rec();
    printf( "IP address: %d.%d.%d.%d\n", g_ip[ 0 ], g_ip[ 1 ], g_ip[ 2 ], g_ip[ 3 ] );
    printf( "\n" );
    printf( "IP address: 0x%X\n", ip_address );
    net_add();
    printf( "IP address: 0x%08X\n", ip_address );
    printf( "\n" );
    mac_split();
    printf( "MAC_OUI: 0x%08X\nMAC_NIC: 0x%08X\n", mac_oui, mac_nic );
    return 0;
}
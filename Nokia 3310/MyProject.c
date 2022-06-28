// NOKIA 3310 PCD8544 PIN DEFS
sbit nok_res  at PORTB.B3;
sbit nok_sce  at PORTB.B4;
sbit nok_dc   at PORTB.B5;
sbit nok_sdin at PORTB.B6;
sbit nok_sclk at PORTB.B7;

sbit nok_res_dir  at TRISB.B3;
sbit nok_sce_dir  at TRISB.B4;
sbit nok_dc_dir   at TRISB.B5;
sbit nok_sdin_dir at TRISB.B6;
sbit nok_sclk_dir at TRISB.B7;
// End of NOKIA 3310 PCD8544 PIN DEFS

// Group 7
//B1805.010039        Batuhan Satilmis
//B1805.010040        Muhammad Rivalsyah
//B1705.010041        Ali Haydar Sevgili
//B1805.010074        Berkay Ogur


// ------------------------------------------------------
// Picture name: iau_bmp
// GLCD Model: Nokia3310 Like
// ------------------------------------------------------

unsigned char const iau_bmp[504] = {
  0, 248,   0,   0, 192, 184, 152, 224,   0,   0, 248,   0,
  0,   0, 248,   0,   0,   0, 128, 128, 128, 128, 128, 128,
  0,   0,   0, 240,  24,   8,  72, 216,   0,   0, 248,  72,
 72, 176,   0,   0, 240,   8,   8,   8, 240,   0,   0, 248,
  0,   0,   0, 248,   0,   0, 248,  72,  72,  48,   0,   0,
  0,   0,   8,   8, 200, 120,  24,   0,   0,   0,   0,   0,
  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
  0,   3,   0,   2,   1,   0,   0,   0,   3,   1,   1,   2,
  2,   2,   1,   0,   0,   0,   0,   0,   0,   0,   0,   0,
  0,   0,   0,   1,   3,   2,   2,   3,   0,   0,   3,   0,
  0,   3,   0,   0,   1,   2,   2,   2,   1,   0,   0,   1,
  2,   2,   2,   1,   0,   0,   3,   0,   0,   0,   0,   0,
  0,   0,   0,   3,   1,   0,   0,   0,   0,   0,   0,   0,
  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
  0,  62,  99,  65,  65,  34,   0,  62,  65,  65,  65,  62,
  0,   0, 127,   3,  12, 112, 112,  12,   3, 127,   0, 127,
  9,   9,   6,   0,   0,  63,  64,  64,  64,  63,   0,   1,
  1, 127,   1,   1,   0, 127,  73,  73,  73,   0, 127,   9,
  9, 118,   0,   0,   0,   0, 127,  73,  73,  73,   0, 127,
  3,  12, 112, 127,   0,   0,  62,  99,  65,  73, 123,   0,
  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
  0, 224,  32,  32,  32,   0, 224,  96, 128,   0,   0, 128,
 96, 224,   0, 224,  32,  32,  32, 192,   0, 224,  32,  32,
 32,   0, 224,  32,  32,  96, 192,   0,   0, 224,  32,  32,
 96, 192,   0,   0, 224,  32,  32,  32,   0, 224,  32,  32,
 96, 192,   0,   0,   0, 192,  32,  32,  96,   0,  32, 192,
  0, 192,  32, 192,  32,  32,  96,   0,  32,  32, 224,  32,
 32,   0, 224,  96, 128,   0,   0, 128,  96, 224,   0,   0,
  0,  15,   9,   9,   9,   0,  15,   0,   1,  14,  14,   1,
  0,  15,   0,  15,   9,   9,   9,   6,   0,  15,   9,   9,
  9,   0,  15,   8,   8,  12,   7,   0,   0,  15,   8,   8,
 12,   7,   0,   0,  15,   9,   9,   9,   0,  15,   8,   8,
 12,   7,   0,   0,   0,  12,   9,   9,   6,   0,   0,   0,
 15,   0,   0,  12,   9,   9,   6,   0,   0,   0,  15,   0,
  0,   0,  15,   0,   1,  14,  14,   1,   0,  15,   0,   0,
  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
};

// ------------------------------------------------------
// Picture name: asd_bmp
// GLCD Model: Nokia3310 Like
// ------------------------------------------------------
unsigned const char asd_bmp[60] = {
  2,  15,  63, 252, 252, 132,   6,   6,  66, 227,   3, 195,
 34, 230,   4, 236, 172, 236,  12, 196,  38,  38,  35,   3,
  3, 131, 230, 254,  63,  14,
  0,   0,   0,   0,   7,  31, 126, 248, 224, 227, 224, 225,
226, 225, 224, 224, 224, 224, 224, 225, 226, 226, 225, 240,
252,  63,   7,   1,   0,   0
};

/////////////////////////////////////////////////////////

void main() {
int i,j;
char letter='A';

NOKIA_Init();// Init function of PCD8544

NOKIA_Chr(2,5,'7'); // Put '7' letter 2. row, 5. column of LCD. There are 6  rows and 14 columns available.
//NOKIA_Dot(30,24);// Set dot on 30,24 coordinates.
delay_ms(3000);
NOKIA_Clear();      // Clear LCD



for(i=1;i<7;i++)
      {
        for(j=1;j<15;j++)
             {
               NOKIA_Chr(i,j,letter++);// Print all available characters
                delay_ms(100);            //
              }
         }
delay_ms(2000);
NOKIA_Clear(); // Clear LCD


NOKIA_Out(3,6, "System Embedded"); // Print string 3. row, 6. column
delay_ms(2000);           // There are 6  rows and 14 columns available.
NOKIA_Clear();

NOKIA_Partial_Image(3,38,30,60,asd_bmp);  // Print a partial image on 3rd row, 38th pixel of LCD
NOKIA_Clear();              //Image's x_length is 30 pixels and image array has 60 bytes.


NOKIA_Image(iau_bmp); // Print an image whole LCD (image's array length must be 504 bytes)
delay_ms(1000);




}
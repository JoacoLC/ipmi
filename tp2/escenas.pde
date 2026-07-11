int   escena        = 0;
int   timer_escena  = -1;
float movimiento    = 1;

final int timer_razon   = 150; // Cantidad de tiempo que duran las escenas que presentan una razón (p.ej., "Razón #1: blablabla").
final int timer_txtgrad = 50;  // Cantidad de tiempo que pasa entre que termina de aparecer el texto gradual y se pasa a la siguiente escena. 

void cambiar_txt(String str){
    txt_char     = str;
    txt_str      = "";
    txt_indice   = 0;
}

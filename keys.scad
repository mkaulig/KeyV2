// the point of this file is to be a sort of DSL for constructing keycaps.
// when you create a method chain you are just changing the parameters
// key.scad uses, it doesn't generate anything itself until the end. This
// lets it remain easy to use key.scad like before (except without key profiles)
// without having to rely on this file. Unfortunately that means setting tons of
// special variables, but that's a limitation of SCAD we have to work around

include <./includes.scad>

// example key
/* rounded_cherry(0.5) sa_row(3) key(); */

// space bar
module spacebar_print(){
$stem_support_type = "disable";
flatty_row(5)
inverted()
u(6.25)
rounded_cherry()
stabilized(mm=50.617, type="rounded_cherry")
obtheback()
key();
}

module sa_backspace(){
  $stem_support_type = "disable";
sa_row(1)
u(2)
rounded_cherry()
stabilized(mm=12, type="rounded_cherry")
key();
}

module sa_key_print(row=3, width=1){
$stem_support_type = "disable";
flatty_row(row)
u(width)
cherry()
backside() 
key(); 
}

module iso_enter_1() {
  sa_row(3) rounded_cherry() iso_enter() key();
}


// 

//spacebar_print();

sa_key_print(row=4, width=2);

// sa_backspace();


var x=20
x=19
x="foo"   #error:type mismatch :got(string) but expected int

let y=20  #immutable variable
y=19      #error:'y' cannot be assigned to

const z=1+3

var f1,f2:float=1e40

var
  a=1000000
  b:int16=0b111110001000000
  c=0xFFF8AB12FC000001'u64
  a1=1_000_000
  b1:int16=0b0111_1100_0100_000
  c1=0xFF_F8_AB_12_FC_00_00_01'u64


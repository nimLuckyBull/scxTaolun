quantity(Time,second,"s")
quantity(Velocity,meterPerSecond,"m/s")
quantity(Acceleration,meterPerSecondSquared,"m/s*s")


Velocity:=Length/Time
Acceleration:=Velocity/Time
var t:Time=4.seconds
var v=2.meters/t
var a:Acceleration=v/millisecond
ac *= 3.0
echo ac             #1500m/s*s



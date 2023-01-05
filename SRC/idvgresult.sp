*Id-Vg Characteristics for NMOS (T = 27C)

.option abstol=1e-6 reltol=1e-6 ingold=2
.temp 27

.hdl "GAAFET_ae.va"

* --- Voltage Sources ---
Vgs g s dc = 1.0
Vds d s dc = 1.0

* --- Transistor ---
X1 d g s b IH_GAAFET

* --- DC Analysis ---
.dc Vgs 0.0 1.0 0.01
.print dc i(X1)
.op
.end

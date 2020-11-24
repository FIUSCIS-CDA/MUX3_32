#### MODULE NAME
       MUX3_32

#### DEPENDENCIES
       MUX3

#### INPUTS
Name | Size(Bits)
-----|------------
A   |     32     
B   |     32     
C   |     32     
S   |     2      

#### OUTPUTS
Name | Size(Bits)
-----|------------
Y   |     32     

#### DESCRIPTION
       Three-input multiplexor with 32-bit inputs.  Sets output Y equal to:

       A if S = 00

       B if S = 01

       C if S = 10

#### AUTHOR
       Alexander T Pastoriza

#### SEE ALSO
       qms(1), modclone(1)

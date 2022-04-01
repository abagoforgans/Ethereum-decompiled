contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 292]




// =====================  Runtime code  =====================


function _fallback() {
    call 0xd1167e6dd2b8d4818eb7ee7836ee49ca73eb389c with:
       funct Mask(32, 224, sha3('ICOSupply()')) >> 224
       value eth.balance(this.address) wei
         gas 200000 wei
}



}

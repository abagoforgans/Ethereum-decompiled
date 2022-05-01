contract main {


// =======================  Init code  ======================


const _fallback = code.data[27 len 87]




// =====================  Runtime code  =====================


function _fallback() payable {
    call 0xecde0842e309c4b2d15c074512404207335f3096 with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
}



}

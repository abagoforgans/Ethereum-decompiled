contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 261]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function split(address arg1, address arg2) payable {
    call arg1 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    call arg2 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
}



}

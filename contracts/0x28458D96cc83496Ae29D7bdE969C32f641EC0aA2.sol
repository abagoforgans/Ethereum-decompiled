contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 538]




// =====================  Runtime code  =====================


function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
  stop
}

function sweep(address arg1, uint256 arg2) {
    call arg1.0xa9059cbb with:
         gas gas_remaining - 25710 wei
        args 0x1151314c646ce4e0efd76d1af4760ae66a9fe30f, arg2
}

function _fallback() payable {
    call 0x1151314c646ce4e0efd76d1af4760ae66a9fe30f with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call 0x9d903c26a78f717e88e01a26749a044c0056bd60.0x4d5f2bc4 with:
         gas gas_remaining - 25710 wei
        args msg.value
}



}

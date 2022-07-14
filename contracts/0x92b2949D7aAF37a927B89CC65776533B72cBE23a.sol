contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 368]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sendCoin(address arg1, uint256 arg2) {
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args 0x521db06bf657ed1d6c98553a70319a8ddbac75a3, arg2
    require ext_call.success
    return 1
}



}

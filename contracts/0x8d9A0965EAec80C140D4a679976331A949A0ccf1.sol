contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 464]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function lol() {
    require ext_code.size(0x7bb0b08587b8a6b8945e09f1baca426558b0f06a)
    call 0x7bb0b08587b8a6b8945e09f1baca426558b0f06a.canCall(address rg1, address rg2, bytes4 rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), address(this.address), 'abcd'
    require ext_call.success
    if ext_call.return_data[0]:
        return 7
    return 3
}



}

contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 461]




// =====================  Runtime code  =====================


function destroy() {
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function airdrop(address arg1, address arg2) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), ext_call.return_data[0]
    require ext_call.success
}



}

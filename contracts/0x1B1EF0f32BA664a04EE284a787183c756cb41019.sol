contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x6090a6e47849629b7245dfa1ca21d94cd15878ef
    require not msg.value
    return code.data[71 len 687]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function checkOwner(bytes32 arg1) {
    require ext_code.size(stor0)
    call stor0.entries(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[32]))
    call address(ext_call.return_data[32]).0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function checkPrevOwner(bytes32 arg1) {
    require ext_code.size(stor0)
    call stor0.entries(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[32]))
    call address(ext_call.return_data[32]).previousOwner() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}



}

contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[936 len 20]
    return code.data[123 len 801]
}



// =====================  Runtime code  =====================


address ensAddress;

function ens() {
    return ensAddress
}

function _fallback() payable {
    revert
}

function addr(bytes32 arg1) {
    require ext_code.size(ensAddress)
    call ensAddress.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function supportsInterface(bytes4 arg1) {
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x3b3b57de00000000000000000000000000000000000000000000000000000000)
}



}

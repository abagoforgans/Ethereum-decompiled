contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    stor0 = 0x96e0089c04c99e69e4445787ba4cc3cea6e1b82f
    stor1 = 0xcf4e87991826081d172b61b2e1b2800f18da8ce7
    stor2 = 0xb7deffae2662d7743cbe3f5c6e5904814cf2aa13
    return code.data[276 len 1256]
}



// =====================  Runtime code  =====================


address investor1Address;
address investor2Address;
address stor2;

function investor2() {
    return investor2Address
}

function investor1() {
    return investor1Address
}

function _fallback() payable {
  stop
}

function hasProof(bytes32 arg1) {
    require ext_code.size(stor2)
    call stor2.0xe3d1e6d6 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    emit LogResponse(arg1, bool(ext_call.return_data[0]));
    return bool(ext_call.return_data[0])
}

function _payRoyalty() payable {
    call investor1Address with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call investor2Address with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function notarise(bytes32 arg1) payable {
    require ext_code.size(stor2)
    call stor2.storeProof(bytes32 arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    call investor1Address with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call investor2Address with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}



}

contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    stor0 = 0x45f5c8b556c3f2887b50184c823d1223f41a4156
    stor1 = 0xcf4e87991826081d172b61b2e1b2800f18da8ce7
    stor2 = 0x8439dacb099826eba3c56a8b2d3a15f108a89552
    return code.data[276 len 1256]
}



// =====================  Runtime code  =====================


address janAddress;
address investorAddress;
address stor2;

function jan() {
    return janAddress
}

function investor() {
    return investorAddress
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
    call janAddress with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call investorAddress with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function notarise(bytes32 arg1) payable {
    require ext_code.size(stor2)
    call stor2.0x8952877b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    call janAddress with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call investorAddress with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}



}

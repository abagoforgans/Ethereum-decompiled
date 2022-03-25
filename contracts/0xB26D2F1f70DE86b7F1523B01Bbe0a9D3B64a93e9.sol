contract main {


// =======================  Init code  ======================


uint16 stor2;
address stor2; offset 16

function _fallback() payable {
    uint16(stor2.field_0) = 57005
    Mask(144, 0, stor2.field_16) = 0
    return code.data[63 len 838]
}



// =====================  Runtime code  =====================


address payerAddress;
address recipientAddress;
address burnAddress;

function payer() {
    return payerAddress
}

function recipient() {
    return recipientAddress
}

function burnAddress() {
    return burnAddress
}

function _fallback() payable {
    revert 
}

function burn(uint256 arg1) {
    require msg.sender == payerAddress
    call burnAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function release(uint256 arg1) {
    require msg.sender == payerAddress
    call recipientAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}



}

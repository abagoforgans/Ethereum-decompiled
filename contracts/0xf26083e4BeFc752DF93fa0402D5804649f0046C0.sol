contract main {


// =======================  Init code  ======================


address stor0;
uint16 stor2;
address stor2; offset 16
uint256 stor3;

function _fallback() payable {
    uint16(stor2.field_0) = 57005
    Mask(144, 0, stor2.field_16) = 0
    stor0 = msg.sender
    stor3 = code.data[1823 len 32]
    return code.data[190 len 1633]
}



// =====================  Runtime code  =====================


address payerAddress;
address recipientAddress;
address burnAddress;
uint256 sub_d900c6a4;

function payer() {
    return payerAddress
}

function getRecipient() {
    return recipientAddress
}

function getPayer() {
    return payerAddress
}

function recipient() {
    return recipientAddress
}

function burnAddress() {
    return burnAddress
}

function sub_c7b0e4cf(?) {
    return sub_d900c6a4
}

function sub_d900c6a4(?) {
    return sub_d900c6a4
}

function _fallback() payable {
    require msg.sender == payerAddress
}

function commit() payable {
    require msg.value >= sub_d900c6a4
    recipientAddress = msg.sender
    return 0
}

function burn(uint256 arg1) {
    require msg.sender == payerAddress
    call burnAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function release(uint256 arg1) {
    require msg.sender == payerAddress
    call recipientAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}



}

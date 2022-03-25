contract main {


// =======================  Init code  ======================


uint256 stor0;
uint16 stor2;
address stor2; offset 16

function _fallback() payable {
    uint16(stor2.field_0) = 57005
    Mask(144, 0, stor2.field_16) = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[108 len 1445]
}



// =====================  Runtime code  =====================


address payerAddress;
address recipientAddress;
uint256 stor1;
address burnAddress;

function payer() {
    return payerAddress
}

function getRecipient() {
    return address(recipientAddress)
}

function getPayer() {
    return payerAddress
}

function recipient() {
    return address(recipientAddress)
}

function burnAddress() {
    return burnAddress
}

function _fallback() {
  stop
}

function sub_13c200d5(?) {
    require not address(recipientAddress)
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
}

function burn(uint256 arg1) {
    require msg.sender == payerAddress
    require address(recipientAddress)
    call burnAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function release(uint256 arg1) {
    require msg.sender == payerAddress
    require address(recipientAddress)
    call address(recipientAddress) with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}



}

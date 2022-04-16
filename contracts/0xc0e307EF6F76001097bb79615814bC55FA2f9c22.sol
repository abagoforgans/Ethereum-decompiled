contract main {


// =======================  Init code  ======================


address stor0; offset 8

function _fallback() {
    stor0 = msg.sender
    return code.data[65 len 477]
}



// =====================  Runtime code  =====================


uint8 stor0;
address stor0; offset 8

function kill() {
    if address(stor0.field_8) != msg.sender:
    selfdestruct(address(stor0.field_8))
}

function sub_94707dab(?) {
    return (uint8(stor0.field_0) == arg1)
}

function setNumber(uint8 arg1) {
    uint8(stor0.field_0) = arg1
    emit 0xc86aa3e5 
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.sender, msg.value);
}



}

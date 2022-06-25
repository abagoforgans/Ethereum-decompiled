contract main {




// =====================  Runtime code  =====================


uint256 balance;
address buyerAddress;
address sellerAddress;
address escrowAddress;
uint256 stor4;
uint8 stor5;
uint8 stor5; offset 8
uint256 stor5; offset 8

function seller() {
    return sellerAddress
}

function buyer() {
    return buyerAddress
}

function balance() {
    return balance
}

function escrow() {
    return escrowAddress
}

function accept() {
    if msg.sender == buyerAddress:
        uint8(stor5.field_0) = 1
    else:
        if msg.sender == sellerAddress:
            Mask(248, 0, stor5.field_8) = 1
    if uint8(stor5.field_0):
        if not uint8(stor5.field_8):
            if not uint8(stor5.field_0):
            if uint8(stor5.field_8):
            if block.timestamp <= stor4 + (168 * 24 * 3600):
            selfdestruct(buyerAddress)
        call sellerAddress with:
           value balance wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        balance = 0
}

function kill() {
    if escrowAddress != msg.sender:
    selfdestruct(buyerAddress)
}

function cancel() {
    if msg.sender == buyerAddress:
        uint8(stor5.field_0) = 0
    else:
        if msg.sender == sellerAddress:
            Mask(248, 0, stor5.field_8) = 0
    if uint8(stor5.field_0):
    if uint8(stor5.field_8):
    selfdestruct(buyerAddress)
}

function _fallback() payable {
    revert
}

function deposit() payable {
    if msg.sender == buyerAddress:
        balance += msg.value
}



}

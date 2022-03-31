contract main {


// =======================  Init code  ======================


address stor0;
mapping of struct stor1;

function _fallback() {
    stor0 = msg.sender
    stor1[address(msg.sender)].field_0 = code.data[1017 len 1]
    stor1[address(msg.sender)].field_8 = 0
    if stor1[address(msg.sender)].field_0 >= code.data[1017 len 1]:
        stor1[address(msg.sender)].field_0 -= code.data[1017 len 1]
        stor1[code.data[966 len 20]].field_0 += code.data[1017 len 1]
        emit Transfer(msg.sender, code.data[966 len 20], code.data[986 len 32] << 248);
    return code.data[309 len 645]
}



// =====================  Runtime code  =====================


uint8 cap; offset 160
address emitterAddress;
mapping of uint256 balances;

function balances(address arg1) {
    return balances[arg1]
}

function cap() {
    return cap
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function emitter() {
    return emitterAddress
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint8 arg2) {
    if balances[address(msg.sender)] < arg2:
        return 0
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(msg.sender, address(arg1), arg2);
    return 1
}



}

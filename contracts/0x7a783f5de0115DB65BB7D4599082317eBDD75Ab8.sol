contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1001 len 20]
    return code.data[188 len 801]
}



// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address watchedAddress;
uint256 stor2;

function owner() {
    return owner
}

function watchedAddress() {
    return watchedAddress
}

function _fallback() payable {
    revert
}

function totalSupply() {
    if not uint8(stor1.field_160):
        return eth.balance(watchedAddress)
    return stor2
}

function currentAmount() {
    if not uint8(stor1.field_160):
        return eth.balance(watchedAddress)
    return stor2
}

function finalize() {
    require msg.sender == owner
    Mask(96, 0, stor1.field_160) = 1
    stor2 = eth.balance(watchedAddress)
}



}

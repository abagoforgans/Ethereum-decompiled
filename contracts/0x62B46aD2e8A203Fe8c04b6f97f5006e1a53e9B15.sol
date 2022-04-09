contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
uint8 stor3;

function _fallback() payable {
    stor1 = msg.sender
    stor2 = msg.value
    stor0 = block.number + code.data[1184 len 32]
    stor3 = 0
    emit Hodling(1);
    return code.data[219 len 965]
}



// =====================  Runtime code  =====================


uint256 hodlTillBlock;
address hodlerAddress;
uint256 hodling;
uint8 stor3;

function hodlTillBlock() {
    return hodlTillBlock
}

function hodler() {
    return hodlerAddress
}

function hodling() {
    return hodling
}

function withdrawn() {
    return bool(stor3)
}

function releaseTheHodl() {
    require msg.sender == hodlerAddress
    require block.number >= hodlTillBlock
    require not stor3
    require hodling > 0
    stor3 = 1
    hodling = 0
    emit HodlReleased(1);
    selfdestruct(hodlerAddress)
}

function _fallback() payable {
    revert
}

function deposit() payable {
    hodling += msg.value
}

function isDeholdable() {
    if block.number >= hodlTillBlock:
        return 1
    else:
        return 0
}

function hodlCountdown() {
    if block.number < hodlTillBlock:
        return (hodlTillBlock - block.number)
    else:
        return 0
}



}

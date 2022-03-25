contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 292]
}



// =====================  Runtime code  =====================


uint16 numCalled; offset 160
uint128 stor0; offset 160
address stor0;

function getNumCalled() {
    emit 0x51934f37: numCalled
    return numCalled
}

function remove() {
    require address(stor0.field_0) == msg.sender
    selfdestruct(address(stor0.field_0))
}

function _fallback() {
    revert 
}

function addFunds() payable {
    Mask(96, 0, stor0.field_160) = Mask(96, 0, numCalled + 1)
}



}

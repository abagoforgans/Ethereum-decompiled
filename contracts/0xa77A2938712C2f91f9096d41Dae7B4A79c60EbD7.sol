contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[694 len 32]
    return code.data[130 len 564]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor1;

function owner() {
    return owner
}

function kill(address arg1) {
    require msg.sender == owner
    selfdestruct(arg1)
}

function _fallback() payable {
  stop
}

function change_flag(uint256 arg1) {
    require msg.sender == owner
    stor1 = arg1
}



}

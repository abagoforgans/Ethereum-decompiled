contract main {




// =====================  Runtime code  =====================


array of uint256 get;
address stor1;
uint256 stor1;

function get() {
    return get[0 len get.length]
}

function kill() {
    if address(stor1) != msg.sender:
    selfdestruct(address(stor1))
}

function _fallback() payable {
    revert
}

function set(string arg1) {
    get[] = Array(len=arg1.length, data=arg1[all])
}

function Mortal() {
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
}



}

contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 428]




// =====================  Runtime code  =====================


address owner;
uint256 stor0;
mapping of uint256 get;

function signatures(bytes32 arg1) {
    return get[arg1]
}

function owner() {
    return address(owner)
}

function get(bytes32 arg1) {
    return get[arg1]
}

function kill() {
    if address(owner) != msg.sender:
    selfdestruct(address(owner))
}

function _fallback() payable {
    revert 
}

function Mortal() {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
}

function unset(bytes32 arg1) {
    require address(owner) == msg.sender
    get[arg1] = 0
}

function set(bytes32 arg1, bytes32 arg2) {
    require address(owner) == msg.sender
    get[arg1] = arg2
}



}

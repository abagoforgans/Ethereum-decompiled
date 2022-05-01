contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint8 stor1;

function _fallback() payable {
    stor0 = msg.sender
    stor1[stor0] = 1
    return code.data[203 len 1461]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function addAllowedAddress(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 1
}

function removeAllowedAddress(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 0
}

function changeOwner(address arg1) {
    require msg.sender == owner
    stor1[stor0] = 0
    owner = arg1
    stor1[stor0] = 1
}

function random(uint256 arg1, uint256 arg2, uint256 arg3) {
    require stor1[address(msg.sender)]
    require arg3
    return (sha3(arg1, block.number - 1) % arg3 < arg2)
}



}

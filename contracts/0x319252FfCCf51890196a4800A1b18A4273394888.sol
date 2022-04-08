contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = block.timestamp
    stor2 = block.timestamp + (168 * 24 * 3600)
    return code.data[73 len 511]
}



// =====================  Runtime code  =====================


const duration = (168 * 24 * 3600)


address owner;
uint256 stor2;

function owner() {
    return owner
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function balanceOf(address arg1) {
    if stor2 < block.timestamp:
        return 0
    return (stor2 - block.timestamp)
}



}

contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    require code.data[1560 len 20]
    require code.data[1580 len 32] > block.timestamp
    stor0 = code.data[1560 len 20]
    stor1 = code.data[1580 len 32]
    return code.data[214 len 1334]
}



// =====================  Runtime code  =====================


address owner;
uint256 icoEndTimestamp;

function owner() {
    return owner
}

function icoEndTimestamp() {
    return icoEndTimestamp
}

function cleanupTo(address arg1) {
    require msg.sender == owner
    require block.timestamp > icoEndTimestamp
    selfdestruct(arg1)
}

function cleanup() {
    require msg.sender == owner
    require block.timestamp > icoEndTimestamp
    selfdestruct(owner)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _fallback() payable {
    require block.timestamp < icoEndTimestamp
    require msg.value >= 10^17
    emit Transfer(msg.value, msg.sender, this.address);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}

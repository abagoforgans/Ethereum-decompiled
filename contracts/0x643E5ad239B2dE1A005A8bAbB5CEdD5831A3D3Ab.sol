contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function owner() {
    return owner
}

function isInvestorApproved(address arg1) {
    require arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function approveInvestor(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 1
    emit Approved(arg1);
}

function disapproveInvestor(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 0
    emit Disapproved(arg1);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approveInvestorsInBulk(address[] arg1) {
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + arg1 + 36)])] = 1
        emit Approved(address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function disapproveInvestorsInBulk(address[] arg1) {
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + arg1 + 36)])] = 0
        emit Disapproved(address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}



}

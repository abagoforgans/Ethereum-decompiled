contract main {




// =====================  Runtime code  =====================


address owner;
uint256 last_completed_migration;

function last_completed_migration() {
    return last_completed_migration
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setCompleted(uint256 arg1) {
    require msg.sender == owner
    last_completed_migration = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function upgrade(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xfdacd576 with:
         gas gas_remaining wei
        args last_completed_migration
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

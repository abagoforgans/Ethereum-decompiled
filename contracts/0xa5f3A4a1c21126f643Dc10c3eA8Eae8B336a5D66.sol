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
    if owner != msg.sender:
        revert with 0, 'Can only be called by the owner'
    last_completed_migration = arg1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Can only be called by the owner'
    if not arg1:
        revert with 0, 'Address cannot be zero'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function upgrade(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Can only be called by the owner'
    require ext_code.size(arg1)
    call arg1.0xfdacd576 with:
         gas gas_remaining wei
        args last_completed_migration
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

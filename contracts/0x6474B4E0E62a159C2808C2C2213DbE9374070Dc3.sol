contract main {




// =====================  Runtime code  =====================


address owner;
uint256 lastCompletedMigration;

function owner() {
    return owner
}

function lastCompletedMigration() {
    return lastCompletedMigration
}

function _fallback() payable {
    revert
}

function setCompleted(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'Owner permission required.'
    lastCompletedMigration = arg1
}

function upgrade(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Owner permission required.'
    require ext_code.size(arg1)
    call arg1.0xfdacd576 with:
         gas gas_remaining wei
        args lastCompletedMigration
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

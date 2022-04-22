contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[57 len 416]
}



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
    if owner == msg.sender:
        lastCompletedMigration = arg1
}

function upgrade(address arg1) {
    if owner != msg.sender:
    require ext_code.size(arg1)
    call arg1.0xfdacd576 with:
         gas gas_remaining - 710 wei
        args lastCompletedMigration
    require ext_call.success
}



}

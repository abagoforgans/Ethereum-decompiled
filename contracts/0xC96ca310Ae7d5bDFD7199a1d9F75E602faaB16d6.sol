contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = msg.sender
    return code.data[86 len 615]
}



// =====================  Runtime code  =====================


address stor0;
address owner;
uint256 last_completed_migration;

function last_completed_migration() {
    return last_completed_migration
}

function owner() {
    return owner
}

function selfdestruct() {
    require stor0 == msg.sender
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function setCompleted(uint256 arg1) {
    if owner == msg.sender:
        last_completed_migration = arg1
}

function transferOwnership(address arg1) {
    require stor0 == msg.sender
    if arg1:
        stor0 = arg1
}

function upgrade(address arg1) {
    if owner != msg.sender:
    require ext_code.size(arg1)
    call arg1.0xfdacd576 with:
         gas gas_remaining - 710 wei
        args last_completed_migration
    require ext_call.success
}



}

contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 485]
}



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
    if owner == msg.sender:
        last_completed_migration = arg1
}

function upgrade(address arg1) {
    if owner == msg.sender:
        require ext_code.size(arg1)
        call arg1.0xfdacd576 with:
             gas gas_remaining - 710 wei
            args last_completed_migration
        require ext_call.success
}



}

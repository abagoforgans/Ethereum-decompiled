contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[59 len 478]
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

function _fallback() payable {
    if uint32(call.func_hash) == upgrade(address arg1):
        require not msg.value
        if owner == msg.sender:
            require ext_code.size(arg1)
            call arg1.0xfdacd576 with:
                 gas gas_remaining - 710 wei
                args last_completed_migration
            require ext_call.success
    else:
        if unknown_0x445df0ac(?????) == uint32(call.func_hash):
            require not msg.value
            return last_completed_migration
        if unknown_0x8da5cb5b(?????) == uint32(call.func_hash):
            require not msg.value
            return owner
        require unknown_0xfdacd576(?????) == uint32(call.func_hash)
        require not msg.value
        if owner == msg.sender:
            last_completed_migration = arg1
}



}

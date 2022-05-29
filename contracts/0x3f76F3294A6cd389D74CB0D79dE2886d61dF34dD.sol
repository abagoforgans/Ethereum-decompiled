contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 605]
}



// =====================  Runtime code  =====================


address stor0;
uint256 lastCompletedMigration;

function lastCompletedMigration() {
    return lastCompletedMigration
}

function setCompleted(uint256 arg1) {
    require stor0 == msg.sender
    lastCompletedMigration = arg1
}

function transferOwnership(address arg1) {
    require stor0 == msg.sender
    require arg1
    emit OwnershipTransferred(stor0, arg1);
    stor0 = arg1
}

function upgrade(address arg1) {
    require stor0 == msg.sender
    require ext_code.size(arg1)
    call arg1.0xfdacd576 with:
         gas gas_remaining - 710 wei
        args lastCompletedMigration
    require ext_call.success
}

function _fallback() payable {
    if uint32(call.func_hash) == upgrade(address arg1):
        require not msg.value
        require stor0 == msg.sender
        require ext_code.size(arg1)
        call arg1.0xfdacd576 with:
             gas gas_remaining - 710 wei
            args lastCompletedMigration
        require ext_call.success
    else:
        if unknown_0xf2fde38b(?????) == uint32(call.func_hash):
            require not msg.value
            require stor0 == msg.sender
            require arg1
            emit OwnershipTransferred(stor0, arg1);
            stor0 = arg1
        else:
            if unknown_0xfbdbad3c(?????) == uint32(call.func_hash):
                require not msg.value
                return lastCompletedMigration
            require unknown_0xfdacd576(?????) == uint32(call.func_hash)
            require not msg.value
            require stor0 == msg.sender
            lastCompletedMigration = arg1
}



}

contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 532]
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
    require owner == msg.sender
    lastCompletedMigration = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function upgrade(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xfdacd576 with:
         gas gas_remaining - 50 wei
        args lastCompletedMigration
    require ext_call.success
}



}

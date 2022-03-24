contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[35 len 247]
}



// =====================  Runtime code  =====================


address owner;
uint256 last_completed_migration;

function last_completed_migration() payable {
    return last_completed_migration
}

function owner() payable {
    return owner
}

function _fallback() payable {
  stop
}

function setCompleted(uint256 arg1) payable {
    if owner == msg.sender:
        last_completed_migration = arg1
}

function upgrade(address arg1) payable {
    if owner == msg.sender:
        call arg1.0xfdacd576 with:
             gas gas_remaining - 25050 wei
            args last_completed_migration
        require ext_call.success
}



}

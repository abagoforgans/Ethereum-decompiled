contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    require msg.value <= 0
    return code.data[48 len 782]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
uint256 last_completed_migration;
address allowedAccount;
uint256 stor2;

function last_completed_migration() {
    return last_completed_migration
}

function getOwner() {
    return address(owner)
}

function allowedAccount() {
    return address(allowedAccount)
}

function _fallback() payable {
    revert 
}

function setAllowedAccount(address arg1) {
    require msg.sender == address(owner)
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function setCompleted(uint256 arg1) {
    if address(owner) != msg.sender:
        require msg.sender == address(allowedAccount)
    last_completed_migration = arg1
}

function fixBalance() {
    call address(owner) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function upgrade(address arg1) {
    require msg.sender == address(owner)
    require ext_code.size(arg1)
    call arg1.0xfdacd576 with:
         gas gas_remaining - 50 wei
        args last_completed_migration
    require ext_call.success
}

function setOwner(address arg1) {
    require msg.sender == address(owner)
    require arg1 != 0
    if address(owner) != arg1:
        emit LogOwnerChanged(address(owner), arg1);
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}



}

contract main {




// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - sub_93c17e54(?)
#
uint8 paused; offset 160
uint128 stor0; offset 160
address owner;
uint256 gasForOraclize;
uint256 stor9;

function paused() {
    return bool(paused)
}

function gasForOraclize() {
    return gasForOraclize
}

function owner() {
    return owner
}

function destroy() {
    require msg.sender == owner
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require msg.sender == owner
    selfdestruct(arg1)
}

function _fallback() payable {
  stop
}

function unpause() {
    require msg.sender == owner
    require paused
    stor0 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not paused
    stor0 = 1
    emit Pause()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setOraclizeGasPrice(uint256 arg1) {
    require msg.sender == owner
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Oraclize gas price isn't greater than 0'
    require 10^9 * arg1 / 10^9 == arg1
    stor9 = 10^9 * arg1
}

function withdraw(uint256 arg1) {
    require msg.sender == owner
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There isn't enough money to withdraw'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawTo(uint256 arg1, address arg2) {
    require msg.sender == owner
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There isn't enough money to withdraw'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

contract main {


// =======================  Init code  ======================


address stor6;

function _fallback() {
    require stor6 <= 0
    stor6 = msg.sender
    return code.data[165 len 6614]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bool arg3)
#  - game(uint256 arg1)
#
mapping of uint8 stor3;
address owner;

function results(bytes32 arg1) {
    return bool(stor3[arg1])
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function get_return_by_level(uint256 arg1) {
  stop
}

function ownerDeposit() payable {
    require msg.sender == owner
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function ownerWithdrawl() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}

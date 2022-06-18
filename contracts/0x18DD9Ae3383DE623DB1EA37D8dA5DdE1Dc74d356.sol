contract main {




// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - sub_a3a2a82e(?)
#
address owner;

function owner() {
    return owner
}

function storeETH() payable {
  stop
}

function _fallback() payable {
    revert
}

function withdrawETH() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}

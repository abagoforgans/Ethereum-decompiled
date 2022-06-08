contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function kill() {
    require msg.sender == stor1
    selfdestruct(stor1)
}

function _fallback() payable {
    revert
}

function withdraw() {
    require msg.sender == stor1
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function charge(uint256 arg1) payable {
    require msg.sender == stor1
    require arg1
    idx = 0
    while idx < arg1:
        call stor0 with:
           value msg.value / arg1 wei
             gas gas_remaining wei
        require ext_call.success
        idx = idx + 1
        continue 
}



}

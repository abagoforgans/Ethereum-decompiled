contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function withdraw() {
    require msg.sender == stor0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if not msg.value:
        call stor1 with:
           funct call.data[0 len 4]
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
    require eth.balance(this.address) >= eth.balance(this.address)
}



}

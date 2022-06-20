contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    if eth.balance(this.address) > 0:
        if not msg.value:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}

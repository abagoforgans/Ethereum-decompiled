contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > 10^17:
        revert with 0, 'Amount requested too much'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

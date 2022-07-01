contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sendETH(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x2d23460a: arg1
}



}

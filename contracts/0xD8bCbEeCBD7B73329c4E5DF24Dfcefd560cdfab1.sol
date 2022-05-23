contract main {




// =====================  Runtime code  =====================


uint256 stor0;

function withdraw() {
    call msg.sender with:
       value stor0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if msg.value:
        stor0 += msg.value
    else:
        call msg.sender with:
           value stor0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}

contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function logGive(address arg1, string arg2) payable {
    require msg.value > 0
    call arg1 with:
       value uint128(msg.value) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Give(msg.sender, address(arg1), msg.value << 128, Array(len=arg2.length, data=arg2[all]));
}



}

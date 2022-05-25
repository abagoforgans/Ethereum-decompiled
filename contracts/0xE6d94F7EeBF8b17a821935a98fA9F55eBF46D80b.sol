contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function withdraw(uint256 arg1) {
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_c176cd6e(?) {
    require ext_code.size(stor0)
    call stor0.0x7c8b4916 with:
         gas gas_remaining wei
        args 0, uint32(block.number), arg1, msg.sender, 0xc12ac6010c5b063e5d0f7fdc8fa3076591812f81
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}

contract main {




// =====================  Runtime code  =====================


const sub_ecbbeb50(?) = 70


function _fallback() payable {
    revert
}

function sub_462184b3(?) {
    if ('cd', 36).length >= 70:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Number of payees must be less than MAX_PAYEES_LENGTH'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Payee and token amount arrays must be the same length'
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        mem[100] = msg.sender
        mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[164] = cd[((32 * idx) + cd[68] + 36)]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Unable to transfer tokens'
        mem[96] = cd[((32 * idx) + cd[68] + 36)]
        emit 0xe953d24d: cd[((32 * idx) + cd[68] + 36)], address(cd[4]), msg.sender, address(cd[((32 * idx) + cd[36] + 36)])
        idx = idx + 1
        continue 
}



}

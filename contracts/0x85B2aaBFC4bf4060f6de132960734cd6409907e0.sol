contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function disperseToken(address arg1, address[] arg2, uint256[] arg3) {
    require arg2.length == arg3.length
    require arg2.length <= 255
    idx = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg3.length
        mem[100] = msg.sender
        mem[132] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
        mem[164] = cd[((32 * uint8(idx)) + arg3 + 36)]
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(cd[((32 * uint8(idx)) + arg2 + 36)]), cd[((32 * uint8(idx)) + arg3 + 36)]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
}



}

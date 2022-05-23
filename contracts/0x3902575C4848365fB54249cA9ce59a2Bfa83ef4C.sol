contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_97c97a17(?) {
    s = 0
    idx = 0
    while idx < ('cd', 36).length:
        mem[96] = 0xd1d566cf00000000000000000000000000000000000000000000000000000000
        mem[100] = address(cd[((32 * idx) + cd[36] + 36)])
        require ext_code.size(address(cd[4]))
        call address(cd[4]).allocateExtraTokens(address arg1) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[36] + 36)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = address(cd[((32 * idx) + cd[36] + 36)])
        idx = idx + 1
        continue 
}



}

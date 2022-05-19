contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function batchRelease(address[] arg1, address arg2) {
    s = 0
    idx = 0
    while idx < arg1.length:
        mem[96] = 0x1916558700000000000000000000000000000000000000000000000000000000
        mem[100] = arg2
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        call address(cd[((32 * idx) + arg1 + 36)]).release(address arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = address(cd[((32 * idx) + arg1 + 36)])
        idx = idx + 1
        continue 
}



}

contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function checkApproval(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    staticcall arg2.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_d78ad2c0(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        _12 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = address(_14)
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = arg3
        require ext_code.size(address(_12))
        call address(_12).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_14), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}

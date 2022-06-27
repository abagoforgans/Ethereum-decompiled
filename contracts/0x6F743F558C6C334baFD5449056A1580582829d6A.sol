contract main {




// =====================  Runtime code  =====================


address stor1;

function _fallback() payable {
    revert
}

function sub_65bd6b7a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if 0 >= arg1.length:
        revert with 0, 'not enough ids'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _12 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0xefef39a100000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = _12
        require ext_code.size(stor1)
        call stor1.purchase(uint256 arg1) with:
           value 10^17 wei
             gas gas_remaining wei
            args _12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}

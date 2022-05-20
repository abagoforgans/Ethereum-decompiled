contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function owners(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}

function multisend(address arg1, address[] arg2, uint256[] arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    require stor0[msg.sender]
    require arg2.length == arg3.length
    require 2000 >= arg2.length
    idx = 0
    while uint16(idx) < arg2.length:
        require uint16(idx) < arg2.length
        require uint16(idx) < arg3.length
        _24 = mem[(32 * uint16(idx)) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = mem[(32 * uint16(idx)) + 140 len 20]
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = _24
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + (32 * arg3.length) + 164], _24
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 1 == bool(ext_call.return_data[0])
        idx = idx + 1
        continue 
    return 1
}



}

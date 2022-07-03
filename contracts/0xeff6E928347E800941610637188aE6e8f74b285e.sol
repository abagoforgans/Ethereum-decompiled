contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_bb02d0bb(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg2.length:
        _21 = mem[64]
        mem[64] = mem[64] + 128
        mem[_21] = 68
        mem[_21 + 32 len 68] = 0xfea9059cbb000000000000000000000000314159269c401849277192418bb137d9887cccbe00000000000000000000000000000000000000000000000000000000000000
        require idx < mem[(32 * arg2.length) + 128]
        mem[_21 + 72] = mem[(32 * idx) + (32 * arg2.length) + 160]
        require idx < mem[96]
        _25 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0x5c17f9f400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_25)
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 96
        mem[mem[64] + 100] = 68
        s = 0
        while s < 68:
            mem[mem[64] + s + 132] = mem[_21 + s + 32]
            s = s + 32
            continue 
        mem[mem[64] + 196] = mem[mem[64] + 224 len 4]
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(_25), 1, Array(len=68, data=mem[mem[64] + 132 len 96])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function sub_8876905e(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg2.length:
        _21 = mem[64]
        mem[64] = mem[64] + 128
        mem[_21] = 68
        mem[_21 + 32 len 68] = 0xfea9059cbb000000000000000000000000314159269c401849277192418bb137d9887cccbe00000000000000000000000000000000000000000000000000000000000000
        require idx < mem[(32 * arg2.length) + 128]
        mem[_21 + 68] = mem[(32 * idx) + (32 * arg2.length) + 160]
        require idx < mem[96]
        _25 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0xb11c4fd800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_25)
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 96
        mem[mem[64] + 100] = 68
        s = 0
        while s < 68:
            mem[mem[64] + s + 132] = mem[_21 + s + 32]
            s = s + 32
            continue 
        mem[mem[64] + 196] = mem[mem[64] + 224 len 4]
        require ext_code.size(arg1)
        call arg1.approveAndCallcode(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(_25), 1, Array(len=68, data=mem[mem[64] + 132 len 96])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}

contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_f6d2967d(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _22 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + 132] = msg.sender
        mem[(32 * arg2.length) + 164] = address(_22)
        mem[(32 * arg2.length) + 196] = arg3
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_22), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            if 32 != return_data.size:
                revert with 0, 'transferFrom fail'
            mem[0] = ext_call.return_data[0]
            if not ext_call.return_data[0]:
                revert with 0, 'transferFrom fail'
        idx = idx + 1
        continue 
    mem[(32 * arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    emit 0x34560253: address(arg1), msg.sender, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 256 len (32 * arg2.length) - floor32(arg2.length)])
}

function sub_d97cf2ae(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = 64
    mem[(32 * arg1.length) + (32 * arg2.length) + 256] = arg1.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 288 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(32 * arg1.length) + (32 * arg2.length) + 224] = (32 * arg1.length) + 96
    mem[(64 * arg1.length) + (32 * arg2.length) + 288] = arg2.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 320 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 32
    mem[(64 * arg2.length) + (64 * arg1.length) + 352] = (32 * arg2.length) + (32 * arg1.length) + 128
    mem[(64 * arg2.length) + (64 * arg1.length) + 384 len floor32((32 * arg2.length) + (32 * arg1.length) + 31) + 4] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32((32 * arg2.length) + (32 * arg1.length) + 31) + 4]
    if not (32 * arg2.length) + (32 * arg1.length) + 128 % 32:
        return memory
          from (64 * arg2.length) + (64 * arg1.length) + 320
           len (161 * arg2.length) + (161 * arg1.length) + 192
    mem[floor32((32 * arg2.length) + (32 * arg1.length) + 128) + (64 * arg2.length) + (64 * arg1.length) + 384] = mem[floor32((32 * arg2.length) + (32 * arg1.length) + 128) + (64 * arg2.length) + (64 * arg1.length) + -((32 * arg2.length) + (32 * arg1.length) + 128 % 32) + 416 len (32 * arg2.length) + (32 * arg1.length) + 128 % 32]
    return Array(len=(32 * arg2.length) + (32 * arg1.length) + 128, data=mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32((32 * arg2.length) + (32 * arg1.length) + 31) + 4], mem[(64 * arg2.length) + (64 * arg1.length) + floor32((32 * arg2.length) + (32 * arg1.length) + 31) + 388 len floor32((32 * arg2.length) + (32 * arg1.length) + 128) + -floor32((32 * arg2.length) + (32 * arg1.length) + 31) + 28]), 
}

function multisend(address arg1, address[] arg2, uint256[] arg3) payable {
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
    if arg2.length != arg3.length:
        revert with 0, 
                    32,
                    38,
                    0xfe4164647265737320636f756e74206d75737420657175616c20616d6d6f756e7420636f756e,
                    mem[(32 * arg2.length) + (32 * arg3.length) + 266 len 26]
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _29 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _33 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_29)
        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _33
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_29), _33
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            if 32 != return_data.size:
                revert with 0, 'transferFrom fail'
            mem[0] = ext_call.return_data[0]
            if not ext_call.return_data[0]:
                revert with 0, 'transferFrom fail'
        idx = idx + 1
        continue 
    mem[(32 * arg2.length) + (32 * arg3.length) + 288 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    emit 0x34560253: address(arg1), msg.sender, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + (32 * arg3.length) + floor32(arg2.length) + 288 len (32 * arg2.length) - floor32(arg2.length)])
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[64] = ceil32(arg4.length) + 128
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 64
    _3 = mem[128]
    require mem[128] <= 4294967296
    require mem[128] + 64 <= arg4.length + 32
    require mem[mem[128] + 128] <= 4294967296 and mem[128] + (32 * mem[mem[128] + 128]) + 64 <= arg4.length + 32
    _5 = mem[160]
    require mem[160] <= 4294967296
    require mem[160] + 64 <= arg4.length + 32
    require mem[mem[160] + 128] <= 4294967296 and mem[160] + (32 * mem[mem[160] + 128]) + 64 <= arg4.length + 32
    if mem[mem[160] + 128] != mem[mem[128] + 128]:
        revert with 0, 
                    32,
                    37,
                    0x7441647265737320636f756e74206d75737420657175616c20616d6d6f756e7420636f756e,
                    mem[ceil32(arg4.length) + 233 len 27]
    _36 = mem[mem[128] + 128]
    idx = 0
    s = arg2
    while idx < _36:
        require idx < mem[_3 + 128]
        _41 = mem[(32 * idx) + _3 + 160]
        require idx < mem[_5 + 128]
        _45 = mem[(32 * idx) + _5 + 160]
        mem[ceil32(arg4.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + 132] = arg1
        mem[ceil32(arg4.length) + 164] = address(_41)
        mem[ceil32(arg4.length) + 196] = _45
        require ext_code.size(arg3)
        call arg3.0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), address(_41), _45
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            if 32 != return_data.size:
                revert with 0, 'transferFrom fail'
            mem[0] = ext_call.return_data[0]
            if not ext_call.return_data[0]:
                revert with 0, 'transferFrom fail'
        require idx < mem[_5 + 128]
        if mem[_5 + (32 * idx) + 160] > s:
            revert with 0, 'sub Fail'
        idx = idx + 1
        s = s - mem[_5 + (32 * idx) + 160]
        continue 
    mem[ceil32(arg4.length) + 128] = 0
    mem[ceil32(arg4.length) + 160] = arg1
    mem[ceil32(arg4.length) + 192] = 96
    mem[ceil32(arg4.length) + 224] = mem[_3 + 128]
    _39 = mem[_3 + 128]
    mem[ceil32(arg4.length) + 256 len floor32(mem[_3 + 128])] = mem[_3 + 160 len floor32(mem[_3 + 128])]
    emit 0x34560253: 0, address(arg1), 96, mem[ceil32(arg4.length) + 224 len (32 * _39) + 32]
}



}

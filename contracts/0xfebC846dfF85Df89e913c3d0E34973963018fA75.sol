contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[2523 len 32]
    return code.data[55 len 2468]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;

function _fallback() payable {
  stop
}

function sub_fb55a055(?) payable {
    call address(stor0).0x9afd453c with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] != msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function nonceOf(address arg1) payable {
    call address(stor0).0x13c01368 with:
         gas gas_remaining - 25050 wei
        args 1
    require ext_call.success
    call address(ext_call.return_data[0]).0x295f36d7 with:
         gas gas_remaining - 25050 wei
        args 3, arg1
    return ext_call.return_data[0]
}

function sub_e218e6d2(?) payable {
    mem[128 len arg5.length] = arg5[all]
    call address(stor0).0x13c01368 with:
         gas gas_remaining - 25050 wei
        args 1
    require ext_call.success
    call address(ext_call.return_data[0]).0x295f36d7 with:
         gas gas_remaining - 25050 wei
        args 2, arg2
    require Mask(1, 1, ext_call.return_data[0]) != 2
    require arg2 != 0
    call address(stor0).0x13c01368 with:
         gas gas_remaining - 25050 wei
        args 1
    require ext_call.success
    call address(ext_call.return_data[0]).0x295f36d7 with:
         gas gas_remaining - 25050 wei
        args 2, arg6
    require Mask(1, 1, ext_call.return_data[0]) != 2
    require arg6 != 0
    mem[ceil32(arg5.length) + 128] = arg1
    mem[ceil32(arg5.length) + 160] = address(arg2)
    mem[ceil32(arg5.length) + 180] = arg3
    require 65 == arg5.length
    if mem[192 len 1] >= 27:
        signer = erecover(sha3(arg1, arg2, arg3, arg4), mem[161] << 248, mem[128], mem[160]) 
    else:
        signer = erecover(sha3(arg1, arg2, arg3, arg4), mem[192 len 1] + 27 << 248, mem[128], mem[160]) 
    require erecover.result
    call address(stor0).0x13c01368 with:
         gas gas_remaining - 25050 wei
        args 1
    require ext_call.success
    call address(ext_call.return_data[0]).0x295f36d7 with:
         gas gas_remaining - 25050 wei
        args 2, address(signer)
    require bool(ext_call.return_data[0]) == 1
    call address(stor0).0x13c01368 with:
         gas gas_remaining - 25050 wei
        args 1
    require ext_call.success
    call address(ext_call.return_data[0]).0x295f36d7 with:
         gas gas_remaining - 25050 wei
        args 2, address(signer)
    require Mask(1, 2, ext_call.return_data[0]) != 4
    require address(signer) != 0
    call address(stor0).0x13c01368 with:
         gas gas_remaining - 25050 wei
        args 1
    require ext_call.success
    call address(ext_call.return_data[0]).0x295f36d7 with:
         gas gas_remaining - 25050 wei
        args 3, address(signer)
    require ext_call.return_data[0] < arg1
    call address(stor0).0x13c01368 with:
         gas gas_remaining - 25050 wei
        args 1
    require ext_call.success
    call address(ext_call.return_data[0]).0x461b09c0 with:
         gas gas_remaining - 25050 wei
        args 3, address(signer), arg1
    call address(stor0).0x13c01368 with:
         gas gas_remaining - 25050 wei
        args 1
    call address(ext_call.return_data[0]).0x295f36d7 with:
         gas gas_remaining - 25050 wei
        args 1, address(signer)
    require ext_call.return_data[0] >= arg3 + arg4
    call address(stor0).0x13c01368 with:
         gas gas_remaining - 25050 wei
        args 1
    require ext_call.success
    call address(ext_call.return_data[0]).0x461b09c0 with:
         gas gas_remaining - 25050 wei
        args 1, address(signer), ext_call.return_data[0] - arg3 - arg4
    call address(stor0).0x13c01368 with:
         gas gas_remaining - 25050 wei
        args 1
    call address(ext_call.return_data[0]).0x295f36d7 with:
         gas gas_remaining - 25050 wei
        args 1, arg2
    require ext_call.return_data[0] + arg3 >= ext_call.return_data[0]
    call address(stor0).0x13c01368 with:
         gas gas_remaining - 25050 wei
        args 1
    require ext_call.success
    call address(ext_call.return_data[0]).0x461b09c0 with:
         gas gas_remaining - 25050 wei
        args 1, address(arg2), ext_call.return_data[0] + arg3
    emit 0x56ddf252: arg3, address(signer), arg2
    if arg4 > 0:
        call address(stor0).0x13c01368 with:
             gas gas_remaining - 25050 wei
            args 1
        require ext_call.success
        call address(ext_call.return_data[0]).0x295f36d7 with:
             gas gas_remaining - 25050 wei
            args 1, arg6
        require ext_call.return_data[0] + arg4 >= ext_call.return_data[0]
        call address(stor0).0x13c01368 with:
             gas gas_remaining - 25050 wei
            args 1
        require ext_call.success
        call address(ext_call.return_data[0]).0x461b09c0 with:
             gas gas_remaining - 25050 wei
            args 1, address(arg6), ext_call.return_data[0] + arg4
        emit 0x56ddf252: arg4, address(signer), arg6
}

function sub_05bafaa4(?) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[64] = ceil32(arg2.length) + 288
    mem[ceil32(arg2.length) + 128] = 0
    mem[ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg2.length) + 192] = 0
    mem[ceil32(arg2.length) + 224] = 0
    mem[ceil32(arg2.length) + 256] = 0
    s = ceil32(arg2.length) + 128
    idx = 0
    while idx < arg1:
        _220 = mem[64]
        mem[64] = mem[64] + 160
        mem[_220] = 0
        mem[_220 + 32] = 0
        mem[_220 + 64] = 0
        mem[_220 + 96] = 0
        mem[_220 + 128] = 0
        _221 = mem[64]
        mem[64] = mem[64] + 160
        mem[_221] = 0
        mem[_221 + 32] = 0
        mem[_221 + 64] = 0
        mem[_221 + 96] = 0
        mem[_221 + 128] = 0
        _222 = mem[128]
        _223 = mem[160]
        _224 = mem[192]
        _225 = mem[224]
        _226 = mem[256]
        _227 = mem[288]
        _228 = mem[289]
        mem[mem[64]] = mem[128]
        if mem[320 len 1] >= 27:
            _231 = sha3(mem[mem[64]], address(_223), _224, _225)
            mem[_221] = _222
            mem[mem[64] + 96] = _227
            signer = erecover(_231, _228 << 248, _226, _227) 
        else:
            _238 = sha3(mem[mem[64]], address(_223), _224, _225)
            mem[_221] = _222
            mem[mem[64] + 96] = _227
            signer = erecover(_238, uint8(_228) + 27 << 248, _226, _227) 
        require erecover.result
        mem[_221 + 32] = address(signer)
        mem[_221 + 64] = address(_223)
        mem[_221 + 96] = _224
        mem[_221 + 128] = _225
        call address(stor0).0x13c01368 with:
             gas gas_remaining - 25050 wei
            args 1
        require ext_call.success
        call address(ext_call.return_data[0]).0x295f36d7 with:
             gas gas_remaining - 25050 wei
            args 2, address(signer)
        require bool(ext_call.return_data[0]) == 1
        call address(stor0).0x13c01368 with:
             gas gas_remaining - 25050 wei
            args 1
        require ext_call.success
        call address(ext_call.return_data[0]).0x295f36d7 with:
             gas gas_remaining - 25050 wei
            args 2, address(signer)
        require Mask(1, 2, ext_call.return_data[0]) != 4
        require address(signer) != 0
        call address(stor0).0x13c01368 with:
             gas gas_remaining - 25050 wei
            args 1
        require ext_call.success
        call address(ext_call.return_data[0]).0x295f36d7 with:
             gas gas_remaining - 25050 wei
            args 3, address(signer)
        require ext_call.return_data[0] < _222
        call address(stor0).0x13c01368 with:
             gas gas_remaining - 25050 wei
            args 1
        require ext_call.success
        call address(ext_call.return_data[0]).0x461b09c0 with:
             gas gas_remaining - 25050 wei
            args 3, address(signer), _222
        call address(stor0).0x13c01368 with:
             gas gas_remaining - 25050 wei
            args 1
        call address(ext_call.return_data[0]).0x295f36d7 with:
             gas gas_remaining - 25050 wei
            args 1, address(signer)
        require ext_call.return_data[0] >= _224 + _225
        call address(stor0).0x13c01368 with:
             gas gas_remaining - 25050 wei
            args 1
        require ext_call.success
        call address(ext_call.return_data[0]).0x461b09c0 with:
             gas gas_remaining - 25050 wei
            args 1, address(signer), ext_call.return_data[0] - _224 - _225
        call address(stor0).0x13c01368 with:
             gas gas_remaining - 25050 wei
            args 1
        call address(ext_call.return_data[0]).0x295f36d7 with:
             gas gas_remaining - 25050 wei
            args 1, address(_223)
        require ext_call.return_data[0] + _224 >= ext_call.return_data[0]
        call address(stor0).0x13c01368 with:
             gas gas_remaining - 25050 wei
            args 1
        require ext_call.success
        mem[mem[64] + 4] = 1
        mem[mem[64] + 36] = address(_223)
        mem[mem[64] + 68] = ext_call.return_data[0] + _224
        call address(ext_call.return_data[0]).0x461b09c0 with:
             gas gas_remaining - 25050 wei
            args 1, address(_223), ext_call.return_data[0] + _224
        mem[mem[64]] = _224
        emit 0x56ddf252: _224, address(signer), address(_223)
        if _225 > 0:
            call address(stor0).0x13c01368 with:
                 gas gas_remaining - 25050 wei
                args 1
            require ext_call.success
            call address(ext_call.return_data[0]).0x295f36d7 with:
                 gas gas_remaining - 25050 wei
                args 1, arg3
            require ext_call.return_data[0] + _225 >= ext_call.return_data[0]
            call address(stor0).0x13c01368 with:
                 gas gas_remaining - 25050 wei
                args 1
            require ext_call.success
            mem[mem[64] + 4] = 1
            mem[mem[64] + 36] = arg3
            mem[mem[64] + 68] = ext_call.return_data[0] + _225
            call address(ext_call.return_data[0]).0x461b09c0 with:
                 gas gas_remaining - 25050 wei
                args 1, address(arg3), ext_call.return_data[0] + _225
            mem[mem[64]] = _225
            emit 0x56ddf252: _225, address(signer), arg3
        s = _221
        idx = idx + 1
        continue 
}



}

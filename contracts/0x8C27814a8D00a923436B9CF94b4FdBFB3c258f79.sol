contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[1733 len 32]
    return code.data[55 len 1678]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function sub_b92587f1(?) payable {
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 3, arg1
    return ext_call.return_data[0]
}

function sub_65663fd8(?) payable {
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
        _212 = mem[64]
        mem[64] = mem[64] + 160
        mem[_212] = 0
        mem[_212 + 32] = 0
        mem[_212 + 64] = 0
        mem[_212 + 96] = 0
        mem[_212 + 128] = 0
        _213 = mem[64]
        mem[64] = mem[64] + 160
        mem[_213] = 0
        mem[_213 + 32] = 0
        mem[_213 + 64] = 0
        mem[_213 + 96] = 0
        mem[_213 + 128] = 0
        _214 = mem[128]
        _215 = mem[160]
        _216 = mem[192]
        _217 = mem[224]
        _218 = mem[256]
        _219 = mem[288]
        _220 = mem[289]
        mem[mem[64]] = mem[128]
        if mem[320 len 1] >= 27:
            _223 = sha3(mem[mem[64]], address(_215), _216, _217)
            mem[_213] = _214
            mem[mem[64] + 96] = _219
            signer = erecover(_223, _220 << 248, _218, _219) 
        else:
            _230 = sha3(mem[mem[64]], address(_215), _216, _217)
            mem[_213] = _214
            mem[mem[64] + 96] = _219
            signer = erecover(_230, uint8(_220) + 27 << 248, _218, _219) 
        require erecover.result
        mem[_213 + 32] = address(signer)
        mem[_213 + 64] = address(_215)
        mem[_213 + 96] = _216
        mem[_213 + 128] = _217
        call stor0.0xec56a373 with:
             gas gas_remaining - 25050 wei
            args 0
        require ext_call.success
        call address(ext_call.return_data[0]).0x658cc1f6 with:
             gas gas_remaining - 25050 wei
            args 2, address(signer)
        require bool(ext_call.return_data[0]) == 1
        call stor0.0xec56a373 with:
             gas gas_remaining - 25050 wei
            args 0
        require ext_call.success
        call address(ext_call.return_data[0]).0x658cc1f6 with:
             gas gas_remaining - 25050 wei
            args 2, address(signer)
        require Mask(1, 2, ext_call.return_data[0]) != 4
        require address(signer) != 0
        call stor0.0xec56a373 with:
             gas gas_remaining - 25050 wei
            args 0
        require ext_call.success
        call address(ext_call.return_data[0]).0x658cc1f6 with:
             gas gas_remaining - 25050 wei
            args 3, address(signer)
        require ext_call.return_data[0] < _214
        call stor0.0xec56a373 with:
             gas gas_remaining - 25050 wei
            args 0
        require ext_call.success
        call address(ext_call.return_data[0]).0xbb40a4a9 with:
             gas gas_remaining - 25050 wei
            args 3, address(signer), _214
        call stor0.0xec56a373 with:
             gas gas_remaining - 25050 wei
            args 0
        call address(ext_call.return_data[0]).0x658cc1f6 with:
             gas gas_remaining - 25050 wei
            args 1, address(signer)
        require ext_call.return_data[0] >= _216 + _217
        call stor0.0xec56a373 with:
             gas gas_remaining - 25050 wei
            args 0
        require ext_call.success
        call address(ext_call.return_data[0]).0xbb40a4a9 with:
             gas gas_remaining - 25050 wei
            args 1, address(signer), ext_call.return_data[0] - _216 - _217
        call stor0.0xec56a373 with:
             gas gas_remaining - 25050 wei
            args 0
        call address(ext_call.return_data[0]).0x658cc1f6 with:
             gas gas_remaining - 25050 wei
            args 1, address(_215)
        require ext_call.return_data[0] + _216 >= ext_call.return_data[0]
        call stor0.0xec56a373 with:
             gas gas_remaining - 25050 wei
            args 0
        require ext_call.success
        mem[mem[64] + 4] = 1
        mem[mem[64] + 36] = address(_215)
        mem[mem[64] + 68] = ext_call.return_data[0] + _216
        call address(ext_call.return_data[0]).0xbb40a4a9 with:
             gas gas_remaining - 25050 wei
            args 1, address(_215), ext_call.return_data[0] + _216
        mem[mem[64]] = _216
        emit Transfer(_216, address(signer), address(_215));
        if _217 > 0:
            call stor0.0xec56a373 with:
                 gas gas_remaining - 25050 wei
                args 0
            require ext_call.success
            call address(ext_call.return_data[0]).0x658cc1f6 with:
                 gas gas_remaining - 25050 wei
                args 1, arg3
            require ext_call.return_data[0] + _217 >= ext_call.return_data[0]
            call stor0.0xec56a373 with:
                 gas gas_remaining - 25050 wei
                args 0
            require ext_call.success
            mem[mem[64] + 4] = 1
            mem[mem[64] + 36] = arg3
            mem[mem[64] + 68] = ext_call.return_data[0] + _217
            call address(ext_call.return_data[0]).0xbb40a4a9 with:
                 gas gas_remaining - 25050 wei
                args 1, address(arg3), ext_call.return_data[0] + _217
            mem[mem[64]] = _217
            emit Transfer(_217, address(signer), arg3);
        s = _213
        idx = idx + 1
        continue 
}



}

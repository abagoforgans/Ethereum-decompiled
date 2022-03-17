contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[36 len 3312]
}



// =====================  Runtime code  =====================


uint128 stor0; offset 160
address stor0;
uint256 stor0;
address stor1;

function kill() payable {
    if stor1 != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function __callback(bytes32 arg1, string arg2) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[64] = ceil32(arg2.length) + 160
    mem[ceil32(arg2.length) + 128] = 0
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    call address(ext_call.return_data[0]).0xc281d19e with:
         gas gas_remaining - 25050 wei
    mem[ceil32(arg2.length) + 160] = ext_call.return_data[0]
    require msg.sender == ext_call.return_data[12 len 20]
    idx = 2
    s = 0
    s = 0
    s = 0
    while idx < 42:
        require idx < arg2.length
        require idx + 1 < arg2.length
        if mem[idx + 128 len 1] >= 97:
            if mem[idx + 128 len 1] <= 102:
                if mem[idx + 129 len 1] >= 97:
                    if mem[idx + 129 len 1] <= 102:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 87
                        s = mem[idx + 128 len 1] - 87
                        s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) - 87
                        continue 
                if mem[idx + 129 len 1] < 48:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 87
                    s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87)
                    continue 
                if mem[idx + 129 len 1] > 57:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 87
                    s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87)
                    continue 
                idx = idx + 2
                s = mem[idx + 129 len 1] - 48
                s = mem[idx + 128 len 1] - 87
                s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) - 48
                continue 
        if mem[idx + 128 len 1] < 48:
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 87
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) - 87
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244)
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244)
                continue 
            idx = idx + 2
            s = mem[idx + 129 len 1] - 48
            s = mem[idx + 128 len 1]
            s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) - 48
            continue 
        if mem[idx + 128 len 1] > 57:
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 87
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) - 87
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244)
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244)
                continue 
            idx = idx + 2
            s = mem[idx + 129 len 1] - 48
            s = mem[idx + 128 len 1]
            s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) - 48
            continue 
        if mem[idx + 129 len 1] >= 97:
            if mem[idx + 129 len 1] <= 102:
                idx = idx + 2
                s = mem[idx + 129 len 1] - 87
                s = mem[idx + 128 len 1] - 48
                s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) - 87
                continue 
        if mem[idx + 129 len 1] < 48:
            idx = idx + 2
            s = mem[idx + 129 len 1]
            s = mem[idx + 128 len 1] - 48
            s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48)
            continue 
        if mem[idx + 129 len 1] > 57:
            idx = idx + 2
            s = mem[idx + 129 len 1]
            s = mem[idx + 128 len 1] - 48
            s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48)
            continue 
        idx = idx + 2
        s = mem[idx + 129 len 1] - 48
        s = mem[idx + 128 len 1] - 48
        s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) - 48
        continue 
    call address(s) with:
       value eth.balance(this.address) wei
         gas 0 wei
    emit 0x6cceb87e: address(s), eth.balance(this.address)
}

function transfer(string arg1, string arg2) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = 12
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = 'HACKinDUBLIN'
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 388] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 408 len 12]
    call address(ext_call.return_data[0]).0x60f66701 with:
         gas gas_remaining - 25050 wei
        args Array(len=12, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 388])
    require ext_call.success
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) != 'b':
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        require 1 < arg1.length
        if Mask(8, 248, mem[129]) != 't':
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            require 2 < arg1.length
            if Mask(8, 248, mem[130]) != 'c':
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                if arg2.length > 35:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                else:
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = 32
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 352] = '{"pair":"eth_btc","withdrawal":"'
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 384] = 0
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 416] = 0
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 448] = 0
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 480] = 0
                    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 768
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 512] = 222
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 544 len 222] = code.data[3090 len 222]
                    idx = 0
                    s = 0
                    while idx < 32:
                        require idx < 32
                        require s < 222
                        mem[s + ceil32(arg1.length) + ceil32(arg2.length) + 544] = Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + 352])
                        idx = idx + 1
                        s = s + 1
                        continue 
                    idx = 0
                    s = 32
                    while idx < arg2.length:
                        require idx < arg2.length
                        require s < 222
                        mem[s + ceil32(arg1.length) + ceil32(arg2.length) + 544] = Mask(8, 248, mem[ceil32(arg1.length) + idx + 160])
                        idx = idx + 1
                        s = s + 1
                        continue 
                    idx = mem[ceil32(arg1.length) + 128] + 32
                    while idx < mem[ceil32(arg1.length) + ceil32(arg2.length) + 512]:
                        require idx < mem[ceil32(arg1.length) + ceil32(arg2.length) + 512]
                        mem[idx + ceil32(arg1.length) + ceil32(arg2.length) + 544] = 0
                        idx = idx + 1
                        continue 
                    _1535 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1535] = 1
                    mem[_1535 + 32] = '}'
                    _1541 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1541] = 0
                    _1542 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1542] = 0
                    _1543 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1543] = 0
                    _1544 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1544] = 0
                    _1545 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1545] = 222
                    mem[_1545 + 32 len 222] = code.data[3090 len 222]
                    _2011 = mem[ceil32(arg1.length) + ceil32(arg2.length) + 512]
                    idx = 0
                    s = 0
                    while idx < _2011:
                        require idx < mem[ceil32(arg1.length) + ceil32(arg2.length) + 512]
                        require s < 222
                        mem[s + _1545 + 32] = Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + 544])
                        _2011 = mem[ceil32(arg1.length) + ceil32(arg2.length) + 512]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _2475 = mem[_1535]
                    idx = 0
                    s = _2011
                    while idx < _2475:
                        require idx < mem[_1535]
                        require s < 222
                        mem[s + _1545 + 32] = Mask(8, 248, mem[_1535 + idx + 32])
                        _2475 = mem[_1535]
                        idx = idx + 1
                        s = s + 1
                        continue 
                    idx = _2011 + _2475
                    while idx < mem[_1545]:
                        require idx < mem[_1545]
                        mem[idx + _1545 + 32] = 0
                        idx = idx + 1
                        continue 
                    _2937 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
                    _2939 = mem[ceil32(arg1.length) + 128]
                    mem[mem[64] + 64 len mem[ceil32(arg1.length) + 128]] = mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]]
                    if not _2939 % 32:
                        emit 0x89fa2bf8: 32, mem[mem[64] + 32 len _2939 + 32]
                        _2947 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2947] = 3
                        mem[_2947 + 32] = 'URL'
                        _2948 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2948] = 49
                        mem[_2948 + 32] = 'json(https://shapeshift.io/shift'
                        mem[_2948 + 64] = ').success.deposit'
                        call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
                             gas gas_remaining - 25050 wei
                        require ext_call.success
                        uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
                        mem[mem[64] + 68] = mem[mem[64] + 97 len 3]
                        call address(stor0.field_0).0x524f3889 with:
                             gas gas_remaining - 25050 wei
                            args Array(len=3, data=mem[mem[64] + 68])
                        require ext_call.success
                        mem[mem[64]] = 0x7722865900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = 3
                        mem[mem[64] + 164] = mem[mem[64] + 193 len 3]
                        mem[mem[64] + 68] = 192
                        mem[mem[64] + 196] = 49
                        mem[mem[64] + 228 len 49] = 'json(https://shapeshift.io/shift', ').success.deposit'
                        mem[mem[64] + 260] = 0, mem[mem[64] + 277 len 15]
                        mem[mem[64] + 100] = 288
                        mem[mem[64] + 292] = mem[_1545]
                        _3211 = mem[_1545]
                        mem[mem[64] + 324 len mem[_1545]] = mem[_1545 + 32 len mem[_1545]]
                        if not _3211 % 32:
                            call address(stor0.field_0).0x77228659 with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 34050 wei
                                args 0, 128, 192, 288, 3, mem[mem[64] + 164], 49, 'json(https://shapeshift.io/shift', ').success.deposit', mem[mem[64] + 260 len _3211 + 64]
                        else:
                            mem[floor32(_3211) + mem[64] + 324] = mem[floor32(_3211) + mem[64] + -(_3211 % 32) + 356 len _3211 % 32]
                            call address(stor0.field_0).0x77228659 with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 34050 wei
                                args 0, 128, 192, 288, 3, mem[mem[64] + 164], 49, 'json(https://shapeshift.io/shift', ').success.deposit', mem[mem[64] + 260 len floor32(_3211) + 96]
                    else:
                        mem[floor32(_2939) + mem[64] + 64] = mem[floor32(_2939) + mem[64] + -(_2939 % 32) + 96 len _2939 % 32]
                        emit 0x89fa2bf8: mem[mem[64] len floor32(_2939) + _2937 + -mem[64] + 96]
                        _2968 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2968] = 3
                        mem[_2968 + 32] = 'URL'
                        _2969 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2969] = 49
                        mem[_2969 + 32] = 'json(https://shapeshift.io/shift'
                        mem[_2969 + 64] = ').success.deposit'
                        call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
                             gas gas_remaining - 25050 wei
                        require ext_call.success
                        uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
                        mem[mem[64] + 68] = mem[mem[64] + 97 len 3]
                        call address(stor0.field_0).0x524f3889 with:
                             gas gas_remaining - 25050 wei
                            args Array(len=3, data=mem[mem[64] + 68])
                        require ext_call.success
                        mem[mem[64]] = 0x7722865900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = 3
                        mem[mem[64] + 164] = mem[mem[64] + 193 len 3]
                        mem[mem[64] + 68] = 192
                        mem[mem[64] + 196] = 49
                        mem[mem[64] + 228 len 49] = 'json(https://shapeshift.io/shift', ').success.deposit'
                        mem[mem[64] + 260] = 0, mem[mem[64] + 277 len 15]
                        mem[mem[64] + 100] = 288
                        mem[mem[64] + 292] = mem[_1545]
                        _3299 = mem[_1545]
                        mem[mem[64] + 324 len mem[_1545]] = mem[_1545 + 32 len mem[_1545]]
                        if not _3299 % 32:
                            call address(stor0.field_0).0x77228659 with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 34050 wei
                                args 0, 128, 192, 288, 3, mem[mem[64] + 164], 49, 'json(https://shapeshift.io/shift', ').success.deposit', mem[mem[64] + 260 len _3299 + 64]
                        else:
                            mem[floor32(_3299) + mem[64] + 324] = mem[floor32(_3299) + mem[64] + -(_3299 % 32) + 356 len _3299 % 32]
                            call address(stor0.field_0).0x77228659 with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 34050 wei
                                args 0, 128, 192, 288, 3, mem[mem[64] + 164], 49, 'json(https://shapeshift.io/shift', ').success.deposit', mem[mem[64] + 260 len floor32(_3299) + 96]
                    require ext_call.success
}



}

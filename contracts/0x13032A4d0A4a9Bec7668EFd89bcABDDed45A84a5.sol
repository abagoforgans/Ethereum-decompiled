contract main {




// =====================  Runtime code  =====================


const sub_54ff60c5(?) = 32

const sub_72ab7040(?) = 1024


address feesReceiverAddress;
uint256 feesPercent;
uint8 stor2;
mapping of struct sub_76748bfe;

function sub_76748bfe(?) payable {
    require calldata.size - 4 >= 32
    return sub_76748bfe[arg1].field_0, 
           sub_76748bfe[arg1].field_256,
           sub_76748bfe[arg1].field_512,
           sub_76748bfe[arg1].field_768,
           sub_76748bfe[arg1].field_1024
}

function feesReceiver() payable {
    return feesReceiverAddress
}

function feesPercent() payable {
    return feesPercent
}

function _fallback() payable {
    revert
}

function sub_746aa14f(?) payable {
    require calldata.size - 4 >= 64
    require arg2 / 32 < 32
    return bool(sub_76748bfe[address(arg1)][0.03125 / arg2].field_1280 and 1 << arg2 % 32)
}

function sub_83217a76(?) payable {
    require calldata.size - 4 >= 160
    require not stor2
    require arg2 > 0
    require 0 < arg3
    require arg3 <= 1024
    require arg5 > block.timestamp
    if arg2:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        mem[352 len 4] = uint32(arg2)
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 480, mem[324 len 4]
        require ext_call.success
        if return_data.size:
            require return_data.size == 32
        require arg2 + ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not return_data.size:
            if ext_call.return_data[0] != arg2 + ext_call.return_data[0]:
                revert with 0, 
                            32,
                            43,
                            0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                            mem[339 len 13],
                            uint32(arg2),
                            mem[356 len 4]
        else:
            if ext_call.return_data[0] != arg2 + ext_call.return_data[0]:
                revert with 0, 
                            32,
                            43,
                            0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                            mem[ceil32(return_data.size) + 340 len 21]
        ('eq', ('ext_call.return_data', 0, 32), ('add', ('param', 'arg2'), ('ext_call.return_data', 0, 32)))
    sub_76748bfe[address(arg4)].field_0 = arg1
    sub_76748bfe[address(arg4)].field_256 = arg2
    sub_76748bfe[address(arg4)].field_512 = arg3
    sub_76748bfe[address(arg4)].field_768 = arg5
    sub_76748bfe[address(arg4)].field_1024 = msg.sender or Mask(96, 160, sub_76748bfe[address(arg4)].field_1024)
}

function sub_9dc217ac(?) payable {
    require calldata.size - 4 >= 32
    require not stor2
    require block.timestamp > sub_76748bfe[address(arg1)].field_768
    idx = 0
    s = 0
    while idx < 1024:
        require idx / 32 < 32
        if not sub_76748bfe[address(arg1)][0.03125 / idx].field_1280 or not 1:
            idx = idx + 1
            s = s
            continue 
        require sub_76748bfe[address(arg1)].field_512
        idx = idx + 1
        s = s + (sub_76748bfe[address(arg1)].field_256 / sub_76748bfe[address(arg1)].field_512)
        continue 
    require s <= sub_76748bfe[address(arg1)].field_256
    if sub_76748bfe[address(arg1)].field_256 - s:
        require ext_code.size(sub_76748bfe[address(arg1)].field_0)
        staticcall sub_76748bfe[address(arg1)].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_76748bfe[address(arg1)].field_0)
        call sub_76748bfe[address(arg1)].field_0 with:
           funct sub_76748bfe[address(arg1)].field_1024
             gas gas_remaining wei
            args Mask(224, 32, sub_76748bfe[address(arg1)].field_256 - s) << 224, mem[260 len 4]
        require ext_call.success
        if return_data.size:
            require return_data.size == 32
        require sub_76748bfe[address(arg1)].field_256 - s <= ext_call.return_data[0]
        require ext_code.size(sub_76748bfe[address(arg1)].field_0)
        staticcall sub_76748bfe[address(arg1)].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not return_data.size:
            if ext_call.return_data[0] != ext_call.return_data[0] - sub_76748bfe[address(arg1)].field_256 + s:
                revert with 0, 32, 43, 0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463, mem[307 len 21]
        else:
            if ext_call.return_data[0] != ext_call.return_data[0] - sub_76748bfe[address(arg1)].field_256 + s:
                revert with 0, 
                            32,
                            43,
                            0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                            mem[ceil32(return_data.size) + 308 len 21]
        ('eq', ('ext_call.return_data', 0, 32), ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_76748bfe', 3))))), ('var', 1)))
    sub_76748bfe[address(arg1)].field_0 = 0
    sub_76748bfe[address(arg1)].field_256 = 0
    sub_76748bfe[address(arg1)].field_512 = 0
    sub_76748bfe[address(arg1)].field_768 = 0
    sub_76748bfe[address(arg1)].field_1024 = 0
    idx = 5
    while 37 > idx:
        sub_76748bfe[address(arg1)][idx].field_0 = 0
        idx = idx + 1
        continue 
}

function redeem(bytes arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require not stor2
    mem[128] = msg.sender << 96
    mem[96] = 20
    mem[148] = arg1.length
    mem[180 len arg1.length] = arg1[all]
    mem[arg1.length + 180] = 0
    if arg1.length != 65:
        mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 212
        mem[ceil32(arg1.length) + 180] = arg2.length
        mem[ceil32(arg1.length) + 212 len arg2.length] = arg2[all]
        mem[ceil32(arg1.length) + arg2.length + 212] = 0
        idx = 0
        s = 0
        t = 0
        while idx < arg2.length / 20:
            _336 = mem[ceil32(arg1.length) + (20 * idx) + 212]
            if address(s) >= mem[ceil32(arg1.length) + (20 * idx) + 212 len 20]:
                mem[mem[64] + 32] = Mask(160, 96, mem[ceil32(arg1.length) + (20 * idx) + 212])
                mem[mem[64] + 52] = address(s)
                _375 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                idx = idx + 1
                s = sha3(mem[_375 + 32 len mem[_375]])
                t = t
                continue 
            mem[mem[64] + 32] = address(s)
            mem[mem[64] + 52] = Mask(160, 96, _336)
            _379 = mem[64]
            mem[mem[64]] = 40
            mem[64] = mem[64] + 72
            idx = idx + 1
            s = sha3(mem[_379 + 32 len mem[_379]])
            t = (1 << idx) + t
            continue 
        mem[0] = address(s)
        mem[32] = 3
        require t / 32 < 32
        require not sub_76748bfe[address(s)][0.03125 / t].field_1280
        require t / 32 < 32
        sub_76748bfe[address(s)][0.03125 / t].field_1280 = 1
        require sub_76748bfe[address(s)].field_512
        if sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_76748bfe[address(s)].field_0)
            staticcall sub_76748bfe[address(s)].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_76748bfe[address(s)].field_0)
            _432 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512
            _433 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_433 + 32 len 4] = unknown_0xa9059cbb(?????)
            _436 = mem[_433]
            mem[mem[64] len floor32(mem[_433])] = mem[_433 + 32 len floor32(mem[_433])]
            mem[mem[64] + floor32(mem[_433]) + -(mem[_433] % 32) + 32 len mem[_433] % 32] = mem[_433 + floor32(mem[_433]) + -(mem[_433] % 32) + 64 len mem[_433] % 32]
            call sub_76748bfe[address(s)].field_0 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _436 + _432 + -mem[64] + 96]
            if return_data.size:
                _656 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_656] = return_data.size
                mem[_656 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require ext_call.success
            if return_data.size:
                require return_data.size == 32
            require sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 <= ext_call.return_data[0]
            require ext_code.size(sub_76748bfe[address(s)].field_0)
            staticcall sub_76748bfe[address(s)].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512):
                revert with 0, 
                            32,
                            43,
                            0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                            mem[mem[64] + 111 len 21]
    else:
        _8 = mem[244]
        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 244, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 244, 32))), 0) - 256 >= 27:
            mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 212
            mem[ceil32(arg1.length) + 180] = arg2.length
            mem[ceil32(arg1.length) + 212 len arg2.length] = arg2[all]
            mem[ceil32(arg1.length) + arg2.length + 212] = 0
            idx = 0
            s = 0
            t = 0
            while idx < arg2.length / 20:
                _332 = mem[ceil32(arg1.length) + (20 * idx) + 212]
                if address(s) >= mem[ceil32(arg1.length) + (20 * idx) + 212 len 20]:
                    mem[mem[64] + 32] = Mask(160, 96, mem[ceil32(arg1.length) + (20 * idx) + 212])
                    mem[mem[64] + 52] = address(s)
                    _339 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    idx = idx + 1
                    s = sha3(mem[_339 + 32 len mem[_339]])
                    t = t
                    continue 
                mem[mem[64] + 32] = address(s)
                mem[mem[64] + 52] = Mask(160, 96, _332)
                _343 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                idx = idx + 1
                s = sha3(mem[_343 + 32 len mem[_343]])
                t = (1 << idx) + t
                continue 
            mem[0] = address(s)
            mem[32] = 3
            require t / 32 < 32
            require not sub_76748bfe[address(s)][0.03125 / t].field_1280
            require t / 32 < 32
            sub_76748bfe[address(s)][0.03125 / t].field_1280 = 1
            require sub_76748bfe[address(s)].field_512
            if sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_76748bfe[address(s)].field_0)
                staticcall sub_76748bfe[address(s)].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_76748bfe[address(s)].field_0)
                _412 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512
                _413 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_413 + 32 len 4] = unknown_0xa9059cbb(?????)
                _416 = mem[_413]
                mem[_412 + 100 len floor32(mem[_413])] = mem[_413 + 32 len floor32(mem[_413])]
                mem[_412 + floor32(mem[_413]) + -(mem[_413] % 32) + 132 len mem[_413] % 32] = mem[_413 + -(mem[_413] % 32) + floor32(mem[_413]) + 64 len mem[_413] % 32]
                call sub_76748bfe[address(s)].field_0.mem[_412 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_412 + 104 len _416 - 4]
                require ext_call.success
                if return_data.size:
                    require return_data.size == 32
                require sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 <= ext_call.return_data[0]
                require ext_code.size(sub_76748bfe[address(s)].field_0)
                staticcall sub_76748bfe[address(s)].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not return_data.size:
                    if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512):
                        revert with 0, 
                                    32,
                                    43,
                                    0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                    mem[_412 + 211 len 21]
                else:
                    if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512):
                        revert with 0, 
                                    32,
                                    43,
                                    0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                    mem[_412 + ceil32(return_data.size) + 212 len 21]
                ('eq', ('ext_call.return_data', 0, 32), ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('div', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))), ('field', 512, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3))))))))
        else:
            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 244, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 244, 32))), 0) - 256) + 27):
                mem[ceil32(arg1.length) + 244] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 244, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 244, 32))), 0) - 256) + 27)
                mem[ceil32(arg1.length) + 276] = mem[180]
                mem[ceil32(arg1.length) + 308] = mem[212]
                signer = erecover(sha3(Mask(160, 96, msg.sender) >> 96), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8')), 0) - 256) + 27 << 248, mem[180], mem[212]) 
                mem[ceil32(arg1.length) + 180] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 244
                mem[ceil32(arg1.length) + 212] = arg2.length
                mem[ceil32(arg1.length) + 244 len arg2.length] = arg2[all]
                mem[ceil32(arg1.length) + arg2.length + 244] = 0
                idx = 0
                s = signer
                t = 0
                while idx < arg2.length / 20:
                    _333 = mem[ceil32(arg1.length) + (20 * idx) + 244]
                    if address(s) >= mem[ceil32(arg1.length) + (20 * idx) + 244 len 20]:
                        mem[mem[64] + 32] = Mask(160, 96, mem[ceil32(arg1.length) + (20 * idx) + 244])
                        mem[mem[64] + 52] = address(s)
                        _348 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        idx = idx + 1
                        s = sha3(mem[_348 + 32 len mem[_348]])
                        t = t
                        continue 
                    mem[mem[64] + 32] = address(s)
                    mem[mem[64] + 52] = Mask(160, 96, _333)
                    _352 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    idx = idx + 1
                    s = sha3(mem[_352 + 32 len mem[_352]])
                    t = (1 << idx) + t
                    continue 
                mem[0] = address(s)
                mem[32] = 3
                require t / 32 < 32
                require not sub_76748bfe[address(s)][0.03125 / t].field_1280
                require t / 32 < 32
                sub_76748bfe[address(s)][0.03125 / t].field_1280 = 1
                require sub_76748bfe[address(s)].field_512
                if sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_76748bfe[address(s)].field_0)
                    staticcall sub_76748bfe[address(s)].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_76748bfe[address(s)].field_0)
                    _417 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512
                    _418 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_418 + 32 len 4] = unknown_0xa9059cbb(?????)
                    _421 = mem[_418]
                    mem[mem[64] len floor32(mem[_418])] = mem[_418 + 32 len floor32(mem[_418])]
                    mem[mem[64] + floor32(mem[_418]) + -(mem[_418] % 32) + 32 len mem[_418] % 32] = mem[_418 + floor32(mem[_418]) + -(mem[_418] % 32) + 64 len mem[_418] % 32]
                    call sub_76748bfe[address(s)].field_0 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _421 + _417 + -mem[64] + 96]
                    if return_data.size:
                        _653 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_653] = return_data.size
                        mem[_653 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    if return_data.size:
                        require return_data.size == 32
                    require sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 <= ext_call.return_data[0]
                    require ext_code.size(sub_76748bfe[address(s)].field_0)
                    staticcall sub_76748bfe[address(s)].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512):
                        revert with 0, 
                                    32,
                                    43,
                                    0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                    mem[mem[64] + 111 len 21]
            else:
                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 244, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 244, 32))), 0) - 256) + 27) != 28:
                    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 212
                    mem[ceil32(arg1.length) + 180] = arg2.length
                    mem[ceil32(arg1.length) + 212 len arg2.length] = arg2[all]
                    mem[ceil32(arg1.length) + arg2.length + 212] = 0
                    idx = 0
                    s = 0
                    t = 0
                    while idx < arg2.length / 20:
                        _335 = mem[ceil32(arg1.length) + (20 * idx) + 212]
                        if address(s) >= mem[ceil32(arg1.length) + (20 * idx) + 212 len 20]:
                            mem[mem[64] + 32] = Mask(160, 96, mem[ceil32(arg1.length) + (20 * idx) + 212])
                            mem[mem[64] + 52] = address(s)
                            _366 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            idx = idx + 1
                            s = sha3(mem[_366 + 32 len mem[_366]])
                            t = t
                            continue 
                        mem[mem[64] + 32] = address(s)
                        mem[mem[64] + 52] = Mask(160, 96, _335)
                        _370 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        idx = idx + 1
                        s = sha3(mem[_370 + 32 len mem[_370]])
                        t = (1 << idx) + t
                        continue 
                    mem[0] = address(s)
                    mem[32] = 3
                    require t / 32 < 32
                    require not sub_76748bfe[address(s)][0.03125 / t].field_1280
                    require t / 32 < 32
                    sub_76748bfe[address(s)][0.03125 / t].field_1280 = 1
                    require sub_76748bfe[address(s)].field_512
                    if sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_76748bfe[address(s)].field_0)
                        staticcall sub_76748bfe[address(s)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_76748bfe[address(s)].field_0)
                        _427 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512
                        _428 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_428 + 32 len 4] = unknown_0xa9059cbb(?????)
                        _431 = mem[_428]
                        mem[_427 + 100 len floor32(mem[_428])] = mem[_428 + 32 len floor32(mem[_428])]
                        mem[_427 + floor32(mem[_428]) + -(mem[_428] % 32) + 132 len mem[_428] % 32] = mem[_428 + -(mem[_428] % 32) + floor32(mem[_428]) + 64 len mem[_428] % 32]
                        call sub_76748bfe[address(s)].field_0.mem[_427 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_427 + 104 len _431 - 4]
                        require ext_call.success
                        if return_data.size:
                            require return_data.size == 32
                        require sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 <= ext_call.return_data[0]
                        require ext_code.size(sub_76748bfe[address(s)].field_0)
                        staticcall sub_76748bfe[address(s)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not return_data.size:
                            if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512):
                                revert with 0, 
                                            32,
                                            43,
                                            0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                            mem[_427 + 211 len 21]
                        else:
                            if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512):
                                revert with 0, 
                                            32,
                                            43,
                                            0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                            mem[_427 + ceil32(return_data.size) + 212 len 21]
                        ('eq', ('ext_call.return_data', 0, 32), ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('div', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))), ('field', 512, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3))))))))
                else:
                    mem[ceil32(arg1.length) + 244] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 244, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 244, 32))), 0) - 256) + 27)
                    mem[ceil32(arg1.length) + 276] = mem[180]
                    mem[ceil32(arg1.length) + 308] = mem[212]
                    signer = erecover(sha3(Mask(160, 96, msg.sender) >> 96), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_8')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_8')), 0) - 256) + 27 << 248, mem[180], mem[212]) 
                    mem[ceil32(arg1.length) + 180] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 244
                    mem[ceil32(arg1.length) + 212] = arg2.length
                    mem[ceil32(arg1.length) + 244 len arg2.length] = arg2[all]
                    mem[ceil32(arg1.length) + arg2.length + 244] = 0
                    idx = 0
                    s = signer
                    t = 0
                    while idx < arg2.length / 20:
                        _334 = mem[ceil32(arg1.length) + (20 * idx) + 244]
                        if address(s) >= mem[ceil32(arg1.length) + (20 * idx) + 244 len 20]:
                            mem[mem[64] + 32] = Mask(160, 96, mem[ceil32(arg1.length) + (20 * idx) + 244])
                            mem[mem[64] + 52] = address(s)
                            _357 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            idx = idx + 1
                            s = sha3(mem[_357 + 32 len mem[_357]])
                            t = t
                            continue 
                        mem[mem[64] + 32] = address(s)
                        mem[mem[64] + 52] = Mask(160, 96, _334)
                        _361 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        idx = idx + 1
                        s = sha3(mem[_361 + 32 len mem[_361]])
                        t = (1 << idx) + t
                        continue 
                    mem[0] = address(s)
                    mem[32] = 3
                    require t / 32 < 32
                    require not sub_76748bfe[address(s)][0.03125 / t].field_1280
                    require t / 32 < 32
                    sub_76748bfe[address(s)][0.03125 / t].field_1280 = 1
                    require sub_76748bfe[address(s)].field_512
                    if sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_76748bfe[address(s)].field_0)
                        staticcall sub_76748bfe[address(s)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_76748bfe[address(s)].field_0)
                        _422 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512
                        _423 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_423 + 32 len 4] = unknown_0xa9059cbb(?????)
                        _426 = mem[_423]
                        mem[mem[64] len floor32(mem[_423])] = mem[_423 + 32 len floor32(mem[_423])]
                        mem[mem[64] + floor32(mem[_423]) + -(mem[_423] % 32) + 32 len mem[_423] % 32] = mem[_423 + floor32(mem[_423]) + -(mem[_423] % 32) + 64 len mem[_423] % 32]
                        call sub_76748bfe[address(s)].field_0 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _426 + _422 + -mem[64] + 96]
                        if return_data.size:
                            _654 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_654] = return_data.size
                            mem[_654 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_call.success
                        if return_data.size:
                            require return_data.size == 32
                        require sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 <= ext_call.return_data[0]
                        require ext_code.size(sub_76748bfe[address(s)].field_0)
                        staticcall sub_76748bfe[address(s)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512):
                            revert with 0, 
                                        32,
                                        43,
                                        0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                        mem[mem[64] + 111 len 21]
    emit 0x641d546b: address(s), t, msg.sender
}

function sub_3f22fa97(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len arg4.length] = arg4[all]
    mem[(32 * arg1.length) + (32 * arg2.length) + arg4.length + 192] = 0
    require not stor2
    stor2 = 1
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 192] = arg1.length
    mem[64] = (64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _192 = mem[(32 * idx) + 128]
            mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 228] = this.address
            require ext_code.size(address(_192))
            staticcall address(_192).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 192]
            mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224] = ext_call.return_data[0]
            require idx < arg1.length
            _226 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _234 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 228] = arg3
            mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 260] = _234
            require ext_code.size(address(_226))
            call address(_226).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg3), _234
            mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            idx = idx + 1
            continue 
        _187 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])]
        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + -(mem[(32 * arg1.length) + (32 * arg2.length) + 160] % 32) + 256 len mem[(32 * arg1.length) + (32 * arg2.length) + 160] % 32] = mem[(32 * arg1.length) + (32 * arg2.length) + floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + -(mem[(32 * arg1.length) + (32 * arg2.length) + 160] % 32) + 224 len mem[(32 * arg1.length) + (32 * arg2.length) + 160] % 32]
        call arg3.mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224 len 4] with:
             gas gas_remaining wei
            args mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 228 len _187 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Invalid arbitrary call'
            idx = 0
            while idx < arg1.length:
                require idx < mem[(32 * arg1.length) + 128]
                _512 = mem[(32 * arg1.length) + (32 * idx) + 160]
                if not mem[(32 * arg1.length) + (32 * idx) + 160]:
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 192]
                    _521 = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224]
                    require mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224] >= mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224]
                    require idx < arg1.length
                    _537 = mem[(32 * idx) + 128]
                    mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 228] = this.address
                    require ext_code.size(address(_537))
                    staticcall address(_537).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= _521
                    if feesReceiverAddress != this.address:
                        require idx < arg1.length
                        _585 = mem[(32 * idx) + 128]
                        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 228] = feesReceiverAddress
                        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 260] = 0
                        require ext_code.size(address(_585))
                        call address(_585).0xa9059cbb with:
                             gas gas_remaining wei
                            args feesReceiverAddress, 0
                        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                else:
                    require feesPercent * mem[(32 * arg1.length) + (32 * idx) + 160] / mem[(32 * arg1.length) + (32 * idx) + 160] == feesPercent
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 192]
                    _528 = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224]
                    require (feesPercent * mem[(32 * arg1.length) + (32 * idx) + 160] / 100) + mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224] >= mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224]
                    require idx < arg1.length
                    _552 = mem[(32 * idx) + 128]
                    mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 228] = this.address
                    require ext_code.size(address(_552))
                    staticcall address(_552).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= (feesPercent * _512 / 100) + _528
                    if feesReceiverAddress != this.address:
                        require idx < arg1.length
                        _600 = mem[(32 * idx) + 128]
                        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 228] = feesReceiverAddress
                        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 260] = feesPercent * _512 / 100
                        require ext_code.size(address(_600))
                        call address(_600).0xa9059cbb with:
                             gas gas_remaining wei
                            args feesReceiverAddress, feesPercent * _512 / 100
                        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                idx = idx + 1
                continue 
        else:
            mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224] = return_data.size
            mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Invalid arbitrary call'
            idx = 0
            while idx < arg1.length:
                require idx < mem[(32 * arg1.length) + 128]
                _513 = mem[(32 * arg1.length) + (32 * idx) + 160]
                if not mem[(32 * arg1.length) + (32 * idx) + 160]:
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 192]
                    _523 = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224]
                    require mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224] >= mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224]
                    require idx < arg1.length
                    _541 = mem[(32 * idx) + 128]
                    mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 229] = this.address
                    require ext_code.size(address(_541))
                    staticcall address(_541).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 225] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= _523
                    if feesReceiverAddress != this.address:
                        require idx < arg1.length
                        _589 = mem[(32 * idx) + 128]
                        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 229] = feesReceiverAddress
                        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 261] = 0
                        require ext_code.size(address(_589))
                        call address(_589).0xa9059cbb with:
                             gas gas_remaining wei
                            args feesReceiverAddress, 0
                        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 225] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                else:
                    require feesPercent * mem[(32 * arg1.length) + (32 * idx) + 160] / mem[(32 * arg1.length) + (32 * idx) + 160] == feesPercent
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 192]
                    _529 = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224]
                    require (feesPercent * mem[(32 * arg1.length) + (32 * idx) + 160] / 100) + mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224] >= mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224]
                    require idx < arg1.length
                    _555 = mem[(32 * idx) + 128]
                    mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 229] = this.address
                    require ext_code.size(address(_555))
                    staticcall address(_555).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 225] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= (feesPercent * _513 / 100) + _529
                    if feesReceiverAddress != this.address:
                        require idx < arg1.length
                        _603 = mem[(32 * idx) + 128]
                        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 229] = feesReceiverAddress
                        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 261] = feesPercent * _513 / 100
                        require ext_code.size(address(_603))
                        call address(_603).0xa9059cbb with:
                             gas gas_remaining wei
                            args feesReceiverAddress, feesPercent * _513 / 100
                        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 225] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                idx = idx + 1
                continue 
    else:
        mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224 len 32 * arg1.length] = code.data[5475 len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _195 = mem[(32 * idx) + 128]
            mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 228] = this.address
            require ext_code.size(address(_195))
            staticcall address(_195).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 192]
            mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224] = ext_call.return_data[0]
            require idx < arg1.length
            _230 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _239 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 228] = arg3
            mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 260] = _239
            require ext_code.size(address(_230))
            call address(_230).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg3), _239
            mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            idx = idx + 1
            continue 
        _190 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])]
        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + -(mem[(32 * arg1.length) + (32 * arg2.length) + 160] % 32) + 256 len mem[(32 * arg1.length) + (32 * arg2.length) + 160] % 32] = mem[(32 * arg1.length) + (32 * arg2.length) + floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + -(mem[(32 * arg1.length) + (32 * arg2.length) + 160] % 32) + 224 len mem[(32 * arg1.length) + (32 * arg2.length) + 160] % 32]
        call arg3.mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224 len 4] with:
             gas gas_remaining wei
            args mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 228 len _190 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Invalid arbitrary call'
            idx = 0
            while idx < arg1.length:
                require idx < mem[(32 * arg1.length) + 128]
                _514 = mem[(32 * arg1.length) + (32 * idx) + 160]
                if not mem[(32 * arg1.length) + (32 * idx) + 160]:
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 192]
                    _525 = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224]
                    require mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224] >= mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224]
                    require idx < arg1.length
                    _545 = mem[(32 * idx) + 128]
                    mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 228] = this.address
                    require ext_code.size(address(_545))
                    staticcall address(_545).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= _525
                    if feesReceiverAddress != this.address:
                        require idx < arg1.length
                        _593 = mem[(32 * idx) + 128]
                        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 228] = feesReceiverAddress
                        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 260] = 0
                        require ext_code.size(address(_593))
                        call address(_593).0xa9059cbb with:
                             gas gas_remaining wei
                            args feesReceiverAddress, 0
                        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                else:
                    require feesPercent * mem[(32 * arg1.length) + (32 * idx) + 160] / mem[(32 * arg1.length) + (32 * idx) + 160] == feesPercent
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 192]
                    _530 = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224]
                    require (feesPercent * mem[(32 * arg1.length) + (32 * idx) + 160] / 100) + mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224] >= mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224]
                    require idx < arg1.length
                    _558 = mem[(32 * idx) + 128]
                    mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 228] = this.address
                    require ext_code.size(address(_558))
                    staticcall address(_558).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= (feesPercent * _514 / 100) + _530
                    if feesReceiverAddress != this.address:
                        require idx < arg1.length
                        _606 = mem[(32 * idx) + 128]
                        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 228] = feesReceiverAddress
                        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 260] = feesPercent * _514 / 100
                        require ext_code.size(address(_606))
                        call address(_606).0xa9059cbb with:
                             gas gas_remaining wei
                            args feesReceiverAddress, feesPercent * _514 / 100
                        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                idx = idx + 1
                continue 
        else:
            mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224] = return_data.size
            mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Invalid arbitrary call'
            idx = 0
            while idx < arg1.length:
                require idx < mem[(32 * arg1.length) + 128]
                _515 = mem[(32 * arg1.length) + (32 * idx) + 160]
                if not mem[(32 * arg1.length) + (32 * idx) + 160]:
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 192]
                    _527 = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224]
                    require mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224] >= mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224]
                    require idx < arg1.length
                    _549 = mem[(32 * idx) + 128]
                    mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 229] = this.address
                    require ext_code.size(address(_549))
                    staticcall address(_549).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 225] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= _527
                    if feesReceiverAddress != this.address:
                        require idx < arg1.length
                        _597 = mem[(32 * idx) + 128]
                        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 229] = feesReceiverAddress
                        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 261] = 0
                        require ext_code.size(address(_597))
                        call address(_597).0xa9059cbb with:
                             gas gas_remaining wei
                            args feesReceiverAddress, 0
                        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 225] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                else:
                    require feesPercent * mem[(32 * arg1.length) + (32 * idx) + 160] / mem[(32 * arg1.length) + (32 * idx) + 160] == feesPercent
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 192]
                    _531 = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224]
                    require (feesPercent * mem[(32 * arg1.length) + (32 * idx) + 160] / 100) + mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224] >= mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + (32 * idx) + 224]
                    require idx < arg1.length
                    _561 = mem[(32 * idx) + 128]
                    mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 229] = this.address
                    require ext_code.size(address(_561))
                    staticcall address(_561).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 225] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= (feesPercent * _515 / 100) + _531
                    if feesReceiverAddress != this.address:
                        require idx < arg1.length
                        _609 = mem[(32 * idx) + 128]
                        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 229] = feesReceiverAddress
                        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 261] = feesPercent * _515 / 100
                        require ext_code.size(address(_609))
                        call address(_609).0xa9059cbb with:
                             gas gas_remaining wei
                            args feesReceiverAddress, feesPercent * _515 / 100
                        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 225] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                idx = idx + 1
                continue 
    stor2 = 0
}



}

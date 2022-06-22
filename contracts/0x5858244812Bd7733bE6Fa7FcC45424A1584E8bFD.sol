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

function sub_3f22fa97(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
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
        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])]
        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + -(mem[(32 * arg1.length) + (32 * arg2.length) + 160] % 32) + 256 len mem[(32 * arg1.length) + (32 * arg2.length) + 160] % 32] = mem[(32 * arg1.length) + (32 * arg2.length) + floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + -(mem[(32 * arg1.length) + (32 * arg2.length) + 160] % 32) + 224 len mem[(32 * arg1.length) + (32 * arg2.length) + 160] % 32]
        call arg3.mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224 len 4] with:
             gas gas_remaining wei
            args mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 228 len mem[(32 * arg1.length) + (32 * arg2.length) + 160] - 4]
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
        mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224 len 32 * arg1.length] = code.data[5638 len 32 * arg1.length]
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
        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])]
        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + -(mem[(32 * arg1.length) + (32 * arg2.length) + 160] % 32) + 256 len mem[(32 * arg1.length) + (32 * arg2.length) + 160] % 32] = mem[(32 * arg1.length) + (32 * arg2.length) + floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + -(mem[(32 * arg1.length) + (32 * arg2.length) + 160] % 32) + 224 len mem[(32 * arg1.length) + (32 * arg2.length) + 160] % 32]
        call arg3.mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224 len 4] with:
             gas gas_remaining wei
            args mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 228 len mem[(32 * arg1.length) + (32 * arg2.length) + 160] - 4]
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
    mem[180] = '\x19Ethereum Signed Message:\n32'
    mem[208] = sha3(Mask(160, 96, msg.sender) >> 96)
    mem[148] = 60
    mem[240] = arg1.length
    mem[272 len arg1.length] = arg1[all]
    mem[arg1.length + 272] = 0
    if arg1.length != 65:
        mem[ceil32(arg1.length) + 304] = 0
        mem[ceil32(arg1.length) + 272] = 20
        _17 = sha3(mem[ceil32(arg1.length) + 304 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 304 len -arg1.length + ceil32(arg1.length)]])
        mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 356
        mem[ceil32(arg1.length) + 324] = arg2.length
        mem[ceil32(arg1.length) + 356 len arg2.length] = arg2[all]
        mem[ceil32(arg1.length) + arg2.length + 356] = 0
        idx = 0
        s = _17
        t = 0
        while idx < arg2.length / 20:
            _361 = mem[ceil32(arg1.length) + (20 * idx) + 356]
            if address(s) >= mem[ceil32(arg1.length) + (20 * idx) + 356 len 20]:
                mem[mem[64] + 32] = Mask(160, 96, mem[ceil32(arg1.length) + (20 * idx) + 356])
                mem[mem[64] + 52] = address(s)
                _400 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                idx = idx + 1
                s = sha3(mem[_400 + 32 len mem[_400]])
                t = t
                continue 
            mem[mem[64] + 32] = address(s)
            mem[mem[64] + 52] = Mask(160, 96, _361)
            _404 = mem[64]
            mem[mem[64]] = 40
            mem[64] = mem[64] + 72
            idx = idx + 1
            s = sha3(mem[_404 + 32 len mem[_404]])
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
            _457 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512
            _458 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_458 + 32 len 4] = unknown_0xa9059cbb(?????)
            _461 = mem[_458]
            mem[_457 + 100 len floor32(mem[_458])] = mem[_458 + 32 len floor32(mem[_458])]
            mem[_457 + floor32(mem[_458]) + -(mem[_458] % 32) + 132 len mem[_458] % 32] = mem[_458 + -(mem[_458] % 32) + floor32(mem[_458]) + 64 len mem[_458] % 32]
            call sub_76748bfe[address(s)].field_0.mem[_457 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_457 + 104 len _461 - 4]
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
                                mem[_457 + 211 len 21]
            else:
                if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512):
                    revert with 0, 
                                32,
                                43,
                                0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                mem[_457 + ceil32(return_data.size) + 212 len 21]
            ('eq', ('ext_call.return_data', 0, 32), ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('div', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))), ('field', 512, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3))))))))
    else:
        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 336, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 336, 32))), 0) - 256 >= 27:
            mem[ceil32(arg1.length) + 304] = 0
            mem[ceil32(arg1.length) + 272] = 20
            _30 = sha3(mem[ceil32(arg1.length) + 304 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 304 len -arg1.length + ceil32(arg1.length)]])
            mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 356
            mem[ceil32(arg1.length) + 324] = arg2.length
            mem[ceil32(arg1.length) + 356 len arg2.length] = arg2[all]
            mem[ceil32(arg1.length) + arg2.length + 356] = 0
            idx = 0
            s = _30
            t = 0
            while idx < arg2.length / 20:
                _357 = mem[ceil32(arg1.length) + (20 * idx) + 356]
                if address(s) >= mem[ceil32(arg1.length) + (20 * idx) + 356 len 20]:
                    mem[mem[64] + 32] = Mask(160, 96, mem[ceil32(arg1.length) + (20 * idx) + 356])
                    mem[mem[64] + 52] = address(s)
                    _364 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    idx = idx + 1
                    s = sha3(mem[_364 + 32 len mem[_364]])
                    t = t
                    continue 
                mem[mem[64] + 32] = address(s)
                mem[mem[64] + 52] = Mask(160, 96, _357)
                _368 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                idx = idx + 1
                s = sha3(mem[_368 + 32 len mem[_368]])
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
                _437 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512
                _438 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_438 + 32 len 4] = unknown_0xa9059cbb(?????)
                _441 = mem[_438]
                mem[_437 + 100 len floor32(mem[_438])] = mem[_438 + 32 len floor32(mem[_438])]
                mem[_437 + floor32(mem[_438]) + -(mem[_438] % 32) + 132 len mem[_438] % 32] = mem[_438 + -(mem[_438] % 32) + floor32(mem[_438]) + 64 len mem[_438] % 32]
                call sub_76748bfe[address(s)].field_0.mem[_437 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_437 + 104 len _441 - 4]
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
                                    mem[_437 + 211 len 21]
                else:
                    if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512):
                        revert with 0, 
                                    32,
                                    43,
                                    0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                    mem[_437 + ceil32(return_data.size) + 212 len 21]
                ('eq', ('ext_call.return_data', 0, 32), ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('div', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))), ('field', 512, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3))))))))
        else:
            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 336, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 336, 32))), 0) - 256) + 27):
                mem[ceil32(arg1.length) + 368] = mem[272]
                mem[ceil32(arg1.length) + 400] = mem[304]
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Mask(160, 96, msg.sender) >> 96)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 336, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 336, 32))), 0) - 256) + 27 << 248, mem[272], mem[304]) 
                mem[ceil32(arg1.length) + 272] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg1.length) + 336] = address(signer)
                mem[ceil32(arg1.length) + 304] = 20
                mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 388
                mem[ceil32(arg1.length) + 356] = arg2.length
                mem[ceil32(arg1.length) + 388 len arg2.length] = arg2[all]
                mem[ceil32(arg1.length) + arg2.length + 388] = 0
                idx = 0
                s = 0
                t = 0
                while idx < arg2.length / 20:
                    _358 = mem[ceil32(arg1.length) + (20 * idx) + 388]
                    if address(s + sha3(mem[ceil32(arg1.length) + 336 len 20])) >= mem[ceil32(arg1.length) + (20 * idx) + 388 len 20]:
                        mem[mem[64] + 32] = Mask(160, 96, mem[ceil32(arg1.length) + (20 * idx) + 388])
                        mem[mem[64] + 52] = address(s + sha3(mem[ceil32(arg1.length) + 336 len 20]))
                        _373 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        idx = idx + 1
                        s = sha3(mem[_373 + 32 len mem[_373]])
                        t = t
                        continue 
                    mem[mem[64] + 32] = address(s + sha3(mem[ceil32(arg1.length) + 336 len 20]))
                    mem[mem[64] + 52] = Mask(160, 96, _358)
                    _377 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    idx = idx + 1
                    s = sha3(mem[_377 + 32 len mem[_377]])
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
                    _442 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512
                    _443 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_443 + 32 len 4] = unknown_0xa9059cbb(?????)
                    _446 = mem[_443]
                    mem[_442 + 100 len floor32(mem[_443])] = mem[_443 + 32 len floor32(mem[_443])]
                    mem[_442 + floor32(mem[_443]) + -(mem[_443] % 32) + 132 len mem[_443] % 32] = mem[_443 + -(mem[_443] % 32) + floor32(mem[_443]) + 64 len mem[_443] % 32]
                    call sub_76748bfe[address(s)].field_0.mem[_442 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[_442 + 104 len _446 - 4]
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
                                        mem[_442 + 211 len 21]
                    else:
                        if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512):
                            revert with 0, 
                                        32,
                                        43,
                                        0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                        mem[_442 + ceil32(return_data.size) + 212 len 21]
                    ('eq', ('ext_call.return_data', 0, 32), ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('div', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))), ('field', 512, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3))))))))
            else:
                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 336, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 336, 32))), 0) - 256) + 27) != 28:
                    mem[ceil32(arg1.length) + 304] = 0
                    mem[ceil32(arg1.length) + 272] = 20
                    _51 = sha3(mem[ceil32(arg1.length) + 304 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 304 len -arg1.length + ceil32(arg1.length)]])
                    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 356
                    mem[ceil32(arg1.length) + 324] = arg2.length
                    mem[ceil32(arg1.length) + 356 len arg2.length] = arg2[all]
                    mem[ceil32(arg1.length) + arg2.length + 356] = 0
                    idx = 0
                    s = _51
                    t = 0
                    while idx < arg2.length / 20:
                        _360 = mem[ceil32(arg1.length) + (20 * idx) + 356]
                        if address(s) >= mem[ceil32(arg1.length) + (20 * idx) + 356 len 20]:
                            mem[mem[64] + 32] = Mask(160, 96, mem[ceil32(arg1.length) + (20 * idx) + 356])
                            mem[mem[64] + 52] = address(s)
                            _391 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            idx = idx + 1
                            s = sha3(mem[_391 + 32 len mem[_391]])
                            t = t
                            continue 
                        mem[mem[64] + 32] = address(s)
                        mem[mem[64] + 52] = Mask(160, 96, _360)
                        _395 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        idx = idx + 1
                        s = sha3(mem[_395 + 32 len mem[_395]])
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
                        _452 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512
                        _453 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_453 + 32 len 4] = unknown_0xa9059cbb(?????)
                        _456 = mem[_453]
                        mem[_452 + 100 len floor32(mem[_453])] = mem[_453 + 32 len floor32(mem[_453])]
                        mem[_452 + floor32(mem[_453]) + -(mem[_453] % 32) + 132 len mem[_453] % 32] = mem[_453 + -(mem[_453] % 32) + floor32(mem[_453]) + 64 len mem[_453] % 32]
                        call sub_76748bfe[address(s)].field_0.mem[_452 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_452 + 104 len _456 - 4]
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
                                            mem[_452 + 211 len 21]
                        else:
                            if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512):
                                revert with 0, 
                                            32,
                                            43,
                                            0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                            mem[_452 + ceil32(return_data.size) + 212 len 21]
                        ('eq', ('ext_call.return_data', 0, 32), ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('div', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))), ('field', 512, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3))))))))
                else:
                    mem[ceil32(arg1.length) + 368] = mem[272]
                    mem[ceil32(arg1.length) + 400] = mem[304]
                    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Mask(160, 96, msg.sender) >> 96)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 336, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 336, 32))), 0) - 256) + 27 << 248, mem[272], mem[304]) 
                    mem[ceil32(arg1.length) + 272] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg1.length) + 336] = address(signer)
                    mem[ceil32(arg1.length) + 304] = 20
                    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 388
                    mem[ceil32(arg1.length) + 356] = arg2.length
                    mem[ceil32(arg1.length) + 388 len arg2.length] = arg2[all]
                    mem[ceil32(arg1.length) + arg2.length + 388] = 0
                    idx = 0
                    s = 0
                    t = 0
                    while idx < arg2.length / 20:
                        _359 = mem[ceil32(arg1.length) + (20 * idx) + 388]
                        if address(s + sha3(mem[ceil32(arg1.length) + 336 len 20])) >= mem[ceil32(arg1.length) + (20 * idx) + 388 len 20]:
                            mem[mem[64] + 32] = Mask(160, 96, mem[ceil32(arg1.length) + (20 * idx) + 388])
                            mem[mem[64] + 52] = address(s + sha3(mem[ceil32(arg1.length) + 336 len 20]))
                            _382 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            idx = idx + 1
                            s = sha3(mem[_382 + 32 len mem[_382]])
                            t = t
                            continue 
                        mem[mem[64] + 32] = address(s + sha3(mem[ceil32(arg1.length) + 336 len 20]))
                        mem[mem[64] + 52] = Mask(160, 96, _359)
                        _386 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        idx = idx + 1
                        s = sha3(mem[_386 + 32 len mem[_386]])
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
                        _447 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512
                        _448 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_448 + 32 len 4] = unknown_0xa9059cbb(?????)
                        _451 = mem[_448]
                        mem[_447 + 100 len floor32(mem[_448])] = mem[_448 + 32 len floor32(mem[_448])]
                        mem[_447 + floor32(mem[_448]) + -(mem[_448] % 32) + 132 len mem[_448] % 32] = mem[_448 + -(mem[_448] % 32) + floor32(mem[_448]) + 64 len mem[_448] % 32]
                        call sub_76748bfe[address(s)].field_0.mem[_447 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_447 + 104 len _451 - 4]
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
                                            mem[_447 + 211 len 21]
                        else:
                            if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512):
                                revert with 0, 
                                            32,
                                            43,
                                            0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                            mem[_447 + ceil32(return_data.size) + 212 len 21]
                        ('eq', ('ext_call.return_data', 0, 32), ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('div', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))), ('field', 512, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3))))))))
    emit 0x641d546b: address(s), t, msg.sender
}



}

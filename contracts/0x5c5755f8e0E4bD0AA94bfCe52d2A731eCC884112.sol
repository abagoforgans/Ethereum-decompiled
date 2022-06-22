contract main {




// =====================  Runtime code  =====================


const sub_54ff60c5(?) = 32

const sub_72ab7040(?) = 1024

const ETHER_ADDRESS = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


address feesReceiverAddress;
uint256 feesPercent;
uint8 stor2;
address owner; offset 8
mapping of struct sub_76748bfe;

function sub_76748bfe(?) payable {
    require calldata.size - 4 >= 32
    return sub_76748bfe[arg1].field_0, 
           sub_76748bfe[arg1].field_256,
           sub_76748bfe[arg1].field_512,
           sub_76748bfe[arg1].field_768,
           sub_76748bfe[arg1].field_1024
}

function owner() payable {
    return owner
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

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_746aa14f(?) payable {
    require calldata.size - 4 >= 64
    require arg2 / 32 < 32
    return bool(sub_76748bfe[address(arg1)][0.03125 / arg2].field_1280 and 1 << arg2 % 32)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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
        mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224 len 32 * arg1.length] = code.data[7894 len 32 * arg1.length]
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

function sub_6831c9a5(?) payable {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require not stor2
    mem[128] = address(arg2)
    mem[148] = arg3
    mem[96] = 52
    mem[212] = '\x19Ethereum Signed Message:\n32'
    mem[240] = sha3(arg2, arg3)
    mem[180] = 60
    mem[272] = arg4.length
    mem[304 len arg4.length] = arg4[all]
    mem[arg4.length + 304] = 0
    if arg4.length != 65:
        mem[ceil32(arg4.length) + 336] = 0
        mem[ceil32(arg4.length) + 304] = 20
        _17 = sha3(mem[ceil32(arg4.length) + 336 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 336 len -arg4.length + ceil32(arg4.length)]])
        mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + 388
        mem[ceil32(arg4.length) + 356] = arg5.length
        mem[ceil32(arg4.length) + 388 len arg5.length] = arg5[all]
        mem[ceil32(arg4.length) + arg5.length + 388] = 0
        idx = 0
        s = _17
        t = 0
        while idx < arg5.length / 20:
            _8211 = mem[ceil32(arg4.length) + (20 * idx) + 388]
            if address(s) >= mem[ceil32(arg4.length) + (20 * idx) + 388 len 20]:
                mem[mem[64] + 32] = Mask(160, 96, mem[ceil32(arg4.length) + (20 * idx) + 388])
                mem[mem[64] + 52] = address(s)
                _8250 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                idx = idx + 1
                s = sha3(mem[_8250 + 32 len mem[_8250]])
                t = t
                continue 
            mem[mem[64] + 32] = address(s)
            mem[mem[64] + 52] = Mask(160, 96, _8211)
            _8254 = mem[64]
            mem[mem[64]] = 40
            mem[64] = mem[64] + 72
            idx = idx + 1
            s = sha3(mem[_8254 + 32 len mem[_8254]])
            t = (1 << idx) + t
            continue 
        mem[0] = address(s)
        mem[32] = 3
        require t / 32 < 32
        require not sub_76748bfe[address(s)][0.03125 / t].field_1280
        require t / 32 < 32
        sub_76748bfe[address(s)][0.03125 / t].field_1280 = 1
        require sub_76748bfe[address(s)].field_512
        if not sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512:
            require 0 <= sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512
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
                _8372 = mem[64]
                mem[mem[64] + 36] = arg2
                mem[mem[64] + 68] = sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512
                _8373 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_8373 + 32 len 4] = unknown_0xa9059cbb(?????)
                _8376 = mem[_8373]
                mem[_8372 + 100 len floor32(mem[_8373])] = mem[_8373 + 32 len floor32(mem[_8373])]
                mem[_8372 + floor32(mem[_8373]) + -(mem[_8373] % 32) + 132 len mem[_8373] % 32] = mem[_8373 + -(mem[_8373] % 32) + floor32(mem[_8373]) + 64 len mem[_8373] % 32]
                call sub_76748bfe[address(s)].field_0.mem[_8372 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_8372 + 104 len _8376 - 4]
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
                                    mem[_8372 + 211 len 21]
                else:
                    if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512):
                        revert with 0, 
                                    32,
                                    43,
                                    0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                    mem[_8372 + ceil32(return_data.size) + 212 len 21]
                ('eq', ('ext_call.return_data', 0, 32), ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('div', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))), ('field', 512, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3))))))))
            emit 0x641d546b: address(s), t, msg.sender
            require ext_code.size(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)
            staticcall 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not sub_76748bfe[address(s)].field_0:
                require 0 <= msg.value
            else:
                require ext_code.size(sub_76748bfe[address(s)].field_0)
                call sub_76748bfe[address(s)].field_0.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
            if sub_76748bfe[address(s)].field_0 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if sub_76748bfe[address(s)].field_0:
                    require ext_code.size(sub_76748bfe[address(s)].field_0)
                    call sub_76748bfe[address(s)].field_0.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                require ext_code.size(arg1)
                if not sub_76748bfe[address(s)].field_0:
                    if not sub_76748bfe[address(s)].field_0:
                        call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                           value msg.value wei
                             gas gas_remaining wei
                            args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, msg.value, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                    else:
                        call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                           value msg.value wei
                             gas gas_remaining wei
                            args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                else:
                    if not sub_76748bfe[address(s)].field_0:
                        call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                           value msg.value wei
                             gas gas_remaining wei
                            args sub_76748bfe[address(s)].field_0, msg.value, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                    else:
                        call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                           value msg.value wei
                             gas gas_remaining wei
                            args sub_76748bfe[address(s)].field_0, 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        else:
            require arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 == arg3
            require arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100 <= sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512
            if (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512) - (arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100):
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_76748bfe[address(s)].field_0)
                staticcall sub_76748bfe[address(s)].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_76748bfe[address(s)].field_0)
                _8402 = mem[64]
                mem[mem[64] + 36] = arg2
                mem[mem[64] + 68] = (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512) - (arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100)
                _8403 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_8403 + 32 len 4] = unknown_0xa9059cbb(?????)
                _8406 = mem[_8403]
                mem[_8402 + 100 len floor32(mem[_8403])] = mem[_8403 + 32 len floor32(mem[_8403])]
                mem[_8402 + floor32(mem[_8403]) + -(mem[_8403] % 32) + 132 len mem[_8403] % 32] = mem[_8403 + -(mem[_8403] % 32) + floor32(mem[_8403]) + 64 len mem[_8403] % 32]
                call sub_76748bfe[address(s)].field_0.mem[_8402 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_8402 + 104 len _8406 - 4]
                require ext_call.success
                if return_data.size:
                    require return_data.size == 32
                require (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512) - (arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100) <= ext_call.return_data[0]
                require ext_code.size(sub_76748bfe[address(s)].field_0)
                staticcall sub_76748bfe[address(s)].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not return_data.size:
                    if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512) + (arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100):
                        revert with 0, 
                                    32,
                                    43,
                                    0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                    mem[_8402 + 211 len 21]
                else:
                    if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512) + (arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100):
                        revert with 0, 
                                    32,
                                    43,
                                    0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                    mem[_8402 + ceil32(return_data.size) + 212 len 21]
                ('eq', ('ext_call.return_data', 0, 32), ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('div', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))), ('field', 512, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))))), ('div', ('mul', ('param', 'arg3'), ('div', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))), ('field', 512, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))))), 100)))
            emit 0x641d546b: address(s), t, msg.sender
            require ext_code.size(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)
            staticcall 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not sub_76748bfe[address(s)].field_0:
                require arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100 <= msg.value
            else:
                require ext_code.size(sub_76748bfe[address(s)].field_0)
                call sub_76748bfe[address(s)].field_0.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
            if sub_76748bfe[address(s)].field_0 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if sub_76748bfe[address(s)].field_0:
                    require ext_code.size(sub_76748bfe[address(s)].field_0)
                    call sub_76748bfe[address(s)].field_0.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                require ext_code.size(arg1)
                if not sub_76748bfe[address(s)].field_0:
                    if not sub_76748bfe[address(s)].field_0:
                        call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                           value msg.value wei
                             gas gas_remaining wei
                            args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, msg.value, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                    else:
                        call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                           value msg.value wei
                             gas gas_remaining wei
                            args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                else:
                    if not sub_76748bfe[address(s)].field_0:
                        call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                           value msg.value wei
                             gas gas_remaining wei
                            args sub_76748bfe[address(s)].field_0, msg.value, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                    else:
                        call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                           value msg.value wei
                             gas gas_remaining wei
                            args sub_76748bfe[address(s)].field_0, arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 368, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 368, 32))), 0) - 256 >= 27:
            mem[ceil32(arg4.length) + 336] = 0
            mem[ceil32(arg4.length) + 304] = 20
            _30 = sha3(mem[ceil32(arg4.length) + 336 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 336 len -arg4.length + ceil32(arg4.length)]])
            mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + 388
            mem[ceil32(arg4.length) + 356] = arg5.length
            mem[ceil32(arg4.length) + 388 len arg5.length] = arg5[all]
            mem[ceil32(arg4.length) + arg5.length + 388] = 0
            idx = 0
            s = _30
            t = 0
            while idx < arg5.length / 20:
                _8207 = mem[ceil32(arg4.length) + (20 * idx) + 388]
                if address(s) >= mem[ceil32(arg4.length) + (20 * idx) + 388 len 20]:
                    mem[mem[64] + 32] = Mask(160, 96, mem[ceil32(arg4.length) + (20 * idx) + 388])
                    mem[mem[64] + 52] = address(s)
                    _8214 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    idx = idx + 1
                    s = sha3(mem[_8214 + 32 len mem[_8214]])
                    t = t
                    continue 
                mem[mem[64] + 32] = address(s)
                mem[mem[64] + 52] = Mask(160, 96, _8207)
                _8218 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                idx = idx + 1
                s = sha3(mem[_8218 + 32 len mem[_8218]])
                t = (1 << idx) + t
                continue 
            mem[0] = address(s)
            mem[32] = 3
            require t / 32 < 32
            require not sub_76748bfe[address(s)][0.03125 / t].field_1280
            require t / 32 < 32
            sub_76748bfe[address(s)][0.03125 / t].field_1280 = 1
            require sub_76748bfe[address(s)].field_512
            if not sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512:
                require 0 <= sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512
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
                    _8344 = mem[64]
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512
                    _8345 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_8345 + 32 len 4] = unknown_0xa9059cbb(?????)
                    _8348 = mem[_8345]
                    mem[_8344 + 100 len floor32(mem[_8345])] = mem[_8345 + 32 len floor32(mem[_8345])]
                    mem[_8344 + floor32(mem[_8345]) + -(mem[_8345] % 32) + 132 len mem[_8345] % 32] = mem[_8345 + -(mem[_8345] % 32) + floor32(mem[_8345]) + 64 len mem[_8345] % 32]
                    call sub_76748bfe[address(s)].field_0.mem[_8344 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[_8344 + 104 len _8348 - 4]
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
                                        mem[_8344 + 211 len 21]
                    else:
                        if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512):
                            revert with 0, 
                                        32,
                                        43,
                                        0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                        mem[_8344 + ceil32(return_data.size) + 212 len 21]
                    ('eq', ('ext_call.return_data', 0, 32), ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('div', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))), ('field', 512, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3))))))))
                emit 0x641d546b: address(s), t, msg.sender
                require ext_code.size(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)
                staticcall 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not sub_76748bfe[address(s)].field_0:
                    require 0 <= msg.value
                else:
                    require ext_code.size(sub_76748bfe[address(s)].field_0)
                    call sub_76748bfe[address(s)].field_0.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                if sub_76748bfe[address(s)].field_0 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if sub_76748bfe[address(s)].field_0:
                        require ext_code.size(sub_76748bfe[address(s)].field_0)
                        call sub_76748bfe[address(s)].field_0.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    require ext_code.size(arg1)
                    if not sub_76748bfe[address(s)].field_0:
                        if not sub_76748bfe[address(s)].field_0:
                            call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, msg.value, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                        else:
                            call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                    else:
                        if not sub_76748bfe[address(s)].field_0:
                            call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args sub_76748bfe[address(s)].field_0, msg.value, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                        else:
                            call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args sub_76748bfe[address(s)].field_0, 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                require arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 == arg3
                require arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100 <= sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512
                if (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512) - (arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100):
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_76748bfe[address(s)].field_0)
                    staticcall sub_76748bfe[address(s)].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_76748bfe[address(s)].field_0)
                    _8378 = mem[64]
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512) - (arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100)
                    _8379 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_8379 + 32 len 4] = unknown_0xa9059cbb(?????)
                    _8382 = mem[_8379]
                    mem[_8378 + 100 len floor32(mem[_8379])] = mem[_8379 + 32 len floor32(mem[_8379])]
                    mem[_8378 + floor32(mem[_8379]) + -(mem[_8379] % 32) + 132 len mem[_8379] % 32] = mem[_8379 + -(mem[_8379] % 32) + floor32(mem[_8379]) + 64 len mem[_8379] % 32]
                    call sub_76748bfe[address(s)].field_0.mem[_8378 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[_8378 + 104 len _8382 - 4]
                    require ext_call.success
                    if return_data.size:
                        require return_data.size == 32
                    require (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512) - (arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100) <= ext_call.return_data[0]
                    require ext_code.size(sub_76748bfe[address(s)].field_0)
                    staticcall sub_76748bfe[address(s)].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not return_data.size:
                        if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512) + (arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100):
                            revert with 0, 
                                        32,
                                        43,
                                        0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                        mem[_8378 + 211 len 21]
                    else:
                        if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512) + (arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100):
                            revert with 0, 
                                        32,
                                        43,
                                        0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                        mem[_8378 + ceil32(return_data.size) + 212 len 21]
                    ('eq', ('ext_call.return_data', 0, 32), ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('div', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))), ('field', 512, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))))), ('div', ('mul', ('param', 'arg3'), ('div', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))), ('field', 512, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))))), 100)))
                emit 0x641d546b: address(s), t, msg.sender
                require ext_code.size(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)
                staticcall 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not sub_76748bfe[address(s)].field_0:
                    require arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100 <= msg.value
                else:
                    require ext_code.size(sub_76748bfe[address(s)].field_0)
                    call sub_76748bfe[address(s)].field_0.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                if sub_76748bfe[address(s)].field_0 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if sub_76748bfe[address(s)].field_0:
                        require ext_code.size(sub_76748bfe[address(s)].field_0)
                        call sub_76748bfe[address(s)].field_0.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    require ext_code.size(arg1)
                    if not sub_76748bfe[address(s)].field_0:
                        if not sub_76748bfe[address(s)].field_0:
                            call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, msg.value, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                        else:
                            call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                    else:
                        if not sub_76748bfe[address(s)].field_0:
                            call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args sub_76748bfe[address(s)].field_0, msg.value, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                        else:
                            call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args sub_76748bfe[address(s)].field_0, arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
        else:
            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 368, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 368, 32))), 0) - 256) + 27):
                mem[ceil32(arg4.length) + 400] = mem[304]
                mem[ceil32(arg4.length) + 432] = mem[336]
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg2, arg3)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 368, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 368, 32))), 0) - 256) + 27 << 248, mem[304], mem[336]) 
                mem[ceil32(arg4.length) + 304] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg4.length) + 368] = address(signer)
                mem[ceil32(arg4.length) + 336] = 20
                mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + 420
                mem[ceil32(arg4.length) + 388] = arg5.length
                mem[ceil32(arg4.length) + 420 len arg5.length] = arg5[all]
                mem[ceil32(arg4.length) + arg5.length + 420] = 0
                idx = 0
                s = 0
                t = 0
                while idx < arg5.length / 20:
                    _8208 = mem[ceil32(arg4.length) + (20 * idx) + 420]
                    if address(s + sha3(mem[ceil32(arg4.length) + 368 len 20])) >= mem[ceil32(arg4.length) + (20 * idx) + 420 len 20]:
                        mem[mem[64] + 32] = Mask(160, 96, mem[ceil32(arg4.length) + (20 * idx) + 420])
                        mem[mem[64] + 52] = address(s + sha3(mem[ceil32(arg4.length) + 368 len 20]))
                        _8223 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        idx = idx + 1
                        s = sha3(mem[_8223 + 32 len mem[_8223]])
                        t = t
                        continue 
                    mem[mem[64] + 32] = address(s + sha3(mem[ceil32(arg4.length) + 368 len 20]))
                    mem[mem[64] + 52] = Mask(160, 96, _8208)
                    _8227 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    idx = idx + 1
                    s = sha3(mem[_8227 + 32 len mem[_8227]])
                    t = (1 << idx) + t
                    continue 
                mem[0] = address(s)
                mem[32] = 3
                require t / 32 < 32
                require not sub_76748bfe[address(s)][0.03125 / t].field_1280
                require t / 32 < 32
                sub_76748bfe[address(s)][0.03125 / t].field_1280 = 1
                require sub_76748bfe[address(s)].field_512
                if not sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512:
                    require 0 <= sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512
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
                        _8351 = mem[64]
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512
                        _8352 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_8352 + 32 len 4] = unknown_0xa9059cbb(?????)
                        _8355 = mem[_8352]
                        mem[_8351 + 100 len floor32(mem[_8352])] = mem[_8352 + 32 len floor32(mem[_8352])]
                        mem[_8351 + floor32(mem[_8352]) + -(mem[_8352] % 32) + 132 len mem[_8352] % 32] = mem[_8352 + -(mem[_8352] % 32) + floor32(mem[_8352]) + 64 len mem[_8352] % 32]
                        call sub_76748bfe[address(s)].field_0.mem[_8351 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_8351 + 104 len _8355 - 4]
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
                                            mem[_8351 + 211 len 21]
                        else:
                            if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512):
                                revert with 0, 
                                            32,
                                            43,
                                            0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                            mem[_8351 + ceil32(return_data.size) + 212 len 21]
                        ('eq', ('ext_call.return_data', 0, 32), ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('div', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))), ('field', 512, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3))))))))
                    emit 0x641d546b: address(s), t, msg.sender
                    require ext_code.size(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)
                    staticcall 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not sub_76748bfe[address(s)].field_0:
                        require 0 <= msg.value
                    else:
                        require ext_code.size(sub_76748bfe[address(s)].field_0)
                        call sub_76748bfe[address(s)].field_0.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                    if sub_76748bfe[address(s)].field_0 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        if sub_76748bfe[address(s)].field_0:
                            require ext_code.size(sub_76748bfe[address(s)].field_0)
                            call sub_76748bfe[address(s)].field_0.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        require ext_code.size(arg1)
                        if not sub_76748bfe[address(s)].field_0:
                            if not sub_76748bfe[address(s)].field_0:
                                call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, msg.value, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                            else:
                                call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                        else:
                            if not sub_76748bfe[address(s)].field_0:
                                call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args sub_76748bfe[address(s)].field_0, msg.value, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                            else:
                                call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args sub_76748bfe[address(s)].field_0, 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    require arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 == arg3
                    require arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100 <= sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512
                    if (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512) - (arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100):
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_76748bfe[address(s)].field_0)
                        staticcall sub_76748bfe[address(s)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_76748bfe[address(s)].field_0)
                        _8384 = mem[64]
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512) - (arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100)
                        _8385 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_8385 + 32 len 4] = unknown_0xa9059cbb(?????)
                        _8388 = mem[_8385]
                        mem[_8384 + 100 len floor32(mem[_8385])] = mem[_8385 + 32 len floor32(mem[_8385])]
                        mem[_8384 + floor32(mem[_8385]) + -(mem[_8385] % 32) + 132 len mem[_8385] % 32] = mem[_8385 + -(mem[_8385] % 32) + floor32(mem[_8385]) + 64 len mem[_8385] % 32]
                        call sub_76748bfe[address(s)].field_0.mem[_8384 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_8384 + 104 len _8388 - 4]
                        require ext_call.success
                        if return_data.size:
                            require return_data.size == 32
                        require (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512) - (arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100) <= ext_call.return_data[0]
                        require ext_code.size(sub_76748bfe[address(s)].field_0)
                        staticcall sub_76748bfe[address(s)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not return_data.size:
                            if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512) + (arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100):
                                revert with 0, 
                                            32,
                                            43,
                                            0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                            mem[_8384 + 211 len 21]
                        else:
                            if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512) + (arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100):
                                revert with 0, 
                                            32,
                                            43,
                                            0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                            mem[_8384 + ceil32(return_data.size) + 212 len 21]
                        ('eq', ('ext_call.return_data', 0, 32), ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('div', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))), ('field', 512, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))))), ('div', ('mul', ('param', 'arg3'), ('div', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))), ('field', 512, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))))), 100)))
                    emit 0x641d546b: address(s), t, msg.sender
                    require ext_code.size(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)
                    staticcall 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not sub_76748bfe[address(s)].field_0:
                        require arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100 <= msg.value
                    else:
                        require ext_code.size(sub_76748bfe[address(s)].field_0)
                        call sub_76748bfe[address(s)].field_0.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                    if sub_76748bfe[address(s)].field_0 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        if sub_76748bfe[address(s)].field_0:
                            require ext_code.size(sub_76748bfe[address(s)].field_0)
                            call sub_76748bfe[address(s)].field_0.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        require ext_code.size(arg1)
                        if not sub_76748bfe[address(s)].field_0:
                            if not sub_76748bfe[address(s)].field_0:
                                call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, msg.value, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                            else:
                                call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                        else:
                            if not sub_76748bfe[address(s)].field_0:
                                call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args sub_76748bfe[address(s)].field_0, msg.value, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                            else:
                                call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args sub_76748bfe[address(s)].field_0, arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 368, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 368, 32))), 0) - 256) + 27) != 28:
                    mem[ceil32(arg4.length) + 336] = 0
                    mem[ceil32(arg4.length) + 304] = 20
                    _51 = sha3(mem[ceil32(arg4.length) + 336 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 336 len -arg4.length + ceil32(arg4.length)]])
                    mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + 388
                    mem[ceil32(arg4.length) + 356] = arg5.length
                    mem[ceil32(arg4.length) + 388 len arg5.length] = arg5[all]
                    mem[ceil32(arg4.length) + arg5.length + 388] = 0
                    idx = 0
                    s = _51
                    t = 0
                    while idx < arg5.length / 20:
                        _8210 = mem[ceil32(arg4.length) + (20 * idx) + 388]
                        if address(s) >= mem[ceil32(arg4.length) + (20 * idx) + 388 len 20]:
                            mem[mem[64] + 32] = Mask(160, 96, mem[ceil32(arg4.length) + (20 * idx) + 388])
                            mem[mem[64] + 52] = address(s)
                            _8241 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            idx = idx + 1
                            s = sha3(mem[_8241 + 32 len mem[_8241]])
                            t = t
                            continue 
                        mem[mem[64] + 32] = address(s)
                        mem[mem[64] + 52] = Mask(160, 96, _8210)
                        _8245 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        idx = idx + 1
                        s = sha3(mem[_8245 + 32 len mem[_8245]])
                        t = (1 << idx) + t
                        continue 
                    mem[0] = address(s)
                    mem[32] = 3
                    require t / 32 < 32
                    require not sub_76748bfe[address(s)][0.03125 / t].field_1280
                    require t / 32 < 32
                    sub_76748bfe[address(s)][0.03125 / t].field_1280 = 1
                    require sub_76748bfe[address(s)].field_512
                    if not sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512:
                        require 0 <= sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512
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
                            _8365 = mem[64]
                            mem[mem[64] + 36] = arg2
                            mem[mem[64] + 68] = sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512
                            _8366 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_8366 + 32 len 4] = unknown_0xa9059cbb(?????)
                            _8369 = mem[_8366]
                            mem[_8365 + 100 len floor32(mem[_8366])] = mem[_8366 + 32 len floor32(mem[_8366])]
                            mem[_8365 + floor32(mem[_8366]) + -(mem[_8366] % 32) + 132 len mem[_8366] % 32] = mem[_8366 + -(mem[_8366] % 32) + floor32(mem[_8366]) + 64 len mem[_8366] % 32]
                            call sub_76748bfe[address(s)].field_0.mem[_8365 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_8365 + 104 len _8369 - 4]
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
                                                mem[_8365 + 211 len 21]
                            else:
                                if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512):
                                    revert with 0, 
                                                32,
                                                43,
                                                0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                                mem[_8365 + ceil32(return_data.size) + 212 len 21]
                            ('eq', ('ext_call.return_data', 0, 32), ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('div', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))), ('field', 512, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3))))))))
                        emit 0x641d546b: address(s), t, msg.sender
                        require ext_code.size(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)
                        staticcall 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_76748bfe[address(s)].field_0:
                            require 0 <= msg.value
                        else:
                            require ext_code.size(sub_76748bfe[address(s)].field_0)
                            call sub_76748bfe[address(s)].field_0.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                        if sub_76748bfe[address(s)].field_0 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            if sub_76748bfe[address(s)].field_0:
                                require ext_code.size(sub_76748bfe[address(s)].field_0)
                                call sub_76748bfe[address(s)].field_0.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            require ext_code.size(arg1)
                            if not sub_76748bfe[address(s)].field_0:
                                if not sub_76748bfe[address(s)].field_0:
                                    call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, msg.value, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                                else:
                                    call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                            else:
                                if not sub_76748bfe[address(s)].field_0:
                                    call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args sub_76748bfe[address(s)].field_0, msg.value, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                                else:
                                    call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args sub_76748bfe[address(s)].field_0, 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        require arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 == arg3
                        require arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100 <= sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512
                        if (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512) - (arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100):
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_76748bfe[address(s)].field_0)
                            staticcall sub_76748bfe[address(s)].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_76748bfe[address(s)].field_0)
                            _8396 = mem[64]
                            mem[mem[64] + 36] = arg2
                            mem[mem[64] + 68] = (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512) - (arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100)
                            _8397 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_8397 + 32 len 4] = unknown_0xa9059cbb(?????)
                            _8400 = mem[_8397]
                            mem[_8396 + 100 len floor32(mem[_8397])] = mem[_8397 + 32 len floor32(mem[_8397])]
                            mem[_8396 + floor32(mem[_8397]) + -(mem[_8397] % 32) + 132 len mem[_8397] % 32] = mem[_8397 + -(mem[_8397] % 32) + floor32(mem[_8397]) + 64 len mem[_8397] % 32]
                            call sub_76748bfe[address(s)].field_0.mem[_8396 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_8396 + 104 len _8400 - 4]
                            require ext_call.success
                            if return_data.size:
                                require return_data.size == 32
                            require (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512) - (arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100) <= ext_call.return_data[0]
                            require ext_code.size(sub_76748bfe[address(s)].field_0)
                            staticcall sub_76748bfe[address(s)].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not return_data.size:
                                if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512) + (arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100):
                                    revert with 0, 
                                                32,
                                                43,
                                                0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                                mem[_8396 + 211 len 21]
                            else:
                                if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512) + (arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100):
                                    revert with 0, 
                                                32,
                                                43,
                                                0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                                mem[_8396 + ceil32(return_data.size) + 212 len 21]
                            ('eq', ('ext_call.return_data', 0, 32), ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('div', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))), ('field', 512, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))))), ('div', ('mul', ('param', 'arg3'), ('div', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))), ('field', 512, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))))), 100)))
                        emit 0x641d546b: address(s), t, msg.sender
                        require ext_code.size(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)
                        staticcall 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_76748bfe[address(s)].field_0:
                            require arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100 <= msg.value
                        else:
                            require ext_code.size(sub_76748bfe[address(s)].field_0)
                            call sub_76748bfe[address(s)].field_0.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                        if sub_76748bfe[address(s)].field_0 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            if sub_76748bfe[address(s)].field_0:
                                require ext_code.size(sub_76748bfe[address(s)].field_0)
                                call sub_76748bfe[address(s)].field_0.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            require ext_code.size(arg1)
                            if not sub_76748bfe[address(s)].field_0:
                                if not sub_76748bfe[address(s)].field_0:
                                    call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, msg.value, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                                else:
                                    call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                            else:
                                if not sub_76748bfe[address(s)].field_0:
                                    call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args sub_76748bfe[address(s)].field_0, msg.value, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                                else:
                                    call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args sub_76748bfe[address(s)].field_0, arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    mem[ceil32(arg4.length) + 400] = mem[304]
                    mem[ceil32(arg4.length) + 432] = mem[336]
                    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg2, arg3)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 368, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 368, 32))), 0) - 256) + 27 << 248, mem[304], mem[336]) 
                    mem[ceil32(arg4.length) + 304] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 368] = address(signer)
                    mem[ceil32(arg4.length) + 336] = 20
                    mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + 420
                    mem[ceil32(arg4.length) + 388] = arg5.length
                    mem[ceil32(arg4.length) + 420 len arg5.length] = arg5[all]
                    mem[ceil32(arg4.length) + arg5.length + 420] = 0
                    idx = 0
                    s = 0
                    t = 0
                    while idx < arg5.length / 20:
                        _8209 = mem[ceil32(arg4.length) + (20 * idx) + 420]
                        if address(s + sha3(mem[ceil32(arg4.length) + 368 len 20])) >= mem[ceil32(arg4.length) + (20 * idx) + 420 len 20]:
                            mem[mem[64] + 32] = Mask(160, 96, mem[ceil32(arg4.length) + (20 * idx) + 420])
                            mem[mem[64] + 52] = address(s + sha3(mem[ceil32(arg4.length) + 368 len 20]))
                            _8232 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            idx = idx + 1
                            s = sha3(mem[_8232 + 32 len mem[_8232]])
                            t = t
                            continue 
                        mem[mem[64] + 32] = address(s + sha3(mem[ceil32(arg4.length) + 368 len 20]))
                        mem[mem[64] + 52] = Mask(160, 96, _8209)
                        _8236 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        idx = idx + 1
                        s = sha3(mem[_8236 + 32 len mem[_8236]])
                        t = (1 << idx) + t
                        continue 
                    mem[0] = address(s)
                    mem[32] = 3
                    require t / 32 < 32
                    require not sub_76748bfe[address(s)][0.03125 / t].field_1280
                    require t / 32 < 32
                    sub_76748bfe[address(s)][0.03125 / t].field_1280 = 1
                    require sub_76748bfe[address(s)].field_512
                    if not sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512:
                        require 0 <= sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512
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
                            _8358 = mem[64]
                            mem[mem[64] + 36] = arg2
                            mem[mem[64] + 68] = sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512
                            _8359 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_8359 + 32 len 4] = unknown_0xa9059cbb(?????)
                            _8362 = mem[_8359]
                            mem[_8358 + 100 len floor32(mem[_8359])] = mem[_8359 + 32 len floor32(mem[_8359])]
                            mem[_8358 + floor32(mem[_8359]) + -(mem[_8359] % 32) + 132 len mem[_8359] % 32] = mem[_8359 + -(mem[_8359] % 32) + floor32(mem[_8359]) + 64 len mem[_8359] % 32]
                            call sub_76748bfe[address(s)].field_0.mem[_8358 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_8358 + 104 len _8362 - 4]
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
                                                mem[_8358 + 211 len 21]
                            else:
                                if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512):
                                    revert with 0, 
                                                32,
                                                43,
                                                0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                                mem[_8358 + ceil32(return_data.size) + 212 len 21]
                            ('eq', ('ext_call.return_data', 0, 32), ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('div', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))), ('field', 512, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3))))))))
                        emit 0x641d546b: address(s), t, msg.sender
                        require ext_code.size(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)
                        staticcall 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_76748bfe[address(s)].field_0:
                            require 0 <= msg.value
                        else:
                            require ext_code.size(sub_76748bfe[address(s)].field_0)
                            call sub_76748bfe[address(s)].field_0.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                        if sub_76748bfe[address(s)].field_0 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            if sub_76748bfe[address(s)].field_0:
                                require ext_code.size(sub_76748bfe[address(s)].field_0)
                                call sub_76748bfe[address(s)].field_0.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            require ext_code.size(arg1)
                            if not sub_76748bfe[address(s)].field_0:
                                if not sub_76748bfe[address(s)].field_0:
                                    call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, msg.value, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                                else:
                                    call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                            else:
                                if not sub_76748bfe[address(s)].field_0:
                                    call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args sub_76748bfe[address(s)].field_0, msg.value, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                                else:
                                    call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args sub_76748bfe[address(s)].field_0, 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        require arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 == arg3
                        require arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100 <= sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512
                        if (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512) - (arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100):
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_76748bfe[address(s)].field_0)
                            staticcall sub_76748bfe[address(s)].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_76748bfe[address(s)].field_0)
                            _8390 = mem[64]
                            mem[mem[64] + 36] = arg2
                            mem[mem[64] + 68] = (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512) - (arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100)
                            _8391 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_8391 + 32 len 4] = unknown_0xa9059cbb(?????)
                            _8394 = mem[_8391]
                            mem[_8390 + 100 len floor32(mem[_8391])] = mem[_8391 + 32 len floor32(mem[_8391])]
                            mem[_8390 + floor32(mem[_8391]) + -(mem[_8391] % 32) + 132 len mem[_8391] % 32] = mem[_8391 + -(mem[_8391] % 32) + floor32(mem[_8391]) + 64 len mem[_8391] % 32]
                            call sub_76748bfe[address(s)].field_0.mem[_8390 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_8390 + 104 len _8394 - 4]
                            require ext_call.success
                            if return_data.size:
                                require return_data.size == 32
                            require (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512) - (arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100) <= ext_call.return_data[0]
                            require ext_code.size(sub_76748bfe[address(s)].field_0)
                            staticcall sub_76748bfe[address(s)].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not return_data.size:
                                if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512) + (arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100):
                                    revert with 0, 
                                                32,
                                                43,
                                                0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                                mem[_8390 + 211 len 21]
                            else:
                                if ext_call.return_data[0] != ext_call.return_data[0] - (sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512) + (arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100):
                                    revert with 0, 
                                                32,
                                                43,
                                                0xfe636865636b65645472616e736665723a2046696e616c2062616c616e6365206469646e2774206d617463,
                                                mem[_8390 + ceil32(return_data.size) + 212 len 21]
                            ('eq', ('ext_call.return_data', 0, 32), ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('div', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))), ('field', 512, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))))), ('div', ('mul', ('param', 'arg3'), ('div', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))), ('field', 512, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'sub_76748bfe', 3)))))), 100)))
                        emit 0x641d546b: address(s), t, msg.sender
                        require ext_code.size(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)
                        staticcall 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_76748bfe[address(s)].field_0:
                            require arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100 <= msg.value
                        else:
                            require ext_code.size(sub_76748bfe[address(s)].field_0)
                            call sub_76748bfe[address(s)].field_0.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                        if sub_76748bfe[address(s)].field_0 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            if sub_76748bfe[address(s)].field_0:
                                require ext_code.size(sub_76748bfe[address(s)].field_0)
                                call sub_76748bfe[address(s)].field_0.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            require ext_code.size(arg1)
                            if not sub_76748bfe[address(s)].field_0:
                                if not sub_76748bfe[address(s)].field_0:
                                    call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, msg.value, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                                else:
                                    call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                            else:
                                if not sub_76748bfe[address(s)].field_0:
                                    call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args sub_76748bfe[address(s)].field_0, msg.value, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                                else:
                                    call arg1.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args sub_76748bfe[address(s)].field_0, arg3 * sub_76748bfe[address(s)].field_256 / sub_76748bfe[address(s)].field_512 / 100, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, this.address, 0x8000000000000000000000000000000000000000000000000000000000000000, 0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
    require ext_code.size(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)
    staticcall 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= ext_call.return_data[0]
    call msg.sender with:
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

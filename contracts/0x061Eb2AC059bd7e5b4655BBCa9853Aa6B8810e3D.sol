contract main {




// =====================  Runtime code  =====================


address sub_949b61c2Address;
mapping of uint8 stor1;
mapping of uint256 stor2;
address sub_1c4dd7d0Address;
address sub_18128b53Address;

function sub_18128b53(?) {
    return sub_18128b53Address
}

function sub_1c4dd7d0(?) {
    return sub_1c4dd7d0Address
}

function sub_949b61c2(?) {
    return sub_949b61c2Address
}

function _fallback() payable {
    revert
}

function sub_14131caf(?) {
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_eaece923(?) {
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_28df6bda(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_1c4dd7d0Address)
    staticcall sub_1c4dd7d0Address.0xdbbace5c with:
            gas gas_remaining wei
           args address(arg2), 0xa9059cbb00000000000000000000000000000000000000000000000000000000, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor1[address(arg1)][address(arg2)][arg3]:
        return bool(stor1[address(arg1)][address(arg2)][arg3])
    return (ext_call.return_data[0] == stor2[address(arg1)][address(arg2)][arg3])
}

function sub_ba066b86(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(arg3.length) + 128 len 320] = code.data[5701 len 320]
    mem[ceil32(arg3.length) + 448] = 20
    mem[ceil32(arg3.length) + 480 len 20] = code.data[5701 len 20]
    idx = 16
    s = 0
    while uint16(idx) < 36:
        require uint16(idx) < arg3.length
        require uint16(s) < mem[ceil32(arg3.length) + 448]
        mem[ceil32(arg3.length) + uint16(s) + 480 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 0, ('var', 0))), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    mem[ceil32(arg3.length) + 832 len 320] = code.data[5701 len 320]
    mem[ceil32(arg3.length) + 1152] = 0x65c902ef00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 1156] = arg1
    mem[ceil32(arg3.length) + 1188] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_1c4dd7d0Address)
    staticcall sub_1c4dd7d0Address.0x65c902ef with:
            gas gas_remaining wei
           args address(arg1), 0xa9059cbb00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg3.length) + 1152 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(arg3.length) + ceil32(return_data.size) + 1152
    require return_data.size >= 32
    _16 = mem[ceil32(arg3.length) + 1152 len 4], address(arg1) << 64
    require mem[ceil32(arg3.length) + 1152 len 4], address(arg1) << 64 <= 4294967296
    require mem[ceil32(arg3.length) + 1152 len 4], address(arg1) << 64 + 32 <= return_data.size
    require return_data.size >= mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + 1152 len 4], address(arg1) << 64 + 1152] + mem[ceil32(arg3.length) + 1152 len 4], address(arg1) << 64 + 32 and mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + 1152 len 4], address(arg1) << 64 + 1152] <= 4294967296
    mem[ceil32(arg3.length) + ceil32(return_data.size) + 1152] = arg2
    mem[ceil32(arg3.length) + ceil32(return_data.size) + 1184] = mem[ceil32(arg3.length) + 480 len 20]
    mem[ceil32(arg3.length) + ceil32(return_data.size) + 1216] = arg2
    mem[ceil32(arg3.length) + ceil32(return_data.size) + 1248] = 0x4eb0811200000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + ceil32(return_data.size) + 1284 len 96] = address(arg2), Mask(160, 96, mem[ceil32(arg3.length) + 480]), arg2
    mem[ceil32(arg3.length) + ceil32(return_data.size) + 1380 len 320] = code.data[5701 len 320]
    mem[ceil32(arg3.length) + ceil32(return_data.size) + 1700 len 320] = code.data[5701 len 320]
    mem[ceil32(arg3.length) + ceil32(return_data.size) + 1252] = 768
    mem[ceil32(arg3.length) + ceil32(return_data.size) + 2020] = mem[ceil32(arg3.length) + _16 + 1152]
    _26 = mem[ceil32(arg3.length) + _16 + 1152]
    mem[ceil32(arg3.length) + ceil32(return_data.size) + 2052 len ceil32(mem[ceil32(arg3.length) + _16 + 1152])] = mem[ceil32(arg3.length) + _16 + 1184 len ceil32(mem[ceil32(arg3.length) + _16 + 1152])]
    if not _26 % 32:
        require ext_code.size(sub_18128b53Address)
        staticcall sub_18128b53Address.0x4eb08112 with:
                gas gas_remaining wei
               args 768, Mask(160, 96, mem[ceil32(arg3.length) + 480]), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(arg3.length) + ceil32(return_data.size) + 2020 len _26 + 32]
    else:
        mem[floor32(_26) + ceil32(arg3.length) + ceil32(return_data.size) + 2052] = mem[floor32(_26) + ceil32(arg3.length) + ceil32(return_data.size) + -(_26 % 32) + 2084 len _26 % 32]
        require ext_code.size(sub_18128b53Address)
        staticcall sub_18128b53Address.0x4eb08112 with:
                gas gas_remaining wei
               args 768, Mask(160, 96, mem[ceil32(arg3.length) + 480]), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(arg3.length) + ceil32(return_data.size) + 2020 len floor32(_26) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    return bool(ext_call.return_data[0]), ext_call.return_data[32 len 320]
}

function sub_3c78f4f2(?) {
    require calldata.size - 4 >= 96
    mem[96] = 16
    mem[128] = 'PermissionModule'
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).'!Dn{' with:
            gas gas_remaining wei
           args call.func_hash, msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Declined by Permission Module.'
    if not arg1:
        revert with 0, 'Invalid customer address.'
    mem[160] = 0x36befc5f00000000000000000000000000000000000000000000000000000000
    mem[164] = arg2
    mem[196] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
    mem[228] = arg3
    require ext_code.size(sub_1c4dd7d0Address)
    staticcall sub_1c4dd7d0Address.0x36befc5f with:
            gas gas_remaining wei
           args address(arg2), 0xa9059cbb00000000000000000000000000000000000000000000000000000000, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 160
    require return_data.size >= 32
    _21 = mem[160 len 4], address(arg2) << 64
    require mem[160 len 4], address(arg2) << 64 <= 4294967296
    require mem[160 len 4], address(arg2) << 64 + 32 <= return_data.size
    require return_data.size >= mem[mem[160 len 4], address(arg2) << 64 + 160] + mem[160 len 4], address(arg2) << 64 + 32 and mem[mem[160 len 4], address(arg2) << 64 + 160] <= 4294967296
    require ext_code.size(sub_1c4dd7d0Address)
    staticcall sub_1c4dd7d0Address.0xdbbace5c with:
            gas gas_remaining wei
           args address(arg2), 0xa9059cbb00000000000000000000000000000000000000000000000000000000, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor1[address(arg1)][address(arg2)][arg3]:
        mem[ceil32(return_data.size) + 160 len 96] = code.data[5701 len 96]
        mem[ceil32(return_data.size) + 256] = arg1
        mem[ceil32(return_data.size) + 288] = arg1
        mem[ceil32(return_data.size) + 320] = arg1
        mem[ceil32(return_data.size) + 352 len 320] = code.data[5701 len 320]
        mem[ceil32(return_data.size) + 672 len 320] = code.data[5701 len 320]
        mem[ceil32(return_data.size) + 992] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 1028 len 96] = address(arg1), address(arg1), arg1
        mem[ceil32(return_data.size) + 1124 len 320] = code.data[5701 len 320]
        mem[ceil32(return_data.size) + 1444 len 320] = code.data[5701 len 320]
        mem[ceil32(return_data.size) + 996] = 768
        mem[ceil32(return_data.size) + 1764] = mem[_21 + 160]
        _54 = mem[_21 + 160]
        mem[ceil32(return_data.size) + 1796 len ceil32(mem[_21 + 160])] = mem[_21 + 192 len ceil32(mem[_21 + 160])]
        if not _54 % 32:
            require ext_code.size(sub_18128b53Address)
            staticcall sub_18128b53Address.0x50ac547d with:
                    gas gas_remaining wei
                   args 768, address(arg1), arg1 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1764 len _54 + 32]
        else:
            mem[floor32(_54) + ceil32(return_data.size) + 1796] = mem[floor32(_54) + ceil32(return_data.size) + -(_54 % 32) + 1828 len _54 % 32]
            require ext_code.size(sub_18128b53Address)
            staticcall sub_18128b53Address.0x50ac547d with:
                    gas gas_remaining wei
                   args 768, address(arg1), arg1 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1764 len floor32(_54) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            stor1[address(arg1)][address(arg2)][arg3] = 1
            stor2[address(arg1)][address(arg2)][arg3] = ext_call.return_data[0]
            emit Added(arg1, arg2, arg3);
    else:
        if ext_call.return_data[0] != stor2[address(arg1)][address(arg2)][arg3]:
            mem[ceil32(return_data.size) + 160 len 96] = code.data[5701 len 96]
            mem[ceil32(return_data.size) + 256] = arg1
            mem[ceil32(return_data.size) + 288] = arg1
            mem[ceil32(return_data.size) + 320] = arg1
            mem[ceil32(return_data.size) + 352 len 320] = code.data[5701 len 320]
            mem[ceil32(return_data.size) + 672 len 320] = code.data[5701 len 320]
            mem[ceil32(return_data.size) + 992] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 1028 len 96] = address(arg1), address(arg1), arg1
            mem[ceil32(return_data.size) + 1124 len 320] = code.data[5701 len 320]
            mem[ceil32(return_data.size) + 1444 len 320] = code.data[5701 len 320]
            mem[ceil32(return_data.size) + 996] = 768
            mem[ceil32(return_data.size) + 1764] = mem[_21 + 160]
            _57 = mem[_21 + 160]
            mem[ceil32(return_data.size) + 1796 len ceil32(mem[_21 + 160])] = mem[_21 + 192 len ceil32(mem[_21 + 160])]
            if not _57 % 32:
                require ext_code.size(sub_18128b53Address)
                staticcall sub_18128b53Address.0x50ac547d with:
                        gas gas_remaining wei
                       args 768, address(arg1), arg1 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1764 len _57 + 32]
            else:
                mem[floor32(_57) + ceil32(return_data.size) + 1796] = mem[floor32(_57) + ceil32(return_data.size) + -(_57 % 32) + 1828 len _57 % 32]
                require ext_code.size(sub_18128b53Address)
                staticcall sub_18128b53Address.0x50ac547d with:
                        gas gas_remaining wei
                       args 768, address(arg1), arg1 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1764 len floor32(_57) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                stor1[address(arg1)][address(arg2)][arg3] = 1
                stor2[address(arg1)][address(arg2)][arg3] = ext_call.return_data[0]
                emit Added(arg1, arg2, arg3);
}

function sub_fac5a410(?) {
    require calldata.size - 4 >= 192
    mem[96] = 0x36befc5f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg4
    mem[132] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
    mem[164] = arg5
    require ext_code.size(sub_1c4dd7d0Address)
    staticcall sub_1c4dd7d0Address.0x36befc5f with:
            gas gas_remaining wei
           args address(arg4), 0xa9059cbb00000000000000000000000000000000000000000000000000000000, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg4) << 64
    require mem[96 len 4], address(arg4) << 64 <= 4294967296
    require mem[96 len 4], address(arg4) << 64 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], address(arg4) << 64 + 96] + mem[96 len 4], address(arg4) << 64 + 32 and mem[mem[96 len 4], address(arg4) << 64 + 96] <= 4294967296
    require ext_code.size(sub_1c4dd7d0Address)
    staticcall sub_1c4dd7d0Address.0xdbbace5c with:
            gas gas_remaining wei
           args address(arg4), 0xa9059cbb00000000000000000000000000000000000000000000000000000000, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor1[address(arg1)][address(arg4)][arg5]:
        mem[ceil32(return_data.size) + 96 len 96] = code.data[5701 len 96]
        mem[ceil32(return_data.size) + 192] = arg1
        mem[ceil32(return_data.size) + 224] = arg1
        mem[ceil32(return_data.size) + 256] = arg1
        mem[ceil32(return_data.size) + 288 len 320] = code.data[5701 len 320]
        mem[ceil32(return_data.size) + 608 len 320] = code.data[5701 len 320]
        mem[ceil32(return_data.size) + 928] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 964 len 96] = address(arg1), address(arg1), arg1
        mem[ceil32(return_data.size) + 1060 len 320] = code.data[5701 len 320]
        mem[ceil32(return_data.size) + 1380 len 320] = code.data[5701 len 320]
        mem[ceil32(return_data.size) + 932] = 768
        mem[ceil32(return_data.size) + 1700] = mem[_4 + 96]
        _93 = mem[_4 + 96]
        mem[ceil32(return_data.size) + 1732 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
        if not _93 % 32:
            require ext_code.size(sub_18128b53Address)
            staticcall sub_18128b53Address.0x50ac547d with:
                    gas gas_remaining wei
                   args 768, address(arg1), arg1 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1700 len _93 + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 0
            if not stor1[address(arg2)][address(arg4)][arg5]:
                mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                mem[ceil32(return_data.size) + 1024] = arg2
                mem[ceil32(return_data.size) + 1056] = arg2
                mem[ceil32(return_data.size) + 1088] = arg2
                mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                mem[ceil32(return_data.size) + 1764] = 768
                mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                _863 = mem[_4 + 96]
                mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                if not _863 % 32:
                    require ext_code.size(sub_18128b53Address)
                    staticcall sub_18128b53Address.0x50ac547d with:
                            gas gas_remaining wei
                           args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _863 + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    if arg3 != arg1:
                        if ext_call.return_data[0]:
                            if not stor1[address(arg3)][address(arg4)][arg5]:
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _2407 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _2407 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2407 + 32]
                                else:
                                    mem[floor32(_2407) + ceil32(return_data.size) + 3396] = mem[floor32(_2407) + ceil32(return_data.size) + -(_2407 % 32) + 3428 len _2407 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2407) + 64]
                            else:
                                if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                    return 1
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _2410 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _2410 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2410 + 32]
                                else:
                                    mem[floor32(_2410) + ceil32(return_data.size) + 3396] = mem[floor32(_2410) + ceil32(return_data.size) + -(_2410 % 32) + 3428 len _2410 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2410) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    mem[floor32(_863) + ceil32(return_data.size) + 2564] = mem[floor32(_863) + ceil32(return_data.size) + -(_863 % 32) + 2596 len _863 % 32]
                    require ext_code.size(sub_18128b53Address)
                    staticcall sub_18128b53Address.0x50ac547d with:
                            gas gas_remaining wei
                           args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_863) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    if arg3 != arg1:
                        if ext_call.return_data[0]:
                            if not stor1[address(arg3)][address(arg4)][arg5]:
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _2413 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _2413 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2413 + 32]
                                else:
                                    mem[floor32(_2413) + ceil32(return_data.size) + 3396] = mem[floor32(_2413) + ceil32(return_data.size) + -(_2413 % 32) + 3428 len _2413 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2413) + 64]
                            else:
                                if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                    return 1
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _2416 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _2416 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2416 + 32]
                                else:
                                    mem[floor32(_2416) + ceil32(return_data.size) + 3396] = mem[floor32(_2416) + ceil32(return_data.size) + -(_2416 % 32) + 3428 len _2416 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2416) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if ext_call.return_data[0] == stor2[address(arg2)][address(arg4)][arg5]:
                    if arg3 == arg1:
                        return 1
                    if not stor1[address(arg3)][address(arg4)][arg5]:
                        mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                        mem[ceil32(return_data.size) + 1024] = arg3
                        mem[ceil32(return_data.size) + 1056] = arg3
                        mem[ceil32(return_data.size) + 1088] = arg3
                        mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                        mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1764] = 768
                        mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                        _869 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _869 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _869 + 32]
                        else:
                            mem[floor32(_869) + ceil32(return_data.size) + 2564] = mem[floor32(_869) + ceil32(return_data.size) + -(_869 % 32) + 2596 len _869 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_869) + 64]
                    else:
                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                            return 1
                        mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                        mem[ceil32(return_data.size) + 1024] = arg3
                        mem[ceil32(return_data.size) + 1056] = arg3
                        mem[ceil32(return_data.size) + 1088] = arg3
                        mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                        mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1764] = 768
                        mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                        _872 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _872 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _872 + 32]
                        else:
                            mem[floor32(_872) + ceil32(return_data.size) + 2564] = mem[floor32(_872) + ceil32(return_data.size) + -(_872 % 32) + 2596 len _872 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_872) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                else:
                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                    mem[ceil32(return_data.size) + 1024] = arg2
                    mem[ceil32(return_data.size) + 1056] = arg2
                    mem[ceil32(return_data.size) + 1088] = arg2
                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1764] = 768
                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                    _866 = mem[_4 + 96]
                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                    if not _866 % 32:
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _866 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)][arg5]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2419 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2419 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2419 + 32]
                                    else:
                                        mem[floor32(_2419) + ceil32(return_data.size) + 3396] = mem[floor32(_2419) + ceil32(return_data.size) + -(_2419 % 32) + 3428 len _2419 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2419) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2422 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2422 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2422 + 32]
                                    else:
                                        mem[floor32(_2422) + ceil32(return_data.size) + 3396] = mem[floor32(_2422) + ceil32(return_data.size) + -(_2422 % 32) + 3428 len _2422 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2422) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        mem[floor32(_866) + ceil32(return_data.size) + 2564] = mem[floor32(_866) + ceil32(return_data.size) + -(_866 % 32) + 2596 len _866 % 32]
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_866) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)][arg5]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2425 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2425 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2425 + 32]
                                    else:
                                        mem[floor32(_2425) + ceil32(return_data.size) + 3396] = mem[floor32(_2425) + ceil32(return_data.size) + -(_2425 % 32) + 3428 len _2425 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2425) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2428 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2428 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2428 + 32]
                                    else:
                                        mem[floor32(_2428) + ceil32(return_data.size) + 3396] = mem[floor32(_2428) + ceil32(return_data.size) + -(_2428 % 32) + 3428 len _2428 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2428) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
        else:
            mem[floor32(_93) + ceil32(return_data.size) + 1732] = mem[floor32(_93) + ceil32(return_data.size) + -(_93 % 32) + 1764 len _93 % 32]
            require ext_code.size(sub_18128b53Address)
            staticcall sub_18128b53Address.0x50ac547d with:
                    gas gas_remaining wei
                   args 768, address(arg1), arg1 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1700 len floor32(_93) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 0
            if not stor1[address(arg2)][address(arg4)][arg5]:
                mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                mem[ceil32(return_data.size) + 1024] = arg2
                mem[ceil32(return_data.size) + 1056] = arg2
                mem[ceil32(return_data.size) + 1088] = arg2
                mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                mem[ceil32(return_data.size) + 1764] = 768
                mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                _875 = mem[_4 + 96]
                mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                if not _875 % 32:
                    require ext_code.size(sub_18128b53Address)
                    staticcall sub_18128b53Address.0x50ac547d with:
                            gas gas_remaining wei
                           args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _875 + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    if arg3 != arg1:
                        if ext_call.return_data[0]:
                            if not stor1[address(arg3)][address(arg4)][arg5]:
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _2431 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _2431 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2431 + 32]
                                else:
                                    mem[floor32(_2431) + ceil32(return_data.size) + 3396] = mem[floor32(_2431) + ceil32(return_data.size) + -(_2431 % 32) + 3428 len _2431 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2431) + 64]
                            else:
                                if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                    return 1
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _2434 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _2434 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2434 + 32]
                                else:
                                    mem[floor32(_2434) + ceil32(return_data.size) + 3396] = mem[floor32(_2434) + ceil32(return_data.size) + -(_2434 % 32) + 3428 len _2434 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2434) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    mem[floor32(_875) + ceil32(return_data.size) + 2564] = mem[floor32(_875) + ceil32(return_data.size) + -(_875 % 32) + 2596 len _875 % 32]
                    require ext_code.size(sub_18128b53Address)
                    staticcall sub_18128b53Address.0x50ac547d with:
                            gas gas_remaining wei
                           args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_875) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    if arg3 != arg1:
                        if ext_call.return_data[0]:
                            if not stor1[address(arg3)][address(arg4)][arg5]:
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _2437 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _2437 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2437 + 32]
                                else:
                                    mem[floor32(_2437) + ceil32(return_data.size) + 3396] = mem[floor32(_2437) + ceil32(return_data.size) + -(_2437 % 32) + 3428 len _2437 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2437) + 64]
                            else:
                                if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                    return 1
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _2440 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _2440 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2440 + 32]
                                else:
                                    mem[floor32(_2440) + ceil32(return_data.size) + 3396] = mem[floor32(_2440) + ceil32(return_data.size) + -(_2440 % 32) + 3428 len _2440 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2440) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if ext_call.return_data[0] == stor2[address(arg2)][address(arg4)][arg5]:
                    if arg3 == arg1:
                        return 1
                    if not stor1[address(arg3)][address(arg4)][arg5]:
                        mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                        mem[ceil32(return_data.size) + 1024] = arg3
                        mem[ceil32(return_data.size) + 1056] = arg3
                        mem[ceil32(return_data.size) + 1088] = arg3
                        mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                        mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1764] = 768
                        mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                        _881 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _881 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _881 + 32]
                        else:
                            mem[floor32(_881) + ceil32(return_data.size) + 2564] = mem[floor32(_881) + ceil32(return_data.size) + -(_881 % 32) + 2596 len _881 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_881) + 64]
                    else:
                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                            return 1
                        mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                        mem[ceil32(return_data.size) + 1024] = arg3
                        mem[ceil32(return_data.size) + 1056] = arg3
                        mem[ceil32(return_data.size) + 1088] = arg3
                        mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                        mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1764] = 768
                        mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                        _884 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _884 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _884 + 32]
                        else:
                            mem[floor32(_884) + ceil32(return_data.size) + 2564] = mem[floor32(_884) + ceil32(return_data.size) + -(_884 % 32) + 2596 len _884 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_884) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                else:
                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                    mem[ceil32(return_data.size) + 1024] = arg2
                    mem[ceil32(return_data.size) + 1056] = arg2
                    mem[ceil32(return_data.size) + 1088] = arg2
                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1764] = 768
                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                    _878 = mem[_4 + 96]
                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                    if not _878 % 32:
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _878 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)][arg5]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2443 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2443 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2443 + 32]
                                    else:
                                        mem[floor32(_2443) + ceil32(return_data.size) + 3396] = mem[floor32(_2443) + ceil32(return_data.size) + -(_2443 % 32) + 3428 len _2443 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2443) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2446 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2446 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2446 + 32]
                                    else:
                                        mem[floor32(_2446) + ceil32(return_data.size) + 3396] = mem[floor32(_2446) + ceil32(return_data.size) + -(_2446 % 32) + 3428 len _2446 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2446) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        mem[floor32(_878) + ceil32(return_data.size) + 2564] = mem[floor32(_878) + ceil32(return_data.size) + -(_878 % 32) + 2596 len _878 % 32]
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_878) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)][arg5]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2449 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2449 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2449 + 32]
                                    else:
                                        mem[floor32(_2449) + ceil32(return_data.size) + 3396] = mem[floor32(_2449) + ceil32(return_data.size) + -(_2449 % 32) + 3428 len _2449 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2449) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2452 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2452 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2452 + 32]
                                    else:
                                        mem[floor32(_2452) + ceil32(return_data.size) + 3396] = mem[floor32(_2452) + ceil32(return_data.size) + -(_2452 % 32) + 3428 len _2452 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2452) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
    else:
        if ext_call.return_data[0] == stor2[address(arg1)][address(arg4)][arg5]:
            if not stor1[address(arg2)][address(arg4)][arg5]:
                mem[ceil32(return_data.size) + 96 len 96] = code.data[5701 len 96]
                mem[ceil32(return_data.size) + 192] = arg2
                mem[ceil32(return_data.size) + 224] = arg2
                mem[ceil32(return_data.size) + 256] = arg2
                mem[ceil32(return_data.size) + 288 len 320] = code.data[5701 len 320]
                mem[ceil32(return_data.size) + 608 len 320] = code.data[5701 len 320]
                mem[ceil32(return_data.size) + 928] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 964 len 96] = address(arg2), address(arg2), arg2
                mem[ceil32(return_data.size) + 1060 len 320] = code.data[5701 len 320]
                mem[ceil32(return_data.size) + 1380 len 320] = code.data[5701 len 320]
                mem[ceil32(return_data.size) + 932] = 768
                mem[ceil32(return_data.size) + 1700] = mem[_4 + 96]
                _99 = mem[_4 + 96]
                mem[ceil32(return_data.size) + 1732 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                if not _99 % 32:
                    require ext_code.size(sub_18128b53Address)
                    staticcall sub_18128b53Address.0x50ac547d with:
                            gas gas_remaining wei
                           args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1700 len _99 + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    if arg3 != arg1:
                        if ext_call.return_data[0]:
                            if not stor1[address(arg3)][address(arg4)][arg5]:
                                mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                                mem[ceil32(return_data.size) + 1024] = arg3
                                mem[ceil32(return_data.size) + 1056] = arg3
                                mem[ceil32(return_data.size) + 1088] = arg3
                                mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 1764] = 768
                                mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                _911 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _911 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _911 + 32]
                                else:
                                    mem[floor32(_911) + ceil32(return_data.size) + 2564] = mem[floor32(_911) + ceil32(return_data.size) + -(_911 % 32) + 2596 len _911 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_911) + 64]
                            else:
                                if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                    return 1
                                mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                                mem[ceil32(return_data.size) + 1024] = arg3
                                mem[ceil32(return_data.size) + 1056] = arg3
                                mem[ceil32(return_data.size) + 1088] = arg3
                                mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 1764] = 768
                                mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                _914 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _914 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _914 + 32]
                                else:
                                    mem[floor32(_914) + ceil32(return_data.size) + 2564] = mem[floor32(_914) + ceil32(return_data.size) + -(_914 % 32) + 2596 len _914 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_914) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    mem[floor32(_99) + ceil32(return_data.size) + 1732] = mem[floor32(_99) + ceil32(return_data.size) + -(_99 % 32) + 1764 len _99 % 32]
                    require ext_code.size(sub_18128b53Address)
                    staticcall sub_18128b53Address.0x50ac547d with:
                            gas gas_remaining wei
                           args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1700 len floor32(_99) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    if arg3 != arg1:
                        if ext_call.return_data[0]:
                            if not stor1[address(arg3)][address(arg4)][arg5]:
                                mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                                mem[ceil32(return_data.size) + 1024] = arg3
                                mem[ceil32(return_data.size) + 1056] = arg3
                                mem[ceil32(return_data.size) + 1088] = arg3
                                mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 1764] = 768
                                mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                _917 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _917 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _917 + 32]
                                else:
                                    mem[floor32(_917) + ceil32(return_data.size) + 2564] = mem[floor32(_917) + ceil32(return_data.size) + -(_917 % 32) + 2596 len _917 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_917) + 64]
                            else:
                                if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                    return 1
                                mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                                mem[ceil32(return_data.size) + 1024] = arg3
                                mem[ceil32(return_data.size) + 1056] = arg3
                                mem[ceil32(return_data.size) + 1088] = arg3
                                mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 1764] = 768
                                mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                _920 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _920 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _920 + 32]
                                else:
                                    mem[floor32(_920) + ceil32(return_data.size) + 2564] = mem[floor32(_920) + ceil32(return_data.size) + -(_920 % 32) + 2596 len _920 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_920) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if ext_call.return_data[0] == stor2[address(arg2)][address(arg4)][arg5]:
                    if arg3 == arg1:
                        return 1
                    if not stor1[address(arg3)][address(arg4)][arg5]:
                        mem[ceil32(return_data.size) + 96 len 96] = code.data[5701 len 96]
                        mem[ceil32(return_data.size) + 192] = arg3
                        mem[ceil32(return_data.size) + 224] = arg3
                        mem[ceil32(return_data.size) + 256] = arg3
                        mem[ceil32(return_data.size) + 288 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 608 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 928] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 964 len 96] = address(arg3), address(arg3), arg3
                        mem[ceil32(return_data.size) + 1060 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1380 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 932] = 768
                        mem[ceil32(return_data.size) + 1700] = mem[_4 + 96]
                        _105 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 1732 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _105 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1700 len _105 + 32]
                        else:
                            mem[floor32(_105) + ceil32(return_data.size) + 1732] = mem[floor32(_105) + ceil32(return_data.size) + -(_105 % 32) + 1764 len _105 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1700 len floor32(_105) + 64]
                    else:
                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                            return 1
                        mem[ceil32(return_data.size) + 96 len 96] = code.data[5701 len 96]
                        mem[ceil32(return_data.size) + 192] = arg3
                        mem[ceil32(return_data.size) + 224] = arg3
                        mem[ceil32(return_data.size) + 256] = arg3
                        mem[ceil32(return_data.size) + 288 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 608 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 928] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 964 len 96] = address(arg3), address(arg3), arg3
                        mem[ceil32(return_data.size) + 1060 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1380 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 932] = 768
                        mem[ceil32(return_data.size) + 1700] = mem[_4 + 96]
                        _108 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 1732 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _108 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1700 len _108 + 32]
                        else:
                            mem[floor32(_108) + ceil32(return_data.size) + 1732] = mem[floor32(_108) + ceil32(return_data.size) + -(_108 % 32) + 1764 len _108 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1700 len floor32(_108) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                else:
                    mem[ceil32(return_data.size) + 96 len 96] = code.data[5701 len 96]
                    mem[ceil32(return_data.size) + 192] = arg2
                    mem[ceil32(return_data.size) + 224] = arg2
                    mem[ceil32(return_data.size) + 256] = arg2
                    mem[ceil32(return_data.size) + 288 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 608 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 928] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 964 len 96] = address(arg2), address(arg2), arg2
                    mem[ceil32(return_data.size) + 1060 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1380 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 932] = 768
                    mem[ceil32(return_data.size) + 1700] = mem[_4 + 96]
                    _102 = mem[_4 + 96]
                    mem[ceil32(return_data.size) + 1732 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                    if not _102 % 32:
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1700 len _102 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)][arg5]:
                                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1024] = arg3
                                    mem[ceil32(return_data.size) + 1056] = arg3
                                    mem[ceil32(return_data.size) + 1088] = arg3
                                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 1764] = 768
                                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                    _923 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _923 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _923 + 32]
                                    else:
                                        mem[floor32(_923) + ceil32(return_data.size) + 2564] = mem[floor32(_923) + ceil32(return_data.size) + -(_923 % 32) + 2596 len _923 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_923) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                        return 1
                                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1024] = arg3
                                    mem[ceil32(return_data.size) + 1056] = arg3
                                    mem[ceil32(return_data.size) + 1088] = arg3
                                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 1764] = 768
                                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                    _926 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _926 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _926 + 32]
                                    else:
                                        mem[floor32(_926) + ceil32(return_data.size) + 2564] = mem[floor32(_926) + ceil32(return_data.size) + -(_926 % 32) + 2596 len _926 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_926) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        mem[floor32(_102) + ceil32(return_data.size) + 1732] = mem[floor32(_102) + ceil32(return_data.size) + -(_102 % 32) + 1764 len _102 % 32]
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1700 len floor32(_102) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)][arg5]:
                                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1024] = arg3
                                    mem[ceil32(return_data.size) + 1056] = arg3
                                    mem[ceil32(return_data.size) + 1088] = arg3
                                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 1764] = 768
                                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                    _929 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _929 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _929 + 32]
                                    else:
                                        mem[floor32(_929) + ceil32(return_data.size) + 2564] = mem[floor32(_929) + ceil32(return_data.size) + -(_929 % 32) + 2596 len _929 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_929) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                        return 1
                                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1024] = arg3
                                    mem[ceil32(return_data.size) + 1056] = arg3
                                    mem[ceil32(return_data.size) + 1088] = arg3
                                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 1764] = 768
                                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                    _932 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _932 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _932 + 32]
                                    else:
                                        mem[floor32(_932) + ceil32(return_data.size) + 2564] = mem[floor32(_932) + ceil32(return_data.size) + -(_932 % 32) + 2596 len _932 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_932) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
        else:
            mem[ceil32(return_data.size) + 96 len 96] = code.data[5701 len 96]
            mem[ceil32(return_data.size) + 192] = arg1
            mem[ceil32(return_data.size) + 224] = arg1
            mem[ceil32(return_data.size) + 256] = arg1
            mem[ceil32(return_data.size) + 288 len 320] = code.data[5701 len 320]
            mem[ceil32(return_data.size) + 608 len 320] = code.data[5701 len 320]
            mem[ceil32(return_data.size) + 928] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 964 len 96] = address(arg1), address(arg1), arg1
            mem[ceil32(return_data.size) + 1060 len 320] = code.data[5701 len 320]
            mem[ceil32(return_data.size) + 1380 len 320] = code.data[5701 len 320]
            mem[ceil32(return_data.size) + 932] = 768
            mem[ceil32(return_data.size) + 1700] = mem[_4 + 96]
            _96 = mem[_4 + 96]
            mem[ceil32(return_data.size) + 1732 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
            if not _96 % 32:
                require ext_code.size(sub_18128b53Address)
                staticcall sub_18128b53Address.0x50ac547d with:
                        gas gas_remaining wei
                       args 768, address(arg1), arg1 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1700 len _96 + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    return 0
                if not stor1[address(arg2)][address(arg4)][arg5]:
                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                    mem[ceil32(return_data.size) + 1024] = arg2
                    mem[ceil32(return_data.size) + 1056] = arg2
                    mem[ceil32(return_data.size) + 1088] = arg2
                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1764] = 768
                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                    _887 = mem[_4 + 96]
                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                    if not _887 % 32:
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _887 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)][arg5]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2455 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2455 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2455 + 32]
                                    else:
                                        mem[floor32(_2455) + ceil32(return_data.size) + 3396] = mem[floor32(_2455) + ceil32(return_data.size) + -(_2455 % 32) + 3428 len _2455 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2455) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2458 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2458 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2458 + 32]
                                    else:
                                        mem[floor32(_2458) + ceil32(return_data.size) + 3396] = mem[floor32(_2458) + ceil32(return_data.size) + -(_2458 % 32) + 3428 len _2458 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2458) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        mem[floor32(_887) + ceil32(return_data.size) + 2564] = mem[floor32(_887) + ceil32(return_data.size) + -(_887 % 32) + 2596 len _887 % 32]
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_887) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)][arg5]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2461 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2461 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2461 + 32]
                                    else:
                                        mem[floor32(_2461) + ceil32(return_data.size) + 3396] = mem[floor32(_2461) + ceil32(return_data.size) + -(_2461 % 32) + 3428 len _2461 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2461) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2464 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2464 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2464 + 32]
                                    else:
                                        mem[floor32(_2464) + ceil32(return_data.size) + 3396] = mem[floor32(_2464) + ceil32(return_data.size) + -(_2464 % 32) + 3428 len _2464 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2464) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    if ext_call.return_data[0] == stor2[address(arg2)][address(arg4)][arg5]:
                        if arg3 == arg1:
                            return 1
                        if not stor1[address(arg3)][address(arg4)][arg5]:
                            mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                            mem[ceil32(return_data.size) + 1024] = arg3
                            mem[ceil32(return_data.size) + 1056] = arg3
                            mem[ceil32(return_data.size) + 1088] = arg3
                            mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                            mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 1764] = 768
                            mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                            _893 = mem[_4 + 96]
                            mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                            if not _893 % 32:
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _893 + 32]
                            else:
                                mem[floor32(_893) + ceil32(return_data.size) + 2564] = mem[floor32(_893) + ceil32(return_data.size) + -(_893 % 32) + 2596 len _893 % 32]
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_893) + 64]
                        else:
                            if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                return 1
                            mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                            mem[ceil32(return_data.size) + 1024] = arg3
                            mem[ceil32(return_data.size) + 1056] = arg3
                            mem[ceil32(return_data.size) + 1088] = arg3
                            mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                            mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 1764] = 768
                            mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                            _896 = mem[_4 + 96]
                            mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                            if not _896 % 32:
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _896 + 32]
                            else:
                                mem[floor32(_896) + ceil32(return_data.size) + 2564] = mem[floor32(_896) + ceil32(return_data.size) + -(_896 % 32) + 2596 len _896 % 32]
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_896) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                        mem[ceil32(return_data.size) + 1024] = arg2
                        mem[ceil32(return_data.size) + 1056] = arg2
                        mem[ceil32(return_data.size) + 1088] = arg2
                        mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                        mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1764] = 768
                        mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                        _890 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _890 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _890 + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                return 0
                            if arg3 != arg1:
                                if ext_call.return_data[0]:
                                    if not stor1[address(arg3)][address(arg4)][arg5]:
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _2467 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _2467 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2467 + 32]
                                        else:
                                            mem[floor32(_2467) + ceil32(return_data.size) + 3396] = mem[floor32(_2467) + ceil32(return_data.size) + -(_2467 % 32) + 3428 len _2467 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2467) + 64]
                                    else:
                                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                            return 1
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _2470 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _2470 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2470 + 32]
                                        else:
                                            mem[floor32(_2470) + ceil32(return_data.size) + 3396] = mem[floor32(_2470) + ceil32(return_data.size) + -(_2470 % 32) + 3428 len _2470 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2470) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                        else:
                            mem[floor32(_890) + ceil32(return_data.size) + 2564] = mem[floor32(_890) + ceil32(return_data.size) + -(_890 % 32) + 2596 len _890 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_890) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                return 0
                            if arg3 != arg1:
                                if ext_call.return_data[0]:
                                    if not stor1[address(arg3)][address(arg4)][arg5]:
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _2473 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _2473 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2473 + 32]
                                        else:
                                            mem[floor32(_2473) + ceil32(return_data.size) + 3396] = mem[floor32(_2473) + ceil32(return_data.size) + -(_2473 % 32) + 3428 len _2473 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2473) + 64]
                                    else:
                                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                            return 1
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _2476 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _2476 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2476 + 32]
                                        else:
                                            mem[floor32(_2476) + ceil32(return_data.size) + 3396] = mem[floor32(_2476) + ceil32(return_data.size) + -(_2476 % 32) + 3428 len _2476 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2476) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
            else:
                mem[floor32(_96) + ceil32(return_data.size) + 1732] = mem[floor32(_96) + ceil32(return_data.size) + -(_96 % 32) + 1764 len _96 % 32]
                require ext_code.size(sub_18128b53Address)
                staticcall sub_18128b53Address.0x50ac547d with:
                        gas gas_remaining wei
                       args 768, address(arg1), arg1 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1700 len floor32(_96) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    return 0
                if not stor1[address(arg2)][address(arg4)][arg5]:
                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                    mem[ceil32(return_data.size) + 1024] = arg2
                    mem[ceil32(return_data.size) + 1056] = arg2
                    mem[ceil32(return_data.size) + 1088] = arg2
                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1764] = 768
                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                    _899 = mem[_4 + 96]
                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                    if not _899 % 32:
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _899 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)][arg5]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2479 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2479 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2479 + 32]
                                    else:
                                        mem[floor32(_2479) + ceil32(return_data.size) + 3396] = mem[floor32(_2479) + ceil32(return_data.size) + -(_2479 % 32) + 3428 len _2479 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2479) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2482 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2482 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2482 + 32]
                                    else:
                                        mem[floor32(_2482) + ceil32(return_data.size) + 3396] = mem[floor32(_2482) + ceil32(return_data.size) + -(_2482 % 32) + 3428 len _2482 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2482) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        mem[floor32(_899) + ceil32(return_data.size) + 2564] = mem[floor32(_899) + ceil32(return_data.size) + -(_899 % 32) + 2596 len _899 % 32]
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_899) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)][arg5]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2485 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2485 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2485 + 32]
                                    else:
                                        mem[floor32(_2485) + ceil32(return_data.size) + 3396] = mem[floor32(_2485) + ceil32(return_data.size) + -(_2485 % 32) + 3428 len _2485 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2485) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2488 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2488 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2488 + 32]
                                    else:
                                        mem[floor32(_2488) + ceil32(return_data.size) + 3396] = mem[floor32(_2488) + ceil32(return_data.size) + -(_2488 % 32) + 3428 len _2488 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2488) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    if ext_call.return_data[0] == stor2[address(arg2)][address(arg4)][arg5]:
                        if arg3 == arg1:
                            return 1
                        if not stor1[address(arg3)][address(arg4)][arg5]:
                            mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                            mem[ceil32(return_data.size) + 1024] = arg3
                            mem[ceil32(return_data.size) + 1056] = arg3
                            mem[ceil32(return_data.size) + 1088] = arg3
                            mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                            mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 1764] = 768
                            mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                            _905 = mem[_4 + 96]
                            mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                            if not _905 % 32:
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _905 + 32]
                            else:
                                mem[floor32(_905) + ceil32(return_data.size) + 2564] = mem[floor32(_905) + ceil32(return_data.size) + -(_905 % 32) + 2596 len _905 % 32]
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_905) + 64]
                        else:
                            if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                return 1
                            mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                            mem[ceil32(return_data.size) + 1024] = arg3
                            mem[ceil32(return_data.size) + 1056] = arg3
                            mem[ceil32(return_data.size) + 1088] = arg3
                            mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                            mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 1764] = 768
                            mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                            _908 = mem[_4 + 96]
                            mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                            if not _908 % 32:
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _908 + 32]
                            else:
                                mem[floor32(_908) + ceil32(return_data.size) + 2564] = mem[floor32(_908) + ceil32(return_data.size) + -(_908 % 32) + 2596 len _908 % 32]
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_908) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                        mem[ceil32(return_data.size) + 1024] = arg2
                        mem[ceil32(return_data.size) + 1056] = arg2
                        mem[ceil32(return_data.size) + 1088] = arg2
                        mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                        mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1764] = 768
                        mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                        _902 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _902 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _902 + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                return 0
                            if arg3 != arg1:
                                if ext_call.return_data[0]:
                                    if not stor1[address(arg3)][address(arg4)][arg5]:
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _2491 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _2491 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2491 + 32]
                                        else:
                                            mem[floor32(_2491) + ceil32(return_data.size) + 3396] = mem[floor32(_2491) + ceil32(return_data.size) + -(_2491 % 32) + 3428 len _2491 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2491) + 64]
                                    else:
                                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                            return 1
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _2494 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _2494 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2494 + 32]
                                        else:
                                            mem[floor32(_2494) + ceil32(return_data.size) + 3396] = mem[floor32(_2494) + ceil32(return_data.size) + -(_2494 % 32) + 3428 len _2494 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2494) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                        else:
                            mem[floor32(_902) + ceil32(return_data.size) + 2564] = mem[floor32(_902) + ceil32(return_data.size) + -(_902 % 32) + 2596 len _902 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_902) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                return 0
                            if arg3 != arg1:
                                if ext_call.return_data[0]:
                                    if not stor1[address(arg3)][address(arg4)][arg5]:
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _2497 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _2497 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2497 + 32]
                                        else:
                                            mem[floor32(_2497) + ceil32(return_data.size) + 3396] = mem[floor32(_2497) + ceil32(return_data.size) + -(_2497 % 32) + 3428 len _2497 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2497) + 64]
                                    else:
                                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                            return 1
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _2500 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _2500 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _2500 + 32]
                                        else:
                                            mem[floor32(_2500) + ceil32(return_data.size) + 3396] = mem[floor32(_2500) + ceil32(return_data.size) + -(_2500 % 32) + 3428 len _2500 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2500) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_af05064f(?) {
    require calldata.size - 4 >= 192
    mem[96] = 0x36befc5f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg4
    mem[132] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
    mem[164] = arg5
    require ext_code.size(sub_1c4dd7d0Address)
    staticcall sub_1c4dd7d0Address.0x36befc5f with:
            gas gas_remaining wei
           args address(arg4), 0xa9059cbb00000000000000000000000000000000000000000000000000000000, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg4) << 64
    require mem[96 len 4], address(arg4) << 64 <= 4294967296
    require mem[96 len 4], address(arg4) << 64 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], address(arg4) << 64 + 96] + mem[96 len 4], address(arg4) << 64 + 32 and mem[mem[96 len 4], address(arg4) << 64 + 96] <= 4294967296
    require ext_code.size(sub_1c4dd7d0Address)
    staticcall sub_1c4dd7d0Address.0xdbbace5c with:
            gas gas_remaining wei
           args address(arg4), 0xa9059cbb00000000000000000000000000000000000000000000000000000000, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor1[address(arg1)][address(arg4)][arg5]:
        mem[ceil32(return_data.size) + 96 len 96] = code.data[5701 len 96]
        mem[ceil32(return_data.size) + 192] = arg1
        mem[ceil32(return_data.size) + 224] = arg1
        mem[ceil32(return_data.size) + 256] = arg1
        mem[ceil32(return_data.size) + 288 len 320] = code.data[5701 len 320]
        mem[ceil32(return_data.size) + 608 len 320] = code.data[5701 len 320]
        mem[ceil32(return_data.size) + 928] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 964 len 96] = address(arg1), address(arg1), arg1
        mem[ceil32(return_data.size) + 1060 len 320] = code.data[5701 len 320]
        mem[ceil32(return_data.size) + 1380 len 320] = code.data[5701 len 320]
        mem[ceil32(return_data.size) + 932] = 768
        mem[ceil32(return_data.size) + 1700] = mem[_4 + 96]
        _93 = mem[_4 + 96]
        mem[ceil32(return_data.size) + 1732 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
        if not _93 % 32:
            require ext_code.size(sub_18128b53Address)
            staticcall sub_18128b53Address.0x50ac547d with:
                    gas gas_remaining wei
                   args 768, address(arg1), arg1 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1700 len _93 + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 0
            stor1[address(arg1)][address(arg4)][arg5] = 1
            stor2[address(arg1)][address(arg4)][arg5] = ext_call.return_data[0]
            emit Added(arg1, arg4, arg5);
            if not ext_call.return_data[0]:
                return 0
            if not stor1[address(arg2)][address(arg4)][arg5]:
                mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                mem[ceil32(return_data.size) + 1024] = arg2
                mem[ceil32(return_data.size) + 1056] = arg2
                mem[ceil32(return_data.size) + 1088] = arg2
                mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                mem[ceil32(return_data.size) + 1764] = 768
                mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                _1079 = mem[_4 + 96]
                mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                if not _1079 % 32:
                    require ext_code.size(sub_18128b53Address)
                    staticcall sub_18128b53Address.0x50ac547d with:
                            gas gas_remaining wei
                           args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _1079 + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    stor1[address(arg2)][address(arg4)][arg5] = 1
                    stor2[address(arg2)][address(arg4)][arg5] = ext_call.return_data[0]
                    emit Added(arg2, arg4, arg5);
                    if not ext_call.return_data[0]:
                        return 0
                    if arg3 != arg1:
                        if ext_call.return_data[0]:
                            if not stor1[address(arg3)][address(arg4)][arg5]:
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _3487 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _3487 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3487 + 32]
                                else:
                                    mem[floor32(_3487) + ceil32(return_data.size) + 3396] = mem[floor32(_3487) + ceil32(return_data.size) + -(_3487 % 32) + 3428 len _3487 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3487) + 64]
                            else:
                                if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                    return 1
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _3490 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _3490 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3490 + 32]
                                else:
                                    mem[floor32(_3490) + ceil32(return_data.size) + 3396] = mem[floor32(_3490) + ceil32(return_data.size) + -(_3490 % 32) + 3428 len _3490 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3490) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                stor1[address(arg3)][address(arg4)][arg5] = 1
                                stor2[address(arg3)][address(arg4)][arg5] = ext_call.return_data[0]
                                emit Added(arg3, arg4, arg5);
                else:
                    mem[floor32(_1079) + ceil32(return_data.size) + 2564] = mem[floor32(_1079) + ceil32(return_data.size) + -(_1079 % 32) + 2596 len _1079 % 32]
                    require ext_code.size(sub_18128b53Address)
                    staticcall sub_18128b53Address.0x50ac547d with:
                            gas gas_remaining wei
                           args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1079) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    stor1[address(arg2)][address(arg4)][arg5] = 1
                    stor2[address(arg2)][address(arg4)][arg5] = ext_call.return_data[0]
                    emit Added(arg2, arg4, arg5);
                    if not ext_call.return_data[0]:
                        return 0
                    if arg3 != arg1:
                        if ext_call.return_data[0]:
                            if not stor1[address(arg3)][address(arg4)][arg5]:
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _3493 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _3493 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3493 + 32]
                                else:
                                    mem[floor32(_3493) + ceil32(return_data.size) + 3396] = mem[floor32(_3493) + ceil32(return_data.size) + -(_3493 % 32) + 3428 len _3493 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3493) + 64]
                            else:
                                if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                    return 1
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _3496 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _3496 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3496 + 32]
                                else:
                                    mem[floor32(_3496) + ceil32(return_data.size) + 3396] = mem[floor32(_3496) + ceil32(return_data.size) + -(_3496 % 32) + 3428 len _3496 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3496) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                stor1[address(arg3)][address(arg4)][arg5] = 1
                                stor2[address(arg3)][address(arg4)][arg5] = ext_call.return_data[0]
                                emit Added(arg3, arg4, arg5);
            else:
                if ext_call.return_data[0] == stor2[address(arg2)][address(arg4)][arg5]:
                    if arg3 == arg1:
                        return 1
                    if not stor1[address(arg3)][address(arg4)][arg5]:
                        mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                        mem[ceil32(return_data.size) + 1024] = arg3
                        mem[ceil32(return_data.size) + 1056] = arg3
                        mem[ceil32(return_data.size) + 1088] = arg3
                        mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                        mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1764] = 768
                        mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                        _1085 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _1085 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _1085 + 32]
                        else:
                            mem[floor32(_1085) + ceil32(return_data.size) + 2564] = mem[floor32(_1085) + ceil32(return_data.size) + -(_1085 % 32) + 2596 len _1085 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1085) + 64]
                    else:
                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                            return 1
                        mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                        mem[ceil32(return_data.size) + 1024] = arg3
                        mem[ceil32(return_data.size) + 1056] = arg3
                        mem[ceil32(return_data.size) + 1088] = arg3
                        mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                        mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1764] = 768
                        mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                        _1088 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _1088 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _1088 + 32]
                        else:
                            mem[floor32(_1088) + ceil32(return_data.size) + 2564] = mem[floor32(_1088) + ceil32(return_data.size) + -(_1088 % 32) + 2596 len _1088 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1088) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        stor1[address(arg3)][address(arg4)][arg5] = 1
                        stor2[address(arg3)][address(arg4)][arg5] = ext_call.return_data[0]
                        emit Added(arg3, arg4, arg5);
                else:
                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                    mem[ceil32(return_data.size) + 1024] = arg2
                    mem[ceil32(return_data.size) + 1056] = arg2
                    mem[ceil32(return_data.size) + 1088] = arg2
                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1764] = 768
                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                    _1082 = mem[_4 + 96]
                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                    if not _1082 % 32:
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _1082 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        stor1[address(arg2)][address(arg4)][arg5] = 1
                        stor2[address(arg2)][address(arg4)][arg5] = ext_call.return_data[0]
                        emit Added(arg2, arg4, arg5);
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)][arg5]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3499 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3499 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3499 + 32]
                                    else:
                                        mem[floor32(_3499) + ceil32(return_data.size) + 3396] = mem[floor32(_3499) + ceil32(return_data.size) + -(_3499 % 32) + 3428 len _3499 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3499) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3502 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3502 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3502 + 32]
                                    else:
                                        mem[floor32(_3502) + ceil32(return_data.size) + 3396] = mem[floor32(_3502) + ceil32(return_data.size) + -(_3502 % 32) + 3428 len _3502 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3502) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    stor1[address(arg3)][address(arg4)][arg5] = 1
                                    stor2[address(arg3)][address(arg4)][arg5] = ext_call.return_data[0]
                                    emit Added(arg3, arg4, arg5);
                    else:
                        mem[floor32(_1082) + ceil32(return_data.size) + 2564] = mem[floor32(_1082) + ceil32(return_data.size) + -(_1082 % 32) + 2596 len _1082 % 32]
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1082) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        stor1[address(arg2)][address(arg4)][arg5] = 1
                        stor2[address(arg2)][address(arg4)][arg5] = ext_call.return_data[0]
                        emit Added(arg2, arg4, arg5);
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)][arg5]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3505 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3505 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3505 + 32]
                                    else:
                                        mem[floor32(_3505) + ceil32(return_data.size) + 3396] = mem[floor32(_3505) + ceil32(return_data.size) + -(_3505 % 32) + 3428 len _3505 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3505) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3508 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3508 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3508 + 32]
                                    else:
                                        mem[floor32(_3508) + ceil32(return_data.size) + 3396] = mem[floor32(_3508) + ceil32(return_data.size) + -(_3508 % 32) + 3428 len _3508 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3508) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    stor1[address(arg3)][address(arg4)][arg5] = 1
                                    stor2[address(arg3)][address(arg4)][arg5] = ext_call.return_data[0]
                                    emit Added(arg3, arg4, arg5);
        else:
            mem[floor32(_93) + ceil32(return_data.size) + 1732] = mem[floor32(_93) + ceil32(return_data.size) + -(_93 % 32) + 1764 len _93 % 32]
            require ext_code.size(sub_18128b53Address)
            staticcall sub_18128b53Address.0x50ac547d with:
                    gas gas_remaining wei
                   args 768, address(arg1), arg1 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1700 len floor32(_93) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 0
            stor1[address(arg1)][address(arg4)][arg5] = 1
            stor2[address(arg1)][address(arg4)][arg5] = ext_call.return_data[0]
            emit Added(arg1, arg4, arg5);
            if not ext_call.return_data[0]:
                return 0
            if not stor1[address(arg2)][address(arg4)][arg5]:
                mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                mem[ceil32(return_data.size) + 1024] = arg2
                mem[ceil32(return_data.size) + 1056] = arg2
                mem[ceil32(return_data.size) + 1088] = arg2
                mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                mem[ceil32(return_data.size) + 1764] = 768
                mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                _1091 = mem[_4 + 96]
                mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                if not _1091 % 32:
                    require ext_code.size(sub_18128b53Address)
                    staticcall sub_18128b53Address.0x50ac547d with:
                            gas gas_remaining wei
                           args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _1091 + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    stor1[address(arg2)][address(arg4)][arg5] = 1
                    stor2[address(arg2)][address(arg4)][arg5] = ext_call.return_data[0]
                    emit Added(arg2, arg4, arg5);
                    if not ext_call.return_data[0]:
                        return 0
                    if arg3 != arg1:
                        if ext_call.return_data[0]:
                            if not stor1[address(arg3)][address(arg4)][arg5]:
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _3511 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _3511 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3511 + 32]
                                else:
                                    mem[floor32(_3511) + ceil32(return_data.size) + 3396] = mem[floor32(_3511) + ceil32(return_data.size) + -(_3511 % 32) + 3428 len _3511 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3511) + 64]
                            else:
                                if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                    return 1
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _3514 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _3514 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3514 + 32]
                                else:
                                    mem[floor32(_3514) + ceil32(return_data.size) + 3396] = mem[floor32(_3514) + ceil32(return_data.size) + -(_3514 % 32) + 3428 len _3514 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3514) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                stor1[address(arg3)][address(arg4)][arg5] = 1
                                stor2[address(arg3)][address(arg4)][arg5] = ext_call.return_data[0]
                                emit Added(arg3, arg4, arg5);
                else:
                    mem[floor32(_1091) + ceil32(return_data.size) + 2564] = mem[floor32(_1091) + ceil32(return_data.size) + -(_1091 % 32) + 2596 len _1091 % 32]
                    require ext_code.size(sub_18128b53Address)
                    staticcall sub_18128b53Address.0x50ac547d with:
                            gas gas_remaining wei
                           args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1091) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    stor1[address(arg2)][address(arg4)][arg5] = 1
                    stor2[address(arg2)][address(arg4)][arg5] = ext_call.return_data[0]
                    emit Added(arg2, arg4, arg5);
                    if not ext_call.return_data[0]:
                        return 0
                    if arg3 != arg1:
                        if ext_call.return_data[0]:
                            if not stor1[address(arg3)][address(arg4)][arg5]:
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _3517 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _3517 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3517 + 32]
                                else:
                                    mem[floor32(_3517) + ceil32(return_data.size) + 3396] = mem[floor32(_3517) + ceil32(return_data.size) + -(_3517 % 32) + 3428 len _3517 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3517) + 64]
                            else:
                                if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                    return 1
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _3520 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _3520 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3520 + 32]
                                else:
                                    mem[floor32(_3520) + ceil32(return_data.size) + 3396] = mem[floor32(_3520) + ceil32(return_data.size) + -(_3520 % 32) + 3428 len _3520 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3520) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                stor1[address(arg3)][address(arg4)][arg5] = 1
                                stor2[address(arg3)][address(arg4)][arg5] = ext_call.return_data[0]
                                emit Added(arg3, arg4, arg5);
            else:
                if ext_call.return_data[0] == stor2[address(arg2)][address(arg4)][arg5]:
                    if arg3 == arg1:
                        return 1
                    if not stor1[address(arg3)][address(arg4)][arg5]:
                        mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                        mem[ceil32(return_data.size) + 1024] = arg3
                        mem[ceil32(return_data.size) + 1056] = arg3
                        mem[ceil32(return_data.size) + 1088] = arg3
                        mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                        mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1764] = 768
                        mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                        _1097 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _1097 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _1097 + 32]
                        else:
                            mem[floor32(_1097) + ceil32(return_data.size) + 2564] = mem[floor32(_1097) + ceil32(return_data.size) + -(_1097 % 32) + 2596 len _1097 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1097) + 64]
                    else:
                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                            return 1
                        mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                        mem[ceil32(return_data.size) + 1024] = arg3
                        mem[ceil32(return_data.size) + 1056] = arg3
                        mem[ceil32(return_data.size) + 1088] = arg3
                        mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                        mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1764] = 768
                        mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                        _1100 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _1100 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _1100 + 32]
                        else:
                            mem[floor32(_1100) + ceil32(return_data.size) + 2564] = mem[floor32(_1100) + ceil32(return_data.size) + -(_1100 % 32) + 2596 len _1100 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1100) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        stor1[address(arg3)][address(arg4)][arg5] = 1
                        stor2[address(arg3)][address(arg4)][arg5] = ext_call.return_data[0]
                        emit Added(arg3, arg4, arg5);
                else:
                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                    mem[ceil32(return_data.size) + 1024] = arg2
                    mem[ceil32(return_data.size) + 1056] = arg2
                    mem[ceil32(return_data.size) + 1088] = arg2
                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1764] = 768
                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                    _1094 = mem[_4 + 96]
                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                    if not _1094 % 32:
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _1094 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        stor1[address(arg2)][address(arg4)][arg5] = 1
                        stor2[address(arg2)][address(arg4)][arg5] = ext_call.return_data[0]
                        emit Added(arg2, arg4, arg5);
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)][arg5]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3523 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3523 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3523 + 32]
                                    else:
                                        mem[floor32(_3523) + ceil32(return_data.size) + 3396] = mem[floor32(_3523) + ceil32(return_data.size) + -(_3523 % 32) + 3428 len _3523 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3523) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3526 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3526 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3526 + 32]
                                    else:
                                        mem[floor32(_3526) + ceil32(return_data.size) + 3396] = mem[floor32(_3526) + ceil32(return_data.size) + -(_3526 % 32) + 3428 len _3526 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3526) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    stor1[address(arg3)][address(arg4)][arg5] = 1
                                    stor2[address(arg3)][address(arg4)][arg5] = ext_call.return_data[0]
                                    emit Added(arg3, arg4, arg5);
                    else:
                        mem[floor32(_1094) + ceil32(return_data.size) + 2564] = mem[floor32(_1094) + ceil32(return_data.size) + -(_1094 % 32) + 2596 len _1094 % 32]
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1094) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        stor1[address(arg2)][address(arg4)][arg5] = 1
                        stor2[address(arg2)][address(arg4)][arg5] = ext_call.return_data[0]
                        emit Added(arg2, arg4, arg5);
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)][arg5]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3529 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3529 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3529 + 32]
                                    else:
                                        mem[floor32(_3529) + ceil32(return_data.size) + 3396] = mem[floor32(_3529) + ceil32(return_data.size) + -(_3529 % 32) + 3428 len _3529 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3529) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3532 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3532 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3532 + 32]
                                    else:
                                        mem[floor32(_3532) + ceil32(return_data.size) + 3396] = mem[floor32(_3532) + ceil32(return_data.size) + -(_3532 % 32) + 3428 len _3532 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3532) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    stor1[address(arg3)][address(arg4)][arg5] = 1
                                    stor2[address(arg3)][address(arg4)][arg5] = ext_call.return_data[0]
                                    emit Added(arg3, arg4, arg5);
    else:
        if ext_call.return_data[0] == stor2[address(arg1)][address(arg4)][arg5]:
            if not stor1[address(arg2)][address(arg4)][arg5]:
                mem[ceil32(return_data.size) + 96 len 96] = code.data[5701 len 96]
                mem[ceil32(return_data.size) + 192] = arg2
                mem[ceil32(return_data.size) + 224] = arg2
                mem[ceil32(return_data.size) + 256] = arg2
                mem[ceil32(return_data.size) + 288 len 320] = code.data[5701 len 320]
                mem[ceil32(return_data.size) + 608 len 320] = code.data[5701 len 320]
                mem[ceil32(return_data.size) + 928] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 964 len 96] = address(arg2), address(arg2), arg2
                mem[ceil32(return_data.size) + 1060 len 320] = code.data[5701 len 320]
                mem[ceil32(return_data.size) + 1380 len 320] = code.data[5701 len 320]
                mem[ceil32(return_data.size) + 932] = 768
                mem[ceil32(return_data.size) + 1700] = mem[_4 + 96]
                _99 = mem[_4 + 96]
                mem[ceil32(return_data.size) + 1732 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                if not _99 % 32:
                    require ext_code.size(sub_18128b53Address)
                    staticcall sub_18128b53Address.0x50ac547d with:
                            gas gas_remaining wei
                           args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1700 len _99 + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    stor1[address(arg2)][address(arg4)][arg5] = 1
                    stor2[address(arg2)][address(arg4)][arg5] = ext_call.return_data[0]
                    emit Added(arg2, arg4, arg5);
                    if not ext_call.return_data[0]:
                        return 0
                    if arg3 != arg1:
                        if ext_call.return_data[0]:
                            if not stor1[address(arg3)][address(arg4)][arg5]:
                                mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                                mem[ceil32(return_data.size) + 1024] = arg3
                                mem[ceil32(return_data.size) + 1056] = arg3
                                mem[ceil32(return_data.size) + 1088] = arg3
                                mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 1764] = 768
                                mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                _1127 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _1127 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _1127 + 32]
                                else:
                                    mem[floor32(_1127) + ceil32(return_data.size) + 2564] = mem[floor32(_1127) + ceil32(return_data.size) + -(_1127 % 32) + 2596 len _1127 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1127) + 64]
                            else:
                                if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                    return 1
                                mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                                mem[ceil32(return_data.size) + 1024] = arg3
                                mem[ceil32(return_data.size) + 1056] = arg3
                                mem[ceil32(return_data.size) + 1088] = arg3
                                mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 1764] = 768
                                mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                _1130 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _1130 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _1130 + 32]
                                else:
                                    mem[floor32(_1130) + ceil32(return_data.size) + 2564] = mem[floor32(_1130) + ceil32(return_data.size) + -(_1130 % 32) + 2596 len _1130 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1130) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                stor1[address(arg3)][address(arg4)][arg5] = 1
                                stor2[address(arg3)][address(arg4)][arg5] = ext_call.return_data[0]
                                emit Added(arg3, arg4, arg5);
                else:
                    mem[floor32(_99) + ceil32(return_data.size) + 1732] = mem[floor32(_99) + ceil32(return_data.size) + -(_99 % 32) + 1764 len _99 % 32]
                    require ext_code.size(sub_18128b53Address)
                    staticcall sub_18128b53Address.0x50ac547d with:
                            gas gas_remaining wei
                           args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1700 len floor32(_99) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    stor1[address(arg2)][address(arg4)][arg5] = 1
                    stor2[address(arg2)][address(arg4)][arg5] = ext_call.return_data[0]
                    emit Added(arg2, arg4, arg5);
                    if not ext_call.return_data[0]:
                        return 0
                    if arg3 != arg1:
                        if ext_call.return_data[0]:
                            if not stor1[address(arg3)][address(arg4)][arg5]:
                                mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                                mem[ceil32(return_data.size) + 1024] = arg3
                                mem[ceil32(return_data.size) + 1056] = arg3
                                mem[ceil32(return_data.size) + 1088] = arg3
                                mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 1764] = 768
                                mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                _1133 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _1133 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _1133 + 32]
                                else:
                                    mem[floor32(_1133) + ceil32(return_data.size) + 2564] = mem[floor32(_1133) + ceil32(return_data.size) + -(_1133 % 32) + 2596 len _1133 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1133) + 64]
                            else:
                                if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                    return 1
                                mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                                mem[ceil32(return_data.size) + 1024] = arg3
                                mem[ceil32(return_data.size) + 1056] = arg3
                                mem[ceil32(return_data.size) + 1088] = arg3
                                mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                                mem[ceil32(return_data.size) + 1764] = 768
                                mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                _1136 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _1136 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _1136 + 32]
                                else:
                                    mem[floor32(_1136) + ceil32(return_data.size) + 2564] = mem[floor32(_1136) + ceil32(return_data.size) + -(_1136 % 32) + 2596 len _1136 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1136) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                stor1[address(arg3)][address(arg4)][arg5] = 1
                                stor2[address(arg3)][address(arg4)][arg5] = ext_call.return_data[0]
                                emit Added(arg3, arg4, arg5);
            else:
                if ext_call.return_data[0] == stor2[address(arg2)][address(arg4)][arg5]:
                    if arg3 == arg1:
                        return 1
                    if not stor1[address(arg3)][address(arg4)][arg5]:
                        mem[ceil32(return_data.size) + 96 len 96] = code.data[5701 len 96]
                        mem[ceil32(return_data.size) + 192] = arg3
                        mem[ceil32(return_data.size) + 224] = arg3
                        mem[ceil32(return_data.size) + 256] = arg3
                        mem[ceil32(return_data.size) + 288 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 608 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 928] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 964 len 96] = address(arg3), address(arg3), arg3
                        mem[ceil32(return_data.size) + 1060 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1380 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 932] = 768
                        mem[ceil32(return_data.size) + 1700] = mem[_4 + 96]
                        _105 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 1732 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _105 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1700 len _105 + 32]
                        else:
                            mem[floor32(_105) + ceil32(return_data.size) + 1732] = mem[floor32(_105) + ceil32(return_data.size) + -(_105 % 32) + 1764 len _105 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1700 len floor32(_105) + 64]
                    else:
                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                            return 1
                        mem[ceil32(return_data.size) + 96 len 96] = code.data[5701 len 96]
                        mem[ceil32(return_data.size) + 192] = arg3
                        mem[ceil32(return_data.size) + 224] = arg3
                        mem[ceil32(return_data.size) + 256] = arg3
                        mem[ceil32(return_data.size) + 288 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 608 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 928] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 964 len 96] = address(arg3), address(arg3), arg3
                        mem[ceil32(return_data.size) + 1060 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1380 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 932] = 768
                        mem[ceil32(return_data.size) + 1700] = mem[_4 + 96]
                        _108 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 1732 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _108 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1700 len _108 + 32]
                        else:
                            mem[floor32(_108) + ceil32(return_data.size) + 1732] = mem[floor32(_108) + ceil32(return_data.size) + -(_108 % 32) + 1764 len _108 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1700 len floor32(_108) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        stor1[address(arg3)][address(arg4)][arg5] = 1
                        stor2[address(arg3)][address(arg4)][arg5] = ext_call.return_data[0]
                        emit Added(arg3, arg4, arg5);
                else:
                    mem[ceil32(return_data.size) + 96 len 96] = code.data[5701 len 96]
                    mem[ceil32(return_data.size) + 192] = arg2
                    mem[ceil32(return_data.size) + 224] = arg2
                    mem[ceil32(return_data.size) + 256] = arg2
                    mem[ceil32(return_data.size) + 288 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 608 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 928] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 964 len 96] = address(arg2), address(arg2), arg2
                    mem[ceil32(return_data.size) + 1060 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1380 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 932] = 768
                    mem[ceil32(return_data.size) + 1700] = mem[_4 + 96]
                    _102 = mem[_4 + 96]
                    mem[ceil32(return_data.size) + 1732 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                    if not _102 % 32:
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1700 len _102 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        stor1[address(arg2)][address(arg4)][arg5] = 1
                        stor2[address(arg2)][address(arg4)][arg5] = ext_call.return_data[0]
                        emit Added(arg2, arg4, arg5);
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)][arg5]:
                                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1024] = arg3
                                    mem[ceil32(return_data.size) + 1056] = arg3
                                    mem[ceil32(return_data.size) + 1088] = arg3
                                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 1764] = 768
                                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                    _1139 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _1139 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _1139 + 32]
                                    else:
                                        mem[floor32(_1139) + ceil32(return_data.size) + 2564] = mem[floor32(_1139) + ceil32(return_data.size) + -(_1139 % 32) + 2596 len _1139 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1139) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                        return 1
                                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1024] = arg3
                                    mem[ceil32(return_data.size) + 1056] = arg3
                                    mem[ceil32(return_data.size) + 1088] = arg3
                                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 1764] = 768
                                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                    _1142 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _1142 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _1142 + 32]
                                    else:
                                        mem[floor32(_1142) + ceil32(return_data.size) + 2564] = mem[floor32(_1142) + ceil32(return_data.size) + -(_1142 % 32) + 2596 len _1142 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1142) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    stor1[address(arg3)][address(arg4)][arg5] = 1
                                    stor2[address(arg3)][address(arg4)][arg5] = ext_call.return_data[0]
                                    emit Added(arg3, arg4, arg5);
                    else:
                        mem[floor32(_102) + ceil32(return_data.size) + 1732] = mem[floor32(_102) + ceil32(return_data.size) + -(_102 % 32) + 1764 len _102 % 32]
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1700 len floor32(_102) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        stor1[address(arg2)][address(arg4)][arg5] = 1
                        stor2[address(arg2)][address(arg4)][arg5] = ext_call.return_data[0]
                        emit Added(arg2, arg4, arg5);
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)][arg5]:
                                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1024] = arg3
                                    mem[ceil32(return_data.size) + 1056] = arg3
                                    mem[ceil32(return_data.size) + 1088] = arg3
                                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 1764] = 768
                                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                    _1145 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _1145 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _1145 + 32]
                                    else:
                                        mem[floor32(_1145) + ceil32(return_data.size) + 2564] = mem[floor32(_1145) + ceil32(return_data.size) + -(_1145 % 32) + 2596 len _1145 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1145) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                        return 1
                                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1024] = arg3
                                    mem[ceil32(return_data.size) + 1056] = arg3
                                    mem[ceil32(return_data.size) + 1088] = arg3
                                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 1764] = 768
                                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                    _1148 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _1148 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _1148 + 32]
                                    else:
                                        mem[floor32(_1148) + ceil32(return_data.size) + 2564] = mem[floor32(_1148) + ceil32(return_data.size) + -(_1148 % 32) + 2596 len _1148 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1148) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    stor1[address(arg3)][address(arg4)][arg5] = 1
                                    stor2[address(arg3)][address(arg4)][arg5] = ext_call.return_data[0]
                                    emit Added(arg3, arg4, arg5);
        else:
            mem[ceil32(return_data.size) + 96 len 96] = code.data[5701 len 96]
            mem[ceil32(return_data.size) + 192] = arg1
            mem[ceil32(return_data.size) + 224] = arg1
            mem[ceil32(return_data.size) + 256] = arg1
            mem[ceil32(return_data.size) + 288 len 320] = code.data[5701 len 320]
            mem[ceil32(return_data.size) + 608 len 320] = code.data[5701 len 320]
            mem[ceil32(return_data.size) + 928] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 964 len 96] = address(arg1), address(arg1), arg1
            mem[ceil32(return_data.size) + 1060 len 320] = code.data[5701 len 320]
            mem[ceil32(return_data.size) + 1380 len 320] = code.data[5701 len 320]
            mem[ceil32(return_data.size) + 932] = 768
            mem[ceil32(return_data.size) + 1700] = mem[_4 + 96]
            _96 = mem[_4 + 96]
            mem[ceil32(return_data.size) + 1732 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
            if not _96 % 32:
                require ext_code.size(sub_18128b53Address)
                staticcall sub_18128b53Address.0x50ac547d with:
                        gas gas_remaining wei
                       args 768, address(arg1), arg1 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1700 len _96 + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    return 0
                stor1[address(arg1)][address(arg4)][arg5] = 1
                stor2[address(arg1)][address(arg4)][arg5] = ext_call.return_data[0]
                emit Added(arg1, arg4, arg5);
                if not ext_call.return_data[0]:
                    return 0
                if not stor1[address(arg2)][address(arg4)][arg5]:
                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                    mem[ceil32(return_data.size) + 1024] = arg2
                    mem[ceil32(return_data.size) + 1056] = arg2
                    mem[ceil32(return_data.size) + 1088] = arg2
                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1764] = 768
                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                    _1103 = mem[_4 + 96]
                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                    if not _1103 % 32:
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _1103 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        stor1[address(arg2)][address(arg4)][arg5] = 1
                        stor2[address(arg2)][address(arg4)][arg5] = ext_call.return_data[0]
                        emit Added(arg2, arg4, arg5);
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)][arg5]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3535 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3535 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3535 + 32]
                                    else:
                                        mem[floor32(_3535) + ceil32(return_data.size) + 3396] = mem[floor32(_3535) + ceil32(return_data.size) + -(_3535 % 32) + 3428 len _3535 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3535) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3538 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3538 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3538 + 32]
                                    else:
                                        mem[floor32(_3538) + ceil32(return_data.size) + 3396] = mem[floor32(_3538) + ceil32(return_data.size) + -(_3538 % 32) + 3428 len _3538 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3538) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    stor1[address(arg3)][address(arg4)][arg5] = 1
                                    stor2[address(arg3)][address(arg4)][arg5] = ext_call.return_data[0]
                                    emit Added(arg3, arg4, arg5);
                    else:
                        mem[floor32(_1103) + ceil32(return_data.size) + 2564] = mem[floor32(_1103) + ceil32(return_data.size) + -(_1103 % 32) + 2596 len _1103 % 32]
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1103) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        stor1[address(arg2)][address(arg4)][arg5] = 1
                        stor2[address(arg2)][address(arg4)][arg5] = ext_call.return_data[0]
                        emit Added(arg2, arg4, arg5);
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)][arg5]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3541 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3541 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3541 + 32]
                                    else:
                                        mem[floor32(_3541) + ceil32(return_data.size) + 3396] = mem[floor32(_3541) + ceil32(return_data.size) + -(_3541 % 32) + 3428 len _3541 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3541) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3544 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3544 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3544 + 32]
                                    else:
                                        mem[floor32(_3544) + ceil32(return_data.size) + 3396] = mem[floor32(_3544) + ceil32(return_data.size) + -(_3544 % 32) + 3428 len _3544 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3544) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    stor1[address(arg3)][address(arg4)][arg5] = 1
                                    stor2[address(arg3)][address(arg4)][arg5] = ext_call.return_data[0]
                                    emit Added(arg3, arg4, arg5);
                else:
                    if ext_call.return_data[0] == stor2[address(arg2)][address(arg4)][arg5]:
                        if arg3 == arg1:
                            return 1
                        if not stor1[address(arg3)][address(arg4)][arg5]:
                            mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                            mem[ceil32(return_data.size) + 1024] = arg3
                            mem[ceil32(return_data.size) + 1056] = arg3
                            mem[ceil32(return_data.size) + 1088] = arg3
                            mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                            mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 1764] = 768
                            mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                            _1109 = mem[_4 + 96]
                            mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                            if not _1109 % 32:
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _1109 + 32]
                            else:
                                mem[floor32(_1109) + ceil32(return_data.size) + 2564] = mem[floor32(_1109) + ceil32(return_data.size) + -(_1109 % 32) + 2596 len _1109 % 32]
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1109) + 64]
                        else:
                            if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                return 1
                            mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                            mem[ceil32(return_data.size) + 1024] = arg3
                            mem[ceil32(return_data.size) + 1056] = arg3
                            mem[ceil32(return_data.size) + 1088] = arg3
                            mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                            mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 1764] = 768
                            mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                            _1112 = mem[_4 + 96]
                            mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                            if not _1112 % 32:
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _1112 + 32]
                            else:
                                mem[floor32(_1112) + ceil32(return_data.size) + 2564] = mem[floor32(_1112) + ceil32(return_data.size) + -(_1112 % 32) + 2596 len _1112 % 32]
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1112) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            stor1[address(arg3)][address(arg4)][arg5] = 1
                            stor2[address(arg3)][address(arg4)][arg5] = ext_call.return_data[0]
                            emit Added(arg3, arg4, arg5);
                    else:
                        mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                        mem[ceil32(return_data.size) + 1024] = arg2
                        mem[ceil32(return_data.size) + 1056] = arg2
                        mem[ceil32(return_data.size) + 1088] = arg2
                        mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                        mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1764] = 768
                        mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                        _1106 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _1106 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _1106 + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                return 0
                            stor1[address(arg2)][address(arg4)][arg5] = 1
                            stor2[address(arg2)][address(arg4)][arg5] = ext_call.return_data[0]
                            emit Added(arg2, arg4, arg5);
                            if not ext_call.return_data[0]:
                                return 0
                            if arg3 != arg1:
                                if ext_call.return_data[0]:
                                    if not stor1[address(arg3)][address(arg4)][arg5]:
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _3547 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _3547 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3547 + 32]
                                        else:
                                            mem[floor32(_3547) + ceil32(return_data.size) + 3396] = mem[floor32(_3547) + ceil32(return_data.size) + -(_3547 % 32) + 3428 len _3547 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3547) + 64]
                                    else:
                                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                            return 1
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _3550 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _3550 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3550 + 32]
                                        else:
                                            mem[floor32(_3550) + ceil32(return_data.size) + 3396] = mem[floor32(_3550) + ceil32(return_data.size) + -(_3550 % 32) + 3428 len _3550 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3550) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        stor1[address(arg3)][address(arg4)][arg5] = 1
                                        stor2[address(arg3)][address(arg4)][arg5] = ext_call.return_data[0]
                                        emit Added(arg3, arg4, arg5);
                        else:
                            mem[floor32(_1106) + ceil32(return_data.size) + 2564] = mem[floor32(_1106) + ceil32(return_data.size) + -(_1106 % 32) + 2596 len _1106 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1106) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                return 0
                            stor1[address(arg2)][address(arg4)][arg5] = 1
                            stor2[address(arg2)][address(arg4)][arg5] = ext_call.return_data[0]
                            emit Added(arg2, arg4, arg5);
                            if not ext_call.return_data[0]:
                                return 0
                            if arg3 != arg1:
                                if ext_call.return_data[0]:
                                    if not stor1[address(arg3)][address(arg4)][arg5]:
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _3553 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _3553 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3553 + 32]
                                        else:
                                            mem[floor32(_3553) + ceil32(return_data.size) + 3396] = mem[floor32(_3553) + ceil32(return_data.size) + -(_3553 % 32) + 3428 len _3553 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3553) + 64]
                                    else:
                                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                            return 1
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _3556 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _3556 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3556 + 32]
                                        else:
                                            mem[floor32(_3556) + ceil32(return_data.size) + 3396] = mem[floor32(_3556) + ceil32(return_data.size) + -(_3556 % 32) + 3428 len _3556 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3556) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        stor1[address(arg3)][address(arg4)][arg5] = 1
                                        stor2[address(arg3)][address(arg4)][arg5] = ext_call.return_data[0]
                                        emit Added(arg3, arg4, arg5);
            else:
                mem[floor32(_96) + ceil32(return_data.size) + 1732] = mem[floor32(_96) + ceil32(return_data.size) + -(_96 % 32) + 1764 len _96 % 32]
                require ext_code.size(sub_18128b53Address)
                staticcall sub_18128b53Address.0x50ac547d with:
                        gas gas_remaining wei
                       args 768, address(arg1), arg1 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 1700 len floor32(_96) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    return 0
                stor1[address(arg1)][address(arg4)][arg5] = 1
                stor2[address(arg1)][address(arg4)][arg5] = ext_call.return_data[0]
                emit Added(arg1, arg4, arg5);
                if not ext_call.return_data[0]:
                    return 0
                if not stor1[address(arg2)][address(arg4)][arg5]:
                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                    mem[ceil32(return_data.size) + 1024] = arg2
                    mem[ceil32(return_data.size) + 1056] = arg2
                    mem[ceil32(return_data.size) + 1088] = arg2
                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                    mem[ceil32(return_data.size) + 1764] = 768
                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                    _1115 = mem[_4 + 96]
                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                    if not _1115 % 32:
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _1115 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        stor1[address(arg2)][address(arg4)][arg5] = 1
                        stor2[address(arg2)][address(arg4)][arg5] = ext_call.return_data[0]
                        emit Added(arg2, arg4, arg5);
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)][arg5]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3559 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3559 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3559 + 32]
                                    else:
                                        mem[floor32(_3559) + ceil32(return_data.size) + 3396] = mem[floor32(_3559) + ceil32(return_data.size) + -(_3559 % 32) + 3428 len _3559 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3559) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3562 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3562 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3562 + 32]
                                    else:
                                        mem[floor32(_3562) + ceil32(return_data.size) + 3396] = mem[floor32(_3562) + ceil32(return_data.size) + -(_3562 % 32) + 3428 len _3562 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3562) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    stor1[address(arg3)][address(arg4)][arg5] = 1
                                    stor2[address(arg3)][address(arg4)][arg5] = ext_call.return_data[0]
                                    emit Added(arg3, arg4, arg5);
                    else:
                        mem[floor32(_1115) + ceil32(return_data.size) + 2564] = mem[floor32(_1115) + ceil32(return_data.size) + -(_1115 % 32) + 2596 len _1115 % 32]
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1115) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        stor1[address(arg2)][address(arg4)][arg5] = 1
                        stor2[address(arg2)][address(arg4)][arg5] = ext_call.return_data[0]
                        emit Added(arg2, arg4, arg5);
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)][arg5]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3565 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3565 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3565 + 32]
                                    else:
                                        mem[floor32(_3565) + ceil32(return_data.size) + 3396] = mem[floor32(_3565) + ceil32(return_data.size) + -(_3565 % 32) + 3428 len _3565 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3565) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3568 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3568 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3568 + 32]
                                    else:
                                        mem[floor32(_3568) + ceil32(return_data.size) + 3396] = mem[floor32(_3568) + ceil32(return_data.size) + -(_3568 % 32) + 3428 len _3568 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3568) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    stor1[address(arg3)][address(arg4)][arg5] = 1
                                    stor2[address(arg3)][address(arg4)][arg5] = ext_call.return_data[0]
                                    emit Added(arg3, arg4, arg5);
                else:
                    if ext_call.return_data[0] == stor2[address(arg2)][address(arg4)][arg5]:
                        if arg3 == arg1:
                            return 1
                        if not stor1[address(arg3)][address(arg4)][arg5]:
                            mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                            mem[ceil32(return_data.size) + 1024] = arg3
                            mem[ceil32(return_data.size) + 1056] = arg3
                            mem[ceil32(return_data.size) + 1088] = arg3
                            mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                            mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 1764] = 768
                            mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                            _1121 = mem[_4 + 96]
                            mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                            if not _1121 % 32:
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _1121 + 32]
                            else:
                                mem[floor32(_1121) + ceil32(return_data.size) + 2564] = mem[floor32(_1121) + ceil32(return_data.size) + -(_1121 % 32) + 2596 len _1121 % 32]
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1121) + 64]
                        else:
                            if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                return 1
                            mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                            mem[ceil32(return_data.size) + 1024] = arg3
                            mem[ceil32(return_data.size) + 1056] = arg3
                            mem[ceil32(return_data.size) + 1088] = arg3
                            mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                            mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                            mem[ceil32(return_data.size) + 1764] = 768
                            mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                            _1124 = mem[_4 + 96]
                            mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                            if not _1124 % 32:
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _1124 + 32]
                            else:
                                mem[floor32(_1124) + ceil32(return_data.size) + 2564] = mem[floor32(_1124) + ceil32(return_data.size) + -(_1124 % 32) + 2596 len _1124 % 32]
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1124) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            stor1[address(arg3)][address(arg4)][arg5] = 1
                            stor2[address(arg3)][address(arg4)][arg5] = ext_call.return_data[0]
                            emit Added(arg3, arg4, arg5);
                    else:
                        mem[ceil32(return_data.size) + 928 len 96] = code.data[5701 len 96]
                        mem[ceil32(return_data.size) + 1024] = arg2
                        mem[ceil32(return_data.size) + 1056] = arg2
                        mem[ceil32(return_data.size) + 1088] = arg2
                        mem[ceil32(return_data.size) + 1120 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1440 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                        mem[ceil32(return_data.size) + 1892 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 2212 len 320] = code.data[5701 len 320]
                        mem[ceil32(return_data.size) + 1764] = 768
                        mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                        _1118 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _1118 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len _1118 + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                return 0
                            stor1[address(arg2)][address(arg4)][arg5] = 1
                            stor2[address(arg2)][address(arg4)][arg5] = ext_call.return_data[0]
                            emit Added(arg2, arg4, arg5);
                            if not ext_call.return_data[0]:
                                return 0
                            if arg3 != arg1:
                                if ext_call.return_data[0]:
                                    if not stor1[address(arg3)][address(arg4)][arg5]:
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _3571 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _3571 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3571 + 32]
                                        else:
                                            mem[floor32(_3571) + ceil32(return_data.size) + 3396] = mem[floor32(_3571) + ceil32(return_data.size) + -(_3571 % 32) + 3428 len _3571 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3571) + 64]
                                    else:
                                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                            return 1
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _3574 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _3574 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3574 + 32]
                                        else:
                                            mem[floor32(_3574) + ceil32(return_data.size) + 3396] = mem[floor32(_3574) + ceil32(return_data.size) + -(_3574 % 32) + 3428 len _3574 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3574) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        stor1[address(arg3)][address(arg4)][arg5] = 1
                                        stor2[address(arg3)][address(arg4)][arg5] = ext_call.return_data[0]
                                        emit Added(arg3, arg4, arg5);
                        else:
                            mem[floor32(_1118) + ceil32(return_data.size) + 2564] = mem[floor32(_1118) + ceil32(return_data.size) + -(_1118 % 32) + 2596 len _1118 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg2), arg2 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1118) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                return 0
                            stor1[address(arg2)][address(arg4)][arg5] = 1
                            stor2[address(arg2)][address(arg4)][arg5] = ext_call.return_data[0]
                            emit Added(arg2, arg4, arg5);
                            if not ext_call.return_data[0]:
                                return 0
                            if arg3 != arg1:
                                if ext_call.return_data[0]:
                                    if not stor1[address(arg3)][address(arg4)][arg5]:
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _3577 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _3577 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3577 + 32]
                                        else:
                                            mem[floor32(_3577) + ceil32(return_data.size) + 3396] = mem[floor32(_3577) + ceil32(return_data.size) + -(_3577 % 32) + 3428 len _3577 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3577) + 64]
                                    else:
                                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)][arg5]:
                                            return 1
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5701 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5701 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _3580 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _3580 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len _3580 + 32]
                                        else:
                                            mem[floor32(_3580) + ceil32(return_data.size) + 3396] = mem[floor32(_3580) + ceil32(return_data.size) + -(_3580 % 32) + 3428 len _3580 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5701 len 320], code.data[5701 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3580) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        stor1[address(arg3)][address(arg4)][arg5] = 1
                                        stor2[address(arg3)][address(arg4)][arg5] = ext_call.return_data[0]
                                        emit Added(arg3, arg4, arg5);
    return bool(ext_call.return_data[0])
}



}

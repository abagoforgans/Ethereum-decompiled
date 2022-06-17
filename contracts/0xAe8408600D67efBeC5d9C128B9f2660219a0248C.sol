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

function sub_8ceeb8df(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_1c4dd7d0Address)
    staticcall sub_1c4dd7d0Address.0xda10eb26 with:
            gas gas_remaining wei
           args address(arg2), 0xa9059cbb00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor1[address(arg1)][address(arg2)]:
        return bool(stor1[address(arg1)][address(arg2)])
    return (ext_call.return_data[0] == stor2[address(arg1)][address(arg2)])
}

function sub_ba066b86(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(arg3.length) + 128 len 320] = code.data[5458 len 320]
    mem[ceil32(arg3.length) + 448] = 20
    mem[ceil32(arg3.length) + 480 len 20] = code.data[5458 len 20]
    idx = 16
    s = 0
    while uint16(idx) < 36:
        require uint16(idx) < arg3.length
        require uint16(s) < mem[ceil32(arg3.length) + 448]
        mem[ceil32(arg3.length) + uint16(s) + 480 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 0, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 0, ('var', 0))), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    mem[ceil32(arg3.length) + 832 len 320] = code.data[5458 len 320]
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
    mem[ceil32(arg3.length) + ceil32(return_data.size) + 1380 len 320] = code.data[5458 len 320]
    mem[ceil32(arg3.length) + ceil32(return_data.size) + 1700 len 320] = code.data[5458 len 320]
    mem[ceil32(arg3.length) + ceil32(return_data.size) + 1252] = 768
    mem[ceil32(arg3.length) + ceil32(return_data.size) + 2020] = mem[ceil32(arg3.length) + _16 + 1152]
    _26 = mem[ceil32(arg3.length) + _16 + 1152]
    mem[ceil32(arg3.length) + ceil32(return_data.size) + 2052 len ceil32(mem[ceil32(arg3.length) + _16 + 1152])] = mem[ceil32(arg3.length) + _16 + 1184 len ceil32(mem[ceil32(arg3.length) + _16 + 1152])]
    if not _26 % 32:
        require ext_code.size(sub_18128b53Address)
        staticcall sub_18128b53Address.0x4eb08112 with:
                gas gas_remaining wei
               args 768, Mask(160, 96, mem[ceil32(arg3.length) + 480]), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(arg3.length) + ceil32(return_data.size) + 2020 len _26 + 32]
    else:
        mem[floor32(_26) + ceil32(arg3.length) + ceil32(return_data.size) + 2052] = mem[floor32(_26) + ceil32(arg3.length) + ceil32(return_data.size) + -(_26 % 32) + 2084 len _26 % 32]
        require ext_code.size(sub_18128b53Address)
        staticcall sub_18128b53Address.0x4eb08112 with:
                gas gas_remaining wei
               args 768, Mask(160, 96, mem[ceil32(arg3.length) + 480]), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(arg3.length) + ceil32(return_data.size) + 2020 len floor32(_26) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    return bool(ext_call.return_data[0]), ext_call.return_data[32 len 320]
}

function addToWhiteList(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    mem[96] = 16
    mem[128] = 'PermissionModule'
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('PermissionModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[228] = arg2
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
    mem[160] = 0x65c902ef00000000000000000000000000000000000000000000000000000000
    mem[164] = arg2
    mem[196] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_1c4dd7d0Address)
    staticcall sub_1c4dd7d0Address.0x65c902ef with:
            gas gas_remaining wei
           args address(arg2), 0xa9059cbb00000000000000000000000000000000000000000000000000000000
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
    staticcall sub_1c4dd7d0Address.0xda10eb26 with:
            gas gas_remaining wei
           args address(arg2), 0xa9059cbb00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor1[address(arg1)][address(arg2)]:
        mem[ceil32(return_data.size) + 160 len 96] = code.data[5458 len 96]
        mem[ceil32(return_data.size) + 256] = arg1
        mem[ceil32(return_data.size) + 288] = arg1
        mem[ceil32(return_data.size) + 320] = arg1
        mem[ceil32(return_data.size) + 352 len 320] = code.data[5458 len 320]
        mem[ceil32(return_data.size) + 672 len 320] = code.data[5458 len 320]
        mem[ceil32(return_data.size) + 992] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 1028 len 96] = address(arg1), address(arg1), arg1
        mem[ceil32(return_data.size) + 1124 len 320] = code.data[5458 len 320]
        mem[ceil32(return_data.size) + 1444 len 320] = code.data[5458 len 320]
        mem[ceil32(return_data.size) + 996] = 768
        mem[ceil32(return_data.size) + 1764] = mem[_21 + 160]
        _52 = mem[_21 + 160]
        mem[ceil32(return_data.size) + 1796 len ceil32(mem[_21 + 160])] = mem[_21 + 192 len ceil32(mem[_21 + 160])]
        if not _52 % 32:
            require ext_code.size(sub_18128b53Address)
            staticcall sub_18128b53Address.0x50ac547d with:
                    gas gas_remaining wei
                   args 768, address(arg1), arg1 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1764 len _52 + 32]
        else:
            mem[floor32(_52) + ceil32(return_data.size) + 1796] = mem[floor32(_52) + ceil32(return_data.size) + -(_52 % 32) + 1828 len _52 % 32]
            require ext_code.size(sub_18128b53Address)
            staticcall sub_18128b53Address.0x50ac547d with:
                    gas gas_remaining wei
                   args 768, address(arg1), arg1 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1764 len floor32(_52) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            stor1[address(arg1)][address(arg2)] = 1
            stor2[address(arg1)][address(arg2)] = ext_call.return_data[0]
            emit Added(arg1, arg2);
    else:
        if ext_call.return_data[0] != stor2[address(arg1)][address(arg2)]:
            mem[ceil32(return_data.size) + 160 len 96] = code.data[5458 len 96]
            mem[ceil32(return_data.size) + 256] = arg1
            mem[ceil32(return_data.size) + 288] = arg1
            mem[ceil32(return_data.size) + 320] = arg1
            mem[ceil32(return_data.size) + 352 len 320] = code.data[5458 len 320]
            mem[ceil32(return_data.size) + 672 len 320] = code.data[5458 len 320]
            mem[ceil32(return_data.size) + 992] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 1028 len 96] = address(arg1), address(arg1), arg1
            mem[ceil32(return_data.size) + 1124 len 320] = code.data[5458 len 320]
            mem[ceil32(return_data.size) + 1444 len 320] = code.data[5458 len 320]
            mem[ceil32(return_data.size) + 996] = 768
            mem[ceil32(return_data.size) + 1764] = mem[_21 + 160]
            _55 = mem[_21 + 160]
            mem[ceil32(return_data.size) + 1796 len ceil32(mem[_21 + 160])] = mem[_21 + 192 len ceil32(mem[_21 + 160])]
            if not _55 % 32:
                require ext_code.size(sub_18128b53Address)
                staticcall sub_18128b53Address.0x50ac547d with:
                        gas gas_remaining wei
                       args 768, address(arg1), arg1 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1764 len _55 + 32]
            else:
                mem[floor32(_55) + ceil32(return_data.size) + 1796] = mem[floor32(_55) + ceil32(return_data.size) + -(_55 % 32) + 1828 len _55 % 32]
                require ext_code.size(sub_18128b53Address)
                staticcall sub_18128b53Address.0x50ac547d with:
                        gas gas_remaining wei
                       args 768, address(arg1), arg1 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1764 len floor32(_55) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                stor1[address(arg1)][address(arg2)] = 1
                stor2[address(arg1)][address(arg2)] = ext_call.return_data[0]
                emit Added(arg1, arg2);
}

function sub_ec9b9644(?) {
    require calldata.size - 4 >= 160
    mem[96] = 0x65c902ef00000000000000000000000000000000000000000000000000000000
    mem[100] = arg4
    mem[132] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_1c4dd7d0Address)
    staticcall sub_1c4dd7d0Address.0x65c902ef with:
            gas gas_remaining wei
           args address(arg4), 0xa9059cbb00000000000000000000000000000000000000000000000000000000
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
    staticcall sub_1c4dd7d0Address.0xda10eb26 with:
            gas gas_remaining wei
           args address(arg4), 0xa9059cbb00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor1[address(arg1)][address(arg4)]:
        mem[ceil32(return_data.size) + 96 len 96] = code.data[5458 len 96]
        mem[ceil32(return_data.size) + 192] = arg1
        mem[ceil32(return_data.size) + 224] = arg1
        mem[ceil32(return_data.size) + 256] = arg1
        mem[ceil32(return_data.size) + 288 len 320] = code.data[5458 len 320]
        mem[ceil32(return_data.size) + 608 len 320] = code.data[5458 len 320]
        mem[ceil32(return_data.size) + 928] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 964 len 96] = address(arg1), address(arg1), arg1
        mem[ceil32(return_data.size) + 1060 len 320] = code.data[5458 len 320]
        mem[ceil32(return_data.size) + 1380 len 320] = code.data[5458 len 320]
        mem[ceil32(return_data.size) + 932] = 768
        mem[ceil32(return_data.size) + 1700] = mem[_4 + 96]
        _87 = mem[_4 + 96]
        mem[ceil32(return_data.size) + 1732 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
        if not _87 % 32:
            require ext_code.size(sub_18128b53Address)
            staticcall sub_18128b53Address.0x50ac547d with:
                    gas gas_remaining wei
                   args 768, address(arg1), arg1 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1700 len _87 + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 0
            if not stor1[address(arg2)][address(arg4)]:
                mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                mem[ceil32(return_data.size) + 1024] = arg2
                mem[ceil32(return_data.size) + 1056] = arg2
                mem[ceil32(return_data.size) + 1088] = arg2
                mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                mem[ceil32(return_data.size) + 1764] = 768
                mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                _809 = mem[_4 + 96]
                mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                if not _809 % 32:
                    require ext_code.size(sub_18128b53Address)
                    staticcall sub_18128b53Address.0x50ac547d with:
                            gas gas_remaining wei
                           args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _809 + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    if arg3 != arg1:
                        if ext_call.return_data[0]:
                            if not stor1[address(arg3)][address(arg4)]:
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _2289 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _2289 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2289 + 32]
                                else:
                                    mem[floor32(_2289) + ceil32(return_data.size) + 3396] = mem[floor32(_2289) + ceil32(return_data.size) + -(_2289 % 32) + 3428 len _2289 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2289) + 64]
                            else:
                                if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                    return 1
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _2292 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _2292 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2292 + 32]
                                else:
                                    mem[floor32(_2292) + ceil32(return_data.size) + 3396] = mem[floor32(_2292) + ceil32(return_data.size) + -(_2292 % 32) + 3428 len _2292 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2292) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    mem[floor32(_809) + ceil32(return_data.size) + 2564] = mem[floor32(_809) + ceil32(return_data.size) + -(_809 % 32) + 2596 len _809 % 32]
                    require ext_code.size(sub_18128b53Address)
                    staticcall sub_18128b53Address.0x50ac547d with:
                            gas gas_remaining wei
                           args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_809) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    if arg3 != arg1:
                        if ext_call.return_data[0]:
                            if not stor1[address(arg3)][address(arg4)]:
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _2295 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _2295 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2295 + 32]
                                else:
                                    mem[floor32(_2295) + ceil32(return_data.size) + 3396] = mem[floor32(_2295) + ceil32(return_data.size) + -(_2295 % 32) + 3428 len _2295 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2295) + 64]
                            else:
                                if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                    return 1
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _2298 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _2298 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2298 + 32]
                                else:
                                    mem[floor32(_2298) + ceil32(return_data.size) + 3396] = mem[floor32(_2298) + ceil32(return_data.size) + -(_2298 % 32) + 3428 len _2298 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2298) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if ext_call.return_data[0] == stor2[address(arg2)][address(arg4)]:
                    if arg3 == arg1:
                        return 1
                    if not stor1[address(arg3)][address(arg4)]:
                        mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                        mem[ceil32(return_data.size) + 1024] = arg3
                        mem[ceil32(return_data.size) + 1056] = arg3
                        mem[ceil32(return_data.size) + 1088] = arg3
                        mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                        mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1764] = 768
                        mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                        _815 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _815 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _815 + 32]
                        else:
                            mem[floor32(_815) + ceil32(return_data.size) + 2564] = mem[floor32(_815) + ceil32(return_data.size) + -(_815 % 32) + 2596 len _815 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_815) + 64]
                    else:
                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                            return 1
                        mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                        mem[ceil32(return_data.size) + 1024] = arg3
                        mem[ceil32(return_data.size) + 1056] = arg3
                        mem[ceil32(return_data.size) + 1088] = arg3
                        mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                        mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1764] = 768
                        mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                        _818 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _818 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _818 + 32]
                        else:
                            mem[floor32(_818) + ceil32(return_data.size) + 2564] = mem[floor32(_818) + ceil32(return_data.size) + -(_818 % 32) + 2596 len _818 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_818) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                else:
                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                    mem[ceil32(return_data.size) + 1024] = arg2
                    mem[ceil32(return_data.size) + 1056] = arg2
                    mem[ceil32(return_data.size) + 1088] = arg2
                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1764] = 768
                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                    _812 = mem[_4 + 96]
                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                    if not _812 % 32:
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _812 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2301 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2301 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2301 + 32]
                                    else:
                                        mem[floor32(_2301) + ceil32(return_data.size) + 3396] = mem[floor32(_2301) + ceil32(return_data.size) + -(_2301 % 32) + 3428 len _2301 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2301) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2304 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2304 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2304 + 32]
                                    else:
                                        mem[floor32(_2304) + ceil32(return_data.size) + 3396] = mem[floor32(_2304) + ceil32(return_data.size) + -(_2304 % 32) + 3428 len _2304 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2304) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        mem[floor32(_812) + ceil32(return_data.size) + 2564] = mem[floor32(_812) + ceil32(return_data.size) + -(_812 % 32) + 2596 len _812 % 32]
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_812) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2307 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2307 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2307 + 32]
                                    else:
                                        mem[floor32(_2307) + ceil32(return_data.size) + 3396] = mem[floor32(_2307) + ceil32(return_data.size) + -(_2307 % 32) + 3428 len _2307 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2307) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2310 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2310 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2310 + 32]
                                    else:
                                        mem[floor32(_2310) + ceil32(return_data.size) + 3396] = mem[floor32(_2310) + ceil32(return_data.size) + -(_2310 % 32) + 3428 len _2310 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2310) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
        else:
            mem[floor32(_87) + ceil32(return_data.size) + 1732] = mem[floor32(_87) + ceil32(return_data.size) + -(_87 % 32) + 1764 len _87 % 32]
            require ext_code.size(sub_18128b53Address)
            staticcall sub_18128b53Address.0x50ac547d with:
                    gas gas_remaining wei
                   args 768, address(arg1), arg1 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1700 len floor32(_87) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 0
            if not stor1[address(arg2)][address(arg4)]:
                mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                mem[ceil32(return_data.size) + 1024] = arg2
                mem[ceil32(return_data.size) + 1056] = arg2
                mem[ceil32(return_data.size) + 1088] = arg2
                mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                mem[ceil32(return_data.size) + 1764] = 768
                mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                _821 = mem[_4 + 96]
                mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                if not _821 % 32:
                    require ext_code.size(sub_18128b53Address)
                    staticcall sub_18128b53Address.0x50ac547d with:
                            gas gas_remaining wei
                           args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _821 + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    if arg3 != arg1:
                        if ext_call.return_data[0]:
                            if not stor1[address(arg3)][address(arg4)]:
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _2313 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _2313 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2313 + 32]
                                else:
                                    mem[floor32(_2313) + ceil32(return_data.size) + 3396] = mem[floor32(_2313) + ceil32(return_data.size) + -(_2313 % 32) + 3428 len _2313 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2313) + 64]
                            else:
                                if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                    return 1
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _2316 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _2316 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2316 + 32]
                                else:
                                    mem[floor32(_2316) + ceil32(return_data.size) + 3396] = mem[floor32(_2316) + ceil32(return_data.size) + -(_2316 % 32) + 3428 len _2316 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2316) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    mem[floor32(_821) + ceil32(return_data.size) + 2564] = mem[floor32(_821) + ceil32(return_data.size) + -(_821 % 32) + 2596 len _821 % 32]
                    require ext_code.size(sub_18128b53Address)
                    staticcall sub_18128b53Address.0x50ac547d with:
                            gas gas_remaining wei
                           args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_821) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    if arg3 != arg1:
                        if ext_call.return_data[0]:
                            if not stor1[address(arg3)][address(arg4)]:
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _2319 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _2319 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2319 + 32]
                                else:
                                    mem[floor32(_2319) + ceil32(return_data.size) + 3396] = mem[floor32(_2319) + ceil32(return_data.size) + -(_2319 % 32) + 3428 len _2319 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2319) + 64]
                            else:
                                if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                    return 1
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _2322 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _2322 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2322 + 32]
                                else:
                                    mem[floor32(_2322) + ceil32(return_data.size) + 3396] = mem[floor32(_2322) + ceil32(return_data.size) + -(_2322 % 32) + 3428 len _2322 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2322) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if ext_call.return_data[0] == stor2[address(arg2)][address(arg4)]:
                    if arg3 == arg1:
                        return 1
                    if not stor1[address(arg3)][address(arg4)]:
                        mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                        mem[ceil32(return_data.size) + 1024] = arg3
                        mem[ceil32(return_data.size) + 1056] = arg3
                        mem[ceil32(return_data.size) + 1088] = arg3
                        mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                        mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1764] = 768
                        mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                        _827 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _827 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _827 + 32]
                        else:
                            mem[floor32(_827) + ceil32(return_data.size) + 2564] = mem[floor32(_827) + ceil32(return_data.size) + -(_827 % 32) + 2596 len _827 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_827) + 64]
                    else:
                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                            return 1
                        mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                        mem[ceil32(return_data.size) + 1024] = arg3
                        mem[ceil32(return_data.size) + 1056] = arg3
                        mem[ceil32(return_data.size) + 1088] = arg3
                        mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                        mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1764] = 768
                        mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                        _830 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _830 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _830 + 32]
                        else:
                            mem[floor32(_830) + ceil32(return_data.size) + 2564] = mem[floor32(_830) + ceil32(return_data.size) + -(_830 % 32) + 2596 len _830 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_830) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                else:
                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                    mem[ceil32(return_data.size) + 1024] = arg2
                    mem[ceil32(return_data.size) + 1056] = arg2
                    mem[ceil32(return_data.size) + 1088] = arg2
                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1764] = 768
                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                    _824 = mem[_4 + 96]
                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                    if not _824 % 32:
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _824 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2325 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2325 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2325 + 32]
                                    else:
                                        mem[floor32(_2325) + ceil32(return_data.size) + 3396] = mem[floor32(_2325) + ceil32(return_data.size) + -(_2325 % 32) + 3428 len _2325 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2325) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2328 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2328 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2328 + 32]
                                    else:
                                        mem[floor32(_2328) + ceil32(return_data.size) + 3396] = mem[floor32(_2328) + ceil32(return_data.size) + -(_2328 % 32) + 3428 len _2328 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2328) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        mem[floor32(_824) + ceil32(return_data.size) + 2564] = mem[floor32(_824) + ceil32(return_data.size) + -(_824 % 32) + 2596 len _824 % 32]
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_824) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2331 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2331 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2331 + 32]
                                    else:
                                        mem[floor32(_2331) + ceil32(return_data.size) + 3396] = mem[floor32(_2331) + ceil32(return_data.size) + -(_2331 % 32) + 3428 len _2331 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2331) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2334 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2334 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2334 + 32]
                                    else:
                                        mem[floor32(_2334) + ceil32(return_data.size) + 3396] = mem[floor32(_2334) + ceil32(return_data.size) + -(_2334 % 32) + 3428 len _2334 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2334) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
    else:
        if ext_call.return_data[0] == stor2[address(arg1)][address(arg4)]:
            if not stor1[address(arg2)][address(arg4)]:
                mem[ceil32(return_data.size) + 96 len 96] = code.data[5458 len 96]
                mem[ceil32(return_data.size) + 192] = arg2
                mem[ceil32(return_data.size) + 224] = arg2
                mem[ceil32(return_data.size) + 256] = arg2
                mem[ceil32(return_data.size) + 288 len 320] = code.data[5458 len 320]
                mem[ceil32(return_data.size) + 608 len 320] = code.data[5458 len 320]
                mem[ceil32(return_data.size) + 928] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 964 len 96] = address(arg2), address(arg2), arg2
                mem[ceil32(return_data.size) + 1060 len 320] = code.data[5458 len 320]
                mem[ceil32(return_data.size) + 1380 len 320] = code.data[5458 len 320]
                mem[ceil32(return_data.size) + 932] = 768
                mem[ceil32(return_data.size) + 1700] = mem[_4 + 96]
                _93 = mem[_4 + 96]
                mem[ceil32(return_data.size) + 1732 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                if not _93 % 32:
                    require ext_code.size(sub_18128b53Address)
                    staticcall sub_18128b53Address.0x50ac547d with:
                            gas gas_remaining wei
                           args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1700 len _93 + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    if arg3 != arg1:
                        if ext_call.return_data[0]:
                            if not stor1[address(arg3)][address(arg4)]:
                                mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                                mem[ceil32(return_data.size) + 1024] = arg3
                                mem[ceil32(return_data.size) + 1056] = arg3
                                mem[ceil32(return_data.size) + 1088] = arg3
                                mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 1764] = 768
                                mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                _857 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _857 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _857 + 32]
                                else:
                                    mem[floor32(_857) + ceil32(return_data.size) + 2564] = mem[floor32(_857) + ceil32(return_data.size) + -(_857 % 32) + 2596 len _857 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_857) + 64]
                            else:
                                if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                    return 1
                                mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                                mem[ceil32(return_data.size) + 1024] = arg3
                                mem[ceil32(return_data.size) + 1056] = arg3
                                mem[ceil32(return_data.size) + 1088] = arg3
                                mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 1764] = 768
                                mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                _860 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _860 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _860 + 32]
                                else:
                                    mem[floor32(_860) + ceil32(return_data.size) + 2564] = mem[floor32(_860) + ceil32(return_data.size) + -(_860 % 32) + 2596 len _860 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_860) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    mem[floor32(_93) + ceil32(return_data.size) + 1732] = mem[floor32(_93) + ceil32(return_data.size) + -(_93 % 32) + 1764 len _93 % 32]
                    require ext_code.size(sub_18128b53Address)
                    staticcall sub_18128b53Address.0x50ac547d with:
                            gas gas_remaining wei
                           args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1700 len floor32(_93) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    if arg3 != arg1:
                        if ext_call.return_data[0]:
                            if not stor1[address(arg3)][address(arg4)]:
                                mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                                mem[ceil32(return_data.size) + 1024] = arg3
                                mem[ceil32(return_data.size) + 1056] = arg3
                                mem[ceil32(return_data.size) + 1088] = arg3
                                mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 1764] = 768
                                mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                _863 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _863 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _863 + 32]
                                else:
                                    mem[floor32(_863) + ceil32(return_data.size) + 2564] = mem[floor32(_863) + ceil32(return_data.size) + -(_863 % 32) + 2596 len _863 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_863) + 64]
                            else:
                                if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                    return 1
                                mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                                mem[ceil32(return_data.size) + 1024] = arg3
                                mem[ceil32(return_data.size) + 1056] = arg3
                                mem[ceil32(return_data.size) + 1088] = arg3
                                mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 1764] = 768
                                mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                _866 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _866 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _866 + 32]
                                else:
                                    mem[floor32(_866) + ceil32(return_data.size) + 2564] = mem[floor32(_866) + ceil32(return_data.size) + -(_866 % 32) + 2596 len _866 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_866) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if ext_call.return_data[0] == stor2[address(arg2)][address(arg4)]:
                    if arg3 == arg1:
                        return 1
                    if not stor1[address(arg3)][address(arg4)]:
                        mem[ceil32(return_data.size) + 96 len 96] = code.data[5458 len 96]
                        mem[ceil32(return_data.size) + 192] = arg3
                        mem[ceil32(return_data.size) + 224] = arg3
                        mem[ceil32(return_data.size) + 256] = arg3
                        mem[ceil32(return_data.size) + 288 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 608 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 928] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 964 len 96] = address(arg3), address(arg3), arg3
                        mem[ceil32(return_data.size) + 1060 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1380 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 932] = 768
                        mem[ceil32(return_data.size) + 1700] = mem[_4 + 96]
                        _99 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 1732 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _99 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1700 len _99 + 32]
                        else:
                            mem[floor32(_99) + ceil32(return_data.size) + 1732] = mem[floor32(_99) + ceil32(return_data.size) + -(_99 % 32) + 1764 len _99 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1700 len floor32(_99) + 64]
                    else:
                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                            return 1
                        mem[ceil32(return_data.size) + 96 len 96] = code.data[5458 len 96]
                        mem[ceil32(return_data.size) + 192] = arg3
                        mem[ceil32(return_data.size) + 224] = arg3
                        mem[ceil32(return_data.size) + 256] = arg3
                        mem[ceil32(return_data.size) + 288 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 608 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 928] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 964 len 96] = address(arg3), address(arg3), arg3
                        mem[ceil32(return_data.size) + 1060 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1380 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 932] = 768
                        mem[ceil32(return_data.size) + 1700] = mem[_4 + 96]
                        _102 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 1732 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _102 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1700 len _102 + 32]
                        else:
                            mem[floor32(_102) + ceil32(return_data.size) + 1732] = mem[floor32(_102) + ceil32(return_data.size) + -(_102 % 32) + 1764 len _102 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1700 len floor32(_102) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                else:
                    mem[ceil32(return_data.size) + 96 len 96] = code.data[5458 len 96]
                    mem[ceil32(return_data.size) + 192] = arg2
                    mem[ceil32(return_data.size) + 224] = arg2
                    mem[ceil32(return_data.size) + 256] = arg2
                    mem[ceil32(return_data.size) + 288 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 608 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 928] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 964 len 96] = address(arg2), address(arg2), arg2
                    mem[ceil32(return_data.size) + 1060 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1380 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 932] = 768
                    mem[ceil32(return_data.size) + 1700] = mem[_4 + 96]
                    _96 = mem[_4 + 96]
                    mem[ceil32(return_data.size) + 1732 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                    if not _96 % 32:
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1700 len _96 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)]:
                                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1024] = arg3
                                    mem[ceil32(return_data.size) + 1056] = arg3
                                    mem[ceil32(return_data.size) + 1088] = arg3
                                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 1764] = 768
                                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                    _869 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _869 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _869 + 32]
                                    else:
                                        mem[floor32(_869) + ceil32(return_data.size) + 2564] = mem[floor32(_869) + ceil32(return_data.size) + -(_869 % 32) + 2596 len _869 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_869) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                        return 1
                                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1024] = arg3
                                    mem[ceil32(return_data.size) + 1056] = arg3
                                    mem[ceil32(return_data.size) + 1088] = arg3
                                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 1764] = 768
                                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                    _872 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _872 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _872 + 32]
                                    else:
                                        mem[floor32(_872) + ceil32(return_data.size) + 2564] = mem[floor32(_872) + ceil32(return_data.size) + -(_872 % 32) + 2596 len _872 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_872) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        mem[floor32(_96) + ceil32(return_data.size) + 1732] = mem[floor32(_96) + ceil32(return_data.size) + -(_96 % 32) + 1764 len _96 % 32]
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1700 len floor32(_96) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)]:
                                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1024] = arg3
                                    mem[ceil32(return_data.size) + 1056] = arg3
                                    mem[ceil32(return_data.size) + 1088] = arg3
                                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 1764] = 768
                                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                    _875 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _875 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _875 + 32]
                                    else:
                                        mem[floor32(_875) + ceil32(return_data.size) + 2564] = mem[floor32(_875) + ceil32(return_data.size) + -(_875 % 32) + 2596 len _875 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_875) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                        return 1
                                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1024] = arg3
                                    mem[ceil32(return_data.size) + 1056] = arg3
                                    mem[ceil32(return_data.size) + 1088] = arg3
                                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 1764] = 768
                                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                    _878 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _878 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _878 + 32]
                                    else:
                                        mem[floor32(_878) + ceil32(return_data.size) + 2564] = mem[floor32(_878) + ceil32(return_data.size) + -(_878 % 32) + 2596 len _878 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_878) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
        else:
            mem[ceil32(return_data.size) + 96 len 96] = code.data[5458 len 96]
            mem[ceil32(return_data.size) + 192] = arg1
            mem[ceil32(return_data.size) + 224] = arg1
            mem[ceil32(return_data.size) + 256] = arg1
            mem[ceil32(return_data.size) + 288 len 320] = code.data[5458 len 320]
            mem[ceil32(return_data.size) + 608 len 320] = code.data[5458 len 320]
            mem[ceil32(return_data.size) + 928] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 964 len 96] = address(arg1), address(arg1), arg1
            mem[ceil32(return_data.size) + 1060 len 320] = code.data[5458 len 320]
            mem[ceil32(return_data.size) + 1380 len 320] = code.data[5458 len 320]
            mem[ceil32(return_data.size) + 932] = 768
            mem[ceil32(return_data.size) + 1700] = mem[_4 + 96]
            _90 = mem[_4 + 96]
            mem[ceil32(return_data.size) + 1732 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
            if not _90 % 32:
                require ext_code.size(sub_18128b53Address)
                staticcall sub_18128b53Address.0x50ac547d with:
                        gas gas_remaining wei
                       args 768, address(arg1), arg1 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1700 len _90 + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    return 0
                if not stor1[address(arg2)][address(arg4)]:
                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                    mem[ceil32(return_data.size) + 1024] = arg2
                    mem[ceil32(return_data.size) + 1056] = arg2
                    mem[ceil32(return_data.size) + 1088] = arg2
                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1764] = 768
                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                    _833 = mem[_4 + 96]
                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                    if not _833 % 32:
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _833 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2337 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2337 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2337 + 32]
                                    else:
                                        mem[floor32(_2337) + ceil32(return_data.size) + 3396] = mem[floor32(_2337) + ceil32(return_data.size) + -(_2337 % 32) + 3428 len _2337 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2337) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2340 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2340 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2340 + 32]
                                    else:
                                        mem[floor32(_2340) + ceil32(return_data.size) + 3396] = mem[floor32(_2340) + ceil32(return_data.size) + -(_2340 % 32) + 3428 len _2340 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2340) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        mem[floor32(_833) + ceil32(return_data.size) + 2564] = mem[floor32(_833) + ceil32(return_data.size) + -(_833 % 32) + 2596 len _833 % 32]
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_833) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2343 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2343 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2343 + 32]
                                    else:
                                        mem[floor32(_2343) + ceil32(return_data.size) + 3396] = mem[floor32(_2343) + ceil32(return_data.size) + -(_2343 % 32) + 3428 len _2343 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2343) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2346 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2346 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2346 + 32]
                                    else:
                                        mem[floor32(_2346) + ceil32(return_data.size) + 3396] = mem[floor32(_2346) + ceil32(return_data.size) + -(_2346 % 32) + 3428 len _2346 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2346) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    if ext_call.return_data[0] == stor2[address(arg2)][address(arg4)]:
                        if arg3 == arg1:
                            return 1
                        if not stor1[address(arg3)][address(arg4)]:
                            mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                            mem[ceil32(return_data.size) + 1024] = arg3
                            mem[ceil32(return_data.size) + 1056] = arg3
                            mem[ceil32(return_data.size) + 1088] = arg3
                            mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                            mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 1764] = 768
                            mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                            _839 = mem[_4 + 96]
                            mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                            if not _839 % 32:
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _839 + 32]
                            else:
                                mem[floor32(_839) + ceil32(return_data.size) + 2564] = mem[floor32(_839) + ceil32(return_data.size) + -(_839 % 32) + 2596 len _839 % 32]
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_839) + 64]
                        else:
                            if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                return 1
                            mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                            mem[ceil32(return_data.size) + 1024] = arg3
                            mem[ceil32(return_data.size) + 1056] = arg3
                            mem[ceil32(return_data.size) + 1088] = arg3
                            mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                            mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 1764] = 768
                            mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                            _842 = mem[_4 + 96]
                            mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                            if not _842 % 32:
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _842 + 32]
                            else:
                                mem[floor32(_842) + ceil32(return_data.size) + 2564] = mem[floor32(_842) + ceil32(return_data.size) + -(_842 % 32) + 2596 len _842 % 32]
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_842) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                        mem[ceil32(return_data.size) + 1024] = arg2
                        mem[ceil32(return_data.size) + 1056] = arg2
                        mem[ceil32(return_data.size) + 1088] = arg2
                        mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                        mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1764] = 768
                        mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                        _836 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _836 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _836 + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                return 0
                            if arg3 != arg1:
                                if ext_call.return_data[0]:
                                    if not stor1[address(arg3)][address(arg4)]:
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _2349 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _2349 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2349 + 32]
                                        else:
                                            mem[floor32(_2349) + ceil32(return_data.size) + 3396] = mem[floor32(_2349) + ceil32(return_data.size) + -(_2349 % 32) + 3428 len _2349 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2349) + 64]
                                    else:
                                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                            return 1
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _2352 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _2352 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2352 + 32]
                                        else:
                                            mem[floor32(_2352) + ceil32(return_data.size) + 3396] = mem[floor32(_2352) + ceil32(return_data.size) + -(_2352 % 32) + 3428 len _2352 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2352) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                        else:
                            mem[floor32(_836) + ceil32(return_data.size) + 2564] = mem[floor32(_836) + ceil32(return_data.size) + -(_836 % 32) + 2596 len _836 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_836) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                return 0
                            if arg3 != arg1:
                                if ext_call.return_data[0]:
                                    if not stor1[address(arg3)][address(arg4)]:
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _2355 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _2355 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2355 + 32]
                                        else:
                                            mem[floor32(_2355) + ceil32(return_data.size) + 3396] = mem[floor32(_2355) + ceil32(return_data.size) + -(_2355 % 32) + 3428 len _2355 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2355) + 64]
                                    else:
                                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                            return 1
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _2358 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _2358 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2358 + 32]
                                        else:
                                            mem[floor32(_2358) + ceil32(return_data.size) + 3396] = mem[floor32(_2358) + ceil32(return_data.size) + -(_2358 % 32) + 3428 len _2358 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2358) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
            else:
                mem[floor32(_90) + ceil32(return_data.size) + 1732] = mem[floor32(_90) + ceil32(return_data.size) + -(_90 % 32) + 1764 len _90 % 32]
                require ext_code.size(sub_18128b53Address)
                staticcall sub_18128b53Address.0x50ac547d with:
                        gas gas_remaining wei
                       args 768, address(arg1), arg1 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1700 len floor32(_90) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    return 0
                if not stor1[address(arg2)][address(arg4)]:
                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                    mem[ceil32(return_data.size) + 1024] = arg2
                    mem[ceil32(return_data.size) + 1056] = arg2
                    mem[ceil32(return_data.size) + 1088] = arg2
                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1764] = 768
                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                    _845 = mem[_4 + 96]
                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                    if not _845 % 32:
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _845 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2361 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2361 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2361 + 32]
                                    else:
                                        mem[floor32(_2361) + ceil32(return_data.size) + 3396] = mem[floor32(_2361) + ceil32(return_data.size) + -(_2361 % 32) + 3428 len _2361 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2361) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2364 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2364 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2364 + 32]
                                    else:
                                        mem[floor32(_2364) + ceil32(return_data.size) + 3396] = mem[floor32(_2364) + ceil32(return_data.size) + -(_2364 % 32) + 3428 len _2364 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2364) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        mem[floor32(_845) + ceil32(return_data.size) + 2564] = mem[floor32(_845) + ceil32(return_data.size) + -(_845 % 32) + 2596 len _845 % 32]
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_845) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2367 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2367 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2367 + 32]
                                    else:
                                        mem[floor32(_2367) + ceil32(return_data.size) + 3396] = mem[floor32(_2367) + ceil32(return_data.size) + -(_2367 % 32) + 3428 len _2367 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2367) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _2370 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _2370 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2370 + 32]
                                    else:
                                        mem[floor32(_2370) + ceil32(return_data.size) + 3396] = mem[floor32(_2370) + ceil32(return_data.size) + -(_2370 % 32) + 3428 len _2370 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2370) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    if ext_call.return_data[0] == stor2[address(arg2)][address(arg4)]:
                        if arg3 == arg1:
                            return 1
                        if not stor1[address(arg3)][address(arg4)]:
                            mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                            mem[ceil32(return_data.size) + 1024] = arg3
                            mem[ceil32(return_data.size) + 1056] = arg3
                            mem[ceil32(return_data.size) + 1088] = arg3
                            mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                            mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 1764] = 768
                            mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                            _851 = mem[_4 + 96]
                            mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                            if not _851 % 32:
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _851 + 32]
                            else:
                                mem[floor32(_851) + ceil32(return_data.size) + 2564] = mem[floor32(_851) + ceil32(return_data.size) + -(_851 % 32) + 2596 len _851 % 32]
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_851) + 64]
                        else:
                            if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                return 1
                            mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                            mem[ceil32(return_data.size) + 1024] = arg3
                            mem[ceil32(return_data.size) + 1056] = arg3
                            mem[ceil32(return_data.size) + 1088] = arg3
                            mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                            mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 1764] = 768
                            mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                            _854 = mem[_4 + 96]
                            mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                            if not _854 % 32:
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _854 + 32]
                            else:
                                mem[floor32(_854) + ceil32(return_data.size) + 2564] = mem[floor32(_854) + ceil32(return_data.size) + -(_854 % 32) + 2596 len _854 % 32]
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_854) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                        mem[ceil32(return_data.size) + 1024] = arg2
                        mem[ceil32(return_data.size) + 1056] = arg2
                        mem[ceil32(return_data.size) + 1088] = arg2
                        mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                        mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1764] = 768
                        mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                        _848 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _848 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _848 + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                return 0
                            if arg3 != arg1:
                                if ext_call.return_data[0]:
                                    if not stor1[address(arg3)][address(arg4)]:
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _2373 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _2373 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2373 + 32]
                                        else:
                                            mem[floor32(_2373) + ceil32(return_data.size) + 3396] = mem[floor32(_2373) + ceil32(return_data.size) + -(_2373 % 32) + 3428 len _2373 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2373) + 64]
                                    else:
                                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                            return 1
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _2376 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _2376 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2376 + 32]
                                        else:
                                            mem[floor32(_2376) + ceil32(return_data.size) + 3396] = mem[floor32(_2376) + ceil32(return_data.size) + -(_2376 % 32) + 3428 len _2376 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2376) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                        else:
                            mem[floor32(_848) + ceil32(return_data.size) + 2564] = mem[floor32(_848) + ceil32(return_data.size) + -(_848 % 32) + 2596 len _848 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_848) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                return 0
                            if arg3 != arg1:
                                if ext_call.return_data[0]:
                                    if not stor1[address(arg3)][address(arg4)]:
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _2379 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _2379 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2379 + 32]
                                        else:
                                            mem[floor32(_2379) + ceil32(return_data.size) + 3396] = mem[floor32(_2379) + ceil32(return_data.size) + -(_2379 % 32) + 3428 len _2379 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2379) + 64]
                                    else:
                                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                            return 1
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _2382 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _2382 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _2382 + 32]
                                        else:
                                            mem[floor32(_2382) + ceil32(return_data.size) + 3396] = mem[floor32(_2382) + ceil32(return_data.size) + -(_2382 % 32) + 3428 len _2382 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_2382) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_bcaba46b(?) {
    require calldata.size - 4 >= 160
    mem[96] = 0x65c902ef00000000000000000000000000000000000000000000000000000000
    mem[100] = arg4
    mem[132] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_1c4dd7d0Address)
    staticcall sub_1c4dd7d0Address.0x65c902ef with:
            gas gas_remaining wei
           args address(arg4), 0xa9059cbb00000000000000000000000000000000000000000000000000000000
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
    staticcall sub_1c4dd7d0Address.0xda10eb26 with:
            gas gas_remaining wei
           args address(arg4), 0xa9059cbb00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor1[address(arg1)][address(arg4)]:
        mem[ceil32(return_data.size) + 96 len 96] = code.data[5458 len 96]
        mem[ceil32(return_data.size) + 192] = arg1
        mem[ceil32(return_data.size) + 224] = arg1
        mem[ceil32(return_data.size) + 256] = arg1
        mem[ceil32(return_data.size) + 288 len 320] = code.data[5458 len 320]
        mem[ceil32(return_data.size) + 608 len 320] = code.data[5458 len 320]
        mem[ceil32(return_data.size) + 928] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 964 len 96] = address(arg1), address(arg1), arg1
        mem[ceil32(return_data.size) + 1060 len 320] = code.data[5458 len 320]
        mem[ceil32(return_data.size) + 1380 len 320] = code.data[5458 len 320]
        mem[ceil32(return_data.size) + 932] = 768
        mem[ceil32(return_data.size) + 1700] = mem[_4 + 96]
        _87 = mem[_4 + 96]
        mem[ceil32(return_data.size) + 1732 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
        if not _87 % 32:
            require ext_code.size(sub_18128b53Address)
            staticcall sub_18128b53Address.0x50ac547d with:
                    gas gas_remaining wei
                   args 768, address(arg1), arg1 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1700 len _87 + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 0
            stor1[address(arg1)][address(arg4)] = 1
            stor2[address(arg1)][address(arg4)] = ext_call.return_data[0]
            emit Added(arg1, arg4);
            if not ext_call.return_data[0]:
                return 0
            if not stor1[address(arg2)][address(arg4)]:
                mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                mem[ceil32(return_data.size) + 1024] = arg2
                mem[ceil32(return_data.size) + 1056] = arg2
                mem[ceil32(return_data.size) + 1088] = arg2
                mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                mem[ceil32(return_data.size) + 1764] = 768
                mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                _977 = mem[_4 + 96]
                mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                if not _977 % 32:
                    require ext_code.size(sub_18128b53Address)
                    staticcall sub_18128b53Address.0x50ac547d with:
                            gas gas_remaining wei
                           args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _977 + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    stor1[address(arg2)][address(arg4)] = 1
                    stor2[address(arg2)][address(arg4)] = ext_call.return_data[0]
                    emit Added(arg2, arg4);
                    if not ext_call.return_data[0]:
                        return 0
                    if arg3 != arg1:
                        if ext_call.return_data[0]:
                            if not stor1[address(arg3)][address(arg4)]:
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _3129 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _3129 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3129 + 32]
                                else:
                                    mem[floor32(_3129) + ceil32(return_data.size) + 3396] = mem[floor32(_3129) + ceil32(return_data.size) + -(_3129 % 32) + 3428 len _3129 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3129) + 64]
                            else:
                                if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                    return 1
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _3132 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _3132 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3132 + 32]
                                else:
                                    mem[floor32(_3132) + ceil32(return_data.size) + 3396] = mem[floor32(_3132) + ceil32(return_data.size) + -(_3132 % 32) + 3428 len _3132 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3132) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                stor1[address(arg3)][address(arg4)] = 1
                                stor2[address(arg3)][address(arg4)] = ext_call.return_data[0]
                                emit Added(arg3, arg4);
                else:
                    mem[floor32(_977) + ceil32(return_data.size) + 2564] = mem[floor32(_977) + ceil32(return_data.size) + -(_977 % 32) + 2596 len _977 % 32]
                    require ext_code.size(sub_18128b53Address)
                    staticcall sub_18128b53Address.0x50ac547d with:
                            gas gas_remaining wei
                           args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_977) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    stor1[address(arg2)][address(arg4)] = 1
                    stor2[address(arg2)][address(arg4)] = ext_call.return_data[0]
                    emit Added(arg2, arg4);
                    if not ext_call.return_data[0]:
                        return 0
                    if arg3 != arg1:
                        if ext_call.return_data[0]:
                            if not stor1[address(arg3)][address(arg4)]:
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _3135 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _3135 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3135 + 32]
                                else:
                                    mem[floor32(_3135) + ceil32(return_data.size) + 3396] = mem[floor32(_3135) + ceil32(return_data.size) + -(_3135 % 32) + 3428 len _3135 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3135) + 64]
                            else:
                                if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                    return 1
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _3138 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _3138 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3138 + 32]
                                else:
                                    mem[floor32(_3138) + ceil32(return_data.size) + 3396] = mem[floor32(_3138) + ceil32(return_data.size) + -(_3138 % 32) + 3428 len _3138 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3138) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                stor1[address(arg3)][address(arg4)] = 1
                                stor2[address(arg3)][address(arg4)] = ext_call.return_data[0]
                                emit Added(arg3, arg4);
            else:
                if ext_call.return_data[0] == stor2[address(arg2)][address(arg4)]:
                    if arg3 == arg1:
                        return 1
                    if not stor1[address(arg3)][address(arg4)]:
                        mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                        mem[ceil32(return_data.size) + 1024] = arg3
                        mem[ceil32(return_data.size) + 1056] = arg3
                        mem[ceil32(return_data.size) + 1088] = arg3
                        mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                        mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1764] = 768
                        mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                        _983 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _983 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _983 + 32]
                        else:
                            mem[floor32(_983) + ceil32(return_data.size) + 2564] = mem[floor32(_983) + ceil32(return_data.size) + -(_983 % 32) + 2596 len _983 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_983) + 64]
                    else:
                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                            return 1
                        mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                        mem[ceil32(return_data.size) + 1024] = arg3
                        mem[ceil32(return_data.size) + 1056] = arg3
                        mem[ceil32(return_data.size) + 1088] = arg3
                        mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                        mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1764] = 768
                        mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                        _986 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _986 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _986 + 32]
                        else:
                            mem[floor32(_986) + ceil32(return_data.size) + 2564] = mem[floor32(_986) + ceil32(return_data.size) + -(_986 % 32) + 2596 len _986 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_986) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        stor1[address(arg3)][address(arg4)] = 1
                        stor2[address(arg3)][address(arg4)] = ext_call.return_data[0]
                        emit Added(arg3, arg4);
                else:
                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                    mem[ceil32(return_data.size) + 1024] = arg2
                    mem[ceil32(return_data.size) + 1056] = arg2
                    mem[ceil32(return_data.size) + 1088] = arg2
                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1764] = 768
                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                    _980 = mem[_4 + 96]
                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                    if not _980 % 32:
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _980 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        stor1[address(arg2)][address(arg4)] = 1
                        stor2[address(arg2)][address(arg4)] = ext_call.return_data[0]
                        emit Added(arg2, arg4);
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3141 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3141 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3141 + 32]
                                    else:
                                        mem[floor32(_3141) + ceil32(return_data.size) + 3396] = mem[floor32(_3141) + ceil32(return_data.size) + -(_3141 % 32) + 3428 len _3141 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3141) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3144 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3144 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3144 + 32]
                                    else:
                                        mem[floor32(_3144) + ceil32(return_data.size) + 3396] = mem[floor32(_3144) + ceil32(return_data.size) + -(_3144 % 32) + 3428 len _3144 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3144) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    stor1[address(arg3)][address(arg4)] = 1
                                    stor2[address(arg3)][address(arg4)] = ext_call.return_data[0]
                                    emit Added(arg3, arg4);
                    else:
                        mem[floor32(_980) + ceil32(return_data.size) + 2564] = mem[floor32(_980) + ceil32(return_data.size) + -(_980 % 32) + 2596 len _980 % 32]
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_980) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        stor1[address(arg2)][address(arg4)] = 1
                        stor2[address(arg2)][address(arg4)] = ext_call.return_data[0]
                        emit Added(arg2, arg4);
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3147 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3147 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3147 + 32]
                                    else:
                                        mem[floor32(_3147) + ceil32(return_data.size) + 3396] = mem[floor32(_3147) + ceil32(return_data.size) + -(_3147 % 32) + 3428 len _3147 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3147) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3150 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3150 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3150 + 32]
                                    else:
                                        mem[floor32(_3150) + ceil32(return_data.size) + 3396] = mem[floor32(_3150) + ceil32(return_data.size) + -(_3150 % 32) + 3428 len _3150 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3150) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    stor1[address(arg3)][address(arg4)] = 1
                                    stor2[address(arg3)][address(arg4)] = ext_call.return_data[0]
                                    emit Added(arg3, arg4);
        else:
            mem[floor32(_87) + ceil32(return_data.size) + 1732] = mem[floor32(_87) + ceil32(return_data.size) + -(_87 % 32) + 1764 len _87 % 32]
            require ext_code.size(sub_18128b53Address)
            staticcall sub_18128b53Address.0x50ac547d with:
                    gas gas_remaining wei
                   args 768, address(arg1), arg1 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1700 len floor32(_87) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 0
            stor1[address(arg1)][address(arg4)] = 1
            stor2[address(arg1)][address(arg4)] = ext_call.return_data[0]
            emit Added(arg1, arg4);
            if not ext_call.return_data[0]:
                return 0
            if not stor1[address(arg2)][address(arg4)]:
                mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                mem[ceil32(return_data.size) + 1024] = arg2
                mem[ceil32(return_data.size) + 1056] = arg2
                mem[ceil32(return_data.size) + 1088] = arg2
                mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                mem[ceil32(return_data.size) + 1764] = 768
                mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                _989 = mem[_4 + 96]
                mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                if not _989 % 32:
                    require ext_code.size(sub_18128b53Address)
                    staticcall sub_18128b53Address.0x50ac547d with:
                            gas gas_remaining wei
                           args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _989 + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    stor1[address(arg2)][address(arg4)] = 1
                    stor2[address(arg2)][address(arg4)] = ext_call.return_data[0]
                    emit Added(arg2, arg4);
                    if not ext_call.return_data[0]:
                        return 0
                    if arg3 != arg1:
                        if ext_call.return_data[0]:
                            if not stor1[address(arg3)][address(arg4)]:
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _3153 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _3153 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3153 + 32]
                                else:
                                    mem[floor32(_3153) + ceil32(return_data.size) + 3396] = mem[floor32(_3153) + ceil32(return_data.size) + -(_3153 % 32) + 3428 len _3153 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3153) + 64]
                            else:
                                if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                    return 1
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _3156 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _3156 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3156 + 32]
                                else:
                                    mem[floor32(_3156) + ceil32(return_data.size) + 3396] = mem[floor32(_3156) + ceil32(return_data.size) + -(_3156 % 32) + 3428 len _3156 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3156) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                stor1[address(arg3)][address(arg4)] = 1
                                stor2[address(arg3)][address(arg4)] = ext_call.return_data[0]
                                emit Added(arg3, arg4);
                else:
                    mem[floor32(_989) + ceil32(return_data.size) + 2564] = mem[floor32(_989) + ceil32(return_data.size) + -(_989 % 32) + 2596 len _989 % 32]
                    require ext_code.size(sub_18128b53Address)
                    staticcall sub_18128b53Address.0x50ac547d with:
                            gas gas_remaining wei
                           args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_989) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    stor1[address(arg2)][address(arg4)] = 1
                    stor2[address(arg2)][address(arg4)] = ext_call.return_data[0]
                    emit Added(arg2, arg4);
                    if not ext_call.return_data[0]:
                        return 0
                    if arg3 != arg1:
                        if ext_call.return_data[0]:
                            if not stor1[address(arg3)][address(arg4)]:
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _3159 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _3159 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3159 + 32]
                                else:
                                    mem[floor32(_3159) + ceil32(return_data.size) + 3396] = mem[floor32(_3159) + ceil32(return_data.size) + -(_3159 % 32) + 3428 len _3159 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3159) + 64]
                            else:
                                if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                    return 1
                                mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                mem[ceil32(return_data.size) + 1856] = arg3
                                mem[ceil32(return_data.size) + 1888] = arg3
                                mem[ceil32(return_data.size) + 1920] = arg3
                                mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2596] = 768
                                mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                _3162 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _3162 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3162 + 32]
                                else:
                                    mem[floor32(_3162) + ceil32(return_data.size) + 3396] = mem[floor32(_3162) + ceil32(return_data.size) + -(_3162 % 32) + 3428 len _3162 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3162) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                stor1[address(arg3)][address(arg4)] = 1
                                stor2[address(arg3)][address(arg4)] = ext_call.return_data[0]
                                emit Added(arg3, arg4);
            else:
                if ext_call.return_data[0] == stor2[address(arg2)][address(arg4)]:
                    if arg3 == arg1:
                        return 1
                    if not stor1[address(arg3)][address(arg4)]:
                        mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                        mem[ceil32(return_data.size) + 1024] = arg3
                        mem[ceil32(return_data.size) + 1056] = arg3
                        mem[ceil32(return_data.size) + 1088] = arg3
                        mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                        mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1764] = 768
                        mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                        _995 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _995 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _995 + 32]
                        else:
                            mem[floor32(_995) + ceil32(return_data.size) + 2564] = mem[floor32(_995) + ceil32(return_data.size) + -(_995 % 32) + 2596 len _995 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_995) + 64]
                    else:
                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                            return 1
                        mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                        mem[ceil32(return_data.size) + 1024] = arg3
                        mem[ceil32(return_data.size) + 1056] = arg3
                        mem[ceil32(return_data.size) + 1088] = arg3
                        mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                        mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1764] = 768
                        mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                        _998 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _998 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _998 + 32]
                        else:
                            mem[floor32(_998) + ceil32(return_data.size) + 2564] = mem[floor32(_998) + ceil32(return_data.size) + -(_998 % 32) + 2596 len _998 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_998) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        stor1[address(arg3)][address(arg4)] = 1
                        stor2[address(arg3)][address(arg4)] = ext_call.return_data[0]
                        emit Added(arg3, arg4);
                else:
                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                    mem[ceil32(return_data.size) + 1024] = arg2
                    mem[ceil32(return_data.size) + 1056] = arg2
                    mem[ceil32(return_data.size) + 1088] = arg2
                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1764] = 768
                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                    _992 = mem[_4 + 96]
                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                    if not _992 % 32:
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _992 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        stor1[address(arg2)][address(arg4)] = 1
                        stor2[address(arg2)][address(arg4)] = ext_call.return_data[0]
                        emit Added(arg2, arg4);
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3165 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3165 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3165 + 32]
                                    else:
                                        mem[floor32(_3165) + ceil32(return_data.size) + 3396] = mem[floor32(_3165) + ceil32(return_data.size) + -(_3165 % 32) + 3428 len _3165 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3165) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3168 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3168 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3168 + 32]
                                    else:
                                        mem[floor32(_3168) + ceil32(return_data.size) + 3396] = mem[floor32(_3168) + ceil32(return_data.size) + -(_3168 % 32) + 3428 len _3168 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3168) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    stor1[address(arg3)][address(arg4)] = 1
                                    stor2[address(arg3)][address(arg4)] = ext_call.return_data[0]
                                    emit Added(arg3, arg4);
                    else:
                        mem[floor32(_992) + ceil32(return_data.size) + 2564] = mem[floor32(_992) + ceil32(return_data.size) + -(_992 % 32) + 2596 len _992 % 32]
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_992) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        stor1[address(arg2)][address(arg4)] = 1
                        stor2[address(arg2)][address(arg4)] = ext_call.return_data[0]
                        emit Added(arg2, arg4);
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3171 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3171 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3171 + 32]
                                    else:
                                        mem[floor32(_3171) + ceil32(return_data.size) + 3396] = mem[floor32(_3171) + ceil32(return_data.size) + -(_3171 % 32) + 3428 len _3171 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3171) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3174 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3174 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3174 + 32]
                                    else:
                                        mem[floor32(_3174) + ceil32(return_data.size) + 3396] = mem[floor32(_3174) + ceil32(return_data.size) + -(_3174 % 32) + 3428 len _3174 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3174) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    stor1[address(arg3)][address(arg4)] = 1
                                    stor2[address(arg3)][address(arg4)] = ext_call.return_data[0]
                                    emit Added(arg3, arg4);
    else:
        if ext_call.return_data[0] == stor2[address(arg1)][address(arg4)]:
            if not stor1[address(arg2)][address(arg4)]:
                mem[ceil32(return_data.size) + 96 len 96] = code.data[5458 len 96]
                mem[ceil32(return_data.size) + 192] = arg2
                mem[ceil32(return_data.size) + 224] = arg2
                mem[ceil32(return_data.size) + 256] = arg2
                mem[ceil32(return_data.size) + 288 len 320] = code.data[5458 len 320]
                mem[ceil32(return_data.size) + 608 len 320] = code.data[5458 len 320]
                mem[ceil32(return_data.size) + 928] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 964 len 96] = address(arg2), address(arg2), arg2
                mem[ceil32(return_data.size) + 1060 len 320] = code.data[5458 len 320]
                mem[ceil32(return_data.size) + 1380 len 320] = code.data[5458 len 320]
                mem[ceil32(return_data.size) + 932] = 768
                mem[ceil32(return_data.size) + 1700] = mem[_4 + 96]
                _93 = mem[_4 + 96]
                mem[ceil32(return_data.size) + 1732 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                if not _93 % 32:
                    require ext_code.size(sub_18128b53Address)
                    staticcall sub_18128b53Address.0x50ac547d with:
                            gas gas_remaining wei
                           args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1700 len _93 + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    stor1[address(arg2)][address(arg4)] = 1
                    stor2[address(arg2)][address(arg4)] = ext_call.return_data[0]
                    emit Added(arg2, arg4);
                    if not ext_call.return_data[0]:
                        return 0
                    if arg3 != arg1:
                        if ext_call.return_data[0]:
                            if not stor1[address(arg3)][address(arg4)]:
                                mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                                mem[ceil32(return_data.size) + 1024] = arg3
                                mem[ceil32(return_data.size) + 1056] = arg3
                                mem[ceil32(return_data.size) + 1088] = arg3
                                mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 1764] = 768
                                mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                _1025 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _1025 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _1025 + 32]
                                else:
                                    mem[floor32(_1025) + ceil32(return_data.size) + 2564] = mem[floor32(_1025) + ceil32(return_data.size) + -(_1025 % 32) + 2596 len _1025 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1025) + 64]
                            else:
                                if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                    return 1
                                mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                                mem[ceil32(return_data.size) + 1024] = arg3
                                mem[ceil32(return_data.size) + 1056] = arg3
                                mem[ceil32(return_data.size) + 1088] = arg3
                                mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 1764] = 768
                                mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                _1028 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _1028 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _1028 + 32]
                                else:
                                    mem[floor32(_1028) + ceil32(return_data.size) + 2564] = mem[floor32(_1028) + ceil32(return_data.size) + -(_1028 % 32) + 2596 len _1028 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1028) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                stor1[address(arg3)][address(arg4)] = 1
                                stor2[address(arg3)][address(arg4)] = ext_call.return_data[0]
                                emit Added(arg3, arg4);
                else:
                    mem[floor32(_93) + ceil32(return_data.size) + 1732] = mem[floor32(_93) + ceil32(return_data.size) + -(_93 % 32) + 1764 len _93 % 32]
                    require ext_code.size(sub_18128b53Address)
                    staticcall sub_18128b53Address.0x50ac547d with:
                            gas gas_remaining wei
                           args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1700 len floor32(_93) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    stor1[address(arg2)][address(arg4)] = 1
                    stor2[address(arg2)][address(arg4)] = ext_call.return_data[0]
                    emit Added(arg2, arg4);
                    if not ext_call.return_data[0]:
                        return 0
                    if arg3 != arg1:
                        if ext_call.return_data[0]:
                            if not stor1[address(arg3)][address(arg4)]:
                                mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                                mem[ceil32(return_data.size) + 1024] = arg3
                                mem[ceil32(return_data.size) + 1056] = arg3
                                mem[ceil32(return_data.size) + 1088] = arg3
                                mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 1764] = 768
                                mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                _1031 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _1031 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _1031 + 32]
                                else:
                                    mem[floor32(_1031) + ceil32(return_data.size) + 2564] = mem[floor32(_1031) + ceil32(return_data.size) + -(_1031 % 32) + 2596 len _1031 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1031) + 64]
                            else:
                                if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                    return 1
                                mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                                mem[ceil32(return_data.size) + 1024] = arg3
                                mem[ceil32(return_data.size) + 1056] = arg3
                                mem[ceil32(return_data.size) + 1088] = arg3
                                mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                                mem[ceil32(return_data.size) + 1764] = 768
                                mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                _1034 = mem[_4 + 96]
                                mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                if not _1034 % 32:
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _1034 + 32]
                                else:
                                    mem[floor32(_1034) + ceil32(return_data.size) + 2564] = mem[floor32(_1034) + ceil32(return_data.size) + -(_1034 % 32) + 2596 len _1034 % 32]
                                    require ext_code.size(sub_18128b53Address)
                                    staticcall sub_18128b53Address.0x50ac547d with:
                                            gas gas_remaining wei
                                           args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1034) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                stor1[address(arg3)][address(arg4)] = 1
                                stor2[address(arg3)][address(arg4)] = ext_call.return_data[0]
                                emit Added(arg3, arg4);
            else:
                if ext_call.return_data[0] == stor2[address(arg2)][address(arg4)]:
                    if arg3 == arg1:
                        return 1
                    if not stor1[address(arg3)][address(arg4)]:
                        mem[ceil32(return_data.size) + 96 len 96] = code.data[5458 len 96]
                        mem[ceil32(return_data.size) + 192] = arg3
                        mem[ceil32(return_data.size) + 224] = arg3
                        mem[ceil32(return_data.size) + 256] = arg3
                        mem[ceil32(return_data.size) + 288 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 608 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 928] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 964 len 96] = address(arg3), address(arg3), arg3
                        mem[ceil32(return_data.size) + 1060 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1380 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 932] = 768
                        mem[ceil32(return_data.size) + 1700] = mem[_4 + 96]
                        _99 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 1732 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _99 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1700 len _99 + 32]
                        else:
                            mem[floor32(_99) + ceil32(return_data.size) + 1732] = mem[floor32(_99) + ceil32(return_data.size) + -(_99 % 32) + 1764 len _99 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1700 len floor32(_99) + 64]
                    else:
                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                            return 1
                        mem[ceil32(return_data.size) + 96 len 96] = code.data[5458 len 96]
                        mem[ceil32(return_data.size) + 192] = arg3
                        mem[ceil32(return_data.size) + 224] = arg3
                        mem[ceil32(return_data.size) + 256] = arg3
                        mem[ceil32(return_data.size) + 288 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 608 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 928] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 964 len 96] = address(arg3), address(arg3), arg3
                        mem[ceil32(return_data.size) + 1060 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1380 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 932] = 768
                        mem[ceil32(return_data.size) + 1700] = mem[_4 + 96]
                        _102 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 1732 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _102 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1700 len _102 + 32]
                        else:
                            mem[floor32(_102) + ceil32(return_data.size) + 1732] = mem[floor32(_102) + ceil32(return_data.size) + -(_102 % 32) + 1764 len _102 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1700 len floor32(_102) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        stor1[address(arg3)][address(arg4)] = 1
                        stor2[address(arg3)][address(arg4)] = ext_call.return_data[0]
                        emit Added(arg3, arg4);
                else:
                    mem[ceil32(return_data.size) + 96 len 96] = code.data[5458 len 96]
                    mem[ceil32(return_data.size) + 192] = arg2
                    mem[ceil32(return_data.size) + 224] = arg2
                    mem[ceil32(return_data.size) + 256] = arg2
                    mem[ceil32(return_data.size) + 288 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 608 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 928] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 964 len 96] = address(arg2), address(arg2), arg2
                    mem[ceil32(return_data.size) + 1060 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1380 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 932] = 768
                    mem[ceil32(return_data.size) + 1700] = mem[_4 + 96]
                    _96 = mem[_4 + 96]
                    mem[ceil32(return_data.size) + 1732 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                    if not _96 % 32:
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1700 len _96 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        stor1[address(arg2)][address(arg4)] = 1
                        stor2[address(arg2)][address(arg4)] = ext_call.return_data[0]
                        emit Added(arg2, arg4);
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)]:
                                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1024] = arg3
                                    mem[ceil32(return_data.size) + 1056] = arg3
                                    mem[ceil32(return_data.size) + 1088] = arg3
                                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 1764] = 768
                                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                    _1037 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _1037 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _1037 + 32]
                                    else:
                                        mem[floor32(_1037) + ceil32(return_data.size) + 2564] = mem[floor32(_1037) + ceil32(return_data.size) + -(_1037 % 32) + 2596 len _1037 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1037) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                        return 1
                                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1024] = arg3
                                    mem[ceil32(return_data.size) + 1056] = arg3
                                    mem[ceil32(return_data.size) + 1088] = arg3
                                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 1764] = 768
                                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                    _1040 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _1040 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _1040 + 32]
                                    else:
                                        mem[floor32(_1040) + ceil32(return_data.size) + 2564] = mem[floor32(_1040) + ceil32(return_data.size) + -(_1040 % 32) + 2596 len _1040 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1040) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    stor1[address(arg3)][address(arg4)] = 1
                                    stor2[address(arg3)][address(arg4)] = ext_call.return_data[0]
                                    emit Added(arg3, arg4);
                    else:
                        mem[floor32(_96) + ceil32(return_data.size) + 1732] = mem[floor32(_96) + ceil32(return_data.size) + -(_96 % 32) + 1764 len _96 % 32]
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1700 len floor32(_96) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        stor1[address(arg2)][address(arg4)] = 1
                        stor2[address(arg2)][address(arg4)] = ext_call.return_data[0]
                        emit Added(arg2, arg4);
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)]:
                                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1024] = arg3
                                    mem[ceil32(return_data.size) + 1056] = arg3
                                    mem[ceil32(return_data.size) + 1088] = arg3
                                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 1764] = 768
                                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                    _1043 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _1043 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _1043 + 32]
                                    else:
                                        mem[floor32(_1043) + ceil32(return_data.size) + 2564] = mem[floor32(_1043) + ceil32(return_data.size) + -(_1043 % 32) + 2596 len _1043 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1043) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                        return 1
                                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1024] = arg3
                                    mem[ceil32(return_data.size) + 1056] = arg3
                                    mem[ceil32(return_data.size) + 1088] = arg3
                                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 1764] = 768
                                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                                    _1046 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _1046 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _1046 + 32]
                                    else:
                                        mem[floor32(_1046) + ceil32(return_data.size) + 2564] = mem[floor32(_1046) + ceil32(return_data.size) + -(_1046 % 32) + 2596 len _1046 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1046) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    stor1[address(arg3)][address(arg4)] = 1
                                    stor2[address(arg3)][address(arg4)] = ext_call.return_data[0]
                                    emit Added(arg3, arg4);
        else:
            mem[ceil32(return_data.size) + 96 len 96] = code.data[5458 len 96]
            mem[ceil32(return_data.size) + 192] = arg1
            mem[ceil32(return_data.size) + 224] = arg1
            mem[ceil32(return_data.size) + 256] = arg1
            mem[ceil32(return_data.size) + 288 len 320] = code.data[5458 len 320]
            mem[ceil32(return_data.size) + 608 len 320] = code.data[5458 len 320]
            mem[ceil32(return_data.size) + 928] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 964 len 96] = address(arg1), address(arg1), arg1
            mem[ceil32(return_data.size) + 1060 len 320] = code.data[5458 len 320]
            mem[ceil32(return_data.size) + 1380 len 320] = code.data[5458 len 320]
            mem[ceil32(return_data.size) + 932] = 768
            mem[ceil32(return_data.size) + 1700] = mem[_4 + 96]
            _90 = mem[_4 + 96]
            mem[ceil32(return_data.size) + 1732 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
            if not _90 % 32:
                require ext_code.size(sub_18128b53Address)
                staticcall sub_18128b53Address.0x50ac547d with:
                        gas gas_remaining wei
                       args 768, address(arg1), arg1 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1700 len _90 + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    return 0
                stor1[address(arg1)][address(arg4)] = 1
                stor2[address(arg1)][address(arg4)] = ext_call.return_data[0]
                emit Added(arg1, arg4);
                if not ext_call.return_data[0]:
                    return 0
                if not stor1[address(arg2)][address(arg4)]:
                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                    mem[ceil32(return_data.size) + 1024] = arg2
                    mem[ceil32(return_data.size) + 1056] = arg2
                    mem[ceil32(return_data.size) + 1088] = arg2
                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1764] = 768
                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                    _1001 = mem[_4 + 96]
                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                    if not _1001 % 32:
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _1001 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        stor1[address(arg2)][address(arg4)] = 1
                        stor2[address(arg2)][address(arg4)] = ext_call.return_data[0]
                        emit Added(arg2, arg4);
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3177 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3177 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3177 + 32]
                                    else:
                                        mem[floor32(_3177) + ceil32(return_data.size) + 3396] = mem[floor32(_3177) + ceil32(return_data.size) + -(_3177 % 32) + 3428 len _3177 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3177) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3180 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3180 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3180 + 32]
                                    else:
                                        mem[floor32(_3180) + ceil32(return_data.size) + 3396] = mem[floor32(_3180) + ceil32(return_data.size) + -(_3180 % 32) + 3428 len _3180 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3180) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    stor1[address(arg3)][address(arg4)] = 1
                                    stor2[address(arg3)][address(arg4)] = ext_call.return_data[0]
                                    emit Added(arg3, arg4);
                    else:
                        mem[floor32(_1001) + ceil32(return_data.size) + 2564] = mem[floor32(_1001) + ceil32(return_data.size) + -(_1001 % 32) + 2596 len _1001 % 32]
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1001) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        stor1[address(arg2)][address(arg4)] = 1
                        stor2[address(arg2)][address(arg4)] = ext_call.return_data[0]
                        emit Added(arg2, arg4);
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3183 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3183 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3183 + 32]
                                    else:
                                        mem[floor32(_3183) + ceil32(return_data.size) + 3396] = mem[floor32(_3183) + ceil32(return_data.size) + -(_3183 % 32) + 3428 len _3183 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3183) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3186 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3186 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3186 + 32]
                                    else:
                                        mem[floor32(_3186) + ceil32(return_data.size) + 3396] = mem[floor32(_3186) + ceil32(return_data.size) + -(_3186 % 32) + 3428 len _3186 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3186) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    stor1[address(arg3)][address(arg4)] = 1
                                    stor2[address(arg3)][address(arg4)] = ext_call.return_data[0]
                                    emit Added(arg3, arg4);
                else:
                    if ext_call.return_data[0] == stor2[address(arg2)][address(arg4)]:
                        if arg3 == arg1:
                            return 1
                        if not stor1[address(arg3)][address(arg4)]:
                            mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                            mem[ceil32(return_data.size) + 1024] = arg3
                            mem[ceil32(return_data.size) + 1056] = arg3
                            mem[ceil32(return_data.size) + 1088] = arg3
                            mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                            mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 1764] = 768
                            mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                            _1007 = mem[_4 + 96]
                            mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                            if not _1007 % 32:
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _1007 + 32]
                            else:
                                mem[floor32(_1007) + ceil32(return_data.size) + 2564] = mem[floor32(_1007) + ceil32(return_data.size) + -(_1007 % 32) + 2596 len _1007 % 32]
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1007) + 64]
                        else:
                            if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                return 1
                            mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                            mem[ceil32(return_data.size) + 1024] = arg3
                            mem[ceil32(return_data.size) + 1056] = arg3
                            mem[ceil32(return_data.size) + 1088] = arg3
                            mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                            mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 1764] = 768
                            mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                            _1010 = mem[_4 + 96]
                            mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                            if not _1010 % 32:
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _1010 + 32]
                            else:
                                mem[floor32(_1010) + ceil32(return_data.size) + 2564] = mem[floor32(_1010) + ceil32(return_data.size) + -(_1010 % 32) + 2596 len _1010 % 32]
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1010) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            stor1[address(arg3)][address(arg4)] = 1
                            stor2[address(arg3)][address(arg4)] = ext_call.return_data[0]
                            emit Added(arg3, arg4);
                    else:
                        mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                        mem[ceil32(return_data.size) + 1024] = arg2
                        mem[ceil32(return_data.size) + 1056] = arg2
                        mem[ceil32(return_data.size) + 1088] = arg2
                        mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                        mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1764] = 768
                        mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                        _1004 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _1004 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _1004 + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                return 0
                            stor1[address(arg2)][address(arg4)] = 1
                            stor2[address(arg2)][address(arg4)] = ext_call.return_data[0]
                            emit Added(arg2, arg4);
                            if not ext_call.return_data[0]:
                                return 0
                            if arg3 != arg1:
                                if ext_call.return_data[0]:
                                    if not stor1[address(arg3)][address(arg4)]:
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _3189 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _3189 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3189 + 32]
                                        else:
                                            mem[floor32(_3189) + ceil32(return_data.size) + 3396] = mem[floor32(_3189) + ceil32(return_data.size) + -(_3189 % 32) + 3428 len _3189 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3189) + 64]
                                    else:
                                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                            return 1
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _3192 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _3192 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3192 + 32]
                                        else:
                                            mem[floor32(_3192) + ceil32(return_data.size) + 3396] = mem[floor32(_3192) + ceil32(return_data.size) + -(_3192 % 32) + 3428 len _3192 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3192) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        stor1[address(arg3)][address(arg4)] = 1
                                        stor2[address(arg3)][address(arg4)] = ext_call.return_data[0]
                                        emit Added(arg3, arg4);
                        else:
                            mem[floor32(_1004) + ceil32(return_data.size) + 2564] = mem[floor32(_1004) + ceil32(return_data.size) + -(_1004 % 32) + 2596 len _1004 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1004) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                return 0
                            stor1[address(arg2)][address(arg4)] = 1
                            stor2[address(arg2)][address(arg4)] = ext_call.return_data[0]
                            emit Added(arg2, arg4);
                            if not ext_call.return_data[0]:
                                return 0
                            if arg3 != arg1:
                                if ext_call.return_data[0]:
                                    if not stor1[address(arg3)][address(arg4)]:
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _3195 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _3195 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3195 + 32]
                                        else:
                                            mem[floor32(_3195) + ceil32(return_data.size) + 3396] = mem[floor32(_3195) + ceil32(return_data.size) + -(_3195 % 32) + 3428 len _3195 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3195) + 64]
                                    else:
                                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                            return 1
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _3198 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _3198 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3198 + 32]
                                        else:
                                            mem[floor32(_3198) + ceil32(return_data.size) + 3396] = mem[floor32(_3198) + ceil32(return_data.size) + -(_3198 % 32) + 3428 len _3198 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3198) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        stor1[address(arg3)][address(arg4)] = 1
                                        stor2[address(arg3)][address(arg4)] = ext_call.return_data[0]
                                        emit Added(arg3, arg4);
            else:
                mem[floor32(_90) + ceil32(return_data.size) + 1732] = mem[floor32(_90) + ceil32(return_data.size) + -(_90 % 32) + 1764 len _90 % 32]
                require ext_code.size(sub_18128b53Address)
                staticcall sub_18128b53Address.0x50ac547d with:
                        gas gas_remaining wei
                       args 768, address(arg1), arg1 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 1700 len floor32(_90) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    return 0
                stor1[address(arg1)][address(arg4)] = 1
                stor2[address(arg1)][address(arg4)] = ext_call.return_data[0]
                emit Added(arg1, arg4);
                if not ext_call.return_data[0]:
                    return 0
                if not stor1[address(arg2)][address(arg4)]:
                    mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                    mem[ceil32(return_data.size) + 1024] = arg2
                    mem[ceil32(return_data.size) + 1056] = arg2
                    mem[ceil32(return_data.size) + 1088] = arg2
                    mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                    mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                    mem[ceil32(return_data.size) + 1764] = 768
                    mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                    _1013 = mem[_4 + 96]
                    mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                    if not _1013 % 32:
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _1013 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        stor1[address(arg2)][address(arg4)] = 1
                        stor2[address(arg2)][address(arg4)] = ext_call.return_data[0]
                        emit Added(arg2, arg4);
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3201 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3201 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3201 + 32]
                                    else:
                                        mem[floor32(_3201) + ceil32(return_data.size) + 3396] = mem[floor32(_3201) + ceil32(return_data.size) + -(_3201 % 32) + 3428 len _3201 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3201) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3204 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3204 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3204 + 32]
                                    else:
                                        mem[floor32(_3204) + ceil32(return_data.size) + 3396] = mem[floor32(_3204) + ceil32(return_data.size) + -(_3204 % 32) + 3428 len _3204 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3204) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    stor1[address(arg3)][address(arg4)] = 1
                                    stor2[address(arg3)][address(arg4)] = ext_call.return_data[0]
                                    emit Added(arg3, arg4);
                    else:
                        mem[floor32(_1013) + ceil32(return_data.size) + 2564] = mem[floor32(_1013) + ceil32(return_data.size) + -(_1013 % 32) + 2596 len _1013 % 32]
                        require ext_code.size(sub_18128b53Address)
                        staticcall sub_18128b53Address.0x50ac547d with:
                                gas gas_remaining wei
                               args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1013) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            return 0
                        stor1[address(arg2)][address(arg4)] = 1
                        stor2[address(arg2)][address(arg4)] = ext_call.return_data[0]
                        emit Added(arg2, arg4);
                        if not ext_call.return_data[0]:
                            return 0
                        if arg3 != arg1:
                            if ext_call.return_data[0]:
                                if not stor1[address(arg3)][address(arg4)]:
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3207 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3207 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3207 + 32]
                                    else:
                                        mem[floor32(_3207) + ceil32(return_data.size) + 3396] = mem[floor32(_3207) + ceil32(return_data.size) + -(_3207 % 32) + 3428 len _3207 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3207) + 64]
                                else:
                                    if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                        return 1
                                    mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                    mem[ceil32(return_data.size) + 1856] = arg3
                                    mem[ceil32(return_data.size) + 1888] = arg3
                                    mem[ceil32(return_data.size) + 1920] = arg3
                                    mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                    mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                    mem[ceil32(return_data.size) + 2596] = 768
                                    mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                    _3210 = mem[_4 + 96]
                                    mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                    if not _3210 % 32:
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3210 + 32]
                                    else:
                                        mem[floor32(_3210) + ceil32(return_data.size) + 3396] = mem[floor32(_3210) + ceil32(return_data.size) + -(_3210 % 32) + 3428 len _3210 % 32]
                                        require ext_code.size(sub_18128b53Address)
                                        staticcall sub_18128b53Address.0x50ac547d with:
                                                gas gas_remaining wei
                                               args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3210) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    stor1[address(arg3)][address(arg4)] = 1
                                    stor2[address(arg3)][address(arg4)] = ext_call.return_data[0]
                                    emit Added(arg3, arg4);
                else:
                    if ext_call.return_data[0] == stor2[address(arg2)][address(arg4)]:
                        if arg3 == arg1:
                            return 1
                        if not stor1[address(arg3)][address(arg4)]:
                            mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                            mem[ceil32(return_data.size) + 1024] = arg3
                            mem[ceil32(return_data.size) + 1056] = arg3
                            mem[ceil32(return_data.size) + 1088] = arg3
                            mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                            mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 1764] = 768
                            mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                            _1019 = mem[_4 + 96]
                            mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                            if not _1019 % 32:
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _1019 + 32]
                            else:
                                mem[floor32(_1019) + ceil32(return_data.size) + 2564] = mem[floor32(_1019) + ceil32(return_data.size) + -(_1019 % 32) + 2596 len _1019 % 32]
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1019) + 64]
                        else:
                            if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                return 1
                            mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                            mem[ceil32(return_data.size) + 1024] = arg3
                            mem[ceil32(return_data.size) + 1056] = arg3
                            mem[ceil32(return_data.size) + 1088] = arg3
                            mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1796 len 96] = address(arg3), address(arg3), arg3
                            mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                            mem[ceil32(return_data.size) + 1764] = 768
                            mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                            _1022 = mem[_4 + 96]
                            mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                            if not _1022 % 32:
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _1022 + 32]
                            else:
                                mem[floor32(_1022) + ceil32(return_data.size) + 2564] = mem[floor32(_1022) + ceil32(return_data.size) + -(_1022 % 32) + 2596 len _1022 % 32]
                                require ext_code.size(sub_18128b53Address)
                                staticcall sub_18128b53Address.0x50ac547d with:
                                        gas gas_remaining wei
                                       args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1022) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            stor1[address(arg3)][address(arg4)] = 1
                            stor2[address(arg3)][address(arg4)] = ext_call.return_data[0]
                            emit Added(arg3, arg4);
                    else:
                        mem[ceil32(return_data.size) + 928 len 96] = code.data[5458 len 96]
                        mem[ceil32(return_data.size) + 1024] = arg2
                        mem[ceil32(return_data.size) + 1056] = arg2
                        mem[ceil32(return_data.size) + 1088] = arg2
                        mem[ceil32(return_data.size) + 1120 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1440 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1760] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 1796 len 96] = address(arg2), address(arg2), arg2
                        mem[ceil32(return_data.size) + 1892 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 2212 len 320] = code.data[5458 len 320]
                        mem[ceil32(return_data.size) + 1764] = 768
                        mem[ceil32(return_data.size) + 2532] = mem[_4 + 96]
                        _1016 = mem[_4 + 96]
                        mem[ceil32(return_data.size) + 2564 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                        if not _1016 % 32:
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len _1016 + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                return 0
                            stor1[address(arg2)][address(arg4)] = 1
                            stor2[address(arg2)][address(arg4)] = ext_call.return_data[0]
                            emit Added(arg2, arg4);
                            if not ext_call.return_data[0]:
                                return 0
                            if arg3 != arg1:
                                if ext_call.return_data[0]:
                                    if not stor1[address(arg3)][address(arg4)]:
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _3213 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _3213 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3213 + 32]
                                        else:
                                            mem[floor32(_3213) + ceil32(return_data.size) + 3396] = mem[floor32(_3213) + ceil32(return_data.size) + -(_3213 % 32) + 3428 len _3213 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3213) + 64]
                                    else:
                                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                            return 1
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _3216 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _3216 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3216 + 32]
                                        else:
                                            mem[floor32(_3216) + ceil32(return_data.size) + 3396] = mem[floor32(_3216) + ceil32(return_data.size) + -(_3216 % 32) + 3428 len _3216 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3216) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        stor1[address(arg3)][address(arg4)] = 1
                                        stor2[address(arg3)][address(arg4)] = ext_call.return_data[0]
                                        emit Added(arg3, arg4);
                        else:
                            mem[floor32(_1016) + ceil32(return_data.size) + 2564] = mem[floor32(_1016) + ceil32(return_data.size) + -(_1016 % 32) + 2596 len _1016 % 32]
                            require ext_code.size(sub_18128b53Address)
                            staticcall sub_18128b53Address.0x50ac547d with:
                                    gas gas_remaining wei
                                   args 768, address(arg2), arg2 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 2532 len floor32(_1016) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                return 0
                            stor1[address(arg2)][address(arg4)] = 1
                            stor2[address(arg2)][address(arg4)] = ext_call.return_data[0]
                            emit Added(arg2, arg4);
                            if not ext_call.return_data[0]:
                                return 0
                            if arg3 != arg1:
                                if ext_call.return_data[0]:
                                    if not stor1[address(arg3)][address(arg4)]:
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _3219 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _3219 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3219 + 32]
                                        else:
                                            mem[floor32(_3219) + ceil32(return_data.size) + 3396] = mem[floor32(_3219) + ceil32(return_data.size) + -(_3219 % 32) + 3428 len _3219 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3219) + 64]
                                    else:
                                        if ext_call.return_data[0] == stor2[address(arg3)][address(arg4)]:
                                            return 1
                                        mem[ceil32(return_data.size) + 1760 len 96] = code.data[5458 len 96]
                                        mem[ceil32(return_data.size) + 1856] = arg3
                                        mem[ceil32(return_data.size) + 1888] = arg3
                                        mem[ceil32(return_data.size) + 1920] = arg3
                                        mem[ceil32(return_data.size) + 1952 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2272 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2592] = 0x50ac547d00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 2628 len 96] = address(arg3), address(arg3), arg3
                                        mem[ceil32(return_data.size) + 2724 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 3044 len 320] = code.data[5458 len 320]
                                        mem[ceil32(return_data.size) + 2596] = 768
                                        mem[ceil32(return_data.size) + 3364] = mem[_4 + 96]
                                        _3222 = mem[_4 + 96]
                                        mem[ceil32(return_data.size) + 3396 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
                                        if not _3222 % 32:
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len _3222 + 32]
                                        else:
                                            mem[floor32(_3222) + ceil32(return_data.size) + 3396] = mem[floor32(_3222) + ceil32(return_data.size) + -(_3222 % 32) + 3428 len _3222 % 32]
                                            require ext_code.size(sub_18128b53Address)
                                            staticcall sub_18128b53Address.0x50ac547d with:
                                                    gas gas_remaining wei
                                                   args 768, address(arg3), arg3 >> 512, code.data[5458 len 320], code.data[5458 len 320], mem[ceil32(return_data.size) + 3364 len floor32(_3222) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        stor1[address(arg3)][address(arg4)] = 1
                                        stor2[address(arg3)][address(arg4)] = ext_call.return_data[0]
                                        emit Added(arg3, arg4);
    return bool(ext_call.return_data[0])
}



}

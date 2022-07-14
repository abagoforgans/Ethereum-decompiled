contract main {




// =====================  Runtime code  =====================


#
#  - doSwap()
#
address stor0;
address stor1;
array of uint256 stor10;
array of struct stor11;
array of struct stor12;
array of uint256 stor13;
uint256 stor14;
address stor15;
uint256 stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;
array of uint256 stor7;
uint8 stor8; offset 160

function _fallback() payable {
    revert
}

function sub_8c1e2fcd(?) {
    require arg4 < stor7.length
    require 100 * 10^arg2
    return (arg3 * arg1 * stor7[arg4] / 100 / 100 * 10^arg2)
}

function sub_55a3a2da(?) {
    require 100 * 10^arg2
    if arg3 * arg1 / 100 * 10^arg2 <= arg4:
        return (arg3 * arg1 / 100 * 10^arg2)
    return arg4
}

function sub_cb92c973(?) {
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_e9878653(?) {
    require ext_code.size(stor3)
    call stor3.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function emergencyTransfer(address arg1) {
    if stor15 != msg.sender:
        revert with 0, 'Only owner can swap tokens'
    require stor0 != arg1
    require stor3 != arg1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor15, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function cancelSwap() {
    if stor15 != msg.sender:
        revert with 0, 'Only owner can swap tokens'
    if stor8:
        revert with 0, 'Swap already started.'
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    call stor3.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args stor4, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getInfo() {
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[100] = this.address
    require ext_code.size(stor3)
    call stor3.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor11.length:
        if not stor10.length:
            if stor12.length:
                mem[(32 * stor11.length) + (32 * stor10.length) + 192] = uint256(stor12.field_0)
                idx = (32 * stor11.length) + (32 * stor10.length) + 192
                s = 0
                while (32 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + 160 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[(32 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + 608 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
            mem[(64 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + 608] = stor10.length
            mem[(64 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + 640 len floor32(stor10.length)] = mem[(32 * stor11.length) + 160 len floor32(stor10.length)]
            mem[(64 * stor10.length) + (64 * stor11.length) + (32 * stor12.length) + 640] = stor12.length
            mem[(64 * stor10.length) + (64 * stor11.length) + (32 * stor12.length) + 672 len floor32(stor12.length)] = mem[(32 * stor11.length) + (32 * stor10.length) + 192 len floor32(stor12.length)]
            return stor0, 
                   stor1,
                   stor2,
                   ext_call.return_data[0],
                   stor3,
                   stor4,
                   stor5,
                   ext_call.return_data[0],
                   Array(len=stor11.length, data=mem[128 len floor32(stor11.length)], mem[(32 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + floor32(stor11.length) + 608 len (32 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + -floor32(stor11.length) + 64]),
                   (32 * stor11.length) + 416,
                   (32 * stor10.length) + (32 * stor11.length) + 448,
                   stor14
        mem[(32 * stor11.length) + 160] = bool(uint8(stor10))
        idx = (32 * stor11.length) + 160
        s = 0
        while (32 * stor11.length) + (32 * stor10.length) + 128 > idx:
            mem[idx + 32] = bool(stor('name', 'stor10', 10)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1])
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        if not stor12.length:
            mem[(32 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + 608 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
            mem[(64 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + 608] = stor10.length
            mem[(64 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + 640 len floor32(stor10.length)] = mem[(32 * stor11.length) + 160 len floor32(stor10.length)]
            mem[(64 * stor10.length) + (64 * stor11.length) + (32 * stor12.length) + 640] = stor12.length
            mem[(64 * stor10.length) + (64 * stor11.length) + (32 * stor12.length) + 672 len floor32(stor12.length)] = mem[(32 * stor11.length) + (32 * stor10.length) + 192 len floor32(stor12.length)]
            return stor0, 
                   stor1,
                   stor2,
                   ext_call.return_data[0],
                   stor3,
                   stor4,
                   stor5,
                   ext_call.return_data[0],
                   Array(len=stor11.length, data=mem[128 len floor32(stor11.length)], mem[(32 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + floor32(stor11.length) + 608 len (32 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + -floor32(stor11.length) + 64]),
                   (32 * stor11.length) + 416,
                   (32 * stor10.length) + (32 * stor11.length) + 448,
                   stor14
        mem[(32 * stor11.length) + (32 * stor10.length) + 192] = uint256(stor12.field_0)
        idx = (32 * stor11.length) + (32 * stor10.length) + 192
        s = 0
        while (32 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + 160 > idx:
            mem[idx + 32] = stor12[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + 608 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
        mem[(64 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + 608] = stor10.length
        mem[(64 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + 640 len floor32(stor10.length)] = mem[(32 * stor11.length) + 160 len floor32(stor10.length)]
        mem[(64 * stor10.length) + (64 * stor11.length) + (32 * stor12.length) + 640] = stor12.length
        mem[(64 * stor10.length) + (64 * stor11.length) + (32 * stor12.length) + 672 len floor32(stor12.length)] = mem[(32 * stor11.length) + (32 * stor10.length) + 192 len floor32(stor12.length)]
        return stor0, 
               stor1,
               stor2,
               ext_call.return_data[0],
               stor3,
               stor4,
               stor5,
               ext_call.return_data[0],
               Array(len=stor11.length, data=mem[128 len floor32(stor11.length)], mem[(32 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + floor32(stor11.length) + 608 len (32 * stor11.length) + (32 * stor12.length) + (32 * stor10.length) + -floor32(stor11.length) + 64]),
               (32 * stor11.length) + 416,
               (32 * stor10.length) + (32 * stor11.length) + 448,
               stor14
    mem[128] = uint256(stor11.field_0)
    idx = 128
    s = 0
    while (32 * stor11.length) + 96 > idx:
        mem[idx + 32] = stor11[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not stor10.length:
        if not stor12.length:
            mem[(32 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + 608 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
            mem[(64 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + 608] = stor10.length
            mem[(64 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + 640 len floor32(stor10.length)] = mem[(32 * stor11.length) + 160 len floor32(stor10.length)]
            mem[(64 * stor10.length) + (64 * stor11.length) + (32 * stor12.length) + 640] = stor12.length
            mem[(64 * stor10.length) + (64 * stor11.length) + (32 * stor12.length) + 672 len floor32(stor12.length)] = mem[(32 * stor11.length) + (32 * stor10.length) + 192 len floor32(stor12.length)]
            return stor0, 
                   stor1,
                   stor2,
                   ext_call.return_data[0],
                   stor3,
                   stor4,
                   stor5,
                   ext_call.return_data[0],
                   Array(len=stor11.length, data=mem[128 len floor32(stor11.length)], mem[(32 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + floor32(stor11.length) + 608 len (32 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + -floor32(stor11.length) + 64]),
                   (32 * stor11.length) + 416,
                   (32 * stor10.length) + (32 * stor11.length) + 448,
                   stor14
        mem[(32 * stor11.length) + (32 * stor10.length) + 192] = uint256(stor12.field_0)
        idx = (32 * stor11.length) + (32 * stor10.length) + 192
        s = 0
        while (32 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + 160 > idx:
            mem[idx + 32] = stor12[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + 608 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
        mem[(64 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + 608] = stor10.length
        mem[(64 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + 640 len floor32(stor10.length)] = mem[(32 * stor11.length) + 160 len floor32(stor10.length)]
        mem[(64 * stor10.length) + (64 * stor11.length) + (32 * stor12.length) + 640] = stor12.length
        mem[(64 * stor10.length) + (64 * stor11.length) + (32 * stor12.length) + 672 len floor32(stor12.length)] = mem[(32 * stor11.length) + (32 * stor10.length) + 192 len floor32(stor12.length)]
        return stor0, 
               stor1,
               stor2,
               ext_call.return_data[0],
               stor3,
               stor4,
               stor5,
               ext_call.return_data[0],
               Array(len=stor11.length, data=mem[128 len floor32(stor11.length)], mem[(32 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + floor32(stor11.length) + 608 len (32 * stor11.length) + (32 * stor12.length) + (32 * stor10.length) + -floor32(stor11.length) + 64]),
               (32 * stor11.length) + 416,
               (32 * stor10.length) + (32 * stor11.length) + 448,
               stor14
    mem[(32 * stor11.length) + 160] = bool(uint8(stor10))
    idx = (32 * stor11.length) + 160
    s = 0
    while (32 * stor11.length) + (32 * stor10.length) + 128 > idx:
        mem[idx + 32] = bool(stor('name', 'stor10', 10)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1])
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    if not stor12.length:
        mem[(32 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + 608 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
        mem[(64 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + 608] = stor10.length
        mem[(64 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + 640 len floor32(stor10.length)] = mem[(32 * stor11.length) + 160 len floor32(stor10.length)]
        mem[(64 * stor10.length) + (64 * stor11.length) + (32 * stor12.length) + 640] = stor12.length
        mem[(64 * stor10.length) + (64 * stor11.length) + (32 * stor12.length) + 672 len floor32(stor12.length)] = mem[(32 * stor11.length) + (32 * stor10.length) + 192 len floor32(stor12.length)]
        return stor0, 
               stor1,
               stor2,
               ext_call.return_data[0],
               stor3,
               stor4,
               stor5,
               ext_call.return_data[0],
               Array(len=stor11.length, data=mem[128 len floor32(stor11.length)], mem[(32 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + floor32(stor11.length) + 608 len (32 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + -floor32(stor11.length) + 64]),
               (32 * stor11.length) + 416,
               (32 * stor10.length) + (32 * stor11.length) + 448,
               stor14
    mem[(32 * stor11.length) + (32 * stor10.length) + 192] = uint256(stor12.field_0)
    idx = (32 * stor11.length) + (32 * stor10.length) + 192
    s = 0
    while (32 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + 160 > idx:
        mem[idx + 32] = stor12[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + 608 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
    mem[(64 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + 608] = stor10.length
    mem[(64 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + 640 len floor32(stor10.length)] = mem[(32 * stor11.length) + 160 len floor32(stor10.length)]
    mem[(64 * stor10.length) + (64 * stor11.length) + (32 * stor12.length) + 640] = stor12.length
    mem[(64 * stor10.length) + (64 * stor11.length) + (32 * stor12.length) + 672 len floor32(stor12.length)] = mem[(32 * stor11.length) + (32 * stor10.length) + 192 len floor32(stor12.length)]
    return stor0, 
           stor1,
           stor2,
           ext_call.return_data[0],
           stor3,
           stor4,
           stor5,
           ext_call.return_data[0],
           Array(len=stor11.length, data=mem[128 len floor32(stor11.length)], mem[(32 * stor11.length) + (32 * stor10.length) + (32 * stor12.length) + floor32(stor11.length) + 608 len (32 * stor11.length) + (32 * stor10.length) + -floor32(stor11.length) + 32], stor12.length, mem[(32 * stor11.length) + (32 * stor10.length) + 192 len floor32(stor12.length)], mem[(64 * stor11.length) + (64 * stor10.length) + (32 * stor12.length) + floor32(stor12.length) + 672 len (32 * stor12.length) - floor32(stor12.length)]),
           (32 * stor11.length) + 416,
           (32 * stor10.length) + (32 * stor11.length) + 448,
           stor14
}

function checkVesting(uint256 arg1, uint256 arg2) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 96
    mem[192] = 96
    mem[224] = 0
    mem[256] = 0
    mem[352] = stor6
    if not stor6:
        mem[288] = 352
        mem[(32 * stor6) + 384] = stor6
        mem[64] = (64 * stor6) + 416
        mem[320] = (32 * stor6) + 384
        if stor14:
            idx = 0
            while idx < stor10.length:
                if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)]:
                    require idx < stor10.length
                    mem[0] = 10
                else:
                    require idx < stor11.length
                    if (24 * 3600 * stor11[idx].field_0) + stor14 > block.timestamp:
                        require idx < stor10.length
                        mem[0] = 10
                    else:
                        require idx < stor12.length
                        require idx < stor13.length
                        require 100 * 10^stor13[idx]
                        if stor2 * stor12[idx].field_0 / 100 * 10^stor13[idx] <= arg1:
                            mem[224] = mem[224] + (stor2 * stor12[idx].field_0 / 100 * 10^stor13[idx])
                        else:
                            mem[224] = mem[224] + arg1
                        require idx < stor12.length
                        require idx < stor13.length
                        mem[0] = 13
                        require 100 * 10^stor13[idx]
                        if stor5 * stor12[idx].field_0 / 100 * 10^stor13[idx] <= arg2:
                            mem[256] = (stor5 * stor12[idx].field_0 / 100 * 10^stor13[idx]) + mem[256]
                        else:
                            mem[256] = arg2 + mem[256]
                        s = 0
                        while s < stor6:
                            require idx < stor12.length
                            require idx < stor13.length
                            require s < stor7.length
                            mem[0] = 7
                            require 100 * 10^stor13[idx]
                            require s < mem[mem[288]]
                            mem[mem[288] + (32 * s) + 32] = (stor2 * stor12[idx].field_0 * stor7[s] / 100 / 100 * 10^stor13[idx]) + mem[mem[288] + (32 * s) + 32]
                            require idx < stor12.length
                            require idx < stor13.length
                            require s < stor7.length
                            mem[0] = 7
                            require 100 * 10^stor13[idx]
                            require s < mem[mem[320]]
                            mem[mem[320] + (32 * s) + 32] = (stor5 * stor12[idx].field_0 * stor7[s] / 100 / 100 * 10^stor13[idx]) + mem[mem[320] + (32 * s) + 32]
                            s = s + 1
                            continue 
                        require idx < stor10.length
                        mem[0] = 10
                        uint256(stor10[0.03125 / idx]) = 256^(idx % 32) or !(255 * 256^(idx % 32)) and uint256(stor10[0.03125 / idx])
                idx = idx + 1
                continue 
            mem[224] = arg1
            mem[256] = arg2
            if arg1 < mem[224]:
                if mem[256] > arg2:
                    _1112 = mem[288]
                    _1113 = mem[320]
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = arg2
                    mem[mem[64] + 64] = 128
                    mem[mem[64] + 128] = mem[_1112]
                    _1128 = mem[_1112]
                    mem[mem[64] + 160 len floor32(mem[_1112])] = mem[_1112 + 32 len floor32(mem[_1112])]
                    mem[mem[64] + 96] = (32 * _1128) + 160
                    mem[(32 * _1128) + mem[64] + 160] = mem[_1113]
                    _2127 = mem[_1113]
                    mem[(32 * _1128) + mem[64] + 192 len floor32(mem[_1113])] = mem[_1113 + 32 len floor32(mem[_1113])]
                    return arg1, arg2, 128, (32 * _1128) + 160, mem[mem[64] + 128 len (32 * _2127) + (32 * _1128) + 64]
                if not stor10.length:
                    _1131 = mem[288]
                    _1132 = mem[320]
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = arg2
                    mem[mem[64] + 64] = 128
                    mem[mem[64] + 128] = mem[_1131]
                    _1204 = mem[_1131]
                    mem[mem[64] + 160 len floor32(mem[_1131])] = mem[_1131 + 32 len floor32(mem[_1131])]
                    mem[mem[64] + 96] = (32 * _1204) + 160
                    mem[(32 * _1204) + mem[64] + 160] = mem[_1132]
                    _2130 = mem[_1132]
                    mem[(32 * _1204) + mem[64] + 192 len floor32(mem[_1132])] = mem[_1132 + 32 len floor32(mem[_1132])]
                    return arg1, arg2, 128, (32 * _1204) + 160, mem[mem[64] + 128 len (32 * _2130) + (32 * _1204) + 64]
                _1210 = mem[288]
                _1211 = mem[320]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = mem[_1210]
                _1351 = mem[_1210]
                mem[mem[64] + 160 len floor32(mem[_1210])] = mem[_1210 + 32 len floor32(mem[_1210])]
                mem[mem[64] + 96] = (32 * _1351) + 160
                mem[(32 * _1351) + mem[64] + 160] = mem[_1211]
                _2136 = mem[_1211]
                mem[(32 * _1351) + mem[64] + 192 len floor32(mem[_1211])] = mem[_1211 + 32 len floor32(mem[_1211])]
                return arg1, arg2, 128, (32 * _1351) + 160, mem[mem[64] + 128 len (32 * _2136) + (32 * _1351) + 64]
            if not stor10.length:
                if mem[256] > arg2:
                    _1139 = mem[288]
                    _1140 = mem[320]
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = arg2
                    mem[mem[64] + 64] = 128
                    mem[mem[64] + 128] = mem[_1139]
                    _1214 = mem[_1139]
                    mem[mem[64] + 160 len floor32(mem[_1139])] = mem[_1139 + 32 len floor32(mem[_1139])]
                    mem[mem[64] + 96] = (32 * _1214) + 160
                    mem[(32 * _1214) + mem[64] + 160] = mem[_1140]
                    _2139 = mem[_1140]
                    mem[(32 * _1214) + mem[64] + 192 len floor32(mem[_1140])] = mem[_1140 + 32 len floor32(mem[_1140])]
                    return arg1, arg2, 128, (32 * _1214) + 160, mem[mem[64] + 128 len (32 * _2139) + (32 * _1214) + 64]
                if not stor10.length:
                    _1217 = mem[288]
                    _1218 = mem[320]
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = arg2
                    mem[mem[64] + 64] = 128
                    mem[mem[64] + 128] = mem[_1217]
                    _1354 = mem[_1217]
                    mem[mem[64] + 160 len floor32(mem[_1217])] = mem[_1217 + 32 len floor32(mem[_1217])]
                    mem[mem[64] + 96] = (32 * _1354) + 160
                    mem[(32 * _1354) + mem[64] + 160] = mem[_1218]
                    _2142 = mem[_1218]
                    mem[(32 * _1354) + mem[64] + 192 len floor32(mem[_1218])] = mem[_1218 + 32 len floor32(mem[_1218])]
                    return arg1, arg2, 128, (32 * _1354) + 160, mem[mem[64] + 128 len (32 * _2142) + (32 * _1354) + 64]
                _1360 = mem[288]
                _1361 = mem[320]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = mem[_1360]
                _1505 = mem[_1360]
                mem[mem[64] + 160 len floor32(mem[_1360])] = mem[_1360 + 32 len floor32(mem[_1360])]
                mem[mem[64] + 96] = (32 * _1505) + 160
                mem[(32 * _1505) + mem[64] + 160] = mem[_1361]
                _2148 = mem[_1361]
                mem[(32 * _1505) + mem[64] + 192 len floor32(mem[_1361])] = mem[_1361 + 32 len floor32(mem[_1361])]
                return arg1, arg2, 128, (32 * _1505) + 160, mem[mem[64] + 128 len (32 * _2148) + (32 * _1505) + 64]
            if mem[256] > arg2:
                _1236 = mem[288]
                _1237 = mem[320]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = mem[_1236]
                _1374 = mem[_1236]
                mem[mem[64] + 160 len floor32(mem[_1236])] = mem[_1236 + 32 len floor32(mem[_1236])]
                mem[mem[64] + 96] = (32 * _1374) + 160
                mem[(32 * _1374) + mem[64] + 160] = mem[_1237]
                _2163 = mem[_1237]
                mem[(32 * _1374) + mem[64] + 192 len floor32(mem[_1237])] = mem[_1237 + 32 len floor32(mem[_1237])]
                return arg1, arg2, 128, (32 * _1374) + 160, mem[mem[64] + 128 len (32 * _2163) + (32 * _1374) + 64]
            if not stor10.length:
                _1377 = mem[288]
                _1378 = mem[320]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = mem[_1377]
                _1514 = mem[_1377]
                mem[mem[64] + 160 len floor32(mem[_1377])] = mem[_1377 + 32 len floor32(mem[_1377])]
                mem[mem[64] + 96] = (32 * _1514) + 160
                mem[(32 * _1514) + mem[64] + 160] = mem[_1378]
                _2166 = mem[_1378]
                mem[(32 * _1514) + mem[64] + 192 len floor32(mem[_1378])] = mem[_1378 + 32 len floor32(mem[_1378])]
                return arg1, arg2, 128, (32 * _1514) + 160, mem[mem[64] + 128 len (32 * _2166) + (32 * _1514) + 64]
            _1520 = mem[288]
            _1521 = mem[320]
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = mem[_1520]
            _1636 = mem[_1520]
            mem[mem[64] + 160 len floor32(mem[_1520])] = mem[_1520 + 32 len floor32(mem[_1520])]
            mem[mem[64] + 96] = (32 * _1636) + 160
            mem[(32 * _1636) + mem[64] + 160] = mem[_1521]
            _2172 = mem[_1521]
            mem[(32 * _1636) + mem[64] + 192 len floor32(mem[_1521])] = mem[_1521 + 32 len floor32(mem[_1521])]
            return arg1, arg2, 128, (32 * _1636) + 160, mem[mem[64] + 128 len (32 * _2172) + (32 * _1636) + 64]
        stor14 = block.timestamp
        idx = 0
        while idx < stor10.length:
            if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)]:
                require idx < stor10.length
                mem[0] = 10
            else:
                require idx < stor11.length
                if (24 * 3600 * stor11[idx].field_0) + stor14 > block.timestamp:
                    require idx < stor10.length
                    mem[0] = 10
                else:
                    require idx < stor12.length
                    require idx < stor13.length
                    require 100 * 10^stor13[idx]
                    if stor2 * stor12[idx].field_0 / 100 * 10^stor13[idx] <= arg1:
                        mem[224] = mem[224] + (stor2 * stor12[idx].field_0 / 100 * 10^stor13[idx])
                    else:
                        mem[224] = mem[224] + arg1
                    require idx < stor12.length
                    require idx < stor13.length
                    mem[0] = 13
                    require 100 * 10^stor13[idx]
                    if stor5 * stor12[idx].field_0 / 100 * 10^stor13[idx] <= arg2:
                        mem[256] = (stor5 * stor12[idx].field_0 / 100 * 10^stor13[idx]) + mem[256]
                    else:
                        mem[256] = arg2 + mem[256]
                    s = 0
                    while s < stor6:
                        require idx < stor12.length
                        require idx < stor13.length
                        require s < stor7.length
                        mem[0] = 7
                        require 100 * 10^stor13[idx]
                        require s < mem[mem[288]]
                        mem[mem[288] + (32 * s) + 32] = (stor2 * stor12[idx].field_0 * stor7[s] / 100 / 100 * 10^stor13[idx]) + mem[mem[288] + (32 * s) + 32]
                        require idx < stor12.length
                        require idx < stor13.length
                        require s < stor7.length
                        mem[0] = 7
                        require 100 * 10^stor13[idx]
                        require s < mem[mem[320]]
                        mem[mem[320] + (32 * s) + 32] = (stor5 * stor12[idx].field_0 * stor7[s] / 100 / 100 * 10^stor13[idx]) + mem[mem[320] + (32 * s) + 32]
                        s = s + 1
                        continue 
                    require idx < stor10.length
                    mem[0] = 10
                    uint256(stor10[0.03125 / idx]) = 256^(idx % 32) or !(255 * 256^(idx % 32)) and uint256(stor10[0.03125 / idx])
            idx = idx + 1
            continue 
        mem[224] = arg1
        mem[256] = arg2
        if arg1 < mem[224]:
            if mem[256] > arg2:
                _1116 = mem[288]
                _1117 = mem[320]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = mem[_1116]
                _1147 = mem[_1116]
                mem[mem[64] + 160 len floor32(mem[_1116])] = mem[_1116 + 32 len floor32(mem[_1116])]
                mem[mem[64] + 96] = (32 * _1147) + 160
                mem[(32 * _1147) + mem[64] + 160] = mem[_1117]
                _2175 = mem[_1117]
                mem[(32 * _1147) + mem[64] + 192 len floor32(mem[_1117])] = mem[_1117 + 32 len floor32(mem[_1117])]
                return arg1, arg2, 128, (32 * _1147) + 160, mem[mem[64] + 128 len (32 * _2175) + (32 * _1147) + 64]
            if not stor10.length:
                _1150 = mem[288]
                _1151 = mem[320]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = mem[_1150]
                _1240 = mem[_1150]
                mem[mem[64] + 160 len floor32(mem[_1150])] = mem[_1150 + 32 len floor32(mem[_1150])]
                mem[mem[64] + 96] = (32 * _1240) + 160
                mem[(32 * _1240) + mem[64] + 160] = mem[_1151]
                _2178 = mem[_1151]
                mem[(32 * _1240) + mem[64] + 192 len floor32(mem[_1151])] = mem[_1151 + 32 len floor32(mem[_1151])]
                return arg1, arg2, 128, (32 * _1240) + 160, mem[mem[64] + 128 len (32 * _2178) + (32 * _1240) + 64]
            _1246 = mem[288]
            _1247 = mem[320]
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = mem[_1246]
            _1388 = mem[_1246]
            mem[mem[64] + 160 len floor32(mem[_1246])] = mem[_1246 + 32 len floor32(mem[_1246])]
            mem[mem[64] + 96] = (32 * _1388) + 160
            mem[(32 * _1388) + mem[64] + 160] = mem[_1247]
            _2184 = mem[_1247]
            mem[(32 * _1388) + mem[64] + 192 len floor32(mem[_1247])] = mem[_1247 + 32 len floor32(mem[_1247])]
            return arg1, arg2, 128, (32 * _1388) + 160, mem[mem[64] + 128 len (32 * _2184) + (32 * _1388) + 64]
        if not stor10.length:
            if mem[256] > arg2:
                _1158 = mem[288]
                _1159 = mem[320]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = mem[_1158]
                _1250 = mem[_1158]
                mem[mem[64] + 160 len floor32(mem[_1158])] = mem[_1158 + 32 len floor32(mem[_1158])]
                mem[mem[64] + 96] = (32 * _1250) + 160
                mem[(32 * _1250) + mem[64] + 160] = mem[_1159]
                _2187 = mem[_1159]
                mem[(32 * _1250) + mem[64] + 192 len floor32(mem[_1159])] = mem[_1159 + 32 len floor32(mem[_1159])]
                return arg1, arg2, 128, (32 * _1250) + 160, mem[mem[64] + 128 len (32 * _2187) + (32 * _1250) + 64]
            if not stor10.length:
                _1253 = mem[288]
                _1254 = mem[320]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = mem[_1253]
                _1391 = mem[_1253]
                mem[mem[64] + 160 len floor32(mem[_1253])] = mem[_1253 + 32 len floor32(mem[_1253])]
                mem[mem[64] + 96] = (32 * _1391) + 160
                mem[(32 * _1391) + mem[64] + 160] = mem[_1254]
                _2190 = mem[_1254]
                mem[(32 * _1391) + mem[64] + 192 len floor32(mem[_1254])] = mem[_1254 + 32 len floor32(mem[_1254])]
                return arg1, arg2, 128, (32 * _1391) + 160, mem[mem[64] + 128 len (32 * _2190) + (32 * _1391) + 64]
            _1397 = mem[288]
            _1398 = mem[320]
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = mem[_1397]
            _1535 = mem[_1397]
            mem[mem[64] + 160 len floor32(mem[_1397])] = mem[_1397 + 32 len floor32(mem[_1397])]
            mem[mem[64] + 96] = (32 * _1535) + 160
            mem[(32 * _1535) + mem[64] + 160] = mem[_1398]
            _2196 = mem[_1398]
            mem[(32 * _1535) + mem[64] + 192 len floor32(mem[_1398])] = mem[_1398 + 32 len floor32(mem[_1398])]
            return arg1, arg2, 128, (32 * _1535) + 160, mem[mem[64] + 128 len (32 * _2196) + (32 * _1535) + 64]
        if mem[256] > arg2:
            _1272 = mem[288]
            _1273 = mem[320]
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = mem[_1272]
            _1411 = mem[_1272]
            mem[mem[64] + 160 len floor32(mem[_1272])] = mem[_1272 + 32 len floor32(mem[_1272])]
            mem[mem[64] + 96] = (32 * _1411) + 160
            mem[(32 * _1411) + mem[64] + 160] = mem[_1273]
            _2211 = mem[_1273]
            mem[(32 * _1411) + mem[64] + 192 len floor32(mem[_1273])] = mem[_1273 + 32 len floor32(mem[_1273])]
            return arg1, arg2, 128, (32 * _1411) + 160, mem[mem[64] + 128 len (32 * _2211) + (32 * _1411) + 64]
        if not stor10.length:
            _1414 = mem[288]
            _1415 = mem[320]
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = mem[_1414]
            _1544 = mem[_1414]
            mem[mem[64] + 160 len floor32(mem[_1414])] = mem[_1414 + 32 len floor32(mem[_1414])]
            mem[mem[64] + 96] = (32 * _1544) + 160
            mem[(32 * _1544) + mem[64] + 160] = mem[_1415]
            _2214 = mem[_1415]
            mem[(32 * _1544) + mem[64] + 192 len floor32(mem[_1415])] = mem[_1415 + 32 len floor32(mem[_1415])]
            return arg1, arg2, 128, (32 * _1544) + 160, mem[mem[64] + 128 len (32 * _2214) + (32 * _1544) + 64]
        _1550 = mem[288]
        _1551 = mem[320]
        mem[mem[64]] = arg1
        mem[mem[64] + 32] = arg2
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = mem[_1550]
        _1661 = mem[_1550]
        mem[mem[64] + 160 len floor32(mem[_1550])] = mem[_1550 + 32 len floor32(mem[_1550])]
        mem[mem[64] + 96] = (32 * _1661) + 160
        mem[(32 * _1661) + mem[64] + 160] = mem[_1551]
        _2220 = mem[_1551]
        mem[(32 * _1661) + mem[64] + 192 len floor32(mem[_1551])] = mem[_1551 + 32 len floor32(mem[_1551])]
        return arg1, arg2, 128, (32 * _1661) + 160, mem[mem[64] + 128 len (32 * _2220) + (32 * _1661) + 64]
    mem[384 len 32 * stor6] = code.data[7975 len 32 * stor6]
    mem[288] = 352
    mem[(32 * stor6) + 384] = stor6
    mem[64] = (64 * stor6) + 416
    mem[(32 * stor6) + 416 len 32 * stor6] = code.data[7975 len 32 * stor6]
    mem[320] = (32 * stor6) + 384
    if stor14:
        idx = 0
        while idx < stor10.length:
            if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)]:
                require idx < stor10.length
                mem[0] = 10
            else:
                require idx < stor11.length
                if (24 * 3600 * stor11[idx].field_0) + stor14 > block.timestamp:
                    require idx < stor10.length
                    mem[0] = 10
                else:
                    require idx < stor12.length
                    require idx < stor13.length
                    require 100 * 10^stor13[idx]
                    if stor2 * stor12[idx].field_0 / 100 * 10^stor13[idx] <= arg1:
                        mem[224] = mem[224] + (stor2 * stor12[idx].field_0 / 100 * 10^stor13[idx])
                    else:
                        mem[224] = mem[224] + arg1
                    require idx < stor12.length
                    require idx < stor13.length
                    mem[0] = 13
                    require 100 * 10^stor13[idx]
                    if stor5 * stor12[idx].field_0 / 100 * 10^stor13[idx] <= arg2:
                        mem[256] = (stor5 * stor12[idx].field_0 / 100 * 10^stor13[idx]) + mem[256]
                    else:
                        mem[256] = arg2 + mem[256]
                    s = 0
                    while s < stor6:
                        require idx < stor12.length
                        require idx < stor13.length
                        require s < stor7.length
                        mem[0] = 7
                        require 100 * 10^stor13[idx]
                        require s < mem[mem[288]]
                        mem[mem[288] + (32 * s) + 32] = (stor2 * stor12[idx].field_0 * stor7[s] / 100 / 100 * 10^stor13[idx]) + mem[mem[288] + (32 * s) + 32]
                        require idx < stor12.length
                        require idx < stor13.length
                        require s < stor7.length
                        mem[0] = 7
                        require 100 * 10^stor13[idx]
                        require s < mem[mem[320]]
                        mem[mem[320] + (32 * s) + 32] = (stor5 * stor12[idx].field_0 * stor7[s] / 100 / 100 * 10^stor13[idx]) + mem[mem[320] + (32 * s) + 32]
                        s = s + 1
                        continue 
                    require idx < stor10.length
                    mem[0] = 10
                    uint256(stor10[0.03125 / idx]) = 256^(idx % 32) or !(255 * 256^(idx % 32)) and uint256(stor10[0.03125 / idx])
            idx = idx + 1
            continue 
        mem[224] = arg1
        mem[256] = arg2
        if arg1 < mem[224]:
            if mem[256] > arg2:
                _1120 = mem[288]
                _1121 = mem[320]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = mem[_1120]
                _1166 = mem[_1120]
                mem[mem[64] + 160 len floor32(mem[_1120])] = mem[_1120 + 32 len floor32(mem[_1120])]
                mem[mem[64] + 96] = (32 * _1166) + 160
                mem[(32 * _1166) + mem[64] + 160] = mem[_1121]
                _2223 = mem[_1121]
                mem[(32 * _1166) + mem[64] + 192 len floor32(mem[_1121])] = mem[_1121 + 32 len floor32(mem[_1121])]
                return arg1, arg2, 128, (32 * _1166) + 160, mem[mem[64] + 128 len (32 * _2223) + (32 * _1166) + 64]
            if not stor10.length:
                _1169 = mem[288]
                _1170 = mem[320]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = mem[_1169]
                _1276 = mem[_1169]
                mem[mem[64] + 160 len floor32(mem[_1169])] = mem[_1169 + 32 len floor32(mem[_1169])]
                mem[mem[64] + 96] = (32 * _1276) + 160
                mem[(32 * _1276) + mem[64] + 160] = mem[_1170]
                _2226 = mem[_1170]
                mem[(32 * _1276) + mem[64] + 192 len floor32(mem[_1170])] = mem[_1170 + 32 len floor32(mem[_1170])]
                return arg1, arg2, 128, (32 * _1276) + 160, mem[mem[64] + 128 len (32 * _2226) + (32 * _1276) + 64]
            _1282 = mem[288]
            _1283 = mem[320]
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = mem[_1282]
            _1425 = mem[_1282]
            mem[mem[64] + 160 len floor32(mem[_1282])] = mem[_1282 + 32 len floor32(mem[_1282])]
            mem[mem[64] + 96] = (32 * _1425) + 160
            mem[(32 * _1425) + mem[64] + 160] = mem[_1283]
            _2232 = mem[_1283]
            mem[(32 * _1425) + mem[64] + 192 len floor32(mem[_1283])] = mem[_1283 + 32 len floor32(mem[_1283])]
            return arg1, arg2, 128, (32 * _1425) + 160, mem[mem[64] + 128 len (32 * _2232) + (32 * _1425) + 64]
        if not stor10.length:
            if mem[256] > arg2:
                _1177 = mem[288]
                _1178 = mem[320]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = mem[_1177]
                _1286 = mem[_1177]
                mem[mem[64] + 160 len floor32(mem[_1177])] = mem[_1177 + 32 len floor32(mem[_1177])]
                mem[mem[64] + 96] = (32 * _1286) + 160
                mem[(32 * _1286) + mem[64] + 160] = mem[_1178]
                _2235 = mem[_1178]
                mem[(32 * _1286) + mem[64] + 192 len floor32(mem[_1178])] = mem[_1178 + 32 len floor32(mem[_1178])]
                return arg1, arg2, 128, (32 * _1286) + 160, mem[mem[64] + 128 len (32 * _2235) + (32 * _1286) + 64]
            if not stor10.length:
                _1289 = mem[288]
                _1290 = mem[320]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = mem[_1289]
                _1428 = mem[_1289]
                mem[mem[64] + 160 len floor32(mem[_1289])] = mem[_1289 + 32 len floor32(mem[_1289])]
                mem[mem[64] + 96] = (32 * _1428) + 160
                mem[(32 * _1428) + mem[64] + 160] = mem[_1290]
                _2238 = mem[_1290]
                mem[(32 * _1428) + mem[64] + 192 len floor32(mem[_1290])] = mem[_1290 + 32 len floor32(mem[_1290])]
                return arg1, arg2, 128, (32 * _1428) + 160, mem[mem[64] + 128 len (32 * _2238) + (32 * _1428) + 64]
            _1434 = mem[288]
            _1435 = mem[320]
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = mem[_1434]
            _1565 = mem[_1434]
            mem[mem[64] + 160 len floor32(mem[_1434])] = mem[_1434 + 32 len floor32(mem[_1434])]
            mem[mem[64] + 96] = (32 * _1565) + 160
            mem[(32 * _1565) + mem[64] + 160] = mem[_1435]
            _2244 = mem[_1435]
            mem[(32 * _1565) + mem[64] + 192 len floor32(mem[_1435])] = mem[_1435 + 32 len floor32(mem[_1435])]
            return arg1, arg2, 128, (32 * _1565) + 160, mem[mem[64] + 128 len (32 * _2244) + (32 * _1565) + 64]
        if mem[256] > arg2:
            _1308 = mem[288]
            _1309 = mem[320]
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = mem[_1308]
            _1448 = mem[_1308]
            mem[mem[64] + 160 len floor32(mem[_1308])] = mem[_1308 + 32 len floor32(mem[_1308])]
            mem[mem[64] + 96] = (32 * _1448) + 160
            mem[(32 * _1448) + mem[64] + 160] = mem[_1309]
            _2259 = mem[_1309]
            mem[(32 * _1448) + mem[64] + 192 len floor32(mem[_1309])] = mem[_1309 + 32 len floor32(mem[_1309])]
            return arg1, arg2, 128, (32 * _1448) + 160, mem[mem[64] + 128 len (32 * _2259) + (32 * _1448) + 64]
        if not stor10.length:
            _1451 = mem[288]
            _1452 = mem[320]
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = mem[_1451]
            _1574 = mem[_1451]
            mem[mem[64] + 160 len floor32(mem[_1451])] = mem[_1451 + 32 len floor32(mem[_1451])]
            mem[mem[64] + 96] = (32 * _1574) + 160
            mem[(32 * _1574) + mem[64] + 160] = mem[_1452]
            _2262 = mem[_1452]
            mem[(32 * _1574) + mem[64] + 192 len floor32(mem[_1452])] = mem[_1452 + 32 len floor32(mem[_1452])]
            return arg1, arg2, 128, (32 * _1574) + 160, mem[mem[64] + 128 len (32 * _2262) + (32 * _1574) + 64]
        _1580 = mem[288]
        _1581 = mem[320]
        mem[mem[64]] = arg1
        mem[mem[64] + 32] = arg2
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = mem[_1580]
        _1686 = mem[_1580]
        mem[mem[64] + 160 len floor32(mem[_1580])] = mem[_1580 + 32 len floor32(mem[_1580])]
        mem[mem[64] + 96] = (32 * _1686) + 160
        mem[(32 * _1686) + mem[64] + 160] = mem[_1581]
        _2268 = mem[_1581]
        mem[(32 * _1686) + mem[64] + 192 len floor32(mem[_1581])] = mem[_1581 + 32 len floor32(mem[_1581])]
        return arg1, arg2, 128, (32 * _1686) + 160, mem[mem[64] + 128 len (32 * _2268) + (32 * _1686) + 64]
    stor14 = block.timestamp
    idx = 0
    while idx < stor10.length:
        if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor10', 10))[uint8(idx)]:
            require idx < stor10.length
            mem[0] = 10
        else:
            require idx < stor11.length
            if (24 * 3600 * stor11[idx].field_0) + stor14 > block.timestamp:
                require idx < stor10.length
                mem[0] = 10
            else:
                require idx < stor12.length
                require idx < stor13.length
                require 100 * 10^stor13[idx]
                if stor2 * stor12[idx].field_0 / 100 * 10^stor13[idx] <= arg1:
                    mem[224] = mem[224] + (stor2 * stor12[idx].field_0 / 100 * 10^stor13[idx])
                else:
                    mem[224] = mem[224] + arg1
                require idx < stor12.length
                require idx < stor13.length
                mem[0] = 13
                require 100 * 10^stor13[idx]
                if stor5 * stor12[idx].field_0 / 100 * 10^stor13[idx] <= arg2:
                    mem[256] = (stor5 * stor12[idx].field_0 / 100 * 10^stor13[idx]) + mem[256]
                else:
                    mem[256] = arg2 + mem[256]
                s = 0
                while s < stor6:
                    require idx < stor12.length
                    require idx < stor13.length
                    require s < stor7.length
                    mem[0] = 7
                    require 100 * 10^stor13[idx]
                    require s < mem[mem[288]]
                    mem[mem[288] + (32 * s) + 32] = (stor2 * stor12[idx].field_0 * stor7[s] / 100 / 100 * 10^stor13[idx]) + mem[mem[288] + (32 * s) + 32]
                    require idx < stor12.length
                    require idx < stor13.length
                    require s < stor7.length
                    mem[0] = 7
                    require 100 * 10^stor13[idx]
                    require s < mem[mem[320]]
                    mem[mem[320] + (32 * s) + 32] = (stor5 * stor12[idx].field_0 * stor7[s] / 100 / 100 * 10^stor13[idx]) + mem[mem[320] + (32 * s) + 32]
                    s = s + 1
                    continue 
                require idx < stor10.length
                mem[0] = 10
                uint256(stor10[0.03125 / idx]) = 256^(idx % 32) or !(255 * 256^(idx % 32)) and uint256(stor10[0.03125 / idx])
        idx = idx + 1
        continue 
    mem[224] = arg1
    mem[256] = arg2
    if arg1 < mem[224]:
        if mem[256] > arg2:
            _1124 = mem[288]
            _1125 = mem[320]
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = mem[_1124]
            _1185 = mem[_1124]
            mem[mem[64] + 160 len floor32(mem[_1124])] = mem[_1124 + 32 len floor32(mem[_1124])]
            mem[mem[64] + 96] = (32 * _1185) + 160
            mem[(32 * _1185) + mem[64] + 160] = mem[_1125]
            _2271 = mem[_1125]
            mem[(32 * _1185) + mem[64] + 192 len floor32(mem[_1125])] = mem[_1125 + 32 len floor32(mem[_1125])]
            return arg1, arg2, 128, (32 * _1185) + 160, mem[mem[64] + 128 len (32 * _2271) + (32 * _1185) + 64]
        if not stor10.length:
            _1188 = mem[288]
            _1189 = mem[320]
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = mem[_1188]
            _1312 = mem[_1188]
            mem[mem[64] + 160 len floor32(mem[_1188])] = mem[_1188 + 32 len floor32(mem[_1188])]
            mem[mem[64] + 96] = (32 * _1312) + 160
            mem[(32 * _1312) + mem[64] + 160] = mem[_1189]
            _2274 = mem[_1189]
            mem[(32 * _1312) + mem[64] + 192 len floor32(mem[_1189])] = mem[_1189 + 32 len floor32(mem[_1189])]
            return arg1, arg2, 128, (32 * _1312) + 160, mem[mem[64] + 128 len (32 * _2274) + (32 * _1312) + 64]
        _1318 = mem[288]
        _1319 = mem[320]
        mem[mem[64]] = arg1
        mem[mem[64] + 32] = arg2
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = mem[_1318]
        _1462 = mem[_1318]
        mem[mem[64] + 160 len floor32(mem[_1318])] = mem[_1318 + 32 len floor32(mem[_1318])]
        mem[mem[64] + 96] = (32 * _1462) + 160
        mem[(32 * _1462) + mem[64] + 160] = mem[_1319]
        _2280 = mem[_1319]
        mem[(32 * _1462) + mem[64] + 192 len floor32(mem[_1319])] = mem[_1319 + 32 len floor32(mem[_1319])]
        return arg1, arg2, 128, (32 * _1462) + 160, mem[mem[64] + 128 len (32 * _2280) + (32 * _1462) + 64]
    if not stor10.length:
        if mem[256] > arg2:
            _1196 = mem[288]
            _1197 = mem[320]
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = mem[_1196]
            _1322 = mem[_1196]
            mem[mem[64] + 160 len floor32(mem[_1196])] = mem[_1196 + 32 len floor32(mem[_1196])]
            mem[mem[64] + 96] = (32 * _1322) + 160
            mem[(32 * _1322) + mem[64] + 160] = mem[_1197]
            _2283 = mem[_1197]
            mem[(32 * _1322) + mem[64] + 192 len floor32(mem[_1197])] = mem[_1197 + 32 len floor32(mem[_1197])]
            return arg1, arg2, 128, (32 * _1322) + 160, mem[mem[64] + 128 len (32 * _2283) + (32 * _1322) + 64]
        if not stor10.length:
            _1325 = mem[288]
            _1326 = mem[320]
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = mem[_1325]
            _1465 = mem[_1325]
            mem[mem[64] + 160 len floor32(mem[_1325])] = mem[_1325 + 32 len floor32(mem[_1325])]
            mem[mem[64] + 96] = (32 * _1465) + 160
            mem[(32 * _1465) + mem[64] + 160] = mem[_1326]
            _2286 = mem[_1326]
            mem[(32 * _1465) + mem[64] + 192 len floor32(mem[_1326])] = mem[_1326 + 32 len floor32(mem[_1326])]
            return arg1, arg2, 128, (32 * _1465) + 160, mem[mem[64] + 128 len (32 * _2286) + (32 * _1465) + 64]
        _1471 = mem[288]
        _1472 = mem[320]
        mem[mem[64]] = arg1
        mem[mem[64] + 32] = arg2
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = mem[_1471]
        _1595 = mem[_1471]
        mem[mem[64] + 160 len floor32(mem[_1471])] = mem[_1471 + 32 len floor32(mem[_1471])]
        mem[mem[64] + 96] = (32 * _1595) + 160
        mem[(32 * _1595) + mem[64] + 160] = mem[_1472]
        _2292 = mem[_1472]
        mem[(32 * _1595) + mem[64] + 192 len floor32(mem[_1472])] = mem[_1472 + 32 len floor32(mem[_1472])]
        return arg1, arg2, 128, (32 * _1595) + 160, mem[mem[64] + 128 len (32 * _2292) + (32 * _1595) + 64]
    if mem[256] > arg2:
        _1344 = mem[288]
        _1345 = mem[320]
        mem[mem[64]] = arg1
        mem[mem[64] + 32] = arg2
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = mem[_1344]
        _1485 = mem[_1344]
        mem[mem[64] + 160 len floor32(mem[_1344])] = mem[_1344 + 32 len floor32(mem[_1344])]
        mem[mem[64] + 96] = (32 * _1485) + 160
        mem[(32 * _1485) + mem[64] + 160] = mem[_1345]
        _2307 = mem[_1345]
        mem[(32 * _1485) + mem[64] + 192 len floor32(mem[_1345])] = mem[_1345 + 32 len floor32(mem[_1345])]
        return arg1, arg2, 128, (32 * _1485) + 160, mem[mem[64] + 128 len (32 * _2307) + (32 * _1485) + 64]
    if not stor10.length:
        _1488 = mem[288]
        _1489 = mem[320]
        mem[mem[64]] = arg1
        mem[mem[64] + 32] = arg2
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = mem[_1488]
        _1604 = mem[_1488]
        mem[mem[64] + 160 len floor32(mem[_1488])] = mem[_1488 + 32 len floor32(mem[_1488])]
        mem[mem[64] + 96] = (32 * _1604) + 160
        mem[(32 * _1604) + mem[64] + 160] = mem[_1489]
        _2310 = mem[_1489]
        mem[(32 * _1604) + mem[64] + 192 len floor32(mem[_1489])] = mem[_1489 + 32 len floor32(mem[_1489])]
        return arg1, arg2, 128, (32 * _1604) + 160, mem[mem[64] + 128 len (32 * _2310) + (32 * _1604) + 64]
    _1610 = mem[288]
    _1611 = mem[320]
    mem[mem[64]] = arg1
    mem[mem[64] + 32] = arg2
    mem[mem[64] + 64] = 128
    mem[mem[64] + 128] = mem[_1610]
    _1711 = mem[_1610]
    mem[mem[64] + 160 len floor32(mem[_1610])] = mem[_1610 + 32 len floor32(mem[_1610])]
    mem[mem[64] + 96] = (32 * _1711) + 160
    mem[(32 * _1711) + mem[64] + 160] = mem[_1611]
    _2316 = mem[_1611]
    mem[(32 * _1711) + mem[64] + 192 len floor32(mem[_1611])] = mem[_1611 + 32 len floor32(mem[_1611])]
    return arg1, arg2, 128, (32 * _1711) + 160, mem[mem[64] + 128 len (32 * _2316) + (32 * _1711) + 64]
}



}

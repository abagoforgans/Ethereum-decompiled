contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor8;

function _fallback() payable {
    mem[96] = 0
    mem[128] = 10
    mem[160] = 20
    mem[192] = 30
    mem[224] = 50
    mem[256] = 50
    s = 0
    idx = 96
    while 288 > idx:
        stor2 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor2
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 6
    s = 2
    while idx:
        uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-4 * None + 3 / 32) + (None * None + 3 / 32) + 2
    while 3 > idx:
        uint8(stor[idx]) = 0
        idx = idx + 1
        continue 
    mem[288] = 11
    mem[320] = 42
    mem[352] = 70
    mem[384] = 101
    mem[416] = 131
    mem[448] = 162
    mem[480] = 192
    mem[512] = 223
    mem[544] = 254
    mem[576] = 284
    mem[608] = 315
    mem[640] = 345
    s = 0
    idx = 288
    while 672 > idx:
        stor8 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor8
        s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
        idx = idx + 32
        continue 
    idx = 24
    s = 8
    while idx:
        uint256(stor[s]) = !(65535 * 256^idx) and uint256(stor[s])
        idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
        s = (idx + 3 / 32) + s
        continue 
    idx = (Mask(254, 1, None - 21) + 27 / 32 * uint255(None - 21) >> 1) + 8
    while 9 > idx:
        uint16(stor[idx]) = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = code.data[12952 len 20]
    stor1 = code.data[12952 len 20]
    return code.data[716 len 12224]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - schedulePayoutOraclizeCall(uint256 arg1, bytes32 arg2, uint256 arg3)
#
address controllerAddress;
address stor1;
array of uint16 stor8;
uint256 stor9;
uint256 stor10;
address stor11;
uint256 stor11;

function controller() {
    return controllerAddress
}

function destruct() {
    require controllerAddress == msg.sender
    selfdestruct(controllerAddress)
}

function _fallback() payable {
    revert
}

function fund() payable {
    require ext_code.size(address(stor11))
    call address(stor11).checkPermission(uint8 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 102, msg.sender
    require ext_call.success
    require ext_call.return_data[0]
}

function setContracts() {
    require controllerAddress == msg.sender
    require ext_code.size(stor1)
    call stor1.getContract(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args 'FD.AccessController'
    require ext_call.success
    uint256(stor11) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor11))
    require ext_code.size(stor1)
    call stor1.getContract(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args 'FD.Database'
    require ext_call.success
    stor9 = ext_call.return_data[12 len 20] or Mask(96, 160, stor9)
    require ext_code.size(stor1)
    call stor1.getContract(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args 'FD.Ledger'
    require ext_call.success
    stor10 = ext_call.return_data[12 len 20] or Mask(96, 160, stor10)
    require ext_code.size(address(stor11))
    call address(stor11).setPermissionById(uint8 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 101, 'FD.Underwrite'
    require ext_call.success
    require ext_code.size(address(stor11))
    call address(stor11).setPermissionById(uint8 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 101, 'FD.Payout'
    require ext_call.success
    require ext_code.size(address(stor11))
    call address(stor11).setPermissionById(uint8 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 102, 'FD.Funder'
    require ext_call.success
}

function b32toHexString(bytes32 arg1) {
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < 32:
        require 2^(8 * -idx + 31)
        require 2 * idx < 64
        if uint8(arg1 / 2^(8 * -idx + 31)) / 16 <= 9:
            mem[(2 * idx) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('div', ('mask', 8, 0, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0))))))), 16))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('div', ('mask', 8, 0, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0))))))), 16))), 0) - 256
            require (2 * idx) + 1 < 64
            if uint8((arg1 / 2^(8 * -idx + 31)) - Mask(4, 4, arg1 / 2^(8 * -idx + 31))) <= 9:
                mem[(2 * idx) + 193 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0)))))), ('mul', -1, ('mask_shl', 4, 4, 0, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0)))))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0)))))), ('mul', -1, ('mask_shl', 4, 4, 0, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0)))))))))), 0) - 256
                s = (arg1 / 2^(8 * -idx + 31)) - Mask(4, 4, arg1 / 2^(8 * -idx + 31))
                s = uint8(arg1 / 2^(8 * -idx + 31)) / 16
                s = arg1 / 2^(8 * -idx + 31)
                idx = idx + 1
                continue 
            mem[(2 * idx) + 193 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0)))))), ('mul', -1, ('mask_shl', 4, 4, 0, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0)))))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0)))))), ('mul', -1, ('mask_shl', 4, 4, 0, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0)))))))))), 0) - 256
            s = (arg1 / 2^(8 * -idx + 31)) + -Mask(4, 4, arg1 / 2^(8 * -idx + 31)) + 39
            s = uint8(arg1 / 2^(8 * -idx + 31)) / 16
            s = arg1 / 2^(8 * -idx + 31)
            idx = idx + 1
            continue 
        mem[(2 * idx) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('div', ('mask', 8, 0, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0))))))), 16))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('div', ('mask', 8, 0, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0))))))), 16))), 0) - 256
        require (2 * idx) + 1 < 64
        if uint8((arg1 / 2^(8 * -idx + 31)) - Mask(4, 4, arg1 / 2^(8 * -idx + 31))) <= 9:
            mem[(2 * idx) + 193 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0)))))), ('mul', -1, ('mask_shl', 4, 4, 0, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0)))))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0)))))), ('mul', -1, ('mask_shl', 4, 4, 0, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0)))))))))), 0) - 256
            s = (arg1 / 2^(8 * -idx + 31)) - Mask(4, 4, arg1 / 2^(8 * -idx + 31))
            s = (uint8(arg1 / 2^(8 * -idx + 31)) / 16) + 39
            s = arg1 / 2^(8 * -idx + 31)
            idx = idx + 1
            continue 
        mem[(2 * idx) + 193 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0)))))), ('mul', -1, ('mask_shl', 4, 4, 0, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0)))))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0)))))), ('mul', -1, ('mask_shl', 4, 4, 0, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0)))))))))), 0) - 256
        s = (arg1 / 2^(8 * -idx + 31)) + -Mask(4, 4, arg1 / 2^(8 * -idx + 31)) + 39
        s = (uint8(arg1 / 2^(8 * -idx + 31)) / 16) + 39
        s = arg1 / 2^(8 * -idx + 31)
        idx = idx + 1
        continue 
    return 32, 64, mem[192 len 64]
}

function toUnixtime(bytes32 arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 32
    s = 0
    idx = 0
    s = 0
    while idx < 32:
        if not Mask(8, 248, arg1 * 2^(8 * idx)):
            s = arg1 * 2^(8 * idx)
            idx = idx + 1
            s = s
            continue 
        require s < 32
        mem[s + 320 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
        s = arg1 * 2^(8 * idx)
        idx = idx + 1
        s = s + 1
        continue 
    _msize = max(0, s + 8)
    mem[_msize + 320] = s
    t = 0
    while t < s:
        require t < 32
        require t < mem[_msize + 320]
        mem[(_msize + 320) + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('var', 2)), 32))), 0) - 256
        t = t + 1
        continue 
    if msize < (max(0, s + 8) + 320) + (32 * s) + 32:
        mem[(_msize + 320) + (32 * s) + 32] = 2
        _msize = max((32 * s) + 24, t)
        mem[_msize + _msize + 360] = 4
        mem[64] = (_msize + _msize + 360) + 160
        if 5 < mem[max(0, s + 8) + 320]:
            mem[(_msize + _msize + 360) + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 37, ('add', 320, ('var', '_msize'))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 37, ('add', 320, ('var', '_msize'))), 32))), 0) - 256
            if 6 < mem[max(0, s + 8) + 320]:
                mem[(_msize + _msize + 360) + 33 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 38, ('add', 320, ('var', '_msize'))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 38, ('add', 320, ('var', '_msize'))), 32))), 0) - 256
                if 7 < mem[max(0, s + 8) + 320]:
                    mem[(_msize + _msize + 360) + 34 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 39, ('add', 320, ('var', '_msize'))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 39, ('add', 320, ('var', '_msize'))), 32))), 0) - 256
                    if 8 < mem[max(0, s + 8) + 320]:
                        mem[(_msize + _msize + 360) + 35 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 40, ('add', 320, ('var', '_msize'))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 40, ('add', 320, ('var', '_msize'))), 32))), 0) - 256
                        mem[64] = (_msize + _msize + 360) + 192
                        mem[(_msize + _msize + 360) + 160] = 0
                        idx = 0
                        t = 0
                        while idx < 4:
                            require idx < 4
                            require idx < 4
                            if Mask(8, 248, mem[idx + (_msize + _msize + 360) + 32]) >= '0':
                                if Mask(8, 248, mem[idx + (_msize + _msize + 360) + 32]) <= '9':
                                    require idx < 4
                                    idx = idx + 1
                                    t = (10 * t) + mem[idx + (_msize + _msize + 360) + 32 len 1] - 48
                                    continue 
                            idx = idx + 1
                            t = t
                            continue 
                        if 10 < mem[max(0, s + 8) + 320]:
                            mem[(_msize + 320) + (32 * s) + 64 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 42, ('add', 320, ('var', '_msize'))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 42, ('add', 320, ('var', '_msize'))), 32))), 0) - 256
                            if 11 < mem[max(0, s + 8) + 320]:
                                mem[(_msize + 320) + (32 * s) + 65 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 43, ('add', 320, ('var', '_msize'))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 43, ('add', 320, ('var', '_msize'))), 32))), 0) - 256
                                mem[64] = (_msize + _msize + 360) + 224
                                mem[(_msize + _msize + 360) + 192] = 0
                                idx = 0
                                u = 0
                                while idx < 2:
                                    require idx < 2
                                    require idx < 2
                                    if Mask(8, 248, mem[idx + (_msize + 320) + (32 * s) + 64]) >= '0':
                                        if Mask(8, 248, mem[idx + (_msize + 320) + (32 * s) + 64]) <= '9':
                                            require idx < 2
                                            idx = idx + 1
                                            u = (10 * u) + mem[idx + (_msize + 320) + (32 * s) + 64 len 1] - 48
                                            continue 
                                    idx = idx + 1
                                    u = u
                                    continue 
                                if 13 < mem[max(0, s + 8) + 320]:
                                    mem[(_msize + 320) + (32 * s) + 64 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 45, ('add', 320, ('var', '_msize'))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 45, ('add', 320, ('var', '_msize'))), 32))), 0) - 256
                                    if 14 < mem[max(0, s + 8) + 320]:
                                        mem[(_msize + 320) + (32 * s) + 65 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 46, ('add', 320, ('var', '_msize'))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 46, ('add', 320, ('var', '_msize'))), 32))), 0) - 256
                                        mem[64] = (_msize + _msize + 360) + 256
                                        mem[(_msize + _msize + 360) + 224] = 0
                                        idx = 0
                                        v = 0
                                        while idx < 2:
                                            require idx < 2
                                            require idx < 2
                                            if Mask(8, 248, mem[idx + (_msize + 320) + (32 * s) + 64]) >= '0':
                                                if Mask(8, 248, mem[idx + (_msize + 320) + (32 * s) + 64]) <= '9':
                                                    require idx < 2
                                                    idx = idx + 1
                                                    v = (10 * v) + mem[idx + (_msize + 320) + (32 * s) + 64 len 1] - 48
                                                    continue 
                                            idx = idx + 1
                                            v = v
                                            continue 
                                        if u - 1 < 12:
                                            return ((8760 * 24 * 3600 * t) + (24 * 3600 * stor8[uint8(u - 1)]) + (24 * 3600 * v) - (17257200 * 24 * 3600))
    else:
        _msize = max(288, s + 296, _msize + 320)
        mem[_msize + 32] = 2
        _msize = max(_msize + 32, _msize + t + 328)
        mem[_msize + 32] = 4
        mem[64] = (_msize + 32) + 160
        if 5 < mem[max(0, s + 8) + 320]:
            mem[(_msize + 32) + 32 len 8] = Mask(8, -(('mask_shl', 8, ('add', 248, ('mul', -1, ('mask_shl', 253, 0, 3, ('add', 37, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize')))))), ('add', -3, ('mask_shl', 253, 0, 3, ('add', 37, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize'))))), 2), 0) + 256, 0) << (('mask_shl', 8, ('add', 248, ('mul', -1, ('mask_shl', 253, 0, 3, ('add', 37, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize')))))), ('add', -3, ('mask_shl', 253, 0, 3, ('add', 37, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize'))))), 2), 0) - 256
            if 6 < mem[max(0, s + 8) + 320]:
                mem[(_msize + 32) + 33 len 8] = Mask(8, -(('mask_shl', 8, ('add', 248, ('mul', -1, ('mask_shl', 253, 0, 3, ('add', 38, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize')))))), ('add', -3, ('mask_shl', 253, 0, 3, ('add', 38, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize'))))), 2), 0) + 256, 0) << (('mask_shl', 8, ('add', 248, ('mul', -1, ('mask_shl', 253, 0, 3, ('add', 38, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize')))))), ('add', -3, ('mask_shl', 253, 0, 3, ('add', 38, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize'))))), 2), 0) - 256
                if 7 < mem[max(0, s + 8) + 320]:
                    mem[(_msize + 32) + 34 len 8] = Mask(8, -(('mask_shl', 8, ('add', 248, ('mul', -1, ('mask_shl', 253, 0, 3, ('add', 39, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize')))))), ('add', -3, ('mask_shl', 253, 0, 3, ('add', 39, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize'))))), 2), 0) + 256, 0) << (('mask_shl', 8, ('add', 248, ('mul', -1, ('mask_shl', 253, 0, 3, ('add', 39, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize')))))), ('add', -3, ('mask_shl', 253, 0, 3, ('add', 39, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize'))))), 2), 0) - 256
                    if 8 < mem[max(0, s + 8) + 320]:
                        mem[(_msize + 32) + 35 len 8] = Mask(8, -(('mask_shl', 8, ('add', 248, ('mul', -1, ('mask_shl', 253, 0, 3, ('add', 40, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize')))))), ('add', -3, ('mask_shl', 253, 0, 3, ('add', 40, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize'))))), 2), 0) + 256, 0) << (('mask_shl', 8, ('add', 248, ('mul', -1, ('mask_shl', 253, 0, 3, ('add', 40, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize')))))), ('add', -3, ('mask_shl', 253, 0, 3, ('add', 40, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize'))))), 2), 0) - 256
                        mem[64] = (_msize + 32) + 192
                        mem[(_msize + 32) + 160] = 0
                        idx = 0
                        t = 0
                        while idx < 4:
                            require idx < 4
                            require idx < 4
                            if Mask(8, 248, mem[idx + (_msize + 32) + 32]) >= '0':
                                if Mask(8, 248, mem[idx + (_msize + 32) + 32]) <= '9':
                                    require idx < 4
                                    idx = idx + 1
                                    t = (10 * t) + mem[idx + (_msize + 32) + 32 len 1] - 48
                                    continue 
                            idx = idx + 1
                            t = t
                            continue 
                        if 10 < mem[max(0, s + 8) + 320]:
                            mem[(_msize + 32) + 32 len 8] = Mask(8, -(('mask_shl', 8, ('add', 248, ('mul', -1, ('mask_shl', 253, 0, 3, ('add', 42, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize')))))), ('add', -3, ('mask_shl', 253, 0, 3, ('add', 42, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize'))))), 2), 0) + 256, 0) << (('mask_shl', 8, ('add', 248, ('mul', -1, ('mask_shl', 253, 0, 3, ('add', 42, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize')))))), ('add', -3, ('mask_shl', 253, 0, 3, ('add', 42, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize'))))), 2), 0) - 256
                            if 11 < mem[max(0, s + 8) + 320]:
                                mem[(_msize + 32) + 33 len 8] = Mask(8, -(('mask_shl', 8, ('add', 248, ('mul', -1, ('mask_shl', 253, 0, 3, ('add', 43, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize')))))), ('add', -3, ('mask_shl', 253, 0, 3, ('add', 43, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize'))))), 2), 0) + 256, 0) << (('mask_shl', 8, ('add', 248, ('mul', -1, ('mask_shl', 253, 0, 3, ('add', 43, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize')))))), ('add', -3, ('mask_shl', 253, 0, 3, ('add', 43, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize'))))), 2), 0) - 256
                                mem[64] = (_msize + 32) + 224
                                mem[(_msize + 32) + 192] = 0
                                idx = 0
                                u = 0
                                while idx < 2:
                                    require idx < 2
                                    require idx < 2
                                    if Mask(8, 248, mem[idx + (_msize + 32) + 32]) >= '0':
                                        if Mask(8, 248, mem[idx + (_msize + 32) + 32]) <= '9':
                                            require idx < 2
                                            idx = idx + 1
                                            u = (10 * u) + mem[idx + (_msize + 32) + 32 len 1] - 48
                                            continue 
                                    idx = idx + 1
                                    u = u
                                    continue 
                                if 13 < mem[max(0, s + 8) + 320]:
                                    mem[(_msize + 32) + 32 len 8] = Mask(8, -(('mask_shl', 8, ('add', 248, ('mul', -1, ('mask_shl', 253, 0, 3, ('add', 45, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize')))))), ('add', -3, ('mask_shl', 253, 0, 3, ('add', 45, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize'))))), 2), 0) + 256, 0) << (('mask_shl', 8, ('add', 248, ('mul', -1, ('mask_shl', 253, 0, 3, ('add', 45, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize')))))), ('add', -3, ('mask_shl', 253, 0, 3, ('add', 45, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize'))))), 2), 0) - 256
                                    if 14 < mem[max(0, s + 8) + 320]:
                                        mem[(_msize + 32) + 33 len 8] = Mask(8, -(('mask_shl', 8, ('add', 248, ('mul', -1, ('mask_shl', 253, 0, 3, ('add', 46, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize')))))), ('add', -3, ('mask_shl', 253, 0, 3, ('add', 46, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize'))))), 2), 0) + 256, 0) << (('mask_shl', 8, ('add', 248, ('mul', -1, ('mask_shl', 253, 0, 3, ('add', 46, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize')))))), ('add', -3, ('mask_shl', 253, 0, 3, ('add', 46, ('mul', -1, ('add', 32, ('var', '_msize'))), ('add', 320, ('var', '_msize'))))), 2), 0) - 256
                                        mem[(_msize + 32) + 224] = 0
                                        idx = 0
                                        s = 0
                                        while idx < 2:
                                            require idx < 2
                                            require idx < 2
                                            if Mask(8, 248, mem[idx + (_msize + 32) + 32]) >= '0':
                                                if Mask(8, 248, mem[idx + (_msize + 32) + 32]) <= '9':
                                                    require idx < 2
                                                    idx = idx + 1
                                                    s = (10 * s) + mem[idx + (_msize + 32) + 32 len 1] - 48
                                                    continue 
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        if u - 1 < 12:
                                            return ((8760 * 24 * 3600 * t) + (24 * 3600 * stor8[uint8(u - 1)]) + (24 * 3600 * s) - (17257200 * 24 * 3600))
    revert
}



}

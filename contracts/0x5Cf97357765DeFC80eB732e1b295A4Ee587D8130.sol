contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
array of uint256 stor2;
uint8 stor3;
uint8 stor3; offset 8
uint16 stor3; offset 16
uint128 stor6;

function _fallback() payable {
    stor6 = 0
    require not msg.value
    mem[96 len -4557] = code.data[4992 len -4557]
    mem[64] = -4461
    stor0 = msg.sender
    stor1 = mem[108 len 20]
    uint8(stor3.field_0) = uint8(('signextend', 0, ('mem', ('range', 128, 32))))
    uint8(stor3.field_8) = uint8(('signextend', 0, ('mem', ('range', 160, 32))))
    require mem[222 len 2] >= 1
    uint16(stor3.field_16) = mem[222 len 2]
    stor2[] = Array(len=mem[mem[224] + 96], data=mem[mem[224] + 128 len mem[mem[224] + 96]])
    return code.data[435 len 4557]
}



// =====================  Runtime code  =====================


#
#  - reportResult(uint32[] arg1, int8[] arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, bytes32 arg7)
#
address stor0;
address stor1;
uint16 stor3;
uint16 stor3; offset 16
uint256 stor3; offset 8
uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint32 nrMeasurements;
uint32 nrFailures; offset 32
uint32 timestampFirst; offset 64
uint32 timestampLast; offset 96
array of uint256 hashAt;

function hashAt(uint16 arg1) {
    require arg1 < hashAt.length
    return uint256(hashAt[arg1])
}

function nrFailures() {
    return nrFailures
}

function timestampLast() {
    return timestampLast
}

function failedTimestampLength() {
    return stor4.length
}

function failedTimestampSecondsAt(uint16 arg1) {
    require arg1 < stor4.length
    return failedTimestampSecondsAt[uint8(arg1)]
}

function hashLength() {
    return uint16(hashAt.length)
}

function failedTemperaturesLength() {
    return uint16(stor5.length)
}

function timestampFirst() {
    return timestampFirst
}

function nrMeasurements() {
    return nrMeasurements
}

function done() {
    if stor0 != msg.sender:
        if stor1 != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function shr(uint32 arg1, uint8 arg2) {
    require uint32(2^arg2)
    return uint32(arg1 / uint32(2^arg2))
}

function success() {
    if stor4.length:
        return not bool(stor4.length)
    return (nrMeasurements > 0)
}

function failed() {
    if stor4.length <= 0:
        return (stor4.length > 0)
    return (nrMeasurements > 0)
}

function temperatureRange() {
    return ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('name', 'stor3', 3))))))), 
           ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('name', 'stor3', 3)))))))
}

function failedTemperaturesAt(uint16 arg1) {
    require arg1 < stor5.length
    return ('signextend', 0, ('signextend', 0, ('signextend', 0, ('div', ('type', 256, ('stor', ('array', ('div', ('mask', 16, 0, ('param', 'arg1')), 32), ('name', 'stor5', 5)))), ('exp', 256, ('mask_shl', 5, 0, 0, ('param', 'arg1')))))))
}

function verifyReport(uint16 arg1, int8[] arg2, uint32[] arg3) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 0
    mem[(32 * arg3.length) + (32 * arg2.length) + 192] = 0
    mem[(32 * arg3.length) + (32 * arg2.length) + 224] = 0
    mem[(32 * arg3.length) + (32 * arg2.length) + 256] = 0
    mem[(32 * arg3.length) + (32 * arg2.length) + 288] = 0
    mem[(32 * arg3.length) + (32 * arg2.length) + 320] = 0
    mem[(32 * arg3.length) + (32 * arg2.length) + 352] = 0
    require uint32(arg2.length) == arg3.length
    mem[(32 * arg3.length) + (32 * arg2.length) + 384] = uint16(stor3.field_16)
    if 0 < 32 * uint16(stor3.field_16):
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 416] = uint16(stor3.field_16)
        if 32 * uint16(stor3.field_16) < 64 * uint16(stor3.field_16):
            mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + 448] = uint32(5 * arg2.length)
            mem[64] = (32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + (32 * uint32(5 * arg2.length)) + 480
            idx = 0
            s = 0
            while uint16(idx) < uint32(arg2.length):
                require uint16(idx) < arg3.length
                require uint16(5 * idx) < mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + 448]
                mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + uint16(5 * idx) + 480 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) - 256
                require uint16(idx) < arg3.length
                require uint16((5 * idx) + 1) < mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + 448]
                mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + uint16((5 * idx) + 1) + 480 len 8] = Mask(8, -(('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) - 256
                require uint16(idx) < arg3.length
                require uint16((5 * idx) + 2) < mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + 448]
                mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + uint16((5 * idx) + 2) + 480 len 8] = Mask(8, -(('mask_shl', 8, 16, 229, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 16, 229, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) - 256
                require uint16(idx) < arg3.length
                require uint16((5 * idx) + 3) < mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + 448]
                mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + uint16((5 * idx) + 3) + 480 len 8] = Mask(8, -(('mask_shl', 8, 24, 221, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 24, 221, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) - 256
                require uint16(idx) < arg2.length
                require uint16((5 * idx) + 4) < mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + 448]
                mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + uint16((5 * idx) + 4) + 480 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))), 0) - 256
                require uint16(idx) < arg2.length
                if ('signextend', 0, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))) < ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('name', 'stor3', 3)))))):
                    require uint16(idx) < arg2.length
                    if ('signextend', 0, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))) >= ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('name', 'stor3', 3)))))):
                        idx = idx + 1
                        s = s
                        continue 
                if uint32(s + 1) <= uint16(stor3.field_16):
                    require uint16(idx) < arg3.length
                    require uint32(s) < uint16(stor3.field_16)
                    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint32(s)) + 416] = mem[(32 * uint16(idx)) + (32 * arg2.length) + 188 len 4]
                    require uint16(idx) < arg2.length
                    require uint32(s) < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 416]
                    mem[(32 * uint32(s)) + (32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448] = ('signextend', 0, ('signextend', 0, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))))
                idx = idx + 1
                s = s + 1
                continue 
            mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + (32 * uint32(5 * arg2.length)) + 512] = 0
            mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + (32 * uint32(5 * arg2.length)) + 480 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + 448])] = mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + 480 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + 448])]
            mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + (32 * uint32(5 * arg2.length)) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + 448]) + 480] = 256^(-(mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + 448] % 32) + 32) - 1 and mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + (32 * uint32(5 * arg2.length)) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + 448]) + 480] or mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + 448]) + 480] and !(256^(-(mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + 448] % 32) + 32) - 1)
            hash = sha256hash(mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + (32 * uint32(5 * arg2.length)) + 480 len mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + 448]]) 
            mem[(32 * arg3.length) + (32 * arg2.length) + (64 * uint16(stor3.field_16)) + (32 * uint32(5 * arg2.length)) + 480] = hash
        else:
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448] = uint32(5 * arg2.length)
            mem[64] = (32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg2.length)) + 480
            idx = 0
            s = 0
            while uint16(idx) < uint32(arg2.length):
                require uint16(idx) < arg3.length
                require uint16(5 * idx) < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448]
                mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + uint16(5 * idx) + 480 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) - 256
                require uint16(idx) < arg3.length
                require uint16((5 * idx) + 1) < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448]
                mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + uint16((5 * idx) + 1) + 480 len 8] = Mask(8, -(('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) - 256
                require uint16(idx) < arg3.length
                require uint16((5 * idx) + 2) < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448]
                mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + uint16((5 * idx) + 2) + 480 len 8] = Mask(8, -(('mask_shl', 8, 16, 229, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 16, 229, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) - 256
                require uint16(idx) < arg3.length
                require uint16((5 * idx) + 3) < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448]
                mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + uint16((5 * idx) + 3) + 480 len 8] = Mask(8, -(('mask_shl', 8, 24, 221, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 24, 221, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) - 256
                require uint16(idx) < arg2.length
                require uint16((5 * idx) + 4) < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448]
                mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + uint16((5 * idx) + 4) + 480 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))), 0) - 256
                require uint16(idx) < arg2.length
                if ('signextend', 0, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))) < ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('name', 'stor3', 3)))))):
                    require uint16(idx) < arg2.length
                    if ('signextend', 0, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))) >= ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('name', 'stor3', 3)))))):
                        idx = idx + 1
                        s = s
                        continue 
                if uint32(s + 1) <= uint16(stor3.field_16):
                    require uint16(idx) < arg3.length
                    require uint32(s) < uint16(stor3.field_16)
                    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint32(s)) + 416] = mem[(32 * uint16(idx)) + (32 * arg2.length) + 188 len 4]
                    require uint16(idx) < arg2.length
                    require uint32(s) < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 416]
                    mem[(32 * uint32(s)) + (32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448] = ('signextend', 0, ('signextend', 0, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))))
                idx = idx + 1
                s = s + 1
                continue 
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg2.length)) + 512] = 0
            _615 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448]
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg2.length)) + 480 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448])] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 480 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448])]
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg2.length)) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448]) + 480] = 256^(-(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448] % 32) + 32) - 1 and mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg2.length)) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448]) + 480] or mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448]) + 480] and !(256^(-(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448] % 32) + 32) - 1)
            hash = sha256hash(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg2.length)) + 480 len _615]) 
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg2.length)) + 480] = hash
        require sha256hash.result
        if arg1 != hashAt.length - 1:
            require arg1 < hashAt.length
            return (uint256(hashAt[arg1]) == hash)
        if uint16(stor3.field_16) != stor4.length:
            return 0
        if mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 416] != stor5.length:
            return 0
        if mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 416] != uint16(stor3.field_16):
            return 0
        idx = 0
        while uint16(idx) < stor4.length:
            require uint16(idx) < uint16(stor3.field_16)
            if mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(idx)) + 444 len 4] == stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]:
                require uint16(idx) < stor5.length
                mem[0] = 5
                require uint16(idx) < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 416]
                if ('signextend', 0, ('mem', ('range', ('add', 448, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 0, 5, ('type', 16, ('field', 16, ('stor', ('name', 'stor3', 3))))), ('mask_shl', 16, 0, 5, ('var', 0))), 32))) == ('signextend', 0, ('signextend', 0, ('div', ('type', 256, ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 32), ('name', 'stor5', 5)))), ('exp', 256, ('mask_shl', 5, 0, 0, ('var', 0)))))):
                    idx = idx + 1
                    continue 
                else:
                    return 0
            else:
                return 0
    else:
        mem[(32 * arg3.length) + (32 * arg2.length) + 416] = uint16(stor3.field_16)
        if 0 >= 32 * uint16(stor3.field_16):
            mem[(32 * arg3.length) + (32 * arg2.length) + 448] = uint32(5 * arg2.length)
            idx = 0
            s = 0
            while uint16(idx) < uint32(arg2.length):
                require uint16(idx) < arg3.length
                require uint16(5 * idx) < mem[(32 * arg3.length) + (32 * arg2.length) + 448]
                mem[(32 * arg3.length) + (32 * arg2.length) + uint16(5 * idx) + 480 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) - 256
                require uint16(idx) < arg3.length
                require uint16((5 * idx) + 1) < mem[(32 * arg3.length) + (32 * arg2.length) + 448]
                mem[(32 * arg3.length) + (32 * arg2.length) + uint16((5 * idx) + 1) + 480 len 8] = Mask(8, -(('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) - 256
                require uint16(idx) < arg3.length
                require uint16((5 * idx) + 2) < mem[(32 * arg3.length) + (32 * arg2.length) + 448]
                mem[(32 * arg3.length) + (32 * arg2.length) + uint16((5 * idx) + 2) + 480 len 8] = Mask(8, -(('mask_shl', 8, 16, 229, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 16, 229, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) - 256
                require uint16(idx) < arg3.length
                require uint16((5 * idx) + 3) < mem[(32 * arg3.length) + (32 * arg2.length) + 448]
                mem[(32 * arg3.length) + (32 * arg2.length) + uint16((5 * idx) + 3) + 480 len 8] = Mask(8, -(('mask_shl', 8, 24, 221, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 24, 221, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) - 256
                require uint16(idx) < arg2.length
                require uint16((5 * idx) + 4) < mem[(32 * arg3.length) + (32 * arg2.length) + 448]
                mem[(32 * arg3.length) + (32 * arg2.length) + uint16((5 * idx) + 4) + 480 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))), 0) - 256
                require uint16(idx) < arg2.length
                if ('signextend', 0, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))) < ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('name', 'stor3', 3)))))):
                    require uint16(idx) < arg2.length
                    if ('signextend', 0, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))) >= ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('name', 'stor3', 3)))))):
                        idx = idx + 1
                        s = s
                        continue 
                if uint32(s + 1) <= uint16(stor3.field_16):
                    require uint16(idx) < arg3.length
                    require uint32(s) < uint16(stor3.field_16)
                    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint32(s)) + 416] = mem[(32 * uint16(idx)) + (32 * arg2.length) + 188 len 4]
                    require uint16(idx) < arg2.length
                    require uint32(s) < mem[(32 * arg3.length) + (32 * arg2.length) + 416]
                    mem[(32 * uint32(s)) + (32 * arg3.length) + (32 * arg2.length) + 448] = ('signextend', 0, ('signextend', 0, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))))
                idx = idx + 1
                s = s + 1
                continue 
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint32(5 * arg2.length)) + 512] = 0
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint32(5 * arg2.length)) + 480 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 448])] = mem[(32 * arg3.length) + (32 * arg2.length) + 480 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 448])]
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint32(5 * arg2.length)) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 448]) + 480] = 256^(-(mem[(32 * arg3.length) + (32 * arg2.length) + 448] % 32) + 32) - 1 and mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint32(5 * arg2.length)) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 448]) + 480] or mem[(32 * arg3.length) + (32 * arg2.length) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 448]) + 480] and !(256^(-(mem[(32 * arg3.length) + (32 * arg2.length) + 448] % 32) + 32) - 1)
            hash = sha256hash(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint32(5 * arg2.length)) + 480 len mem[(32 * arg3.length) + (32 * arg2.length) + 448]]) 
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint32(5 * arg2.length)) + 480] = hash
        else:
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448] = uint32(5 * arg2.length)
            mem[64] = (32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg2.length)) + 480
            idx = 0
            s = 0
            while uint16(idx) < uint32(arg2.length):
                require uint16(idx) < arg3.length
                require uint16(5 * idx) < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448]
                mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + uint16(5 * idx) + 480 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) - 256
                require uint16(idx) < arg3.length
                require uint16((5 * idx) + 1) < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448]
                mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + uint16((5 * idx) + 1) + 480 len 8] = Mask(8, -(('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) - 256
                require uint16(idx) < arg3.length
                require uint16((5 * idx) + 2) < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448]
                mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + uint16((5 * idx) + 2) + 480 len 8] = Mask(8, -(('mask_shl', 8, 16, 229, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 16, 229, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) - 256
                require uint16(idx) < arg3.length
                require uint16((5 * idx) + 3) < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448]
                mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + uint16((5 * idx) + 3) + 480 len 8] = Mask(8, -(('mask_shl', 8, 24, 221, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 24, 221, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2'))))), 32))), 0) - 256
                require uint16(idx) < arg2.length
                require uint16((5 * idx) + 4) < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448]
                mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + uint16((5 * idx) + 4) + 480 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))), 0) - 256
                require uint16(idx) < arg2.length
                if ('signextend', 0, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))) < ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('name', 'stor3', 3)))))):
                    require uint16(idx) < arg2.length
                    if ('signextend', 0, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))) >= ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('name', 'stor3', 3)))))):
                        idx = idx + 1
                        s = s
                        continue 
                if uint32(s + 1) <= uint16(stor3.field_16):
                    require uint16(idx) < arg3.length
                    require uint32(s) < uint16(stor3.field_16)
                    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint32(s)) + 416] = mem[(32 * uint16(idx)) + (32 * arg2.length) + 188 len 4]
                    require uint16(idx) < arg2.length
                    require uint32(s) < mem[(32 * arg3.length) + (32 * arg2.length) + 416]
                    mem[(32 * uint32(s)) + (32 * arg3.length) + (32 * arg2.length) + 448] = ('signextend', 0, ('signextend', 0, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))))
                idx = idx + 1
                s = s + 1
                continue 
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg2.length)) + 512] = 0
            _619 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448]
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg2.length)) + 480 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448])] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 480 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448])]
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg2.length)) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448]) + 480] = 256^(-(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448] % 32) + 32) - 1 and mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg2.length)) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448]) + 480] or mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + floor32(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448]) + 480] and !(256^(-(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + 448] % 32) + 32) - 1)
            hash = sha256hash(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg2.length)) + 480 len _619]) 
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg2.length)) + 480] = hash
        require sha256hash.result
        if arg1 != hashAt.length - 1:
            require arg1 < hashAt.length
            return (uint256(hashAt[arg1]) == hash)
        if uint16(stor3.field_16) != stor4.length:
            return 0
        if mem[(32 * arg3.length) + (32 * arg2.length) + 416] != stor5.length:
            return 0
        if mem[(32 * arg3.length) + (32 * arg2.length) + 416] != uint16(stor3.field_16):
            return 0
        idx = 0
        while uint16(idx) < stor4.length:
            require uint16(idx) < uint16(stor3.field_16)
            if mem[(32 * arg3.length) + (32 * arg2.length) + (32 * uint16(idx)) + 444 len 4] == stor('array', ('mask_shl', 13, 3, -3, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]:
                require uint16(idx) < stor5.length
                mem[0] = 5
                require uint16(idx) < mem[(32 * arg3.length) + (32 * arg2.length) + 416]
                if ('signextend', 0, ('mem', ('range', ('add', 448, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 16, 0, 5, ('var', 0))), 32))) == ('signextend', 0, ('signextend', 0, ('div', ('type', 256, ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 32), ('name', 'stor5', 5)))), ('exp', 256, ('mask_shl', 5, 0, 0, ('var', 0)))))):
                    idx = idx + 1
                    continue 
                else:
                    return 0
            else:
                return 0
    require arg1 < hashAt.length
    if uint256(hashAt[arg1]) != hash:
        return (uint256(hashAt[arg1]) == hash)
    if nrFailures != uint32(s):
        return (nrFailures == uint32(s))
    return (nrMeasurements == uint32(arg2.length))
}

function generateReport(int8[] arg1, uint32[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0
    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = 0
    mem[(32 * arg2.length) + (32 * arg1.length) + 224] = 0
    mem[(32 * arg2.length) + (32 * arg1.length) + 256] = 0
    mem[(32 * arg2.length) + (32 * arg1.length) + 288] = 0
    require uint32(arg1.length) == arg2.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 320] = uint16(stor3.field_16)
    if 0 < 32 * uint16(stor3.field_16):
        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 352] = uint16(stor3.field_16)
        if 32 * uint16(stor3.field_16) < 64 * uint16(stor3.field_16):
            mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + 384] = uint32(5 * arg1.length)
            mem[64] = (32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 416
            idx = 0
            s = 0
            while uint16(idx) < uint32(arg1.length):
                require uint16(idx) < arg2.length
                require uint16(5 * idx) < mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + 384]
                mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + uint16(5 * idx) + 416 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) - 256
                require uint16(idx) < arg2.length
                require uint16((5 * idx) + 1) < mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + 384]
                mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + uint16((5 * idx) + 1) + 416 len 8] = Mask(8, -(('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) - 256
                require uint16(idx) < arg2.length
                require uint16((5 * idx) + 2) < mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + 384]
                mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + uint16((5 * idx) + 2) + 416 len 8] = Mask(8, -(('mask_shl', 8, 16, 229, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 16, 229, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) - 256
                require uint16(idx) < arg2.length
                require uint16((5 * idx) + 3) < mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + 384]
                mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + uint16((5 * idx) + 3) + 416 len 8] = Mask(8, -(('mask_shl', 8, 24, 221, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 24, 221, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) - 256
                require uint16(idx) < arg1.length
                require uint16((5 * idx) + 4) < mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + 384]
                mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + uint16((5 * idx) + 4) + 416 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))), 0) - 256
                require uint16(idx) < arg1.length
                if ('signextend', 0, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))) < ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('name', 'stor3', 3)))))):
                    require uint16(idx) < arg1.length
                    if ('signextend', 0, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))) >= ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('name', 'stor3', 3)))))):
                        idx = idx + 1
                        s = s
                        continue 
                if uint32(s + 1) <= uint16(stor3.field_16):
                    require uint16(idx) < arg2.length
                    require uint32(s) < uint16(stor3.field_16)
                    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint32(s)) + 352] = mem[(32 * uint16(idx)) + (32 * arg1.length) + 188 len 4]
                    require uint16(idx) < arg1.length
                    require uint32(s) < mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 352]
                    mem[(32 * uint32(s)) + (32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384] = ('signextend', 0, ('signextend', 0, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))))
                idx = idx + 1
                s = s + 1
                continue 
            mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 448] = 0
            _417 = mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + 384]
            mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 416 len floor32(mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + 384])] = mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + 416 len floor32(mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + 384])]
            mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + floor32(mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + 384]) + 416] = 256^(-(mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + 384] % 32) + 32) - 1 and mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + floor32(mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + 384]) + 416] or mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + floor32(mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + 384]) + 416] and !(256^(-(mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + 384] % 32) + 32) - 1)
            hash = sha256hash(mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 416 len _417]) 
            require sha256hash.result
            mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 480] = uint32(s)
            mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 512] = uint32(arg1.length)
            mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 544] = hash
            mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 416] = 160
            mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 576] = uint16(stor3.field_16)
            if uint16(stor3.field_16):
                mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 608] = mem[(32 * arg2.length) + (32 * arg1.length) + 352]
                mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 640 len floor32((32 * uint16(stor3.field_16)) - 1)] = mem[(32 * arg2.length) + (32 * arg1.length) + 384 len floor32((32 * uint16(stor3.field_16)) - 1)]
            mem[(32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 448] = (32 * uint16(stor3.field_16)) + 192
            mem[(98 * uint16(stor3.field_16)) + (32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 608] = mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 352]
            if Mask(251, 0, mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 352]):
                mem[(98 * uint16(stor3.field_16)) + (32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 640] = mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384]
                mem[(98 * uint16(stor3.field_16)) + (32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 672 len floor32((32 * mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 352]) - 1)] = mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 416 len floor32((32 * mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 352]) - 1)]
            return memory
              from (32 * arg2.length) + (32 * arg1.length) + (64 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 416
               len (32 * mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 352]) + (161 * uint16(stor3.field_16)) + 224
        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384] = uint32(5 * arg1.length)
        mem[64] = (32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 416
        idx = 0
        s = 0
        while uint16(idx) < uint32(arg1.length):
            require uint16(idx) < arg2.length
            require uint16(5 * idx) < mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384]
            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + uint16(5 * idx) + 416 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) - 256
            require uint16(idx) < arg2.length
            require uint16((5 * idx) + 1) < mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384]
            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + uint16((5 * idx) + 1) + 416 len 8] = Mask(8, -(('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) - 256
            require uint16(idx) < arg2.length
            require uint16((5 * idx) + 2) < mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384]
            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + uint16((5 * idx) + 2) + 416 len 8] = Mask(8, -(('mask_shl', 8, 16, 229, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 16, 229, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) - 256
            require uint16(idx) < arg2.length
            require uint16((5 * idx) + 3) < mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384]
            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + uint16((5 * idx) + 3) + 416 len 8] = Mask(8, -(('mask_shl', 8, 24, 221, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 24, 221, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) - 256
            require uint16(idx) < arg1.length
            require uint16((5 * idx) + 4) < mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384]
            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + uint16((5 * idx) + 4) + 416 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))), 0) - 256
            require uint16(idx) < arg1.length
            if ('signextend', 0, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))) < ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('name', 'stor3', 3)))))):
                require uint16(idx) < arg1.length
                if ('signextend', 0, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))) >= ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('name', 'stor3', 3)))))):
                    idx = idx + 1
                    s = s
                    continue 
            if uint32(s + 1) <= uint16(stor3.field_16):
                require uint16(idx) < arg2.length
                require uint32(s) < uint16(stor3.field_16)
                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint32(s)) + 352] = mem[(32 * uint16(idx)) + (32 * arg1.length) + 188 len 4]
                require uint16(idx) < arg1.length
                require uint32(s) < mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 352]
                mem[(32 * uint32(s)) + (32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384] = ('signextend', 0, ('signextend', 0, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))))
            idx = idx + 1
            s = s + 1
            continue 
        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 448] = 0
        _421 = mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384]
        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 416 len floor32(mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384])] = mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 416 len floor32(mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384])]
        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + floor32(mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384]) + 416] = 256^(-(mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384] % 32) + 32) - 1 and mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + floor32(mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384]) + 416] or mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + floor32(mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384]) + 416] and !(256^(-(mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384] % 32) + 32) - 1)
        hash = sha256hash(mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 416 len _421]) 
        require sha256hash.result
        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 480] = uint32(s)
        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 512] = uint32(arg1.length)
        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 544] = hash
        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 416] = 160
        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 576] = uint16(stor3.field_16)
        if not uint16(stor3.field_16):
            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 448] = (32 * uint16(stor3.field_16)) + 192
            mem[(64 * uint16(stor3.field_16)) + (32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 608] = mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 352]
            if Mask(251, 0, mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 352]):
                mem[(64 * uint16(stor3.field_16)) + (32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 640] = mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384]
                mem[(64 * uint16(stor3.field_16)) + (32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 672 len floor32((32 * mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 352]) - 1)] = mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 416 len (32 * uint32(5 * arg1.length)) + 32], 0, s << 224, arg1.length << 224, hash, uint16(stor3.field_0), mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 608 len floor32((32 * mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 352]) - 1) + -(32 * uint32(5 * arg1.length)) - 192]
        else:
            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 608] = mem[(32 * arg2.length) + (32 * arg1.length) + 352]
            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 640 len floor32((32 * uint16(stor3.field_16)) - 1)] = mem[(32 * arg2.length) + (32 * arg1.length) + 384 len floor32((32 * uint16(stor3.field_16)) - 1)]
            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 448] = (32 * uint16(stor3.field_16)) + 192
            mem[(64 * uint16(stor3.field_16)) + (32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 608] = mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 352]
            if Mask(251, 0, mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 352]):
                mem[(64 * uint16(stor3.field_16)) + (32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 640] = mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384]
                mem[(64 * uint16(stor3.field_16)) + (32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 672 len floor32((32 * mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 352]) - 1)] = mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 416 len (32 * uint32(5 * arg1.length)) + 32], 0, s << 224, arg1.length << 224, hash, uint16(stor3.field_0), mem[(32 * arg2.length) + (32 * arg1.length) + 352], mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 640 len floor32((32 * mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 352]) - 1) + -(32 * uint32(5 * arg1.length)) - 224]
        return memory
          from (32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 416
           len (32 * mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 352]) + (32 * uint16(stor3.field_16)) + 224
    mem[(32 * arg2.length) + (32 * arg1.length) + 352] = uint16(stor3.field_16)
    if 0 >= 32 * uint16(stor3.field_16):
        mem[(32 * arg2.length) + (32 * arg1.length) + 384] = uint32(5 * arg1.length)
        mem[64] = (32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 416
        idx = 0
        s = 0
        while uint16(idx) < uint32(arg1.length):
            require uint16(idx) < arg2.length
            require uint16(5 * idx) < mem[(32 * arg2.length) + (32 * arg1.length) + 384]
            mem[(32 * arg2.length) + (32 * arg1.length) + uint16(5 * idx) + 416 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) - 256
            require uint16(idx) < arg2.length
            require uint16((5 * idx) + 1) < mem[(32 * arg2.length) + (32 * arg1.length) + 384]
            mem[(32 * arg2.length) + (32 * arg1.length) + uint16((5 * idx) + 1) + 416 len 8] = Mask(8, -(('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) - 256
            require uint16(idx) < arg2.length
            require uint16((5 * idx) + 2) < mem[(32 * arg2.length) + (32 * arg1.length) + 384]
            mem[(32 * arg2.length) + (32 * arg1.length) + uint16((5 * idx) + 2) + 416 len 8] = Mask(8, -(('mask_shl', 8, 16, 229, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 16, 229, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) - 256
            require uint16(idx) < arg2.length
            require uint16((5 * idx) + 3) < mem[(32 * arg2.length) + (32 * arg1.length) + 384]
            mem[(32 * arg2.length) + (32 * arg1.length) + uint16((5 * idx) + 3) + 416 len 8] = Mask(8, -(('mask_shl', 8, 24, 221, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 24, 221, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) - 256
            require uint16(idx) < arg1.length
            require uint16((5 * idx) + 4) < mem[(32 * arg2.length) + (32 * arg1.length) + 384]
            mem[(32 * arg2.length) + (32 * arg1.length) + uint16((5 * idx) + 4) + 416 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))), 0) - 256
            require uint16(idx) < arg1.length
            if ('signextend', 0, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))) < ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('name', 'stor3', 3)))))):
                require uint16(idx) < arg1.length
                if ('signextend', 0, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))) >= ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('name', 'stor3', 3)))))):
                    idx = idx + 1
                    s = s
                    continue 
            if uint32(s + 1) <= uint16(stor3.field_16):
                require uint16(idx) < arg2.length
                require uint32(s) < uint16(stor3.field_16)
                mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint32(s)) + 352] = mem[(32 * uint16(idx)) + (32 * arg1.length) + 188 len 4]
                require uint16(idx) < arg1.length
                require uint32(s) < mem[(32 * arg2.length) + (32 * arg1.length) + 352]
                mem[(32 * uint32(s)) + (32 * arg2.length) + (32 * arg1.length) + 384] = ('signextend', 0, ('signextend', 0, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))))
            idx = idx + 1
            s = s + 1
            continue 
        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 448] = 0
        _429 = mem[(32 * arg2.length) + (32 * arg1.length) + 384]
        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 416 len floor32(mem[(32 * arg2.length) + (32 * arg1.length) + 384])] = mem[(32 * arg2.length) + (32 * arg1.length) + 416 len floor32(mem[(32 * arg2.length) + (32 * arg1.length) + 384])]
        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + floor32(mem[(32 * arg2.length) + (32 * arg1.length) + 384]) + 416] = 256^(-(mem[(32 * arg2.length) + (32 * arg1.length) + 384] % 32) + 32) - 1 and mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + floor32(mem[(32 * arg2.length) + (32 * arg1.length) + 384]) + 416] or mem[(32 * arg2.length) + (32 * arg1.length) + floor32(mem[(32 * arg2.length) + (32 * arg1.length) + 384]) + 416] and !(256^(-(mem[(32 * arg2.length) + (32 * arg1.length) + 384] % 32) + 32) - 1)
        hash = sha256hash(mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 416 len _429]) 
        require sha256hash.result
        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 416] = 160
        if not uint16(stor3.field_16):
            mem[(32 * uint16(stor3.field_16)) + (32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 608] = mem[(32 * arg2.length) + (32 * arg1.length) + 352]
            if Mask(251, 0, mem[(32 * arg2.length) + (32 * arg1.length) + 352]):
                mem[(32 * uint16(stor3.field_16)) + (32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 640] = mem[(32 * arg2.length) + (32 * arg1.length) + 384]
                mem[(32 * uint16(stor3.field_16)) + (32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 672 len floor32((32 * mem[(32 * arg2.length) + (32 * arg1.length) + 352]) - 1)] = mem[(32 * arg2.length) + (32 * arg1.length) + 416 len (32 * uint32(5 * arg1.length)) + 32], 0, s << 224, arg1.length << 224, hash, uint16(stor3.field_0), mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 608 len floor32((32 * mem[(32 * arg2.length) + (32 * arg1.length) + 352]) - 1) + -(32 * uint32(5 * arg1.length)) - 192]
            return Array(len=uint16(stor3.field_0), data=mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 608 len (32 * mem[(32 * arg2.length) + (32 * arg1.length) + 352]) + (32 * uint16(stor3.field_16)) + 32]), 
                   (32 * uint16(stor3.field_16)) + 192,
                   s << 224,
                   arg1.length << 224,
                   hash
        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 608] = mem[(32 * arg2.length) + (32 * arg1.length) + 352]
        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 640 len floor32((32 * uint16(stor3.field_16)) - 1)] = mem[(32 * arg2.length) + (32 * arg1.length) + 384 len (32 * uint32(5 * arg1.length)) + 32], 160, 0, s << 224, arg1.length << 224, hash, uint16(stor3.field_0), mem[(32 * arg2.length) + (32 * arg1.length) + 352], mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 640 len floor32((32 * uint16(stor3.field_16)) - 1) + -(32 * uint32(5 * arg1.length)) - 256]
        mem[(32 * uint16(stor3.field_16)) + (32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 608] = mem[(32 * arg2.length) + (32 * arg1.length) + 352]
        if Mask(251, 0, mem[(32 * arg2.length) + (32 * arg1.length) + 352]):
            mem[(32 * uint16(stor3.field_16)) + (32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 640] = mem[(32 * arg2.length) + (32 * arg1.length) + 384]
            mem[(32 * uint16(stor3.field_16)) + (32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 672 len floor32((32 * mem[(32 * arg2.length) + (32 * arg1.length) + 352]) - 1)] = mem[(32 * arg2.length) + (32 * arg1.length) + 416 len (32 * uint32(5 * arg1.length)) + 32], 0, s << 224, arg1.length << 224, hash, uint16(stor3.field_0), mem[(32 * arg2.length) + (32 * arg1.length) + 352], mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 640 len floor32((32 * mem[(32 * arg2.length) + (32 * arg1.length) + 352]) - 1) + -(32 * uint32(5 * arg1.length)) - 224]
        return Array(len=uint16(stor3.field_0), data=mem[(32 * arg2.length) + (32 * arg1.length) + 352], mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 640 len (32 * mem[(32 * arg2.length) + (32 * arg1.length) + 352]) + (32 * uint16(stor3.field_16))]), 
               (32 * uint16(stor3.field_16)) + 192,
               s << 224,
               arg1.length << 224,
               hash
    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384] = uint32(5 * arg1.length)
    mem[64] = (32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 416
    idx = 0
    s = 0
    while uint16(idx) < uint32(arg1.length):
        require uint16(idx) < arg2.length
        require uint16(5 * idx) < mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384]
        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + uint16(5 * idx) + 416 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) - 256
        require uint16(idx) < arg2.length
        require uint16((5 * idx) + 1) < mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384]
        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + uint16((5 * idx) + 1) + 416 len 8] = Mask(8, -(('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 8, 237, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) - 256
        require uint16(idx) < arg2.length
        require uint16((5 * idx) + 2) < mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384]
        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + uint16((5 * idx) + 2) + 416 len 8] = Mask(8, -(('mask_shl', 8, 16, 229, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 16, 229, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) - 256
        require uint16(idx) < arg2.length
        require uint16((5 * idx) + 3) < mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384]
        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + uint16((5 * idx) + 3) + 416 len 8] = Mask(8, -(('mask_shl', 8, 24, 221, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) + 256, 0) << (('mask_shl', 8, 24, 221, ('mem', ('range', ('add', 160, ('mask_shl', 16, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1'))))), 32))), 0) - 256
        require uint16(idx) < arg1.length
        require uint16((5 * idx) + 4) < mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384]
        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + uint16((5 * idx) + 4) + 416 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))), 0) - 256
        require uint16(idx) < arg1.length
        if ('signextend', 0, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))) < ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('name', 'stor3', 3)))))):
            require uint16(idx) < arg1.length
            if ('signextend', 0, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))) >= ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('name', 'stor3', 3)))))):
                idx = idx + 1
                s = s
                continue 
        if uint32(s + 1) <= uint16(stor3.field_16):
            require uint16(idx) < arg2.length
            require uint32(s) < uint16(stor3.field_16)
            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint32(s)) + 352] = mem[(32 * uint16(idx)) + (32 * arg1.length) + 188 len 4]
            require uint16(idx) < arg1.length
            require uint32(s) < mem[(32 * arg2.length) + (32 * arg1.length) + 352]
            mem[(32 * uint32(s)) + (32 * arg2.length) + (32 * arg1.length) + 384] = ('signextend', 0, ('signextend', 0, ('mem', ('range', ('add', 128, ('mask_shl', 16, 0, 5, ('var', 0))), 32))))
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 448] = 0
    _425 = mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384]
    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 416 len floor32(mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384])] = mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 416 len floor32(mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384])]
    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + floor32(mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384]) + 416] = 256^(-(mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384] % 32) + 32) - 1 and mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + floor32(mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384]) + 416] or mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + floor32(mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384]) + 416] and !(256^(-(mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + 384] % 32) + 32) - 1)
    hash = sha256hash(mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 416 len _425]) 
    require sha256hash.result
    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 480] = uint32(s)
    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 512] = uint32(arg1.length)
    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 544] = hash
    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 416] = 160
    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 576] = uint16(stor3.field_16)
    if not uint16(stor3.field_16):
        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 448] = (32 * uint16(stor3.field_16)) + 192
        mem[(64 * uint16(stor3.field_16)) + (32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 608] = mem[(32 * arg2.length) + (32 * arg1.length) + 352]
        if Mask(251, 0, mem[(32 * arg2.length) + (32 * arg1.length) + 352]):
            mem[(64 * uint16(stor3.field_16)) + (32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 640] = mem[(32 * arg2.length) + (32 * arg1.length) + 384]
            mem[(64 * uint16(stor3.field_16)) + (32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 672 len floor32((32 * mem[(32 * arg2.length) + (32 * arg1.length) + 352]) - 1)] = mem[(32 * arg2.length) + (32 * arg1.length) + 416 len floor32((32 * mem[(32 * arg2.length) + (32 * arg1.length) + 352]) - 1)]
        return Array(len=uint16(stor3.field_0), data=mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 608 len (32 * uint16(stor3.field_16)) + (32 * mem[(32 * arg2.length) + (32 * arg1.length) + 352]) + 32]), 
               (32 * uint16(stor3.field_16)) + 192,
               s << 224,
               arg1.length << 224,
               hash
    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 608] = mem[(32 * arg2.length) + (32 * arg1.length) + 352]
    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 640 len floor32((32 * uint16(stor3.field_16)) - 1)] = mem[(32 * arg2.length) + (32 * arg1.length) + 384 len floor32((32 * uint16(stor3.field_16)) - 1)]
    mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 448] = (32 * uint16(stor3.field_16)) + 192
    mem[(64 * uint16(stor3.field_16)) + (32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 608] = mem[(32 * arg2.length) + (32 * arg1.length) + 352]
    if Mask(251, 0, mem[(32 * arg2.length) + (32 * arg1.length) + 352]):
        mem[(64 * uint16(stor3.field_16)) + (32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 640] = mem[(32 * arg2.length) + (32 * arg1.length) + 384]
        mem[(64 * uint16(stor3.field_16)) + (32 * arg2.length) + (32 * arg1.length) + (32 * uint32(5 * arg1.length)) + 672 len floor32((32 * mem[(32 * arg2.length) + (32 * arg1.length) + 352]) - 1)] = mem[(32 * arg2.length) + (32 * arg1.length) + 416 len floor32((32 * mem[(32 * arg2.length) + (32 * arg1.length) + 352]) - 1)]
    return Array(len=uint16(stor3.field_0), data=mem[(32 * arg2.length) + (32 * arg1.length) + 352], mem[(32 * arg2.length) + (32 * arg1.length) + (32 * uint16(stor3.field_16)) + (32 * uint32(5 * arg1.length)) + 640 len (32 * uint16(stor3.field_16)) + (32 * mem[(32 * arg2.length) + (32 * arg1.length) + 352])]), 
           (32 * uint16(stor3.field_16)) + 192,
           s << 224,
           arg1.length << 224,
           hash
}



}

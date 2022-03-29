contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;

function _fallback() {
    mem[96 len -2295] = code.data[2680 len -2295]
    mem[64] = -2199
    stor0 = msg.sender
    stor1.length = mem[mem[96] + 96]
    mem[0] = 1
    if not mem[mem[96] + 96]:
        idx = 0
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            stor1[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    stor2.length = mem[mem[160] + 96]
    if not mem[mem[160] + 96]:
        idx = 0
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[160] + 128
        while mem[160] + (32 * mem[mem[160] + 96]) + 128 > idx:
            stor2[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[160] + 96]) + 31) >> 5
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    stor3.length = mem[mem[128] + 96]
    if not mem[mem[128] + 96]:
        idx = 0
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[128] + 128
        while mem[128] + (32 * mem[mem[128] + 96]) + 128 > idx:
            stor3[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[128] + 96]) + 31) >> 5
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    return code.data[385 len 2295]
}



// =====================  Runtime code  =====================


#
#  - sub_a3c86daf(?)
#
address stor0;
array of struct stor1;
array of struct stor2;
array of struct stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
array of uint256 stor7;
array of uint256 stor8;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function purge() {
    require stor0 == msg.sender
    stor4.length = 0
    idx = 0
    while stor4.length > idx:
        stor4[idx] = 0
        idx = idx + 1
        continue 
    stor5.length = 0
    idx = 0
    while stor5.length > idx:
        stor5[idx] = 0
        idx = idx + 1
        continue 
    stor6.length = 0
    idx = 0
    while stor6.length > idx:
        stor6[idx] = 0
        idx = idx + 1
        continue 
}

function sub_63cb8630(?) {
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = stor4.length + 1
        while stor4.length > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    stor4[stor4.length] = arg1
    stor5.length++
    if not stor5.length <= stor5.length + 1:
        idx = stor5.length + 1
        while stor5.length > idx:
            stor5[idx] = 0
            idx = idx + 1
            continue 
    stor5[stor5.length] = arg2
    stor6.length++
    if not stor6.length <= stor6.length + 1:
        idx = stor6.length + 1
        while stor6.length > idx:
            stor6[idx] = 0
            idx = idx + 1
            continue 
    stor6[stor6.length] = arg3
    stor7.length++
    if not stor7.length <= stor7.length + 1:
        idx = stor7.length + 1
        while stor7.length > idx:
            stor7[idx] = 0
            idx = idx + 1
            continue 
    stor7[stor7.length] = arg4
    stor8.length++
    if not stor8.length <= stor8.length + 1:
        idx = stor8.length + 1
        while stor8.length > idx:
            stor8[idx] = 0
            idx = idx + 1
            continue 
    stor8[stor8.length] = block.timestamp
}

function getAttributes() {
    if not stor1.length:
        mem[(32 * stor1.length) + 224] = stor3.length
        if not stor3.length:
            mem[(32 * stor1.length) + (32 * stor3.length) + 256] = stor2.length
            if not stor2.length:
                mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 288] = 96
                mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 384] = stor1.length
                if not Mask(251, 0, stor1.length):
                    mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 320] = (32 * stor1.length) + 128
                    mem[(64 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 416] = stor3.length
                    if Mask(251, 0, stor3.length):
                        mem[(64 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 448] = mem[(32 * stor1.length) + 256]
                        mem[(64 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 480 len floor32((32 * stor3.length) - 1)] = mem[(32 * stor1.length) + 288 len floor32((32 * stor3.length) - 1)]
                    mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 352] = (32 * stor3.length) + (32 * stor1.length) + 160
                    mem[(64 * stor3.length) + (64 * stor1.length) + (32 * stor2.length) + 448] = stor2.length
                    if Mask(251, 0, stor2.length):
                        mem[(64 * stor3.length) + (64 * stor1.length) + (32 * stor2.length) + 480] = mem[(32 * stor1.length) + (32 * stor3.length) + 288]
                        mem[(64 * stor3.length) + (64 * stor1.length) + (32 * stor2.length) + 512 len floor32((32 * stor2.length) - 1)] = mem[(32 * stor1.length) + (32 * stor3.length) + 320 len floor32((32 * stor2.length) - 1)]
                    return Array(len=stor1.length, data=mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 416 len (32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 64]), 
                           (32 * stor1.length) + 128,
                           (32 * stor3.length) + (32 * stor1.length) + 160
                mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 416] = mem[224]
                mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 448 len floor32((32 * stor1.length) - 1)] = mem[256 len floor32((32 * stor1.length) - 1)]
                mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 320] = (32 * stor1.length) + 128
                mem[(64 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 416] = stor3.length
                if not Mask(251, 0, stor3.length):
                    mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 352] = (32 * stor3.length) + (32 * stor1.length) + 160
                    mem[(64 * stor3.length) + (64 * stor1.length) + (32 * stor2.length) + 448] = stor2.length
                    if not Mask(251, 0, stor2.length):
                        return Array(len=stor1.length, data=mem[224], mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 448 len (32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 32]), 
                               (32 * stor1.length) + 128,
                               (32 * stor3.length) + (32 * stor1.length) + 160
                    mem[(64 * stor3.length) + (64 * stor1.length) + (32 * stor2.length) + 480] = mem[(32 * stor1.length) + (32 * stor3.length) + 288]
                    mem[(64 * stor3.length) + (64 * stor1.length) + (32 * stor2.length) + 512 len floor32((32 * stor2.length) - 1)] = mem[(32 * stor1.length) + (32 * stor3.length) + 320 len floor32((32 * stor2.length) - 1)]
                    return Array(len=stor1.length, data=mem[224], mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 448 len (32 * stor1.length) + (32 * stor2.length) + (32 * stor3.length) + 32]), 
                           (32 * stor1.length) + 128,
                           (32 * stor3.length) + (32 * stor1.length) + 160
                mem[(64 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 448] = mem[(32 * stor1.length) + 256]
                mem[(64 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 480 len floor32((32 * stor3.length) - 1)] = mem[(32 * stor1.length) + 288 len floor32((32 * stor3.length) - 1)]
            else:
                mem[(32 * stor1.length) + (32 * stor3.length) + 288] = uint256(stor2.field_0)
                idx = (32 * stor1.length) + (32 * stor3.length) + 288
                s = 0
                while (32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 256 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 288] = 96
                mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 384] = stor1.length
                if not Mask(251, 0, stor1.length):
                    mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 320] = (32 * stor1.length) + 128
                    mem[(64 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 416] = stor3.length
                    if Mask(251, 0, stor3.length):
                        mem[(64 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 448] = mem[(32 * stor1.length) + 256]
                        mem[(64 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 480 len floor32((32 * stor3.length) - 1)] = mem[(32 * stor1.length) + 288 len floor32((32 * stor3.length) - 1)]
                    mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 352] = (32 * stor3.length) + (32 * stor1.length) + 160
                    mem[(64 * stor3.length) + (64 * stor1.length) + (32 * stor2.length) + 448] = stor2.length
                    if Mask(251, 0, stor2.length):
                        mem[(64 * stor3.length) + (64 * stor1.length) + (32 * stor2.length) + 480] = mem[(32 * stor1.length) + (32 * stor3.length) + 288]
                        mem[(64 * stor3.length) + (64 * stor1.length) + (32 * stor2.length) + 512 len floor32((32 * stor2.length) - 1)] = mem[(32 * stor1.length) + (32 * stor3.length) + 320 len floor32((32 * stor2.length) - 1)]
                    return Array(len=stor1.length, data=mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 416 len (32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 64]), 
                           (32 * stor1.length) + 128,
                           (32 * stor3.length) + (32 * stor1.length) + 160
                mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 416] = mem[224]
                mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 448 len floor32((32 * stor1.length) - 1)] = mem[256 len floor32((32 * stor1.length) - 1)]
                mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 320] = (32 * stor1.length) + 128
                mem[(64 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 416] = stor3.length
                if Mask(251, 0, stor3.length):
                    mem[(64 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 448] = mem[(32 * stor1.length) + 256]
                    mem[(64 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 480 len floor32((32 * stor3.length) - 1)] = mem[(32 * stor1.length) + 288 len floor32((32 * stor3.length) - 1)]
        else:
            mem[(32 * stor1.length) + 256] = uint256(stor3.field_0)
            idx = (32 * stor1.length) + 256
            s = 0
            while (32 * stor1.length) + (32 * stor3.length) + 224 > idx:
                mem[idx + 32] = stor3[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[(32 * stor1.length) + (32 * stor3.length) + 256] = stor2.length
            if stor2.length:
                mem[(32 * stor1.length) + (32 * stor3.length) + 288] = uint256(stor2.field_0)
                idx = (32 * stor1.length) + (32 * stor3.length) + 288
                s = 0
                while (32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 256 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 288] = 96
            mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 384] = stor1.length
            if not Mask(251, 0, stor1.length):
                mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 320] = (32 * stor1.length) + 128
                mem[(64 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 416] = stor3.length
                if Mask(251, 0, stor3.length):
                    mem[(64 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 448] = mem[(32 * stor1.length) + 256]
                    mem[(64 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 480 len floor32((32 * stor3.length) - 1)] = mem[(32 * stor1.length) + 288 len floor32((32 * stor3.length) - 1)]
                mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 352] = (32 * stor3.length) + (32 * stor1.length) + 160
                mem[(64 * stor3.length) + (64 * stor1.length) + (32 * stor2.length) + 448] = stor2.length
                if Mask(251, 0, stor2.length):
                    mem[(64 * stor3.length) + (64 * stor1.length) + (32 * stor2.length) + 480] = mem[(32 * stor1.length) + (32 * stor3.length) + 288]
                    mem[(64 * stor3.length) + (64 * stor1.length) + (32 * stor2.length) + 512 len floor32((32 * stor2.length) - 1)] = mem[(32 * stor1.length) + (32 * stor3.length) + 320 len floor32((32 * stor2.length) - 1)]
                return Array(len=stor1.length, data=mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 416 len (32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 64]), 
                       (32 * stor1.length) + 128,
                       (32 * stor3.length) + (32 * stor1.length) + 160
            mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 416] = mem[224]
            mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 448 len floor32((32 * stor1.length) - 1)] = mem[256 len floor32((32 * stor1.length) - 1)]
            mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 320] = (32 * stor1.length) + 128
            mem[(64 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 416] = stor3.length
            if Mask(251, 0, stor3.length):
                mem[(64 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 448] = mem[(32 * stor1.length) + 256]
                mem[(64 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 480 len floor32((32 * stor3.length) - 1)] = mem[(32 * stor1.length) + 288 len floor32((32 * stor3.length) - 1)]
    else:
        mem[224] = uint256(stor1.field_0)
        idx = 224
        s = 0
        while (32 * stor1.length) + 192 > idx:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor1.length) + 224] = stor3.length
        if stor3.length:
            mem[(32 * stor1.length) + 256] = uint256(stor3.field_0)
            idx = (32 * stor1.length) + 256
            s = 0
            while (32 * stor1.length) + (32 * stor3.length) + 224 > idx:
                mem[idx + 32] = stor3[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        mem[(32 * stor1.length) + (32 * stor3.length) + 256] = stor2.length
        if stor2.length:
            mem[(32 * stor1.length) + (32 * stor3.length) + 288] = uint256(stor2.field_0)
            idx = (32 * stor1.length) + (32 * stor3.length) + 288
            s = 0
            while (32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 256 > idx:
                mem[idx + 32] = stor2[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 288] = 96
        mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 384] = stor1.length
        if not Mask(251, 0, stor1.length):
            mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 320] = (32 * stor1.length) + 128
            mem[(64 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 416] = stor3.length
            if Mask(251, 0, stor3.length):
                mem[(64 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 448] = mem[(32 * stor1.length) + 256]
                mem[(64 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 480 len floor32((32 * stor3.length) - 1)] = mem[(32 * stor1.length) + 288 len floor32((32 * stor3.length) - 1)]
            mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 352] = (32 * stor3.length) + (32 * stor1.length) + 160
            mem[(64 * stor3.length) + (64 * stor1.length) + (32 * stor2.length) + 448] = stor2.length
            if Mask(251, 0, stor2.length):
                mem[(64 * stor3.length) + (64 * stor1.length) + (32 * stor2.length) + 480] = mem[(32 * stor1.length) + (32 * stor3.length) + 288]
                mem[(64 * stor3.length) + (64 * stor1.length) + (32 * stor2.length) + 512 len floor32((32 * stor2.length) - 1)] = mem[(32 * stor1.length) + (32 * stor3.length) + 320 len floor32((32 * stor2.length) - 1)]
            return Array(len=stor1.length, data=mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 416 len (32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 64]), 
                   (32 * stor1.length) + 128,
                   (32 * stor3.length) + (32 * stor1.length) + 160
        mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 416] = mem[224]
        mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 448 len floor32((32 * stor1.length) - 1)] = mem[256 len floor32((32 * stor1.length) - 1)]
        mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 320] = (32 * stor1.length) + 128
        mem[(64 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 416] = stor3.length
        if Mask(251, 0, stor3.length):
            mem[(64 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 448] = mem[(32 * stor1.length) + 256]
            mem[(64 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 480 len floor32((32 * stor3.length) - 1)] = mem[(32 * stor1.length) + 288 len floor32((32 * stor3.length) - 1)]
    mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 352] = (32 * stor3.length) + (32 * stor1.length) + 160
    mem[(64 * stor3.length) + (64 * stor1.length) + (32 * stor2.length) + 448] = stor2.length
    if Mask(251, 0, stor2.length):
        mem[(64 * stor3.length) + (64 * stor1.length) + (32 * stor2.length) + 480] = mem[(32 * stor1.length) + (32 * stor3.length) + 288]
        mem[(64 * stor3.length) + (64 * stor1.length) + (32 * stor2.length) + 512 len floor32((32 * stor2.length) - 1)] = mem[(32 * stor1.length) + (32 * stor3.length) + 320 len floor32((32 * stor2.length) - 1)]
    return Array(len=stor1.length, data=mem[224], mem[(32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 448 len (32 * stor1.length) + (32 * stor3.length) + (32 * stor2.length) + 32]), 
           (32 * stor1.length) + 128,
           (32 * stor3.length) + (32 * stor1.length) + 160
}



}

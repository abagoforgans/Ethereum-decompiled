contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 3087]




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;

function GetClaimCount() payable {
    return stor1.length
}

function GetSoftwareCount() payable {
    return stor0.length
}

function _fallback() payable {
  stop
}

function sub_913d54d5(?) payable {
    require arg1 < stor1.length
    if not uint256(stor1[arg1].field_256):
        return address(stor1[arg1].field_0), 
               uint32(stor1[arg1].field_0),
               256,
               uint256(stor1[arg1].field_512),
               uint256(stor1[arg1].field_768),
               address(stor1[arg1].field_1024),
               uint32(stor1[arg1].field_1024),
               uint256(stor1[arg1].field_1280),
               uint256(stor1[arg1].field_256)
    mem[384] = uint256(stor[sha3((6 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
    idx = 384
    s = 0
    while uint256(stor1[arg1].field_256) + 384 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor1[arg1].field_0), 
           uint32(stor1[arg1].field_0),
           Array(len=uint256(stor1[arg1].field_256), data=mem[384 len uint256(stor1[arg1].field_256) + (floor32(uint256(stor1[arg1].field_256) - 1) + -uint256(stor1[arg1].field_256) + 32 % 32)]),
           uint256(stor1[arg1].field_512),
           uint256(stor1[arg1].field_768),
           address(stor1[arg1].field_1024),
           uint32(stor1[arg1].field_1024),
           uint256(stor1[arg1].field_1280)
}

function AddClaim(uint32 arg1, string arg2, bytes32 arg3, bytes32 arg4, address arg5, uint32 arg6) payable {
    mem[128 len arg2.length] = arg2[all]
    if arg1 >= stor0.length:
        return 0
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        mem[0] = 1
        idx = (6 * stor1.length) + 6
        while sha3(1) + (6 * stor1.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])].field_0) = 0
            uint32(stor[idx + sha3(mem[0])].field_160) = 0
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            mem[0] = idx + sha3(mem[0]) + 1
            s = sha3(s + sha3(mem[0]) + 1)
            while sha3(s + sha3(mem[0]) + 1) + (uint256(stor[s + sha3(mem[0]) + 1].field_0) + 31 / 32) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])].field_0) = 0
                s = s + 1
                continue 
            uint256(stor[s + sha3(mem[0]) + 2].field_0) = 0
            uint256(stor[s + sha3(mem[0]) + 3].field_0) = 0
            address(stor[s + sha3(mem[0]) + 4].field_0) = 0
            uint32(stor[s + sha3(mem[0]) + 4].field_160) = 0
            uint256(stor[s + sha3(mem[0]) + 5].field_0) = 0
            s = s + 1
            continue 
    require stor1.length < stor1.length
    uint256(stor1[stor1.length].field_0) = msg.sender or Mask(96, 160, uint256(stor1[stor1.length].field_0))
    Mask(96, 0, stor1[stor1.length].field_160) = Mask(96, 0, arg1)
    uint256(stor1[stor1.length].field_256) = arg2.length
    if not arg2.length:
        idx = 0
        while uint256(stor1[stor1.length].field_256) + 31 / 32 > idx:
            uint256(stor[idx + sha3((6 * stor1.length) + ('name', 'stor1', 1) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg2.length + 128 > idx:
            uint256(stor[s + sha3((6 * stor1.length) + ('name', 'stor1', 1) + 1)].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while uint256(stor1[stor1.length].field_256) + 31 / 32 > idx:
            uint256(stor[idx + sha3((6 * stor1.length) + ('name', 'stor1', 1) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    uint256(stor1[stor1.length].field_512) = arg3
    uint256(stor1[stor1.length].field_768) = arg4
    uint256(stor1[stor1.length].field_1024) = arg5 or Mask(96, 160, uint256(stor1[stor1.length].field_1024))
    Mask(96, 0, stor1[stor1.length].field_1184) = Mask(96, 0, arg6)
    uint256(stor1[stor1.length].field_1280) = block.number
    emit OnNewClaimForSw(uint32(stor1.length), uint32(stor1[stor1.length].field_160));
    return uint32(stor1.length)
}

function AddSoftware(string arg1, string arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        mem[0] = 0
        idx = (5 * stor0.length) + 5
        while sha3(0) + (5 * stor0.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])].field_0) = 0
            s = sha3(idx + sha3(mem[0]))
            while sha3(idx + sha3(mem[0])) + (uint256(stor[idx + sha3(mem[0])].field_0) + 31 / 32) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            mem[0] = idx + sha3(mem[0]) + 1
            s = sha3(idx + sha3(mem[0]) + 1)
            while sha3(idx + sha3(mem[0]) + 1) + (uint256(stor[idx + sha3(mem[0]) + 1].field_0) + 31 / 32) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
            uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 4].field_0) = 0
            idx = idx + 1
            continue 
    require stor0.length < stor0.length
    uint256(stor0[stor0.length].field_0) = arg1.length
    if not arg1.length:
        idx = 0
        while uint256(stor0[stor0.length].field_0) + 31 / 32 > idx:
            uint256(stor0[(5 * stor0.length) + idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg1.length + 128 > idx:
            uint256(stor0[(5 * stor0.length) + s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg1.length + 31) >> 5
        while uint256(stor0[stor0.length].field_0) + 31 / 32 > idx:
            uint256(stor0[(5 * stor0.length) + idx].field_0) = 0
            idx = idx + 1
            continue 
    uint256(stor0[stor0.length].field_256) = arg2.length
    if not arg2.length:
        idx = 0
        while uint256(stor0[stor0.length].field_256) + 31 / 32 > idx:
            uint256(stor[idx + sha3((5 * stor0.length) + ('name', 'stor0', 0) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(arg1.length) + 160
        while ceil32(arg1.length) + arg2.length + 160 > idx:
            uint256(stor[s + sha3((5 * stor0.length) + ('name', 'stor0', 0) + 1)].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while uint256(stor0[stor0.length].field_256) + 31 / 32 > idx:
            uint256(stor[idx + sha3((5 * stor0.length) + ('name', 'stor0', 0) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    uint256(stor0[stor0.length].field_512) = arg3
    uint256(stor0[stor0.length].field_768) = arg4
    uint256(stor0[stor0.length].field_1024) = arg5
    emit OnNewSoftware(uint32(stor0.length));
    return uint32(stor0.length)
}

function m_software(uint256 arg1) payable {
    require arg1 < stor0.length
    if not uint256(stor0[arg1].field_0):
        if not uint256(stor0[arg1].field_256):
            return 160, 
                   192,
                   uint256(stor0[arg1].field_512),
                   uint256(stor0[arg1].field_768),
                   uint256(stor0[arg1].field_1024),
                   uint256(stor0[arg1].field_0),
                   uint256(stor0[arg1].field_256)
        mem[320] = uint256(stor[sha3((5 * arg1) + ('name', 'stor0', 0) + 1)].field_0)
        idx = 320
        s = 0
        while uint256(stor0[arg1].field_256) + 320 > idx + 32:
            mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) + ('name', 'stor0', 0) + 1)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        return 160, 
               192,
               uint256(stor0[arg1].field_512),
               uint256(stor0[arg1].field_768),
               uint256(stor0[arg1].field_1024),
               uint256(stor0[arg1].field_0),
               uint256(stor0[arg1].field_256),
               mem[320 len uint256(stor0[arg1].field_256) + (floor32(uint256(stor0[arg1].field_256) - 1) + -uint256(stor0[arg1].field_256) + 32 % 32)]
    mem[288] = uint256(stor0[arg1].field_0)
    idx = 288
    s = 0
    while uint256(stor0[arg1].field_0) + 288 > idx + 32:
        mem[idx + 32] = uint256(stor0[(5 * arg1) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[uint256(stor0[arg1].field_0) + (floor32(uint256(stor0[arg1].field_0) - 1) + -uint256(stor0[arg1].field_0) + 32 % 32) + 288] = uint256(stor0[arg1].field_256)
    if not uint256(stor0[arg1].field_256):
        return Array(len=uint256(stor0[arg1].field_0), data=mem[288 len uint256(stor0[arg1].field_0) + (floor32(uint256(stor0[arg1].field_0) - 1) + -uint256(stor0[arg1].field_0) + 32 % 32) + 32]), 
               uint256(stor0[arg1].field_0) + (floor32(uint256(stor0[arg1].field_0) - 1) + -uint256(stor0[arg1].field_0) + 32 % 32) + 192,
               uint256(stor0[arg1].field_512),
               uint256(stor0[arg1].field_768),
               uint256(stor0[arg1].field_1024)
    mem[uint256(stor0[arg1].field_0) + (floor32(uint256(stor0[arg1].field_0) - 1) + -uint256(stor0[arg1].field_0) + 32 % 32) + 320] = uint256(stor[sha3((5 * arg1) + ('name', 'stor0', 0) + 1)].field_0)
    idx = uint256(stor0[arg1].field_0) + (floor32(uint256(stor0[arg1].field_0) - 1) + -uint256(stor0[arg1].field_0) + 32 % 32) + 320
    s = 0
    while uint256(stor0[arg1].field_0) + (floor32(uint256(stor0[arg1].field_0) - 1) + -uint256(stor0[arg1].field_0) + 32 % 32) + uint256(stor0[arg1].field_256) + 320 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) + ('name', 'stor0', 0) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=uint256(stor0[arg1].field_0), data=mem[288 len uint256(stor0[arg1].field_0) + (floor32(uint256(stor0[arg1].field_0) - 1) + -uint256(stor0[arg1].field_0) + 32 % 32) + uint256(stor0[arg1].field_256) + (floor32(uint256(stor0[arg1].field_256) - 1) + -uint256(stor0[arg1].field_256) + 32 % 32) + 32]), 
           uint256(stor0[arg1].field_0) + (floor32(uint256(stor0[arg1].field_0) - 1) + -uint256(stor0[arg1].field_0) + 32 % 32) + 192,
           uint256(stor0[arg1].field_512),
           uint256(stor0[arg1].field_768),
           uint256(stor0[arg1].field_1024)
}

function AddSWAndClaim(string arg1, string arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, string arg6, bytes32 arg7, bytes32 arg8, address arg9, uint32 arg10) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg6.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg6.length] = arg6[all]
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        mem[0] = 0
        idx = (5 * stor0.length) + 5
        while sha3(0) + (5 * stor0.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])].field_0) = 0
            s = sha3(idx + sha3(mem[0]))
            while sha3(idx + sha3(mem[0])) + (uint256(stor[idx + sha3(mem[0])].field_0) + 31 / 32) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            mem[0] = idx + sha3(mem[0]) + 1
            s = sha3(idx + sha3(mem[0]) + 1)
            while sha3(idx + sha3(mem[0]) + 1) + (uint256(stor[idx + sha3(mem[0]) + 1].field_0) + 31 / 32) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
            uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 4].field_0) = 0
            idx = idx + 1
            continue 
    require stor0.length < stor0.length
    uint256(stor0[stor0.length].field_0) = arg1.length
    if not arg1.length:
        idx = 0
        while uint256(stor0[stor0.length].field_0) + 31 / 32 > idx:
            uint256(stor0[(5 * stor0.length) + idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg1.length + 128 > idx:
            uint256(stor0[(5 * stor0.length) + s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg1.length + 31) >> 5
        while uint256(stor0[stor0.length].field_0) + 31 / 32 > idx:
            uint256(stor0[(5 * stor0.length) + idx].field_0) = 0
            idx = idx + 1
            continue 
    uint256(stor0[stor0.length].field_256) = arg2.length
    if not arg2.length:
        idx = 0
        while uint256(stor0[stor0.length].field_256) + 31 / 32 > idx:
            uint256(stor[idx + sha3((5 * stor0.length) + ('name', 'stor0', 0) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(arg1.length) + 160
        while ceil32(arg1.length) + arg2.length + 160 > idx:
            uint256(stor[s + sha3((5 * stor0.length) + ('name', 'stor0', 0) + 1)].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while uint256(stor0[stor0.length].field_256) + 31 / 32 > idx:
            uint256(stor[idx + sha3((5 * stor0.length) + ('name', 'stor0', 0) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    uint256(stor0[stor0.length].field_512) = arg3
    uint256(stor0[stor0.length].field_768) = arg4
    uint256(stor0[stor0.length].field_1024) = arg5
    emit OnNewSoftware(uint32(stor0.length));
    if uint32(stor0.length) >= stor0.length:
        return 0
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        mem[0] = 1
        idx = (6 * stor1.length) + 6
        while sha3(1) + (6 * stor1.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])].field_0) = 0
            uint32(stor[idx + sha3(mem[0])].field_160) = 0
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            mem[0] = idx + sha3(mem[0]) + 1
            s = sha3(s + sha3(mem[0]) + 1)
            while sha3(s + sha3(mem[0]) + 1) + (uint256(stor[s + sha3(mem[0]) + 1].field_0) + 31 / 32) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])].field_0) = 0
                s = s + 1
                continue 
            uint256(stor[s + sha3(mem[0]) + 2].field_0) = 0
            uint256(stor[s + sha3(mem[0]) + 3].field_0) = 0
            address(stor[s + sha3(mem[0]) + 4].field_0) = 0
            uint32(stor[s + sha3(mem[0]) + 4].field_160) = 0
            uint256(stor[s + sha3(mem[0]) + 5].field_0) = 0
            s = s + 1
            continue 
    require stor1.length < stor1.length
    uint256(stor1[stor1.length].field_0) = msg.sender or Mask(96, 160, uint256(stor1[stor1.length].field_0))
    Mask(96, 0, stor1[stor1.length].field_0) = Mask(96, 0, stor0.length)
    uint32(stor1[stor1.length].field_160) = 0
    uint256(stor1[stor1.length].field_256) = arg6.length
    if not arg6.length:
        idx = 0
        while uint256(stor1[stor1.length].field_256) + 31 / 32 > idx:
            uint256(stor[idx + sha3((6 * stor1.length) + ('name', 'stor1', 1) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(arg1.length) + ceil32(arg2.length) + 192
        while ceil32(arg1.length) + ceil32(arg2.length) + arg6.length + 192 > idx:
            uint256(stor[s + sha3((6 * stor1.length) + ('name', 'stor1', 1) + 1)].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg6.length + 31) >> 5
        while uint256(stor1[stor1.length].field_256) + 31 / 32 > idx:
            uint256(stor[idx + sha3((6 * stor1.length) + ('name', 'stor1', 1) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    uint256(stor1[stor1.length].field_512) = arg7
    uint256(stor1[stor1.length].field_768) = arg8
    uint256(stor1[stor1.length].field_1024) = arg9 or Mask(96, 160, uint256(stor1[stor1.length].field_1024))
    Mask(96, 0, stor1[stor1.length].field_1184) = Mask(96, 0, arg10)
    uint256(stor1[stor1.length].field_1280) = block.number
    emit OnNewClaimForSw(uint32(stor1.length), uint32(stor1[stor1.length].field_160));
    return uint32(stor1.length)
}



}

contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[64 len 2459]
}



// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
array of struct stor2;
uint256 numAssets;
uint256 sub_e20d3732;

function numAssets() payable {
    return numAssets
}

function sub_e20d3732(?) payable {
    return sub_e20d3732
}

function _fallback() payable {
  stop
}

function sub_534bbdef(?) payable {
  stop
}

function agents(uint256 arg1) payable {
    require arg1 < stor2.length
    if not uint256(stor2[arg1].field_256):
        return address(stor2[arg1].field_0), 
               128,
               uint256(stor2[arg1].field_512),
               uint8(stor2[arg1].field_768),
               uint256(stor2[arg1].field_256)
    mem[256] = uint256(stor[sha3((4 * arg1) + ('name', 'stor2', 2) + 1)].field_0)
    idx = 256
    s = 0
    while uint256(stor2[arg1].field_256) + 256 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((4 * arg1) + ('name', 'stor2', 2) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor2[arg1].field_0), 
           Array(len=uint256(stor2[arg1].field_256), data=mem[256 len uint256(stor2[arg1].field_256) + (floor32(uint256(stor2[arg1].field_256) - 1) + -uint256(stor2[arg1].field_256) + 32 % 32)]),
           uint256(stor2[arg1].field_512),
           uint8(stor2[arg1].field_768)
}

function assets(uint256 arg1) payable {
    require arg1 < stor1.length
    if not uint256(stor1[arg1].field_256):
        return address(stor1[arg1].field_0), 
               128,
               uint256(stor1[arg1].field_512),
               uint8(stor1[arg1].field_768),
               uint256(stor1[arg1].field_256)
    mem[256] = uint256(stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
    idx = 256
    s = 0
    while uint256(stor1[arg1].field_256) + 256 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor1[arg1].field_0), 
           Array(len=uint256(stor1[arg1].field_256), data=mem[256 len uint256(stor1[arg1].field_256) + (floor32(uint256(stor1[arg1].field_256) - 1) + -uint256(stor1[arg1].field_256) + 32 % 32)]),
           uint256(stor1[arg1].field_512),
           uint8(stor1[arg1].field_768)
}

function sub_db4a89ea(?) payable {
    mem[128 len arg2.length] = arg2[all]
    if stor0 != msg.sender:
        return 0
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        mem[0] = 1
        idx = 4 * stor1.length + 1
        while sha3(1) + (4 * stor1.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            mem[0] = idx + sha3(mem[0]) + 1
            s = sha3(s + sha3(mem[0]) + 1)
            while sha3(s + sha3(mem[0]) + 1) + (uint256(stor[s + sha3(mem[0]) + 1]) + 31 / 32) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            uint256(stor[s + sha3(mem[0]) + 2]) = 0
            uint8(stor[s + sha3(mem[0]) + 3]) = 0
            s = s + 1
            continue 
    require stor1.length < stor1.length
    uint256(stor1[stor1.length].field_0) = arg1 or Mask(96, 160, uint256(stor1[stor1.length].field_0))
    uint256(stor1[stor1.length].field_256) = arg2.length
    if not arg2.length:
        idx = 0
        while uint256(stor1[stor1.length].field_256) + 31 / 32 > idx:
            uint256(stor[idx + sha3((4 * stor1.length) + ('name', 'stor1', 1) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg2.length + 128 > idx:
            uint256(stor[s + sha3((4 * stor1.length) + ('name', 'stor1', 1) + 1)].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while uint256(stor1[stor1.length].field_256) + 31 / 32 > idx:
            uint256(stor[idx + sha3((4 * stor1.length) + ('name', 'stor1', 1) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    uint256(stor1[stor1.length].field_512) = block.timestamp
    uint8(stor1[stor1.length].field_768) = 1
    if not uint256(stor1[stor1.length].field_256):
        emit 0x40f79f74: stor1.length, 96, uint256(stor1[stor1.length].field_512), uint256(stor1[stor1.length].field_256)
    else:
        mem[ceil32(arg2.length) + 256] = uint256(stor[sha3((4 * stor1.length) + ('name', 'stor1', 1) + 1)].field_0)
        idx = ceil32(arg2.length) + 256
        s = 0
        while ceil32(arg2.length) + uint256(stor1[stor1.length].field_256) + 256 > idx + 32:
            mem[idx + 32] = uint256(stor[s + sha3((4 * stor1.length) + ('name', 'stor1', 1) + 1)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        emit 0x40f79f74: stor1.length, Array(len=uint256(stor1[stor1.length].field_256), data=mem[ceil32(arg2.length) + 256 len uint256(stor1[stor1.length].field_256) + (floor32(uint256(stor1[stor1.length].field_256) - 1) + -uint256(stor1[stor1.length].field_256) + 32 % 32)]), uint256(stor1[stor1.length].field_512)
    numAssets = stor1.length + 1
    return stor1.length
}

function sub_92c04524(?) payable {
    mem[128 len arg2.length] = arg2[all]
    if stor0 != msg.sender:
        return 0
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        mem[0] = 2
        idx = 4 * stor2.length + 1
        while sha3(2) + (4 * stor2.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            mem[0] = idx + sha3(mem[0]) + 1
            s = sha3(s + sha3(mem[0]) + 1)
            while sha3(s + sha3(mem[0]) + 1) + (uint256(stor[s + sha3(mem[0]) + 1]) + 31 / 32) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            uint256(stor[s + sha3(mem[0]) + 2]) = 0
            uint8(stor[s + sha3(mem[0]) + 3]) = 0
            s = s + 1
            continue 
    require stor2.length < stor2.length
    uint256(stor2[stor2.length].field_0) = arg1 or Mask(96, 160, uint256(stor2[stor2.length].field_0))
    uint256(stor2[stor2.length].field_256) = arg2.length
    if not arg2.length:
        idx = 0
        while uint256(stor2[stor2.length].field_256) + 31 / 32 > idx:
            uint256(stor[idx + sha3((4 * stor2.length) + ('name', 'stor2', 2) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg2.length + 128 > idx:
            uint256(stor[s + sha3((4 * stor2.length) + ('name', 'stor2', 2) + 1)].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while uint256(stor2[stor2.length].field_256) + 31 / 32 > idx:
            uint256(stor[idx + sha3((4 * stor2.length) + ('name', 'stor2', 2) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    uint256(stor2[stor2.length].field_512) = block.timestamp
    uint8(stor2[stor2.length].field_768) = 1
    if not uint256(stor2[stor2.length].field_256):
        emit 0x5f72d7d1: stor2.length, 96, uint256(stor2[stor2.length].field_512), uint256(stor2[stor2.length].field_256)
    else:
        mem[ceil32(arg2.length) + 256] = uint256(stor[sha3((4 * stor2.length) + ('name', 'stor2', 2) + 1)].field_0)
        idx = ceil32(arg2.length) + 256
        s = 0
        while ceil32(arg2.length) + uint256(stor2[stor2.length].field_256) + 256 > idx + 32:
            mem[idx + 32] = uint256(stor[s + sha3((4 * stor2.length) + ('name', 'stor2', 2) + 1)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        emit 0x5f72d7d1: stor2.length, Array(len=uint256(stor2[stor2.length].field_256), data=mem[ceil32(arg2.length) + 256 len uint256(stor2[stor2.length].field_256) + (floor32(uint256(stor2[stor2.length].field_256) - 1) + -uint256(stor2[stor2.length].field_256) + 32 % 32)]), uint256(stor2[stor2.length].field_512)
    sub_e20d3732 = stor2.length + 1
    return stor2.length
}



}

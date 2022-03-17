contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint256 stor3;

function _fallback() payable {
    mem[96 len -936] = code.data[1161 len -936]
    mem[64] = -840
    stor1.length = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0
        while stor1.length + 31 / 32 > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + mem[mem[96] + 96] + 128 > idx:
            stor1[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, mem[mem[96] + 96] + 31) >> 5
        while stor1.length + 31 / 32 > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor3 = 0
    return code.data[225 len 936]
}



// =====================  Runtime code  =====================


address owner;
array of struct stor1;
array of struct stor2;
uint256 sub_a29092ed;

function owner() payable {
    return owner
}

function sub_a29092ed(?) payable {
    return sub_a29092ed
}

function _fallback() payable {
  stop
}

function sub_c1e6adfd(?) payable {
    sub_a29092ed++
}

function name() payable {
    if stor1.length:
        mem[128] = uint256(stor1.field_0)
        idx = 128
        s = 0
        while stor1.length + 96 > idx:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor1.length, data=mem[128 len stor1.length])
}

function sub_18d9adab(?) payable {
    require arg1 < stor2.length
    if not stor2[arg1].field_0:
        if not stor2[arg1].field_256:
            return 96, 128, stor2[arg1].field_512, stor2[arg1].field_0, stor2[arg1].field_256
        mem[256] = stor[sha3((3 * arg1) + ('name', 'stor2', 2) + 1)].field_0
        idx = 256
        s = 0
        while stor2[arg1].field_256 + 256 > idx + 32:
            mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor2', 2) + 1)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return 96, 
               128,
               stor2[arg1].field_512,
               stor2[arg1].field_0,
               stor2[arg1].field_256,
               mem[256 len stor2[arg1].field_256 + (floor32(stor2[arg1].field_256 - 1) + -stor2[arg1].field_256 + 32 % 32)]
    mem[224] = stor2[arg1].field_0
    idx = 224
    s = 0
    while stor2[arg1].field_0 + 224 > idx + 32:
        mem[idx + 32] = stor2[(3 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not stor2[arg1].field_256:
        return Array(len=stor2[arg1].field_0, data=mem[224 len stor2[arg1].field_0 + (floor32(stor2[arg1].field_0 - 1) + -stor2[arg1].field_0 + 32 % 32)], stor2[arg1].field_256), 
               stor2[arg1].field_0 + (floor32(stor2[arg1].field_0 - 1) + -stor2[arg1].field_0 + 32 % 32) + 128,
               stor2[arg1].field_512
    mem[stor2[arg1].field_0 + (floor32(stor2[arg1].field_0 - 1) + -stor2[arg1].field_0 + 32 % 32) + 256] = stor[sha3((3 * arg1) + ('name', 'stor2', 2) + 1)].field_0
    idx = stor2[arg1].field_0 + (floor32(stor2[arg1].field_0 - 1) + -stor2[arg1].field_0 + 32 % 32) + 256
    s = 0
    while stor2[arg1].field_0 + (floor32(stor2[arg1].field_0 - 1) + -stor2[arg1].field_0 + 32 % 32) + stor2[arg1].field_256 + 256 > idx + 32:
        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor2', 2) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor2[arg1].field_0, data=mem[224 len stor2[arg1].field_0 + (floor32(stor2[arg1].field_0 - 1) + -stor2[arg1].field_0 + 32 % 32)], stor2[arg1].field_256, mem[stor2[arg1].field_0 + (floor32(stor2[arg1].field_0 - 1) + -stor2[arg1].field_0 + 32 % 32) + 256 len stor2[arg1].field_256 + (floor32(stor2[arg1].field_256 - 1) + -stor2[arg1].field_256 + 32 % 32)]), 
           stor2[arg1].field_0 + (floor32(stor2[arg1].field_0 - 1) + -stor2[arg1].field_0 + 32 % 32) + 128,
           stor2[arg1].field_512
}



}

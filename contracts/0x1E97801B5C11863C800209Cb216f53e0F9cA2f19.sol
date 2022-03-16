contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint256 stor2;
uint256 storA6EE;

function _fallback() payable {
    mem[96 len -715] = code.data[1121 len -715]
    mem[64] = -619
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1[0] = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0xeb5be412f275a18f6e4d622aee4ff40b21467c926224771b782d4c095d1444b
        while (stor1[0] + 31 / 32) + 0xeb5be412f275a18f6e4d622aee4ff40b21467c926224771b782d4c095d1444b > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0xeb5be412f275a18f6e4d622aee4ff40b21467c926224771b782d4c095d1444b
        idx = mem[96] + 128
        while mem[96] + mem[mem[96] + 96] + 128 > idx:
            stor[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) + 0xeb5be412f275a18f6e4d622aee4ff40b21467c926224771b782d4c095d1444b
        while (stor1[0] + 31 / 32) + 0xeb5be412f275a18f6e4d622aee4ff40b21467c926224771b782d4c095d1444b > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    storA6EE = mem[mem[128] + 96]
    if not mem[mem[128] + 96]:
        idx = 0x8ad42b8c5cc6483fc6f741635eaa19fc52c5290bb801ae007ad7830329c2a0d
        while (storA6EE + 31 / 32) + 0x8ad42b8c5cc6483fc6f741635eaa19fc52c5290bb801ae007ad7830329c2a0d > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0x8ad42b8c5cc6483fc6f741635eaa19fc52c5290bb801ae007ad7830329c2a0d
        idx = mem[128] + 128
        while mem[128] + mem[mem[128] + 96] + 128 > idx:
            stor[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) + 0x8ad42b8c5cc6483fc6f741635eaa19fc52c5290bb801ae007ad7830329c2a0d
        while (storA6EE + 31 / 32) + 0x8ad42b8c5cc6483fc6f741635eaa19fc52c5290bb801ae007ad7830329c2a0d > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    stor2 = 1000
    return code.data[406 len 715]
}



// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
uint256 sub_250caccc;

function sub_250caccc(?) payable {
    return sub_250caccc
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function create(string arg1, string arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    stor1[stor2].field_0 = arg1.length
    if not arg1.length:
        idx = 0
        while stor1[stor2].field_0 + 31 / 32 > idx:
            stor1[stor2][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg1.length + 128 > idx:
            stor1[stor2][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg1.length + 31) >> 5
        while stor1[stor2].field_0 + 31 / 32 > idx:
            stor1[stor2][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor1[stor2].field_256 = arg2.length
    if not arg2.length:
        idx = 0
        while stor1[stor2].field_256 + 31 / 32 > idx:
            stor1[stor2][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(arg1.length) + 160
        while ceil32(arg1.length) + arg2.length + 160 > idx:
            stor1[stor2][s + 1].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while stor1[stor2].field_256 + 31 / 32 > idx:
            stor1[stor2][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    sub_250caccc += 1000
}

function books(uint256 arg1) payable {
    if not stor1[arg1].field_0:
        if not stor1[arg1].field_256:
            return 64, 96, stor1[arg1].field_0, stor1[arg1].field_256
        mem[224] = stor1[arg1][1].field_0
        idx = 224
        s = 0
        while stor1[arg1].field_256 + 224 > idx + 32:
            mem[idx + 32] = stor1[arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return 64, 
               96,
               stor1[arg1].field_0,
               stor1[arg1].field_256,
               mem[224 len stor1[arg1].field_256 + (floor32(stor1[arg1].field_256 - 1) + -stor1[arg1].field_256 + 32 % 32)]
    mem[192] = stor1[arg1].field_0
    idx = 192
    s = 0
    while stor1[arg1].field_0 + 192 > idx + 32:
        mem[idx + 32] = stor1[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor1[arg1].field_0 + (floor32(stor1[arg1].field_0 - 1) + -stor1[arg1].field_0 + 32 % 32) + 192] = stor1[arg1].field_256
    if not stor1[arg1].field_256:
        return Array(len=stor1[arg1].field_0, data=mem[192 len stor1[arg1].field_0 + (floor32(stor1[arg1].field_0 - 1) + -stor1[arg1].field_0 + 32 % 32) + 32]), 
               stor1[arg1].field_0 + (floor32(stor1[arg1].field_0 - 1) + -stor1[arg1].field_0 + 32 % 32) + 96
    mem[stor1[arg1].field_0 + (floor32(stor1[arg1].field_0 - 1) + -stor1[arg1].field_0 + 32 % 32) + 224] = stor1[arg1][1].field_0
    idx = stor1[arg1].field_0 + (floor32(stor1[arg1].field_0 - 1) + -stor1[arg1].field_0 + 32 % 32) + 224
    s = 0
    while stor1[arg1].field_0 + (floor32(stor1[arg1].field_0 - 1) + -stor1[arg1].field_0 + 32 % 32) + stor1[arg1].field_256 + 224 > idx + 32:
        mem[idx + 32] = stor1[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor1[arg1].field_0, data=mem[192 len stor1[arg1].field_0 + (floor32(stor1[arg1].field_0 - 1) + -stor1[arg1].field_0 + 32 % 32) + stor1[arg1].field_256 + (floor32(stor1[arg1].field_256 - 1) + -stor1[arg1].field_256 + 32 % 32) + 32]), 
           stor1[arg1].field_0 + (floor32(stor1[arg1].field_0 - 1) + -stor1[arg1].field_0 + 32 % 32) + 96
}



}

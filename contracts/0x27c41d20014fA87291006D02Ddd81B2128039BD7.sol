contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1310]




// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
  stop
}

function hintURL(bytes32 arg1, string arg2) payable {
    if not stor0[arg1].field_512:
        stor0[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        stor0[arg1].field_256 = 0
        stor0[arg1].field_512 = stor0[arg1].field_672
    else:
        if msg.sender == stor0[arg1].field_512:
            stor0[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
            stor0[arg1].field_256 = 0
            stor0[arg1].field_512 = stor0[arg1].field_672
}

function entries(bytes32 arg1) payable {
    mem[224] = stor0[arg1].field_0
    idx = 224
    s = 0
    while stor0[arg1].length + 224 > idx + 32:
        mem[idx + 32] = stor0[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[arg1].length, data=mem[224 len stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32)]), 
           Mask(160, 96, stor0[arg1].field_256),
           stor0[arg1].field_512
}

function hint(bytes32 arg1, string arg2, bytes20 arg3) payable {
    if not stor0[arg1].field_512:
        stor0[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        stor0[arg1].field_256 = Mask(160, 96, arg3) >> 96
        stor0[arg1].field_512 = stor0[arg1].field_672
    else:
        if msg.sender == stor0[arg1].field_512:
            stor0[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
            stor0[arg1].field_256 = Mask(160, 96, arg3) >> 96
            stor0[arg1].field_512 = stor0[arg1].field_672
}

function unhint(bytes32 arg1) payable {
    if not stor0[arg1].field_512:
        stor0[arg1].field_0 = 0
        if 31 < stor0[arg1].length:
            idx = 0
            while stor0[arg1].length + 31 / 32 > idx:
                stor0[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
        stor0[arg1].field_256 = 0
        stor0[arg1].field_512 = 0
    else:
        if msg.sender == stor0[arg1].field_512:
            stor0[arg1].field_0 = 0
            if 31 < stor0[arg1].length:
                idx = 0
                while stor0[arg1].length + 31 / 32 > idx:
                    stor0[arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor0[arg1].field_256 = 0
            stor0[arg1].field_512 = 0
}



}

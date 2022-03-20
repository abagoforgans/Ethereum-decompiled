contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    mem[96 len -1270] = code.data[1686 len -1270]
    mem[64] = -1174
    stor0[0].field_0 = (2 * mem[mem[96] + 96]) + 1
    s = 0xf0df3dcda05b4fbd9c655cde3d5ceb211e019e72ec816e127a59e7195f2cd7f5
    idx = mem[96] + 128
    while mem[96] + mem[mem[96] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) - 0xf20c2325fa4b042639aa321c2a314dee1fe618d137e91ed85a618e6a0d3280b
    while (stor('map', 0, ('name', 'stor0', 0)).length + 31 / 32) - 0xf20c2325fa4b042639aa321c2a314dee1fe618d137e91ed85a618e6a0d3280b > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    uint256(stor0.field_256) = mem[128]
    uint256(stor0.field_512) = tx.origin or Mask(96, 160, uint256(stor0.field_512))
    stor1 = 1
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[416 len 1270]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
uint256 length;
address stor2;

function length() payable {
    return length
}

function sub_7cd9ffe3(?) payable {
    if stor2 != msg.sender:
    selfdestruct(stor2)
}

function _fallback() payable {
  stop
}

function debug() payable {
    return tx.origin, stor2, msg.sender
}

function cash() payable {
    if stor2 == msg.sender:
        call stor2 with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function sub_303eaeed(?) payable {
    mem[160] = stor0[arg1].field_0
    idx = 160
    s = 0
    while stor0[arg1].length + 128 > idx:
        mem[idx + 32] = stor0[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[arg1].length, data=mem[160 len stor0[arg1].length]), stor0[arg1].field_256, stor0[arg1].field_512
}

function add(string arg1, uint256 arg2) payable {
    if msg.sender == stor2:
        if arg1.length > 250:
            return -1
        stor0[stor1][].field_0 = Array(len=arg1.length, data=arg1[all])
        stor0[stor1].field_256 = arg2
        stor0[stor1].field_512 = tx.origin or Mask(96, 160, stor0[stor1].field_512)
        length++
        return 0
    else:
        return 0
}

function remove(uint256 arg1) payable {
    if tx.origin == stor0[arg1].field_512:
        stor0[arg1].field_0 = 0
        stor0[arg1].field_1 = 0
        stor0[arg1].field_8 = mem[128 len 31]
        idx = 0
        while stor0[arg1].length + 31 / 32 > idx:
            stor0[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
        stor0[arg1].field_256 = 0
        stor0[arg1].field_512 = 0
    else:
        if msg.sender == stor2:
            stor0[arg1].field_0 = 0
            stor0[arg1].field_1 = 0
            stor0[arg1].field_8 = mem[128 len 31]
            idx = 0
            while stor0[arg1].length + 31 / 32 > idx:
                stor0[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
            stor0[arg1].field_256 = 0
            stor0[arg1].field_512 = 0
}



}

contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 992]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct stor1;

function sub_7d503e57(?) payable {
    require arg2 < stor1[arg1].field_0
    return sub_7d503e57[uint8(arg2)]
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_303c4e63(?) payable {
    stor1[arg1 << 248].field_0 = 0
    idx = 0
    while stor1[arg1 << 248].field_0 + 31 / 32 > idx:
        stor1[arg1 << 248][idx].field_0 = 0
        idx = idx + 1
        continue 
}

function add(uint8 arg1, uint8 arg2) payable {
    stor1[arg1 << 248].field_0++
    if not stor1[arg1 << 248].field_0 <= stor1[arg1 << 248].field_0 + 1:
        idx = stor1[arg1 << 248].field_0 + 32 / 32
        while stor1[arg1 << 248].field_0 + 31 / 32 > idx:
            stor1[arg1 << 248][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor1[arg1 << 248][stor1[arg1 << 248].field_5].field_0 = arg2 * 256^stor1[arg1 << 248].field_0 or !(255 * 256^stor1[arg1 << 248].field_0) and stor1[arg1 << 248][stor1[arg1 << 248].field_5].field_0
}

function get(uint8 arg1) payable {
    if stor1[arg1 << 248].field_0:
        mem[160] = stor1[arg1 << 248].field_0
        idx = 160
        s = 0
        while (32 * stor1[arg1 << 248].field_0) + 128 > idx:
            mem[idx + 32] = stor('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor1', 1))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    return Array(len=stor1[arg1 << 248].field_0, data=mem[160 len 32 * stor1[arg1 << 248].field_0])
}



}

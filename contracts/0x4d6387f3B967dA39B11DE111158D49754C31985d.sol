contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[37 len 1356]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 sub_86086ba8;
uint256 sub_c31bfcbb;
mapping of struct stor4;

function sub_86086ba8(?) payable {
    return sub_86086ba8
}

function sub_c31bfcbb(?) payable {
    return sub_c31bfcbb
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function isAvailable() payable {
    return (block.timestamp - stor1 < 24 * 3600)
}

function sub_3ecbc1b7(?) payable {
    return (block.timestamp - stor1 > 23 * 3600)
}

function setAvailability(bool arg1) payable {
    if msg.sender == stor0:
        if not arg1:
            stor1 = 0
        else:
            stor1 = block.timestamp
}

function payments(uint256 arg1) payable {
    if not stor4[arg1].field_0:
        return 96, stor4[arg1].field_256, address(stor4[arg1].field_512), stor4[arg1].field_0
    mem[224] = stor4[arg1].field_0
    idx = 224
    s = 0
    while stor4[arg1].field_0 + 224 > idx + 32:
        mem[idx + 32] = stor4[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor4[arg1].field_0, data=mem[224 len stor4[arg1].field_0 + (floor32(stor4[arg1].field_0 - 1) + -stor4[arg1].field_0 + 32 % 32)]), 
           stor4[arg1].field_256,
           address(stor4[arg1].field_512)
}

function queuePayment(bytes arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    if msg.value < 10^17:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        return 0
    stor4[stor3].field_0 = arg1.length
    if not arg1.length:
        idx = 0
        while stor4[stor3].field_0 + 31 / 32 > idx:
            stor4[stor3][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg1.length + 128 > idx:
            stor4[stor3][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg1.length + 31) >> 5
        while stor4[stor3].field_0 + 31 / 32 > idx:
            stor4[stor3][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor4[stor3].field_256 = msg.value
    stor4[stor3].field_512 = msg.sender or Mask(96, 160, stor4[stor3].field_512)
    emit Queued(sub_c31bfcbb);
    sub_c31bfcbb++
    return 1
}

function sub_f010264a(?) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    if stor0 != msg.sender:
        return 0
    if sub_86086ba8 >= sub_c31bfcbb:
        return 0
    if arg1 != sub_86086ba8:
        return 0
    if arg3 != stor4[arg1].field_256:
        return 0
    if stor4[arg1].field_0 != arg2.length:
        return 0
    mem[0] = arg1
    mem[32] = 4
    idx = 0
    while uint8(idx) < stor4[arg1].field_0:
        require idx < arg2.length
        require idx < stor[sha3(mem[0 len 64])].field_0
        if Mask(8, -(('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 0)), ('sha3', ('sha3', ('mem', ('range', 0, 64))))))), 0) + 256, idx % 32) << (('field', 3, ('stor', ('add', ('div', 0.03125, ('var', 0)), ('sha3', ('sha3', ('mem', ('range', 0, 64))))))), 0) - 8 != Mask(8, 248, mem[idx + 128]):
            return 0
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        continue 
    call arg4 with:
       value 5 * 10^15 wei
         gas 0 wei
    call arg5 with:
       value arg3 - 5 * 10^15 wei
         gas 0 wei
    sub_86086ba8++
    stor4[arg1].field_0 = 0
    s = 0
    while sha3(sha3(arg1, 4)) + (stor4[arg1].field_0 + 31 / 32) > None:
        stor[None].field_0 = 0
        s = None + 1
        continue 
    stor4[arg1].field_256 = 0
    address(stor4[arg1].field_512) = 0
    return 1
}



}

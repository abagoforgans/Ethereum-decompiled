contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1284]




// =====================  Runtime code  =====================


array of struct sub_1b3e24ff;

function sub_1b3e24ff(?) payable {
    return sub_1b3e24ff[address(arg1)][arg2].field_256
}

function _fallback() payable {
  stop
}

function sub_9cf6d236(?) payable {
    if sub_1b3e24ff[address(arg1)][arg2].field_0:
        mem[160] = sub_1b3e24ff[address(arg1)][arg2].field_0
        idx = 160
        s = 0
        while sub_1b3e24ff[address(arg1)][arg2].field_0 + 128 > idx:
            mem[idx + 32] = sub_1b3e24ff[address(arg1)][arg2][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=sub_1b3e24ff[address(arg1)][arg2].field_0, data=mem[160 len sub_1b3e24ff[address(arg1)][arg2].field_0])
}

function sub_aac438c0(?) payable {
    mem[128 len arg2.length] = arg2[all]
    sub_1b3e24ff[tx.origin][arg1].field_0 = arg2.length
    if not arg2.length:
        idx = 0
        while sub_1b3e24ff[tx.origin][arg1].field_0 + 31 / 32 > idx:
            sub_1b3e24ff[tx.origin][arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg2.length + 128 > idx:
            sub_1b3e24ff[tx.origin][arg1][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while sub_1b3e24ff[tx.origin][arg1].field_0 + 31 / 32 > idx:
            sub_1b3e24ff[tx.origin][arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_1b3e24ff[tx.origin][arg1].field_256 = block.timestamp
}

function sub_3e92cb74(?) payable {
    mem[128 len arg2.length] = arg2[all]
    sub_1b3e24ff[address(msg.sender)][arg1].field_0 = arg2.length
    if not arg2.length:
        idx = 0
        while sub_1b3e24ff[address(msg.sender)][arg1].field_0 + 31 / 32 > idx:
            sub_1b3e24ff[address(msg.sender)][arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg2.length + 128 > idx:
            sub_1b3e24ff[address(msg.sender)][arg1][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while sub_1b3e24ff[address(msg.sender)][arg1].field_0 + 31 / 32 > idx:
            sub_1b3e24ff[address(msg.sender)][arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_1b3e24ff[address(msg.sender)][arg1].field_256 = block.timestamp
}



}

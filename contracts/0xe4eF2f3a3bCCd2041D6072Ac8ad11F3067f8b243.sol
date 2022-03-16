contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[64 len 1304]
}



// =====================  Runtime code  =====================


address stor0;
array of struct sub_17ab0aa5;

function sub_17ab0aa5(?) payable {
    return sub_17ab0aa5[address(arg1)].field_256
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_812fd9a3(?) payable {
    if sub_17ab0aa5[address(arg1)].field_0:
        mem[160] = sub_17ab0aa5[address(arg1)].field_0
        idx = 160
        s = 0
        while sub_17ab0aa5[address(arg1)].field_0 + 128 > idx:
            mem[idx + 32] = sub_17ab0aa5[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=sub_17ab0aa5[address(arg1)].field_0, data=mem[160 len sub_17ab0aa5[address(arg1)].field_0])
}

function sub_df6ae572(?) payable {
    mem[128 len arg2.length] = arg2[all]
    if msg.sender == stor0:
        mem[ceil32(arg2.length) + 128] = 96
        sub_17ab0aa5[address(arg1)].field_0 = arg2.length
        if not arg2.length:
            idx = 0
            while sub_17ab0aa5[address(arg1)].field_0 + 31 / 32 > idx:
                sub_17ab0aa5[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while arg2.length + 128 > idx:
                sub_17ab0aa5[address(arg1)][s].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg2.length + 31) >> 5
            while sub_17ab0aa5[address(arg1)].field_0 + 31 / 32 > idx:
                sub_17ab0aa5[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
        sub_17ab0aa5[address(arg1)].field_256 = arg3
        return (msg.sender == stor0)
    if msg.sender == arg1:
        mem[ceil32(arg2.length) + 128] = 96
        sub_17ab0aa5[address(arg1)].field_0 = arg2.length
        if not arg2.length:
            idx = 0
            while sub_17ab0aa5[address(arg1)].field_0 + 31 / 32 > idx:
                sub_17ab0aa5[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while arg2.length + 128 > idx:
                sub_17ab0aa5[address(arg1)][s].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg2.length + 31) >> 5
            while sub_17ab0aa5[address(arg1)].field_0 + 31 / 32 > idx:
                sub_17ab0aa5[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
        sub_17ab0aa5[address(arg1)].field_256 = arg3
    return (msg.sender == arg1)
}

function sub_c62a9fbe(?) payable {
    mem[128 len arg1.length] = arg1[all]
    if msg.sender == stor0:
        mem[ceil32(arg1.length) + 128] = 96
        sub_17ab0aa5[address(msg.sender)].field_0 = arg1.length
        if not arg1.length:
            idx = 0
            while sub_17ab0aa5[address(msg.sender)].field_0 + 31 / 32 > idx:
                sub_17ab0aa5[address(msg.sender)][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while arg1.length + 128 > idx:
                sub_17ab0aa5[address(msg.sender)][s].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while sub_17ab0aa5[address(msg.sender)].field_0 + 31 / 32 > idx:
                sub_17ab0aa5[address(msg.sender)][idx].field_0 = 0
                idx = idx + 1
                continue 
        sub_17ab0aa5[address(msg.sender)].field_256 = arg2
        return (msg.sender == stor0)
    if msg.sender == msg.sender:
        mem[ceil32(arg1.length) + 128] = 96
        sub_17ab0aa5[address(msg.sender)].field_0 = arg1.length
        if not arg1.length:
            idx = 0
            while sub_17ab0aa5[address(msg.sender)].field_0 + 31 / 32 > idx:
                sub_17ab0aa5[address(msg.sender)][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while arg1.length + 128 > idx:
                sub_17ab0aa5[address(msg.sender)][s].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while sub_17ab0aa5[address(msg.sender)].field_0 + 31 / 32 > idx:
                sub_17ab0aa5[address(msg.sender)][idx].field_0 = 0
                idx = idx + 1
                continue 
        sub_17ab0aa5[address(msg.sender)].field_256 = arg2
    return (msg.sender == msg.sender)
}



}

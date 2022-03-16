contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 2012]




// =====================  Runtime code  =====================


mapping of uint256 stor0;
array of struct stor1;

function _fallback() payable {
  stop
}

function Join(uint256 arg1) payable {
    if arg1 < 1:
        return 0
    if stor0[address(msg.sender)] > 0:
        return 0
    stor0[address(msg.sender)] = arg1
    return 1
}

function sub_4115ae40(?) payable {
    if stor0[address(arg1)] <= 0:
        return 0
    s = 80
    idx = 0
    while idx < stor1[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 1)
        if stor1[address(arg1)][idx].field_2048 >= s:
            s = s
            idx = idx + 1
            continue 
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        s = stor1[address(arg1)][idx].field_2048
        idx = idx + 1
        continue 
    return s
}

function sub_ea64fff6(?) payable {
    if stor0[address(arg1)] > 0:
        idx = 0
        while idx < stor1[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 1)
            if stor1[address(arg1)][idx].field_0 == arg2:
                require idx < stor1[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 1)
                if var18005 < 7:
                    require idx < stor1[address(arg1)].field_0
                    require var20003 < 7
                    require idx < stor1[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 1)
                    t = var20002
                    s = var20003
                    while s + 1 < 7:
                        require idx < stor1[address(arg1)].field_0
                        require s + 1 < 7
                        require idx < stor1[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 1)
                        t = t + stor[s + (9 * idx) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1))].field_256
                        s = s + 1
                        continue 
            idx = idx + 1
            continue 
        return 0
    else:
        return 0
}

function sub_18c6331d(?) payable {
    mem[96 len 224] = call.data[68 len 224]
    if stor1[address(msg.sender)].field_0 < 1:
        return 0
    s = 0
    idx = 0
    while idx < stor1[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 1)
        if stor1[address(msg.sender)][idx].field_0 != arg1:
            s = s
            idx = idx + 1
            continue 
        s = 1
        idx = idx + 1
        continue 
    if s:
        return 0
    stor1[address(msg.sender)].field_0++
    if not stor1[address(msg.sender)].field_0 <= stor1[address(msg.sender)].field_0 + 1:
        idx = (9 * stor1[address(msg.sender)].field_0) + 9
        while 9 * stor1[address(msg.sender)].field_0 > idx:
            stor1[address(msg.sender)][idx].field_0 = 0
            s = s + sha3(sha3(address(msg.sender), 1)) + 1
            while 1:
                stor1[address(msg.sender)][s].field_0 = 0
                s = s + 1
                continue 
            stor1[address(msg.sender)][s].field_2048 = 0
            s = s + 1
            continue 
    require stor1[address(msg.sender)].field_0 < stor1[address(msg.sender)].field_0
    stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_0 = arg1
    require stor1[address(msg.sender)].field_0 < stor1[address(msg.sender)].field_0
    s = (9 * stor1[address(msg.sender)].field_0) + 1
    idx = 96
    while 320 > idx:
        stor1[address(msg.sender)][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (9 * stor1[address(msg.sender)].field_0) + 8
    while (9 * stor1[address(msg.sender)].field_0) + 8 > idx:
        stor1[address(msg.sender)][idx].field_0 = 0
        idx = idx + 1
        continue 
    require stor1[address(msg.sender)].field_0 < stor1[address(msg.sender)].field_0
    stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_2048 = arg2
    return 1
}



}

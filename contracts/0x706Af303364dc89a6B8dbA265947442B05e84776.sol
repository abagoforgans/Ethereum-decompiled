contract main {


// =======================  Init code  ======================


address stor0;
address stor2;

function _fallback() payable {
    stor0 = 0x8344a845b76c02797fbf3185cc852957d148b8c3
    stor2 = 0
    return code.data[161 len 5100]
}



// =====================  Runtime code  =====================


address stor0;
address stor2;
array of uint256 stor99;

function showBurnedCoins(address arg1) {
    return showBurnedCoins[address(arg1)].field_2048
}

function viewReputation(address arg1) {
    emit _viewedReputation(showBurnedCoins[address(arg1)].field_512, showBurnedCoins[address(arg1)].field_2048, showBurnedCoins[address(arg1)].field_2304, arg1, showBurnedCoins[address(arg1)].field_0, showBurnedCoins[address(arg1)].field_256);
    return showBurnedCoins[address(arg1)].field_0, 
           showBurnedCoins[address(arg1)].field_256,
           showBurnedCoins[address(arg1)].field_512,
           showBurnedCoins[address(arg1)].field_2048,
           showBurnedCoins[address(arg1)].field_2304
}

function _fallback() {
    require msg.value == 10^15
}

function burnedBitcoin(address arg1, uint256 arg2) {
    require msg.sender == 0x41f274c0023f83391de4e0733c609df5a124c3d4
    showBurnedCoins[address(arg1)].field_2304 += arg2
    return (showBurnedCoins[address(arg1)].field_2304 + arg2)
}

function burnCoins() {
    call stor2 with:
       value 90 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor0 with:
       value msg.value / 10 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    showBurnedCoins[address(msg.sender)].field_2048 += msg.value
    emit _coinsBurned(msg.sender, msg.value);
    return showBurnedCoins[address(msg.sender)].field_2048
}

function addUser(string arg1, string arg2) {
    showBurnedCoins[address(msg.sender)].field_0 = 0
    showBurnedCoins[address(msg.sender)].field_256 = 0
    showBurnedCoins[address(msg.sender)].field_512 = 0
    showBurnedCoins[address(msg.sender)][3][].field_0 = Array(len=arg1.length, data=arg1[all])
    showBurnedCoins[address(msg.sender)][4][].field_0 = Array(len=arg2.length, data=arg2[all])
    emit _addUser(sha3(arg1[all]), sha3(arg2[all]), msg.sender);
    return Array(len=arg1.length, data=arg1[all])
}

function trade(address arg1) {
    if arg1 != msg.sender:
        showBurnedCoins[address(arg1)].field_1536++
        if not showBurnedCoins[address(arg1)].field_1536 <= showBurnedCoins[address(arg1)].field_1536 + 1:
            idx = showBurnedCoins[address(arg1)].field_1536 + 1
            while showBurnedCoins[address(arg1)].field_1536 > idx:
                showBurnedCoins[address(arg1)][idx + 6].field_0 = 0
                idx = idx + 1
                continue 
        address(stor[showBurnedCoins[address(arg1)].field_1536 + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'showBurnedCoins', 1)))].field_0) = msg.sender
        showBurnedCoins[address(arg1)].field_1792++
        if not showBurnedCoins[address(arg1)].field_1792 <= showBurnedCoins[address(arg1)].field_1792 + 1:
            idx = showBurnedCoins[address(arg1)].field_1792 + 32 / 32
            while showBurnedCoins[address(arg1)].field_1792 + 31 / 32 > idx:
                showBurnedCoins[address(arg1)][idx + 7].field_0 = 0
                idx = idx + 1
                continue 
        stor[Mask(251, 0, showBurnedCoins[address(arg1)].field_1797) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'showBurnedCoins', 1)))].field_0 = !(255 * 256^showBurnedCoins[address(arg1)].field_1792 % 32) and stor[Mask(251, 0, showBurnedCoins[address(arg1)].field_1797) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'showBurnedCoins', 1)))].field_0
        emit _newTrade(arg1, msg.sender);
}

function giveReputation(address arg1, bool arg2, string arg3) {
    mem[64] = ceil32(arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[0] = arg1
    mem[32] = 1
    idx = 0
    while idx < showBurnedCoins[address(arg1)].field_1536:
        require idx < showBurnedCoins[address(arg1)].field_1536
        if address(showBurnedCoins[address(arg1)][idx + 6].field_0) == msg.sender:
            require idx < showBurnedCoins[address(arg1)].field_1792
            if not stor((0.03125 / idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor1', 1))))[uint8(idx)]:
                if not arg2:
                    showBurnedCoins[address(arg1)].field_256++
                    showBurnedCoins[address(arg1)].field_1280++
                    if not showBurnedCoins[address(arg1)].field_1280 <= showBurnedCoins[address(arg1)].field_1280 + 1:
                        mem[0] = sha3(address(arg1), 1) + 5
                        s = sha3(mem[0]) + showBurnedCoins[address(arg1)].field_1280 + 1
                        while sha3(sha3(address(arg1), 1) + 5) + showBurnedCoins[address(arg1)].field_1280 > s:
                            stor[s] = 0
                            if 31 < stor[s].length:
                                mem[0] = s
                                t = sha3(mem[0])
                                while sha3(s) + (stor[s].length + 31 / 32) > t:
                                    stor[t] = 0
                                    mem[0] = arg1
                                    mem[32] = 1
                                    t = t + 1
                                    continue 
                            mem[0] = arg1
                            mem[32] = 1
                            s = s + 1
                            continue 
                    mem[0] = showBurnedCoins[address(arg1)].field_1280 + sha3(sha3(address(arg1), 1) + 5)
                    stor[showBurnedCoins[address(arg1)].field_1280 + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'showBurnedCoins', 1)))].field_0 = (2 * arg3.length) + 1
                    t = sha3(mem[0])
                    s = 128
                    while arg3.length + 128 > s:
                        stor[t] = mem[s]
                        mem[0] = arg1
                        mem[32] = 1
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(mem[0]) + (Mask(251, 0, arg3.length + 31) >> 5)
                    while sha3(showBurnedCoins[address(arg1)].field_1280 + sha3(sha3(address(arg1), 1) + 5)) + (stor[showBurnedCoins[address(arg1)].field_1280 + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'showBurnedCoins', 1)))].length + 31 / 32) > s:
                        stor[s] = 0
                        mem[0] = arg1
                        mem[32] = 1
                        s = s + 1
                        continue 
                    mem[ceil32(arg3.length) + 128 len arg3.length] = arg3[all]
                    emit _negativeReputation(arg1, sha3(arg3[all]));
                else:
                    showBurnedCoins[address(arg1)].field_0++
                    showBurnedCoins[address(arg1)].field_1280++
                    if not showBurnedCoins[address(arg1)].field_1280 <= showBurnedCoins[address(arg1)].field_1280 + 1:
                        mem[0] = sha3(address(arg1), 1) + 5
                        s = sha3(mem[0]) + showBurnedCoins[address(arg1)].field_1280 + 1
                        while sha3(sha3(address(arg1), 1) + 5) + showBurnedCoins[address(arg1)].field_1280 > s:
                            stor[s] = 0
                            if 31 < stor[s].length:
                                mem[0] = s
                                t = sha3(mem[0])
                                while sha3(s) + (stor[s].length + 31 / 32) > t:
                                    stor[t] = 0
                                    mem[0] = arg1
                                    mem[32] = 1
                                    t = t + 1
                                    continue 
                            mem[0] = arg1
                            mem[32] = 1
                            s = s + 1
                            continue 
                    mem[0] = showBurnedCoins[address(arg1)].field_1280 + sha3(sha3(address(arg1), 1) + 5)
                    stor[showBurnedCoins[address(arg1)].field_1280 + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'showBurnedCoins', 1)))].field_0 = (2 * arg3.length) + 1
                    t = sha3(mem[0])
                    s = 128
                    while arg3.length + 128 > s:
                        stor[t] = mem[s]
                        mem[0] = arg1
                        mem[32] = 1
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(mem[0]) + (Mask(251, 0, arg3.length + 31) >> 5)
                    while sha3(showBurnedCoins[address(arg1)].field_1280 + sha3(sha3(address(arg1), 1) + 5)) + (stor[showBurnedCoins[address(arg1)].field_1280 + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'showBurnedCoins', 1)))].length + 31 / 32) > s:
                        stor[s] = 0
                        mem[0] = arg1
                        mem[32] = 1
                        s = s + 1
                        continue 
                    mem[ceil32(arg3.length) + 128 len arg3.length] = arg3[all]
                    emit _positiveReputation(arg1, sha3(arg3[all]));
        mem[0] = arg1
        mem[32] = 1
        idx = idx + 1
        continue 
}



}

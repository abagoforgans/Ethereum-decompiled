contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
address owner;
uint256 times;
uint256 sub_91e835d6;
uint256 sub_388e7117;
array of struct sub_249fcc70;
array of struct sub_75d838c3;

function sub_249fcc70(?) {
    require arg1 < sub_249fcc70.length
    return sub_249fcc70[arg1].field_0, sub_249fcc70[arg1].field_256, sub_249fcc70[arg1].field_512
}

function sub_388e7117(?) {
    return sub_388e7117
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_75d838c3(?) {
    require arg1 < sub_75d838c3.length
    return sub_75d838c3[arg1].field_0, sub_75d838c3[arg1].field_256, sub_75d838c3[arg1].field_512
}

function owner() {
    return owner
}

function sub_91e835d6(?) {
    return sub_91e835d6
}

function times() {
    return times
}

function _fallback() payable {
    revert
}

function getInfo(uint256 arg1) {
    if arg1 == 1:
        return sub_249fcc70.length
    if arg1:
        return 0
    return sub_75d838c3.length
}

function withdrawFunds(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 >= 0
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit FailedPayment(arg1, msg.sender);
    else:
        emit Payment(arg1, msg.sender);
        require arg1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg1
}

function odds(uint256 arg1) {
    if not sub_388e7117:
        return 0
    if not sub_91e835d6:
        return 0
    if arg1 == 1:
        require sub_388e7117 + sub_91e835d6 >= sub_388e7117
        if sub_91e835d6:
            return (99 * (10000 * sub_388e7117) + (10000 * sub_91e835d6) / sub_91e835d6 / 100)
    else:
        if arg1:
            return 0
        require sub_388e7117 + sub_91e835d6 >= sub_388e7117
        if sub_388e7117:
            return (99 * (10000 * sub_388e7117) + (10000 * sub_91e835d6) / sub_388e7117 / 100)
    revert
}

function placeBet(uint256 arg1) payable {
    require msg.value >= 10^16
    if arg1 == 1:
        sub_249fcc70.length++
        sub_249fcc70[sub_249fcc70.length].field_0 = msg.value
        sub_249fcc70[sub_249fcc70.length].field_256 = 1
        sub_249fcc70[sub_249fcc70.length].field_512 = msg.sender
        require sub_91e835d6 + msg.value >= sub_91e835d6
        sub_91e835d6 += msg.value
    if not arg1:
        sub_75d838c3.length++
        sub_75d838c3[sub_75d838c3.length].field_0 = msg.value
        sub_75d838c3[sub_75d838c3.length].field_256 = 0
        sub_75d838c3[sub_75d838c3.length].field_512 = msg.sender
        require sub_388e7117 + msg.value >= sub_388e7117
        sub_388e7117 += msg.value
    require sub_249fcc70.length + sub_75d838c3.length >= sub_249fcc70.length
    if sub_249fcc70.length + sub_75d838c3.length >= 20:
        times++
        if not sub_388e7117:
            idx = 0
            while idx < sub_249fcc70.length:
                require balanceOf[stor5[idx].field_512] + sub_249fcc70[idx].field_0 >= balanceOf[stor5[idx].field_512]
                require idx < sub_249fcc70.length
                mem[0] = sub_249fcc70[idx].field_512
                mem[32] = 0
                balanceOf[stor5[idx].field_512] += sub_249fcc70[idx].field_0
                idx = idx + 1
                continue 
            idx = 0
            while idx < sub_75d838c3.length:
                require balanceOf[stor6[idx].field_512] + sub_75d838c3[idx].field_0 >= balanceOf[stor6[idx].field_512]
                require idx < sub_75d838c3.length
                mem[0] = sub_75d838c3[idx].field_512
                mem[32] = 0
                balanceOf[stor6[idx].field_512] += sub_75d838c3[idx].field_0
                idx = idx + 1
                continue 
            emit 0x75321818: 100, times
        else:
            if not sub_91e835d6:
                idx = 0
                while idx < sub_249fcc70.length:
                    require balanceOf[stor5[idx].field_512] + sub_249fcc70[idx].field_0 >= balanceOf[stor5[idx].field_512]
                    require idx < sub_249fcc70.length
                    mem[0] = sub_249fcc70[idx].field_512
                    mem[32] = 0
                    balanceOf[stor5[idx].field_512] += sub_249fcc70[idx].field_0
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < sub_75d838c3.length:
                    require balanceOf[stor6[idx].field_512] + sub_75d838c3[idx].field_0 >= balanceOf[stor6[idx].field_512]
                    require idx < sub_75d838c3.length
                    mem[0] = sub_75d838c3[idx].field_512
                    mem[32] = 0
                    balanceOf[stor6[idx].field_512] += sub_75d838c3[idx].field_0
                    idx = idx + 1
                    continue 
                emit 0x75321818: 100, times
            else:
                if sub_249fcc70.length <= 0:
                    if sub_75d838c3.length <= 0:
                        if sha3(block.timestamp, msg.sender, sha3(block.timestamp, msg.sender, 2 * sub_388e7117) % 100) % 100 < 50:
                            idx = 0
                            while idx < sub_75d838c3.length:
                                if not sub_388e7117:
                                    require idx < sub_75d838c3.length
                                    require idx < sub_75d838c3.length
                                    require balanceOf[stor6[idx].field_512] >= balanceOf[stor6[idx].field_512]
                                    require idx < sub_75d838c3.length
                                    mem[0] = sub_75d838c3[idx].field_512
                                    mem[32] = 0
                                else:
                                    if not sub_91e835d6:
                                        require idx < sub_75d838c3.length
                                        require idx < sub_75d838c3.length
                                        require balanceOf[stor6[idx].field_512] >= balanceOf[stor6[idx].field_512]
                                        require idx < sub_75d838c3.length
                                        mem[0] = sub_75d838c3[idx].field_512
                                        mem[32] = 0
                                    else:
                                        require sub_388e7117 + sub_91e835d6 >= sub_388e7117
                                        require sub_388e7117
                                        require idx < sub_75d838c3.length
                                        require idx < sub_75d838c3.length
                                        require balanceOf[stor6[idx].field_512] + (sub_75d838c3[idx].field_0 * 99 * (10000 * sub_388e7117) + (10000 * sub_91e835d6) / sub_388e7117 / 100 / 10000) >= balanceOf[stor6[idx].field_512]
                                        require idx < sub_75d838c3.length
                                        mem[0] = sub_75d838c3[idx].field_512
                                        mem[32] = 0
                                        balanceOf[stor6[idx].field_512] += sub_75d838c3[idx].field_0 * 99 * (10000 * sub_388e7117) + (10000 * sub_91e835d6) / sub_388e7117 / 100 / 10000
                                idx = idx + 1
                                continue 
                        else:
                            idx = 0
                            while idx < sub_249fcc70.length:
                                if not sub_388e7117:
                                    require idx < sub_249fcc70.length
                                    require idx < sub_249fcc70.length
                                    require balanceOf[stor5[idx].field_512] >= balanceOf[stor5[idx].field_512]
                                    require idx < sub_249fcc70.length
                                    mem[0] = sub_249fcc70[idx].field_512
                                    mem[32] = 0
                                else:
                                    if not sub_91e835d6:
                                        require idx < sub_249fcc70.length
                                        require idx < sub_249fcc70.length
                                        require balanceOf[stor5[idx].field_512] >= balanceOf[stor5[idx].field_512]
                                        require idx < sub_249fcc70.length
                                        mem[0] = sub_249fcc70[idx].field_512
                                        mem[32] = 0
                                    else:
                                        require sub_388e7117 + sub_91e835d6 >= sub_388e7117
                                        require sub_91e835d6
                                        require idx < sub_249fcc70.length
                                        require idx < sub_249fcc70.length
                                        require balanceOf[stor5[idx].field_512] + (sub_249fcc70[idx].field_0 * 99 * (10000 * sub_388e7117) + (10000 * sub_91e835d6) / sub_91e835d6 / 100 / 10000) >= balanceOf[stor5[idx].field_512]
                                        require idx < sub_249fcc70.length
                                        mem[0] = sub_249fcc70[idx].field_512
                                        mem[32] = 0
                                        balanceOf[stor5[idx].field_512] += sub_249fcc70[idx].field_0 * 99 * (10000 * sub_388e7117) + (10000 * sub_91e835d6) / sub_91e835d6 / 100 / 10000
                                idx = idx + 1
                                continue 
                        require balanceOf[stor1] + (sub_388e7117 + sub_91e835d6 / 100) >= balanceOf[stor1]
                        balanceOf[stor1] += sub_388e7117 + sub_91e835d6 / 100
                        emit 0x75321818: sha3(block.timestamp, msg.sender, sha3(block.timestamp, msg.sender, 2 * sub_388e7117) % 100) % 100, times
                    else:
                        require sub_249fcc70.length - 1 < sub_75d838c3.length
                        if sha3(block.timestamp, sub_75d838c3[stor5.length].field_0, sha3(block.timestamp, msg.sender, 2 * sub_388e7117) % 100) % 100 < 50:
                            idx = 0
                            while idx < sub_75d838c3.length:
                                if not sub_388e7117:
                                    require idx < sub_75d838c3.length
                                    require idx < sub_75d838c3.length
                                    require balanceOf[stor6[idx].field_512] >= balanceOf[stor6[idx].field_512]
                                    require idx < sub_75d838c3.length
                                    mem[0] = sub_75d838c3[idx].field_512
                                    mem[32] = 0
                                else:
                                    if not sub_91e835d6:
                                        require idx < sub_75d838c3.length
                                        require idx < sub_75d838c3.length
                                        require balanceOf[stor6[idx].field_512] >= balanceOf[stor6[idx].field_512]
                                        require idx < sub_75d838c3.length
                                        mem[0] = sub_75d838c3[idx].field_512
                                        mem[32] = 0
                                    else:
                                        require sub_388e7117 + sub_91e835d6 >= sub_388e7117
                                        require sub_388e7117
                                        require idx < sub_75d838c3.length
                                        require idx < sub_75d838c3.length
                                        require balanceOf[stor6[idx].field_512] + (sub_75d838c3[idx].field_0 * 99 * (10000 * sub_388e7117) + (10000 * sub_91e835d6) / sub_388e7117 / 100 / 10000) >= balanceOf[stor6[idx].field_512]
                                        require idx < sub_75d838c3.length
                                        mem[0] = sub_75d838c3[idx].field_512
                                        mem[32] = 0
                                        balanceOf[stor6[idx].field_512] += sub_75d838c3[idx].field_0 * 99 * (10000 * sub_388e7117) + (10000 * sub_91e835d6) / sub_388e7117 / 100 / 10000
                                idx = idx + 1
                                continue 
                        else:
                            idx = 0
                            while idx < sub_249fcc70.length:
                                if not sub_388e7117:
                                    require idx < sub_249fcc70.length
                                    require idx < sub_249fcc70.length
                                    require balanceOf[stor5[idx].field_512] >= balanceOf[stor5[idx].field_512]
                                    require idx < sub_249fcc70.length
                                    mem[0] = sub_249fcc70[idx].field_512
                                    mem[32] = 0
                                else:
                                    if not sub_91e835d6:
                                        require idx < sub_249fcc70.length
                                        require idx < sub_249fcc70.length
                                        require balanceOf[stor5[idx].field_512] >= balanceOf[stor5[idx].field_512]
                                        require idx < sub_249fcc70.length
                                        mem[0] = sub_249fcc70[idx].field_512
                                        mem[32] = 0
                                    else:
                                        require sub_388e7117 + sub_91e835d6 >= sub_388e7117
                                        require sub_91e835d6
                                        require idx < sub_249fcc70.length
                                        require idx < sub_249fcc70.length
                                        require balanceOf[stor5[idx].field_512] + (sub_249fcc70[idx].field_0 * 99 * (10000 * sub_388e7117) + (10000 * sub_91e835d6) / sub_91e835d6 / 100 / 10000) >= balanceOf[stor5[idx].field_512]
                                        require idx < sub_249fcc70.length
                                        mem[0] = sub_249fcc70[idx].field_512
                                        mem[32] = 0
                                        balanceOf[stor5[idx].field_512] += sub_249fcc70[idx].field_0 * 99 * (10000 * sub_388e7117) + (10000 * sub_91e835d6) / sub_91e835d6 / 100 / 10000
                                idx = idx + 1
                                continue 
                        require balanceOf[stor1] + (sub_388e7117 + sub_91e835d6 / 100) >= balanceOf[stor1]
                        balanceOf[stor1] += sub_388e7117 + sub_91e835d6 / 100
                        emit 0x75321818: sha3(block.timestamp, sub_75d838c3[stor5.length].field_0, sha3(block.timestamp, msg.sender, 2 * sub_388e7117) % 100) % 100, times
                else:
                    require sub_249fcc70.length - 1 < sub_249fcc70.length
                    if sub_75d838c3.length <= 0:
                        if sha3(block.timestamp, msg.sender, sha3(block.timestamp, sub_249fcc70[sub_249fcc70.length].field_0, 2 * sub_388e7117) % 100) % 100 < 50:
                            idx = 0
                            while idx < sub_75d838c3.length:
                                if not sub_388e7117:
                                    require idx < sub_75d838c3.length
                                    require idx < sub_75d838c3.length
                                    require balanceOf[stor6[idx].field_512] >= balanceOf[stor6[idx].field_512]
                                    require idx < sub_75d838c3.length
                                    mem[0] = sub_75d838c3[idx].field_512
                                    mem[32] = 0
                                else:
                                    if not sub_91e835d6:
                                        require idx < sub_75d838c3.length
                                        require idx < sub_75d838c3.length
                                        require balanceOf[stor6[idx].field_512] >= balanceOf[stor6[idx].field_512]
                                        require idx < sub_75d838c3.length
                                        mem[0] = sub_75d838c3[idx].field_512
                                        mem[32] = 0
                                    else:
                                        require sub_388e7117 + sub_91e835d6 >= sub_388e7117
                                        require sub_388e7117
                                        require idx < sub_75d838c3.length
                                        require idx < sub_75d838c3.length
                                        require balanceOf[stor6[idx].field_512] + (sub_75d838c3[idx].field_0 * 99 * (10000 * sub_388e7117) + (10000 * sub_91e835d6) / sub_388e7117 / 100 / 10000) >= balanceOf[stor6[idx].field_512]
                                        require idx < sub_75d838c3.length
                                        mem[0] = sub_75d838c3[idx].field_512
                                        mem[32] = 0
                                        balanceOf[stor6[idx].field_512] += sub_75d838c3[idx].field_0 * 99 * (10000 * sub_388e7117) + (10000 * sub_91e835d6) / sub_388e7117 / 100 / 10000
                                idx = idx + 1
                                continue 
                        else:
                            idx = 0
                            while idx < sub_249fcc70.length:
                                if not sub_388e7117:
                                    require idx < sub_249fcc70.length
                                    require idx < sub_249fcc70.length
                                    require balanceOf[stor5[idx].field_512] >= balanceOf[stor5[idx].field_512]
                                    require idx < sub_249fcc70.length
                                    mem[0] = sub_249fcc70[idx].field_512
                                    mem[32] = 0
                                else:
                                    if not sub_91e835d6:
                                        require idx < sub_249fcc70.length
                                        require idx < sub_249fcc70.length
                                        require balanceOf[stor5[idx].field_512] >= balanceOf[stor5[idx].field_512]
                                        require idx < sub_249fcc70.length
                                        mem[0] = sub_249fcc70[idx].field_512
                                        mem[32] = 0
                                    else:
                                        require sub_388e7117 + sub_91e835d6 >= sub_388e7117
                                        require sub_91e835d6
                                        require idx < sub_249fcc70.length
                                        require idx < sub_249fcc70.length
                                        require balanceOf[stor5[idx].field_512] + (sub_249fcc70[idx].field_0 * 99 * (10000 * sub_388e7117) + (10000 * sub_91e835d6) / sub_91e835d6 / 100 / 10000) >= balanceOf[stor5[idx].field_512]
                                        require idx < sub_249fcc70.length
                                        mem[0] = sub_249fcc70[idx].field_512
                                        mem[32] = 0
                                        balanceOf[stor5[idx].field_512] += sub_249fcc70[idx].field_0 * 99 * (10000 * sub_388e7117) + (10000 * sub_91e835d6) / sub_91e835d6 / 100 / 10000
                                idx = idx + 1
                                continue 
                        require balanceOf[stor1] + (sub_388e7117 + sub_91e835d6 / 100) >= balanceOf[stor1]
                        balanceOf[stor1] += sub_388e7117 + sub_91e835d6 / 100
                        emit 0x75321818: sha3(block.timestamp, msg.sender, sha3(block.timestamp, sub_249fcc70[sub_249fcc70.length].field_0, 2 * sub_388e7117) % 100) % 100, times
                    else:
                        require sub_249fcc70.length - 1 < sub_75d838c3.length
                        if sha3(block.timestamp, sub_75d838c3[stor5.length].field_0, sha3(block.timestamp, sub_249fcc70[sub_249fcc70.length].field_0, 2 * sub_388e7117) % 100) % 100 < 50:
                            idx = 0
                            while idx < sub_75d838c3.length:
                                if not sub_388e7117:
                                    require idx < sub_75d838c3.length
                                    require idx < sub_75d838c3.length
                                    require balanceOf[stor6[idx].field_512] >= balanceOf[stor6[idx].field_512]
                                    require idx < sub_75d838c3.length
                                    mem[0] = sub_75d838c3[idx].field_512
                                    mem[32] = 0
                                else:
                                    if not sub_91e835d6:
                                        require idx < sub_75d838c3.length
                                        require idx < sub_75d838c3.length
                                        require balanceOf[stor6[idx].field_512] >= balanceOf[stor6[idx].field_512]
                                        require idx < sub_75d838c3.length
                                        mem[0] = sub_75d838c3[idx].field_512
                                        mem[32] = 0
                                    else:
                                        require sub_388e7117 + sub_91e835d6 >= sub_388e7117
                                        require sub_388e7117
                                        require idx < sub_75d838c3.length
                                        require idx < sub_75d838c3.length
                                        require balanceOf[stor6[idx].field_512] + (sub_75d838c3[idx].field_0 * 99 * (10000 * sub_388e7117) + (10000 * sub_91e835d6) / sub_388e7117 / 100 / 10000) >= balanceOf[stor6[idx].field_512]
                                        require idx < sub_75d838c3.length
                                        mem[0] = sub_75d838c3[idx].field_512
                                        mem[32] = 0
                                        balanceOf[stor6[idx].field_512] += sub_75d838c3[idx].field_0 * 99 * (10000 * sub_388e7117) + (10000 * sub_91e835d6) / sub_388e7117 / 100 / 10000
                                idx = idx + 1
                                continue 
                        else:
                            idx = 0
                            while idx < sub_249fcc70.length:
                                if not sub_388e7117:
                                    require idx < sub_249fcc70.length
                                    require idx < sub_249fcc70.length
                                    require balanceOf[stor5[idx].field_512] >= balanceOf[stor5[idx].field_512]
                                    require idx < sub_249fcc70.length
                                    mem[0] = sub_249fcc70[idx].field_512
                                    mem[32] = 0
                                else:
                                    if not sub_91e835d6:
                                        require idx < sub_249fcc70.length
                                        require idx < sub_249fcc70.length
                                        require balanceOf[stor5[idx].field_512] >= balanceOf[stor5[idx].field_512]
                                        require idx < sub_249fcc70.length
                                        mem[0] = sub_249fcc70[idx].field_512
                                        mem[32] = 0
                                    else:
                                        require sub_388e7117 + sub_91e835d6 >= sub_388e7117
                                        require sub_91e835d6
                                        require idx < sub_249fcc70.length
                                        require idx < sub_249fcc70.length
                                        require balanceOf[stor5[idx].field_512] + (sub_249fcc70[idx].field_0 * 99 * (10000 * sub_388e7117) + (10000 * sub_91e835d6) / sub_91e835d6 / 100 / 10000) >= balanceOf[stor5[idx].field_512]
                                        require idx < sub_249fcc70.length
                                        mem[0] = sub_249fcc70[idx].field_512
                                        mem[32] = 0
                                        balanceOf[stor5[idx].field_512] += sub_249fcc70[idx].field_0 * 99 * (10000 * sub_388e7117) + (10000 * sub_91e835d6) / sub_91e835d6 / 100 / 10000
                                idx = idx + 1
                                continue 
                        require balanceOf[stor1] + (sub_388e7117 + sub_91e835d6 / 100) >= balanceOf[stor1]
                        balanceOf[stor1] += sub_388e7117 + sub_91e835d6 / 100
                        emit 0x75321818: sha3(block.timestamp, sub_75d838c3[stor5.length].field_0, sha3(block.timestamp, sub_249fcc70[sub_249fcc70.length].field_0, 2 * sub_388e7117) % 100) % 100, times
        sub_91e835d6 = 0
        sub_388e7117 = 0
        sub_249fcc70.length = 0
        idx = 0
        while 3 * sub_249fcc70.length > idx:
            sub_249fcc70[idx].field_0 = 0
            sub_249fcc70[idx].field_256 = 0
            sub_249fcc70[idx].field_512 = 0
            idx = idx + 3
            continue 
        sub_75d838c3.length = 0
        idx = 0
        while 3 * sub_75d838c3.length > idx:
            sub_75d838c3[idx].field_0 = 0
            sub_75d838c3[idx].field_256 = 0
            sub_75d838c3[idx].field_512 = 0
            idx = idx + 3
            continue 
    emit 0x95c73a58: (sub_249fcc70.length + sub_75d838c3.length)
}



}

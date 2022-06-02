contract main {




// =====================  Runtime code  =====================


uint256 sub_c87f4a06;
uint256 prize;
address lastInvestorAddress;
uint256 stor2;
uint256 sub_2df5e84b;
mapping of uint256 sub_1c603964;
uint256 currentReceiverIndex;
uint256 totalInvested;
address supportAddress;
uint256 sub_4bde9006;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856476;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856477;

function support() {
    return supportAddress
}

function sub_1c603964(?) {
    return sub_1c603964[arg1]
}

function currentReceiverIndex() {
    return currentReceiverIndex
}

function sub_2df5e84b(?) {
    return sub_2df5e84b
}

function sub_4bde9006(?) {
    return sub_4bde9006
}

function totalInvested() {
    return totalInvested
}

function lastInvestor() {
    return address(lastInvestorAddress)
}

function sub_c87f4a06(?) {
    return sub_c87f4a06
}

function queue(uint256 arg1) {
    require arg1 < queue.length
    return queue[arg1].field_0, queue[arg1].field_256, queue[arg1].field_512
}

function prize() {
    return prize
}

function getQueueLength() {
    return (queue.length - currentReceiverIndex)
}

function calcMultiplier() {
    if totalInvested <= 20 * 10^18:
        return 135
    if 50 * 10^18 >= totalInvested:
        return 120
    if 100 * 10^18 >= totalInvested:
        return 115
    if 200 * 10^18 < totalInvested:
        return 110
    return 112
}

function calcMaxDeposit() {
    if totalInvested <= 20 * 10^18:
        return 10^18
    if 50 * 10^18 >= totalInvested:
        return 12 * 10^17
    if 100 * 10^18 >= totalInvested:
        return 14 * 10^17
    if 200 * 10^18 < totalInvested:
        return 2 * 10^18
    return 17 * 10^17
}

function _fallback() payable {
    require block.number >= 6648870
    if msg.value <= 0:
        require msg.sender == address(lastInvestorAddress)
        require block.number >= sub_2df5e84b + 126
        call address(lastInvestorAddress) with:
           value prize wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        prize = 0
        address(lastInvestorAddress) = 0
    else:
        require gas_remaining >= 250000
        require msg.value >= 10^16
        if totalInvested <= 20 * 10^18:
            require msg.value <= 10^18
        else:
            if 50 * 10^18 >= totalInvested:
                require msg.value <= 12 * 10^17
            else:
                if 100 * 10^18 >= totalInvested:
                    require msg.value <= 14 * 10^17
                else:
                    if 200 * 10^18 < totalInvested:
                        require msg.value <= 2 * 10^18
                    else:
                        require msg.value <= 17 * 10^17
        if sub_1c603964[msg.sender]:
            require sub_1c603964[msg.sender] - 1 < queue.length
            queue[stor5[msg.sender]].field_0 += msg.value
        else:
            queue.length++
            queue[queue.length].field_0 = msg.sender
            stor8A35[stor4.length] = msg.value
            stor8A35[stor4.length] = 0
            sub_1c603964[msg.sender] = queue.length
        totalInvested += msg.value
        if 5 * 10^18 > sub_4bde9006:
            sub_4bde9006 += msg.value / 20
            call supportAddress with:
               value msg.value / 20 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        prize += msg.value * sub_c87f4a06 / 100
        uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
        sub_2df5e84b = block.number
        if totalInvested <= 20 * 10^18:
            s = 0
            t = 0
            t = 0
            t = 0
            idx = 0
            t = eth.balance(this.address) - prize
            while idx < queue.length:
                require currentReceiverIndex + idx < queue.length
                if 135 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100 <= stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512:
                    if t < s:
                        call stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 with:
                           value t wei
                             gas 2300 * is_zero(value) wei
                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 += t
                    else:
                        if s <= 0:
                            mem[32] = 5
                            sub_1c603964[stor[(3 * stor6) + (3 * idx) + ('name', 'stor4', 4)].field_0] = 0
                            require currentReceiverIndex + idx < queue.length
                            mem[0] = 4
                            stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 = 0
                            stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 = 0
                            stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 = 0
                            if gas_remaining > 55000:
                                s = s
                                t = 135 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100
                                t = (3 * currentReceiverIndex) + (3 * idx) + sha3(4)
                                t = currentReceiverIndex + idx
                                idx = idx + 1
                                t = t
                                continue 
                        else:
                            call stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 with:
                               value s wei
                                 gas 2300 * is_zero(value) wei
                            mem[32] = 5
                            sub_1c603964[stor[(3 * stor6) + (3 * idx) + ('name', 'stor4', 4)].field_0] = 0
                            require currentReceiverIndex + idx < queue.length
                            mem[0] = 4
                            stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 = 0
                            stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 = 0
                            stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 = 0
                            if gas_remaining > 55000:
                                s = s
                                t = 135 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100
                                t = (3 * currentReceiverIndex) + (3 * idx) + sha3(4)
                                t = currentReceiverIndex + idx
                                idx = idx + 1
                                t = t - s
                                continue 
                        ('le', 'gas', 55000)
                else:
                    if t < (135 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) - stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512:
                        call stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 with:
                           value t wei
                             gas 2300 * is_zero(value) wei
                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 += t
                    else:
                        if (135 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) - stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 <= 0:
                            mem[32] = 5
                            sub_1c603964[stor[(3 * stor6) + (3 * idx) + ('name', 'stor4', 4)].field_0] = 0
                            require currentReceiverIndex + idx < queue.length
                            mem[0] = 4
                            stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 = 0
                            stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 = 0
                            stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 = 0
                            if gas_remaining > 55000:
                                s = (135 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) - stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512
                                t = 135 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100
                                t = (3 * currentReceiverIndex) + (3 * idx) + sha3(4)
                                t = currentReceiverIndex + idx
                                idx = idx + 1
                                t = t
                                continue 
                        else:
                            call stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 with:
                               value (135 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) - stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 wei
                                 gas 2300 * is_zero(value) wei
                            mem[32] = 5
                            sub_1c603964[stor[(3 * stor6) + (3 * idx) + ('name', 'stor4', 4)].field_0] = 0
                            require currentReceiverIndex + idx < queue.length
                            mem[0] = 4
                            stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 = 0
                            stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 = 0
                            stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 = 0
                            if gas_remaining > 55000:
                                s = (135 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) - stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512
                                t = 135 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100
                                t = (3 * currentReceiverIndex) + (3 * idx) + sha3(4)
                                t = currentReceiverIndex + idx
                                idx = idx + 1
                                t = t - (135 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) + stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512
                                continue 
                        ('le', 'gas', 55000)
                currentReceiverIndex += idx
        else:
            if 50 * 10^18 >= totalInvested:
                s = 0
                t = 0
                t = 0
                t = 0
                idx = 0
                t = eth.balance(this.address) - prize
                while idx < queue.length:
                    require currentReceiverIndex + idx < queue.length
                    if 120 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100 <= stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512:
                        if t < s:
                            call stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 with:
                               value t wei
                                 gas 2300 * is_zero(value) wei
                            stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 += t
                        else:
                            if s <= 0:
                                mem[32] = 5
                                sub_1c603964[stor[(3 * stor6) + (3 * idx) + ('name', 'stor4', 4)].field_0] = 0
                                require currentReceiverIndex + idx < queue.length
                                mem[0] = 4
                                stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 = 0
                                stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 = 0
                                stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 = 0
                                if gas_remaining > 55000:
                                    s = s
                                    t = 120 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100
                                    t = (3 * currentReceiverIndex) + (3 * idx) + sha3(4)
                                    t = currentReceiverIndex + idx
                                    idx = idx + 1
                                    t = t
                                    continue 
                            else:
                                call stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 with:
                                   value s wei
                                     gas 2300 * is_zero(value) wei
                                mem[32] = 5
                                sub_1c603964[stor[(3 * stor6) + (3 * idx) + ('name', 'stor4', 4)].field_0] = 0
                                require currentReceiverIndex + idx < queue.length
                                mem[0] = 4
                                stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 = 0
                                stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 = 0
                                stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 = 0
                                if gas_remaining > 55000:
                                    s = s
                                    t = 120 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100
                                    t = (3 * currentReceiverIndex) + (3 * idx) + sha3(4)
                                    t = currentReceiverIndex + idx
                                    idx = idx + 1
                                    t = t - s
                                    continue 
                            ('le', 'gas', 55000)
                    else:
                        if t < (120 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) - stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512:
                            call stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 with:
                               value t wei
                                 gas 2300 * is_zero(value) wei
                            stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 += t
                        else:
                            if (120 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) - stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 <= 0:
                                mem[32] = 5
                                sub_1c603964[stor[(3 * stor6) + (3 * idx) + ('name', 'stor4', 4)].field_0] = 0
                                require currentReceiverIndex + idx < queue.length
                                mem[0] = 4
                                stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 = 0
                                stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 = 0
                                stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 = 0
                                if gas_remaining > 55000:
                                    s = (120 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) - stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512
                                    t = 120 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100
                                    t = (3 * currentReceiverIndex) + (3 * idx) + sha3(4)
                                    t = currentReceiverIndex + idx
                                    idx = idx + 1
                                    t = t
                                    continue 
                            else:
                                call stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 with:
                                   value (120 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) - stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 wei
                                     gas 2300 * is_zero(value) wei
                                mem[32] = 5
                                sub_1c603964[stor[(3 * stor6) + (3 * idx) + ('name', 'stor4', 4)].field_0] = 0
                                require currentReceiverIndex + idx < queue.length
                                mem[0] = 4
                                stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 = 0
                                stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 = 0
                                stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 = 0
                                if gas_remaining > 55000:
                                    s = (120 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) - stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512
                                    t = 120 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100
                                    t = (3 * currentReceiverIndex) + (3 * idx) + sha3(4)
                                    t = currentReceiverIndex + idx
                                    idx = idx + 1
                                    t = t - (120 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) + stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512
                                    continue 
                            ('le', 'gas', 55000)
                    currentReceiverIndex += idx
            else:
                if 100 * 10^18 >= totalInvested:
                    s = 0
                    t = 0
                    t = 0
                    t = 0
                    idx = 0
                    t = eth.balance(this.address) - prize
                    while idx < queue.length:
                        require currentReceiverIndex + idx < queue.length
                        if 115 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100 <= stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512:
                            if t < s:
                                call stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 with:
                                   value t wei
                                     gas 2300 * is_zero(value) wei
                                stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 += t
                            else:
                                if s <= 0:
                                    mem[32] = 5
                                    sub_1c603964[stor[(3 * stor6) + (3 * idx) + ('name', 'stor4', 4)].field_0] = 0
                                    require currentReceiverIndex + idx < queue.length
                                    mem[0] = 4
                                    stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 = 0
                                    stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 = 0
                                    stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 = 0
                                    if gas_remaining > 55000:
                                        s = s
                                        t = 115 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100
                                        t = (3 * currentReceiverIndex) + (3 * idx) + sha3(4)
                                        t = currentReceiverIndex + idx
                                        idx = idx + 1
                                        t = t
                                        continue 
                                else:
                                    call stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 with:
                                       value s wei
                                         gas 2300 * is_zero(value) wei
                                    mem[32] = 5
                                    sub_1c603964[stor[(3 * stor6) + (3 * idx) + ('name', 'stor4', 4)].field_0] = 0
                                    require currentReceiverIndex + idx < queue.length
                                    mem[0] = 4
                                    stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 = 0
                                    stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 = 0
                                    stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 = 0
                                    if gas_remaining > 55000:
                                        s = s
                                        t = 115 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100
                                        t = (3 * currentReceiverIndex) + (3 * idx) + sha3(4)
                                        t = currentReceiverIndex + idx
                                        idx = idx + 1
                                        t = t - s
                                        continue 
                                ('le', 'gas', 55000)
                        else:
                            if t < (115 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) - stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512:
                                call stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 with:
                                   value t wei
                                     gas 2300 * is_zero(value) wei
                                stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 += t
                            else:
                                if (115 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) - stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 <= 0:
                                    mem[32] = 5
                                    sub_1c603964[stor[(3 * stor6) + (3 * idx) + ('name', 'stor4', 4)].field_0] = 0
                                    require currentReceiverIndex + idx < queue.length
                                    mem[0] = 4
                                    stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 = 0
                                    stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 = 0
                                    stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 = 0
                                    if gas_remaining > 55000:
                                        s = (115 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) - stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512
                                        t = 115 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100
                                        t = (3 * currentReceiverIndex) + (3 * idx) + sha3(4)
                                        t = currentReceiverIndex + idx
                                        idx = idx + 1
                                        t = t
                                        continue 
                                else:
                                    call stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 with:
                                       value (115 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) - stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 wei
                                         gas 2300 * is_zero(value) wei
                                    mem[32] = 5
                                    sub_1c603964[stor[(3 * stor6) + (3 * idx) + ('name', 'stor4', 4)].field_0] = 0
                                    require currentReceiverIndex + idx < queue.length
                                    mem[0] = 4
                                    stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 = 0
                                    stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 = 0
                                    stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 = 0
                                    if gas_remaining > 55000:
                                        s = (115 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) - stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512
                                        t = 115 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100
                                        t = (3 * currentReceiverIndex) + (3 * idx) + sha3(4)
                                        t = currentReceiverIndex + idx
                                        idx = idx + 1
                                        t = t - (115 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) + stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512
                                        continue 
                                ('le', 'gas', 55000)
                        currentReceiverIndex += idx
                else:
                    if 200 * 10^18 < totalInvested:
                        s = 0
                        t = 0
                        t = 0
                        t = 0
                        idx = 0
                        t = eth.balance(this.address) - prize
                        while idx < queue.length:
                            require currentReceiverIndex + idx < queue.length
                            if 110 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100 <= stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512:
                                if t < s:
                                    call stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 with:
                                       value t wei
                                         gas 2300 * is_zero(value) wei
                                    stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 += t
                                else:
                                    if s <= 0:
                                        mem[32] = 5
                                        sub_1c603964[stor[(3 * stor6) + (3 * idx) + ('name', 'stor4', 4)].field_0] = 0
                                        require currentReceiverIndex + idx < queue.length
                                        mem[0] = 4
                                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 = 0
                                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 = 0
                                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 = 0
                                        if gas_remaining > 55000:
                                            s = s
                                            t = 110 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100
                                            t = (3 * currentReceiverIndex) + (3 * idx) + sha3(4)
                                            t = currentReceiverIndex + idx
                                            idx = idx + 1
                                            t = t
                                            continue 
                                    else:
                                        call stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 with:
                                           value s wei
                                             gas 2300 * is_zero(value) wei
                                        mem[32] = 5
                                        sub_1c603964[stor[(3 * stor6) + (3 * idx) + ('name', 'stor4', 4)].field_0] = 0
                                        require currentReceiverIndex + idx < queue.length
                                        mem[0] = 4
                                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 = 0
                                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 = 0
                                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 = 0
                                        if gas_remaining > 55000:
                                            s = s
                                            t = 110 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100
                                            t = (3 * currentReceiverIndex) + (3 * idx) + sha3(4)
                                            t = currentReceiverIndex + idx
                                            idx = idx + 1
                                            t = t - s
                                            continue 
                                    ('le', 'gas', 55000)
                            else:
                                if t < (110 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) - stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512:
                                    call stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 with:
                                       value t wei
                                         gas 2300 * is_zero(value) wei
                                    stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 += t
                                else:
                                    if (110 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) - stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 <= 0:
                                        mem[32] = 5
                                        sub_1c603964[stor[(3 * stor6) + (3 * idx) + ('name', 'stor4', 4)].field_0] = 0
                                        require currentReceiverIndex + idx < queue.length
                                        mem[0] = 4
                                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 = 0
                                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 = 0
                                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 = 0
                                        if gas_remaining > 55000:
                                            s = (110 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) - stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512
                                            t = 110 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100
                                            t = (3 * currentReceiverIndex) + (3 * idx) + sha3(4)
                                            t = currentReceiverIndex + idx
                                            idx = idx + 1
                                            t = t
                                            continue 
                                    else:
                                        call stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 with:
                                           value (110 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) - stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 wei
                                             gas 2300 * is_zero(value) wei
                                        mem[32] = 5
                                        sub_1c603964[stor[(3 * stor6) + (3 * idx) + ('name', 'stor4', 4)].field_0] = 0
                                        require currentReceiverIndex + idx < queue.length
                                        mem[0] = 4
                                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 = 0
                                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 = 0
                                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 = 0
                                        if gas_remaining > 55000:
                                            s = (110 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) - stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512
                                            t = 110 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100
                                            t = (3 * currentReceiverIndex) + (3 * idx) + sha3(4)
                                            t = currentReceiverIndex + idx
                                            idx = idx + 1
                                            t = t - (110 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) + stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512
                                            continue 
                                    ('le', 'gas', 55000)
                            currentReceiverIndex += idx
                    else:
                        s = 0
                        t = 0
                        t = 0
                        t = 0
                        idx = 0
                        t = eth.balance(this.address) - prize
                        while idx < queue.length:
                            require currentReceiverIndex + idx < queue.length
                            if 112 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100 <= stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512:
                                if t < s:
                                    call stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 with:
                                       value t wei
                                         gas 2300 * is_zero(value) wei
                                    stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 += t
                                else:
                                    if s <= 0:
                                        mem[32] = 5
                                        sub_1c603964[stor[(3 * stor6) + (3 * idx) + ('name', 'stor4', 4)].field_0] = 0
                                        require currentReceiverIndex + idx < queue.length
                                        mem[0] = 4
                                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 = 0
                                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 = 0
                                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 = 0
                                        if gas_remaining > 55000:
                                            s = s
                                            t = 112 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100
                                            t = (3 * currentReceiverIndex) + (3 * idx) + sha3(4)
                                            t = currentReceiverIndex + idx
                                            idx = idx + 1
                                            t = t
                                            continue 
                                    else:
                                        call stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 with:
                                           value s wei
                                             gas 2300 * is_zero(value) wei
                                        mem[32] = 5
                                        sub_1c603964[stor[(3 * stor6) + (3 * idx) + ('name', 'stor4', 4)].field_0] = 0
                                        require currentReceiverIndex + idx < queue.length
                                        mem[0] = 4
                                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 = 0
                                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 = 0
                                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 = 0
                                        if gas_remaining > 55000:
                                            s = s
                                            t = 112 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100
                                            t = (3 * currentReceiverIndex) + (3 * idx) + sha3(4)
                                            t = currentReceiverIndex + idx
                                            idx = idx + 1
                                            t = t - s
                                            continue 
                                    ('le', 'gas', 55000)
                            else:
                                if t < (112 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) - stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512:
                                    call stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 with:
                                       value t wei
                                         gas 2300 * is_zero(value) wei
                                    stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 += t
                                else:
                                    if (112 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) - stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 <= 0:
                                        mem[32] = 5
                                        sub_1c603964[stor[(3 * stor6) + (3 * idx) + ('name', 'stor4', 4)].field_0] = 0
                                        require currentReceiverIndex + idx < queue.length
                                        mem[0] = 4
                                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 = 0
                                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 = 0
                                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 = 0
                                        if gas_remaining > 55000:
                                            s = (112 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) - stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512
                                            t = 112 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100
                                            t = (3 * currentReceiverIndex) + (3 * idx) + sha3(4)
                                            t = currentReceiverIndex + idx
                                            idx = idx + 1
                                            t = t
                                            continue 
                                    else:
                                        call stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 with:
                                           value (112 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) - stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 wei
                                             gas 2300 * is_zero(value) wei
                                        mem[32] = 5
                                        sub_1c603964[stor[(3 * stor6) + (3 * idx) + ('name', 'stor4', 4)].field_0] = 0
                                        require currentReceiverIndex + idx < queue.length
                                        mem[0] = 4
                                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_0 = 0
                                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 = 0
                                        stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512 = 0
                                        if gas_remaining > 55000:
                                            s = (112 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) - stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512
                                            t = 112 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100
                                            t = (3 * currentReceiverIndex) + (3 * idx) + sha3(4)
                                            t = currentReceiverIndex + idx
                                            idx = idx + 1
                                            t = t - (112 * stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_256 / 100) + stor[(3 * stor6) + (3 * idx) + ('name', 'queue', 4)].field_512
                                            continue 
                                    ('le', 'gas', 55000)
                            currentReceiverIndex += idx
        currentReceiverIndex += idx
}



}

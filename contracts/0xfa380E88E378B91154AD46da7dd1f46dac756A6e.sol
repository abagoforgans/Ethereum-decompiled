contract main {




// =====================  Runtime code  =====================


address stor0;
uint16 sub_130e1087; offset 160
address stor1;
uint256 sub_27518946;
uint256 prizePool;
uint256 sub_4cbb1c6b;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 sub_43fc07a7;
array of address stor9;
array of address stor10;
array of struct stor11;
array of struct sub_e4bbf0b7;
mapping of uint256 stor13;
mapping of address stor14;
mapping of uint256 stor15;
array of address stor16;

function PrizePool() {
    return prizePool
}

function sub_130e1087(?) {
    return sub_130e1087
}

function sub_27518946(?) {
    return sub_27518946
}

function sub_43fc07a7(?) {
    return sub_43fc07a7
}

function sub_4cbb1c6b(?) {
    return sub_4cbb1c6b
}

function sub_e4bbf0b7(?) {
    require arg1 < sub_e4bbf0b7.length
    return sub_e4bbf0b7[arg1].field_0, 
           sub_e4bbf0b7[arg1].field_256,
           sub_e4bbf0b7[arg1].field_512,
           sub_e4bbf0b7[arg1].field_768,
           sub_e4bbf0b7[arg1].field_1024
}

function sub_5daea997(?) {
    require stor0 == msg.sender
    if arg1 != 2099:
        if eth.balance(this.address) > 0:
            if stor9.length > 0:
                require eth.balance(this.address) > 0
                require stor9.length
                require block.hash(block.number - 1) * sub_43fc07a7 % stor9.length < stor9.length
                if stor16.length > 0:
                    idx = 0
                    while idx <= stor16.length - 1:
                        require idx < stor16.length
                        mem[0] = address(stor16[idx])
                        mem[32] = 15
                        call address(stor16[idx]) with:
                           value stor15[address(stor16[idx])] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                call address(stor9[block.hash(block.number - 1) * stor8 % stor9.length]) with:
                   value prizePool wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor1 with:
                   value sub_4cbb1c6b wei
                     gas 2300 * is_zero(value) wei
                call stor0 with:
                   value stor5 wei
                     gas 2300 * is_zero(value) wei
                stor11.length++
                stor11[stor11.length].field_0 = address(stor9[block.hash(block.number - 1) * stor8 % stor9.length])
                stor11[stor11.length].field_256 = prizePool
                stor11[stor11.length].field_512 = block.hash(block.number - 1) * sub_43fc07a7 % stor9.length
                stor11[stor11.length].field_768 = sub_43fc07a7
                stor11[stor11.length].field_1024 = stor1
                emit Payout(address(stor9[block.hash(block.number - 1) * stor8 % stor9.length]), block.hash(block.number - 1) * sub_43fc07a7 % stor9.length, prizePool, stor9.length);
                sub_27518946 += prizePool
                prizePool = eth.balance(this.address)
                stor5 = 0
                sub_4cbb1c6b = 0
                stor1 = 0
                sub_130e1087 = uint16(sub_130e1087 + 1)
                stor6 = block.timestamp + (10 * 3600)
                stor7 = block.timestamp
                if stor10.length > 0:
                    idx = 0
                    while idx <= stor10.length - 1:
                        require idx < stor10.length
                        mem[0] = address(stor10[idx])
                        mem[32] = 14
                        stor14[address(stor10[idx])] = 0
                        idx = idx + 1
                        continue 
                if stor16.length > 0:
                    idx = 0
                    while idx <= stor16.length - 1:
                        require idx < stor16.length
                        mem[0] = address(stor16[idx])
                        mem[32] = 15
                        stor15[address(stor16[idx])] = 0
                        idx = idx + 1
                        continue 
                stor9.length = 0
                idx = 0
                while stor9.length > idx:
                    uint256(stor9[idx]) = 0
                    idx = idx + 1
                    continue 
                stor10.length = 0
                idx = 0
                while stor10.length > idx:
                    uint256(stor10[idx]) = 0
                    idx = idx + 1
                    continue 
                stor16.length = 0
                idx = 0
                while stor16.length > idx:
                    uint256(stor16[idx]) = 0
                    idx = idx + 1
                    continue 
                sub_e4bbf0b7.length = 0
                idx = 0
                while 5 * sub_e4bbf0b7.length > idx:
                    sub_e4bbf0b7[idx].field_0 = 0
                    sub_e4bbf0b7[idx].field_256 = 0
                    sub_e4bbf0b7[idx].field_512 = 0
                    sub_e4bbf0b7[idx].field_768 = 0
                    sub_e4bbf0b7[idx].field_1024 = 0
                    idx = idx + 5
                    continue 
                if stor11.length <= 10:
                    idx = 0
                    while idx <= stor11.length - 1:
                        require idx < stor11.length
                        mem[256] = stor11[idx].field_0
                        mem[288] = stor11[idx].field_256
                        mem[320] = stor11[idx].field_512
                        mem[352] = stor11[idx].field_768
                        mem[384] = stor11[idx].field_1024
                        sub_e4bbf0b7.length++
                        mem[0] = 12
                        sub_e4bbf0b7[sub_e4bbf0b7.length].field_0 = stor11[idx].field_0
                        sub_e4bbf0b7[sub_e4bbf0b7.length].field_256 = stor11[idx].field_256
                        sub_e4bbf0b7[sub_e4bbf0b7.length].field_512 = stor11[idx].field_512
                        sub_e4bbf0b7[sub_e4bbf0b7.length].field_768 = stor11[idx].field_768
                        sub_e4bbf0b7[sub_e4bbf0b7.length].field_1024 = stor11[idx].field_1024
                        idx = idx + 1
                        continue 
                else:
                    idx = stor11.length - 10
                    while idx <= stor11.length - 1:
                        require idx < stor11.length
                        mem[256] = stor11[idx].field_0
                        mem[288] = stor11[idx].field_256
                        mem[320] = stor11[idx].field_512
                        mem[352] = stor11[idx].field_768
                        mem[384] = stor11[idx].field_1024
                        sub_e4bbf0b7.length++
                        mem[0] = 12
                        sub_e4bbf0b7[sub_e4bbf0b7.length].field_0 = stor11[idx].field_0
                        sub_e4bbf0b7[sub_e4bbf0b7.length].field_256 = stor11[idx].field_256
                        sub_e4bbf0b7[sub_e4bbf0b7.length].field_512 = stor11[idx].field_512
                        sub_e4bbf0b7[sub_e4bbf0b7.length].field_768 = stor11[idx].field_768
                        sub_e4bbf0b7[sub_e4bbf0b7.length].field_1024 = stor11[idx].field_1024
                        idx = idx + 1
                        continue 
    selfdestruct(stor0)
}

function sub_367a3519(?) {
    if stor9.length <= 0:
        return 0
    return 1
}

function sub_6b605a4b(?) {
    require stor0 == msg.sender
    stor13[address(arg1)] = 0
}

function sub_869e73fb(?) {
    require stor0 == msg.sender
    stor13[address(arg1)] = 100
}

function sub_954b119a(?) {
    if stor6 > block.timestamp:
        return (stor6 - block.timestamp)
    else:
        return 0
}

function sub_db351302(?) {
    if stor9.length <= 0:
        return 0
    s = 0
    idx = 0
    while idx <= stor9.length - 1:
        require idx < stor9.length
        mem[0] = 9
        if address(stor9[idx]) != arg1:
            s = s
            idx = idx + 1
            continue 
        s = s + 1
        idx = idx + 1
        continue 
    return s
}

function _fallback() payable {
    require not msg.value % 2 * 10^16
    require msg.value >= 2 * 10^16
    stor6 += 10 * msg.value / 2 * 10^16
    if stor6 - block.timestamp > 10 * 3600:
        stor6 = block.timestamp + (10 * 3600)
    idx = 1
    while idx <= msg.value / 2 * 10^16:
        stor9.length++
        mem[0] = 9
        address(stor9[stor9.length]) = msg.sender
        idx = idx + 1
        continue 
    prizePool += 75 * msg.value / 100
    stor5 += 5 * msg.value / 100
    sub_4cbb1c6b += 10 * msg.value / 100
    stor1 = msg.sender
    emit 0xc19303dd: msg.sender, msg.value
}

function buy(address arg1) payable {
    require not msg.value % 2 * 10^16
    require msg.value >= 2 * 10^16
    stor6 += 10 * msg.value / 2 * 10^16
    if stor6 - block.timestamp > 10 * 3600:
        stor6 = block.timestamp + (10 * 3600)
    idx = 1
    while idx <= msg.value / 2 * 10^16:
        stor9.length++
        mem[0] = 9
        address(stor9[stor9.length]) = msg.sender
        idx = idx + 1
        continue 
    if ext_code.size(arg1) > 0:
        stor5 += msg.value / 100
    else:
        if stor14[address(msg.sender)]:
            if stor14[address(msg.sender)] != arg1:
                stor5 += msg.value / 100
            else:
                stor15[address(arg1)] += msg.value / 100
        else:
            stor14[address(msg.sender)] = arg1
            stor10.length++
            address(stor10[stor10.length]) = msg.sender
            if stor15[address(arg1)]:
                stor15[address(arg1)] += msg.value / 100
            else:
                stor16.length++
                address(stor16[stor16.length]) = arg1
                stor15[address(arg1)] = msg.value / 100
    prizePool += 75 * msg.value / 100
    stor5 += 4 * msg.value / 100
    sub_4cbb1c6b += 10 * msg.value / 100
    stor1 = msg.sender
    emit 0xc19303dd: msg.sender, msg.value
}

function sub_1e3fe572(?) {
    if stor0 != msg.sender:
        require stor13[address(msg.sender)] == 100
    if stor6 > block.timestamp:
        return 0
    if stor7 > block.timestamp - 600:
        return 0
    if stor9.length <= 0:
        return 0
    sub_43fc07a7 = arg1
    require eth.balance(this.address) > 0
    require stor9.length
    require block.hash(block.number - 1) * sub_43fc07a7 % stor9.length < stor9.length
    if stor16.length > 0:
        idx = 0
        while idx <= stor16.length - 1:
            require idx < stor16.length
            mem[0] = address(stor16[idx])
            mem[32] = 15
            call address(stor16[idx]) with:
               value stor15[address(stor16[idx])] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    call address(stor9[block.hash(block.number - 1) * stor8 % stor9.length]) with:
       value prizePool wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor1 with:
       value sub_4cbb1c6b wei
         gas 2300 * is_zero(value) wei
    call stor0 with:
       value stor5 wei
         gas 2300 * is_zero(value) wei
    stor11.length++
    stor11[stor11.length].field_0 = address(stor9[block.hash(block.number - 1) * stor8 % stor9.length])
    stor11[stor11.length].field_256 = prizePool
    stor11[stor11.length].field_512 = block.hash(block.number - 1) * sub_43fc07a7 % stor9.length
    stor11[stor11.length].field_768 = sub_43fc07a7
    stor11[stor11.length].field_1024 = stor1
    emit Payout(address(stor9[block.hash(block.number - 1) * stor8 % stor9.length]), block.hash(block.number - 1) * sub_43fc07a7 % stor9.length, prizePool, stor9.length);
    sub_27518946 += prizePool
    prizePool = eth.balance(this.address)
    stor5 = 0
    sub_4cbb1c6b = 0
    stor1 = 0
    sub_130e1087 = uint16(sub_130e1087 + 1)
    stor6 = block.timestamp + (10 * 3600)
    stor7 = block.timestamp
    if stor10.length > 0:
        idx = 0
        while idx <= stor10.length - 1:
            require idx < stor10.length
            mem[0] = address(stor10[idx])
            mem[32] = 14
            stor14[address(stor10[idx])] = 0
            idx = idx + 1
            continue 
    if stor16.length > 0:
        idx = 0
        while idx <= stor16.length - 1:
            require idx < stor16.length
            mem[0] = address(stor16[idx])
            mem[32] = 15
            stor15[address(stor16[idx])] = 0
            idx = idx + 1
            continue 
    stor9.length = 0
    idx = 0
    while stor9.length > idx:
        uint256(stor9[idx]) = 0
        idx = idx + 1
        continue 
    stor10.length = 0
    idx = 0
    while stor10.length > idx:
        uint256(stor10[idx]) = 0
        idx = idx + 1
        continue 
    stor16.length = 0
    idx = 0
    while stor16.length > idx:
        uint256(stor16[idx]) = 0
        idx = idx + 1
        continue 
    sub_e4bbf0b7.length = 0
    idx = 0
    while 5 * sub_e4bbf0b7.length > idx:
        sub_e4bbf0b7[idx].field_0 = 0
        sub_e4bbf0b7[idx].field_256 = 0
        sub_e4bbf0b7[idx].field_512 = 0
        sub_e4bbf0b7[idx].field_768 = 0
        sub_e4bbf0b7[idx].field_1024 = 0
        idx = idx + 5
        continue 
    if stor11.length <= 10:
        idx = 0
        while idx <= stor11.length - 1:
            require idx < stor11.length
            mem[256] = stor11[idx].field_0
            mem[288] = stor11[idx].field_256
            mem[320] = stor11[idx].field_512
            mem[352] = stor11[idx].field_768
            mem[384] = stor11[idx].field_1024
            sub_e4bbf0b7.length++
            mem[0] = 12
            sub_e4bbf0b7[sub_e4bbf0b7.length].field_0 = stor11[idx].field_0
            sub_e4bbf0b7[sub_e4bbf0b7.length].field_256 = stor11[idx].field_256
            sub_e4bbf0b7[sub_e4bbf0b7.length].field_512 = stor11[idx].field_512
            sub_e4bbf0b7[sub_e4bbf0b7.length].field_768 = stor11[idx].field_768
            sub_e4bbf0b7[sub_e4bbf0b7.length].field_1024 = stor11[idx].field_1024
            idx = idx + 1
            continue 
    else:
        idx = stor11.length - 10
        while idx <= stor11.length - 1:
            require idx < stor11.length
            mem[256] = stor11[idx].field_0
            mem[288] = stor11[idx].field_256
            mem[320] = stor11[idx].field_512
            mem[352] = stor11[idx].field_768
            mem[384] = stor11[idx].field_1024
            sub_e4bbf0b7.length++
            mem[0] = 12
            sub_e4bbf0b7[sub_e4bbf0b7.length].field_0 = stor11[idx].field_0
            sub_e4bbf0b7[sub_e4bbf0b7.length].field_256 = stor11[idx].field_256
            sub_e4bbf0b7[sub_e4bbf0b7.length].field_512 = stor11[idx].field_512
            sub_e4bbf0b7[sub_e4bbf0b7.length].field_768 = stor11[idx].field_768
            sub_e4bbf0b7[sub_e4bbf0b7.length].field_1024 = stor11[idx].field_1024
            idx = idx + 1
            continue 
    return 1
}



}

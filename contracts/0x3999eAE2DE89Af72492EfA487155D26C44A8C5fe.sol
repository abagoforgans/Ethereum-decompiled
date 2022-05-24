contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
mapping of uint256 stor12;

function _fallback() payable {
    stor4 = 0x4fe214cfe388a6a534b1e3361d17347b1745f1af
    stor5 = 0x4fe214cfe388a6a534b1e3361d17347b1745f1af
    stor6 = 0
    stor7 = 0
    stor8 = 0
    require not msg.value
    mem[96 len -7062] = code.data[7566 len -7062]
    mem[64] = -6966
    stor0 = msg.sender
    stor3 = 10^18 * mem[96]
    stor12[stor4] = 10^18 * mem[96]
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    emit Transfer(stor3, 0, stor4);
    return code.data[504 len 7062]
}



// =====================  Runtime code  =====================


const decimals = 18


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
address adminAddress;
uint8 abc; offset 160
address sub_2cb652cbAddress;
uint256 a;
uint256 b;
uint256 c;
mapping of uint256 stor9;
mapping of uint8 stor11;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor14;
mapping of uint256 stor15;
mapping of uint8 stor16;

function name() {
    return name[0 len name.length]
}

function a() {
    return a
}

function totalSupply() {
    return totalSupply
}

function sub_2cb652cb(?) {
    return sub_2cb652cbAddress
}

function b() {
    return b
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function abc() {
    return abc
}

function symbol() {
    return symbol[0 len symbol.length]
}

function c() {
    return c
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function sub_2115f242(?) {
    require owner == msg.sender
    stor16[address(arg1)] = 1
}

function sub_ef0b973a(?) {
    require owner == msg.sender
    stor11[address(arg1)] = uint8(arg2)
    return 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function sub_be0074b2(?) {
    require 1 == bool(stor16[address(msg.sender)])
    require bool(stor11[address(arg1)]) != 1
    require b < 200000000 * 10^18
    if not arg2 / 10 * 10^18:
        require balanceOf[stor4] >= 0
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require 0 <= balanceOf[stor4]
        balanceOf[stor4] = balanceOf[stor4]
        stor14[address(arg1)] = 2
        stor11[address(arg1)] = 1
        stor9[address(arg1)] = block.timestamp
        stor15[address(arg1)] = 0
        require b >= b
        emit Transfer(0, adminAddress, arg1);
    else:
        require 2000000 * 10^18 * arg2 / 10 * 10^18 / arg2 / 10 * 10^18 == 2000000 * 10^18
        require balanceOf[stor4] >= 2000000 * 10^18 * arg2 / 10 * 10^18
        require (2000000 * 10^18 * arg2 / 10 * 10^18) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 2000000 * 10^18 * arg2 / 10 * 10^18
        require 2000000 * 10^18 * arg2 / 10 * 10^18 <= balanceOf[stor4]
        balanceOf[stor4] += -2000000 * 10^18 * arg2 / 10 * 10^18
        stor14[address(arg1)] = 2
        stor11[address(arg1)] = 1
        stor9[address(arg1)] = block.timestamp
        stor15[address(arg1)] = 2000000 * 10^18 * arg2 / 10 * 10^18
        require (2000000 * 10^18 * arg2 / 10 * 10^18) + b >= b
        b += 2000000 * 10^18 * arg2 / 10 * 10^18
        emit Transfer((2000000 * 10^18 * arg2 / 10 * 10^18), adminAddress, arg1);
    return 1
}

function _fallback() payable {
    require bool(stor11[address(msg.sender)]) != 1
    require a < 100000000 * 10^18
    if not msg.value / 50 * 10^18:
        require balanceOf[stor4] >= 0
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require 0 <= balanceOf[stor4]
        balanceOf[stor4] = balanceOf[stor4]
        stor14[address(msg.sender)] = 1
        stor11[address(msg.sender)] = 1
        call sub_2cb652cbAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        stor9[address(msg.sender)] = block.timestamp
        stor15[address(msg.sender)] = 0
        require a >= a
        emit Transfer(0, adminAddress, msg.sender);
    else:
        require 20000000 * 10^18 * msg.value / 50 * 10^18 / msg.value / 50 * 10^18 == 20000000 * 10^18
        require balanceOf[stor4] >= 20000000 * 10^18 * msg.value / 50 * 10^18
        require (20000000 * 10^18 * msg.value / 50 * 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 20000000 * 10^18 * msg.value / 50 * 10^18
        require 20000000 * 10^18 * msg.value / 50 * 10^18 <= balanceOf[stor4]
        balanceOf[stor4] += -20000000 * 10^18 * msg.value / 50 * 10^18
        stor14[address(msg.sender)] = 1
        stor11[address(msg.sender)] = 1
        call sub_2cb652cbAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        stor9[address(msg.sender)] = block.timestamp
        stor15[address(msg.sender)] = 20000000 * 10^18 * msg.value / 50 * 10^18
        require (20000000 * 10^18 * msg.value / 50 * 10^18) + a >= a
        a += 20000000 * 10^18 * msg.value / 50 * 10^18
        emit Transfer((20000000 * 10^18 * msg.value / 50 * 10^18), adminAddress, msg.sender);
}

function sub_c421d2fe(?) {
    if 1 == stor14[address(arg1)]:
        require block.timestamp > stor9[address(arg1)] + (17280 * 24 * 3600)
        if block.timestamp + -stor9[address(arg1)] - (17280 * 24 * 3600) / 24 * 3600 < 100:
            require balanceOf[address(arg1)] >= (100 * stor15[address(arg1)]) - (block.timestamp + -stor9[address(arg1)] - (17280 * 24 * 3600) / 24 * 3600 * stor15[address(arg1)]) / 100
            if (100 * stor15[address(arg1)]) - (block.timestamp + -stor9[address(arg1)] - (17280 * 24 * 3600) / 24 * 3600 * stor15[address(arg1)]) / 100 <= balanceOf[address(arg1)]:
                return (balanceOf[address(arg1)] - ((100 * stor15[address(arg1)]) - (block.timestamp + -stor9[address(arg1)] - (17280 * 24 * 3600) / 24 * 3600 * stor15[address(arg1)]) / 100))
        else:
            require balanceOf[address(arg1)] >= 0
            if 0 <= balanceOf[address(arg1)]:
                return balanceOf[address(arg1)]
    else:
        if 2 == stor14[address(arg1)]:
            require block.timestamp > stor9[address(arg1)] + (8640 * 24 * 3600)
            if block.timestamp + -stor9[address(arg1)] - (8640 * 24 * 3600) / 24 * 3600 < 200:
                require balanceOf[address(arg1)] >= (1000 * stor15[address(arg1)]) - (5 * block.timestamp + -stor9[address(arg1)] - (8640 * 24 * 3600) / 24 * 3600 * stor15[address(arg1)]) / 1000
                if (1000 * stor15[address(arg1)]) - (5 * block.timestamp + -stor9[address(arg1)] - (8640 * 24 * 3600) / 24 * 3600 * stor15[address(arg1)]) / 1000 <= balanceOf[address(arg1)]:
                    return (balanceOf[address(arg1)] - ((1000 * stor15[address(arg1)]) - (5 * block.timestamp + -stor9[address(arg1)] - (8640 * 24 * 3600) / 24 * 3600 * stor15[address(arg1)]) / 1000))
            else:
                require balanceOf[address(arg1)] >= 0
                if 0 <= balanceOf[address(arg1)]:
                    return balanceOf[address(arg1)]
        else:
            if stor14[address(arg1)] != 3:
                return 0
            require block.timestamp > stor9[address(arg1)] + (4320 * 24 * 3600)
            if block.timestamp + -stor9[address(arg1)] - (4320 * 24 * 3600) / 24 * 3600 < 200:
                require balanceOf[address(arg1)] >= (1000 * stor15[address(arg1)]) - (5 * block.timestamp + -stor9[address(arg1)] - (4320 * 24 * 3600) / 24 * 3600 * stor15[address(arg1)]) / 1000
                if (1000 * stor15[address(arg1)]) - (5 * block.timestamp + -stor9[address(arg1)] - (4320 * 24 * 3600) / 24 * 3600 * stor15[address(arg1)]) / 1000 <= balanceOf[address(arg1)]:
                    return (balanceOf[address(arg1)] - ((1000 * stor15[address(arg1)]) - (5 * block.timestamp + -stor9[address(arg1)] - (4320 * 24 * 3600) / 24 * 3600 * stor15[address(arg1)]) / 1000))
            else:
                require balanceOf[address(arg1)] >= 0
                if 0 <= balanceOf[address(arg1)]:
                    return balanceOf[address(arg1)]
    revert
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    if 1 == bool(stor11[address(msg.sender)]):
        if 1 == stor14[address(msg.sender)]:
            require block.timestamp > stor9[address(msg.sender)] + (17280 * 24 * 3600)
            if block.timestamp + -stor9[address(msg.sender)] - (17280 * 24 * 3600) / 24 * 3600 >= 100:
                stor11[address(msg.sender)] = 0
            else:
                require block.timestamp + -stor9[address(msg.sender)] - (17280 * 24 * 3600) / 24 * 3600 <= 100
                require balanceOf[address(msg.sender)] >= (100 * stor15[address(msg.sender)]) - (block.timestamp + -stor9[address(msg.sender)] - (17280 * 24 * 3600) / 24 * 3600 * stor15[address(msg.sender)]) / 100
                require (100 * stor15[address(msg.sender)]) - (block.timestamp + -stor9[address(msg.sender)] - (17280 * 24 * 3600) / 24 * 3600 * stor15[address(msg.sender)]) / 100 <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] - ((100 * stor15[address(msg.sender)]) - (block.timestamp + -stor9[address(msg.sender)] - (17280 * 24 * 3600) / 24 * 3600 * stor15[address(msg.sender)]) / 100) >= arg2
        if 2 == stor14[address(msg.sender)]:
            require block.timestamp > stor9[address(msg.sender)] + (8640 * 24 * 3600)
            if block.timestamp + -stor9[address(msg.sender)] - (8640 * 24 * 3600) / 24 * 3600 >= 200:
                stor11[address(msg.sender)] = 0
            else:
                require block.timestamp + -stor9[address(msg.sender)] - (8640 * 24 * 3600) / 24 * 3600 <= 200
                require balanceOf[address(msg.sender)] >= (1000 * stor15[address(msg.sender)]) - (5 * block.timestamp + -stor9[address(msg.sender)] - (8640 * 24 * 3600) / 24 * 3600 * stor15[address(msg.sender)]) / 1000
                require (1000 * stor15[address(msg.sender)]) - (5 * block.timestamp + -stor9[address(msg.sender)] - (8640 * 24 * 3600) / 24 * 3600 * stor15[address(msg.sender)]) / 1000 <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] - ((1000 * stor15[address(msg.sender)]) - (5 * block.timestamp + -stor9[address(msg.sender)] - (8640 * 24 * 3600) / 24 * 3600 * stor15[address(msg.sender)]) / 1000) >= arg2
        if 3 == stor14[address(msg.sender)]:
            require block.timestamp > stor9[address(msg.sender)] + (4320 * 24 * 3600)
            if block.timestamp + -stor9[address(msg.sender)] - (4320 * 24 * 3600) / 24 * 3600 >= 200:
                stor11[address(msg.sender)] = 0
            else:
                require block.timestamp + -stor9[address(msg.sender)] - (4320 * 24 * 3600) / 24 * 3600 <= 200
                require balanceOf[address(msg.sender)] >= (1000 * stor15[address(msg.sender)]) - (5 * block.timestamp + -stor9[address(msg.sender)] - (4320 * 24 * 3600) / 24 * 3600 * stor15[address(msg.sender)]) / 1000
                require (1000 * stor15[address(msg.sender)]) - (5 * block.timestamp + -stor9[address(msg.sender)] - (4320 * 24 * 3600) / 24 * 3600 * stor15[address(msg.sender)]) / 1000 <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] - ((1000 * stor15[address(msg.sender)]) - (5 * block.timestamp + -stor9[address(msg.sender)] - (4320 * 24 * 3600) / 24 * 3600 * stor15[address(msg.sender)]) / 1000) >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    if 1 == bool(stor11[address(msg.sender)]):
        if 1 == stor14[address(msg.sender)]:
            require block.timestamp > stor9[address(msg.sender)] + (17280 * 24 * 3600)
            if block.timestamp + -stor9[address(msg.sender)] - (17280 * 24 * 3600) / 24 * 3600 >= 100:
                stor11[address(msg.sender)] = 0
            else:
                require block.timestamp + -stor9[address(msg.sender)] - (17280 * 24 * 3600) / 24 * 3600 <= 100
                require balanceOf[address(msg.sender)] >= (100 * stor15[address(msg.sender)]) - (block.timestamp + -stor9[address(msg.sender)] - (17280 * 24 * 3600) / 24 * 3600 * stor15[address(msg.sender)]) / 100
                require (100 * stor15[address(msg.sender)]) - (block.timestamp + -stor9[address(msg.sender)] - (17280 * 24 * 3600) / 24 * 3600 * stor15[address(msg.sender)]) / 100 <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] - ((100 * stor15[address(msg.sender)]) - (block.timestamp + -stor9[address(msg.sender)] - (17280 * 24 * 3600) / 24 * 3600 * stor15[address(msg.sender)]) / 100) >= arg3
        if 2 == stor14[address(msg.sender)]:
            require block.timestamp > stor9[address(msg.sender)] + (8640 * 24 * 3600)
            if block.timestamp + -stor9[address(msg.sender)] - (8640 * 24 * 3600) / 24 * 3600 >= 200:
                stor11[address(msg.sender)] = 0
            else:
                require block.timestamp + -stor9[address(msg.sender)] - (8640 * 24 * 3600) / 24 * 3600 <= 200
                require balanceOf[address(msg.sender)] >= (1000 * stor15[address(msg.sender)]) - (5 * block.timestamp + -stor9[address(msg.sender)] - (8640 * 24 * 3600) / 24 * 3600 * stor15[address(msg.sender)]) / 1000
                require (1000 * stor15[address(msg.sender)]) - (5 * block.timestamp + -stor9[address(msg.sender)] - (8640 * 24 * 3600) / 24 * 3600 * stor15[address(msg.sender)]) / 1000 <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] - ((1000 * stor15[address(msg.sender)]) - (5 * block.timestamp + -stor9[address(msg.sender)] - (8640 * 24 * 3600) / 24 * 3600 * stor15[address(msg.sender)]) / 1000) >= arg3
        if 3 == stor14[address(msg.sender)]:
            require block.timestamp > stor9[address(msg.sender)] + (4320 * 24 * 3600)
            if block.timestamp + -stor9[address(msg.sender)] - (4320 * 24 * 3600) / 24 * 3600 >= 200:
                stor11[address(msg.sender)] = 0
            else:
                require block.timestamp + -stor9[address(msg.sender)] - (4320 * 24 * 3600) / 24 * 3600 <= 200
                require balanceOf[address(msg.sender)] >= (1000 * stor15[address(msg.sender)]) - (5 * block.timestamp + -stor9[address(msg.sender)] - (4320 * 24 * 3600) / 24 * 3600 * stor15[address(msg.sender)]) / 1000
                require (1000 * stor15[address(msg.sender)]) - (5 * block.timestamp + -stor9[address(msg.sender)] - (4320 * 24 * 3600) / 24 * 3600 * stor15[address(msg.sender)]) / 1000 <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] - ((1000 * stor15[address(msg.sender)]) - (5 * block.timestamp + -stor9[address(msg.sender)] - (4320 * 24 * 3600) / 24 * 3600 * stor15[address(msg.sender)]) / 1000) >= arg3
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_7a144196(?) {
    require 1 == bool(stor16[address(msg.sender)])
    require bool(stor11[address(arg1)]) != 1
    if c < 0:
        require balanceOf[stor4] >= 0
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require 0 <= balanceOf[stor4]
        balanceOf[stor4] = balanceOf[stor4]
        stor15[address(arg1)] = 0
        require c >= c
        stor14[address(arg1)] = 3
        stor11[address(arg1)] = 1
        stor9[address(arg1)] = block.timestamp
        emit Transfer(0, adminAddress, arg1);
    else:
        if c < 100000000 * 10^18:
            require balanceOf[stor4] >= 100000 * arg2
            require (100000 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += 100000 * arg2
            require 100000 * arg2 <= balanceOf[stor4]
            balanceOf[stor4] += -100000 * arg2
            stor15[address(arg1)] = 100000 * arg2
            require (100000 * arg2) + c >= c
            c += 100000 * arg2
            stor14[address(arg1)] = 3
            stor11[address(arg1)] = 1
            stor9[address(arg1)] = block.timestamp
            emit Transfer((100000 * arg2), adminAddress, arg1);
        else:
            if c < 200000000 * 10^18:
                require balanceOf[stor4] >= 25 * 3600 * arg2
                require (25 * 3600 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += 25 * 3600 * arg2
                require 25 * 3600 * arg2 <= balanceOf[stor4]
                balanceOf[stor4] += -90000 * arg2
                stor15[address(arg1)] = 25 * 3600 * arg2
                require (25 * 3600 * arg2) + c >= c
                c += 25 * 3600 * arg2
                stor14[address(arg1)] = 3
                stor11[address(arg1)] = 1
                stor9[address(arg1)] = block.timestamp
                emit Transfer((25 * 3600 * arg2), adminAddress, arg1);
            else:
                if c < 300000000 * 10^18:
                    require balanceOf[stor4] >= 80000 * arg2
                    require (80000 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 80000 * arg2
                    require 80000 * arg2 <= balanceOf[stor4]
                    balanceOf[stor4] += -80000 * arg2
                    stor15[address(arg1)] = 80000 * arg2
                    require (80000 * arg2) + c >= c
                    c += 80000 * arg2
                    stor14[address(arg1)] = 3
                    stor11[address(arg1)] = 1
                    stor9[address(arg1)] = block.timestamp
                    emit Transfer((80000 * arg2), adminAddress, arg1);
                else:
                    if c < 400000000 * 10^18:
                        require balanceOf[stor4] >= 70000 * arg2
                        require (70000 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 70000 * arg2
                        require 70000 * arg2 <= balanceOf[stor4]
                        balanceOf[stor4] += -70000 * arg2
                        stor15[address(arg1)] = 70000 * arg2
                        require (70000 * arg2) + c >= c
                        c += 70000 * arg2
                        stor14[address(arg1)] = 3
                        stor11[address(arg1)] = 1
                        stor9[address(arg1)] = block.timestamp
                        emit Transfer((70000 * arg2), adminAddress, arg1);
                    else:
                        if c < 500000000 * 10^18:
                            require balanceOf[stor4] >= 60000 * arg2
                            require (60000 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 60000 * arg2
                            require 60000 * arg2 <= balanceOf[stor4]
                            balanceOf[stor4] += -60000 * arg2
                            stor15[address(arg1)] = 60000 * arg2
                            require (60000 * arg2) + c >= c
                            c += 60000 * arg2
                            stor14[address(arg1)] = 3
                            stor11[address(arg1)] = 1
                            stor9[address(arg1)] = block.timestamp
                            emit Transfer((60000 * arg2), adminAddress, arg1);
                        else:
                            if c < 600000000 * 10^18:
                                require balanceOf[stor4] >= 50000 * arg2
                                require (50000 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 50000 * arg2
                                require 50000 * arg2 <= balanceOf[stor4]
                                balanceOf[stor4] += -50000 * arg2
                                stor15[address(arg1)] = 50000 * arg2
                                require (50000 * arg2) + c >= c
                                c += 50000 * arg2
                                stor14[address(arg1)] = 3
                                stor11[address(arg1)] = 1
                                stor9[address(arg1)] = block.timestamp
                                emit Transfer((50000 * arg2), adminAddress, arg1);
                            else:
                                if c < 700000000 * 10^18:
                                    require balanceOf[stor4] >= 40000 * arg2
                                    require (40000 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += 40000 * arg2
                                    require 40000 * arg2 <= balanceOf[stor4]
                                    balanceOf[stor4] += -40000 * arg2
                                    stor15[address(arg1)] = 40000 * arg2
                                    require (40000 * arg2) + c >= c
                                    c += 40000 * arg2
                                    stor14[address(arg1)] = 3
                                    stor11[address(arg1)] = 1
                                    stor9[address(arg1)] = block.timestamp
                                    emit Transfer((40000 * arg2), adminAddress, arg1);
                                else:
                                    if c < 800000000 * 10^18:
                                        require balanceOf[stor4] >= 30000 * arg2
                                        require (30000 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] += 30000 * arg2
                                        require 30000 * arg2 <= balanceOf[stor4]
                                        balanceOf[stor4] += -30000 * arg2
                                        stor15[address(arg1)] = 30000 * arg2
                                        require (30000 * arg2) + c >= c
                                        c += 30000 * arg2
                                        stor14[address(arg1)] = 3
                                        stor11[address(arg1)] = 1
                                        stor9[address(arg1)] = block.timestamp
                                        emit Transfer((30000 * arg2), adminAddress, arg1);
                                    else:
                                        if c >= 250000 * 10^18 * 3600:
                                            require balanceOf[stor4] >= 0
                                            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            require 0 <= balanceOf[stor4]
                                            balanceOf[stor4] = balanceOf[stor4]
                                            stor15[address(arg1)] = 0
                                            require c >= c
                                            stor14[address(arg1)] = 3
                                            stor11[address(arg1)] = 1
                                            stor9[address(arg1)] = block.timestamp
                                            emit Transfer(0, adminAddress, arg1);
                                        else:
                                            require balanceOf[stor4] >= 20000 * arg2
                                            require (20000 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] += 20000 * arg2
                                            require 20000 * arg2 <= balanceOf[stor4]
                                            balanceOf[stor4] += -20000 * arg2
                                            stor15[address(arg1)] = 20000 * arg2
                                            require (20000 * arg2) + c >= c
                                            c += 20000 * arg2
                                            stor14[address(arg1)] = 3
                                            stor11[address(arg1)] = 1
                                            stor9[address(arg1)] = block.timestamp
                                            emit Transfer((20000 * arg2), adminAddress, arg1);
    return 0
}



}

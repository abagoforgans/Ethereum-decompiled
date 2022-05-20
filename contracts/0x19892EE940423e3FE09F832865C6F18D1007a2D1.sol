contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
uint256 stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
mapping of uint256 stor11;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = 'hyaimm333' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 0xc96d7e0a9a800576cc9ad42931e9f24a05ae6fdb
    stor4 = 0xc96d7e0a9a800576cc9ad42931e9f24a05ae6fdb
    stor5 = 0
    stor6 = 0
    stor7 = 0
    require not msg.value
    stor0 = msg.sender
    stor2 = 10^18 * code.data[7394 len 32]
    stor11[stor3] = 10^18 * code.data[7394 len 32]
    emit Transfer((10^18 * code.data[7394 len 32]), 0, stor3);
    return code.data[499 len 6895]
}



// =====================  Runtime code  =====================


const name = 'hyaimm333'

const decimals = 18


address owner;
array of uint256 symbol;
uint256 totalSupply;
address adminAddress;
uint8 abc; offset 160
address sub_2cb652cbAddress;
uint256 a;
uint256 b;
uint256 c;
mapping of uint256 stor8;
mapping of uint8 stor10;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor13;
mapping of uint256 stor14;
mapping of uint8 stor15;

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
    stor15[address(arg1)] = 1
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
    require 1 == bool(stor15[address(msg.sender)])
    require bool(stor10[address(arg1)]) != 1
    require b < 200000000 * 10^18
    if not arg2 / 10^16:
        require balanceOf[stor3] >= 0
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require 0 <= balanceOf[stor3]
        balanceOf[stor3] = balanceOf[stor3]
        stor13[address(arg1)] = 2
        stor10[address(arg1)] = 1
        stor8[address(arg1)] = block.timestamp
        stor14[address(arg1)] = 0
        require b >= b
        emit Transfer(0, adminAddress, arg1);
    else:
        require 2000000 * 10^18 * arg2 / 10^16 / arg2 / 10^16 == 2000000 * 10^18
        require balanceOf[stor3] >= 2000000 * 10^18 * arg2 / 10^16
        require (2000000 * 10^18 * arg2 / 10^16) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 2000000 * 10^18 * arg2 / 10^16
        require 2000000 * 10^18 * arg2 / 10^16 <= balanceOf[stor3]
        balanceOf[stor3] += -2000000 * 10^18 * arg2 / 10^16
        stor13[address(arg1)] = 2
        stor10[address(arg1)] = 1
        stor8[address(arg1)] = block.timestamp
        stor14[address(arg1)] = 2000000 * 10^18 * arg2 / 10^16
        require (2000000 * 10^18 * arg2 / 10^16) + b >= b
        b += 2000000 * 10^18 * arg2 / 10^16
        emit Transfer((2000000 * 10^18 * arg2 / 10^16), adminAddress, arg1);
    return 1
}

function _fallback() payable {
    require bool(stor10[address(msg.sender)]) != 1
    require a < 100000000 * 10^18
    if not msg.value / 5 * 10^16:
        require balanceOf[stor3] >= 0
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require 0 <= balanceOf[stor3]
        balanceOf[stor3] = balanceOf[stor3]
        stor13[address(msg.sender)] = 1
        stor10[address(msg.sender)] = 1
        call sub_2cb652cbAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        stor8[address(msg.sender)] = block.timestamp
        stor14[address(msg.sender)] = 0
        require a >= a
        emit Transfer(0, adminAddress, msg.sender);
    else:
        require 20000000 * 10^18 * msg.value / 5 * 10^16 / msg.value / 5 * 10^16 == 20000000 * 10^18
        require balanceOf[stor3] >= 20000000 * 10^18 * msg.value / 5 * 10^16
        require (20000000 * 10^18 * msg.value / 5 * 10^16) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 20000000 * 10^18 * msg.value / 5 * 10^16
        require 20000000 * 10^18 * msg.value / 5 * 10^16 <= balanceOf[stor3]
        balanceOf[stor3] += -20000000 * 10^18 * msg.value / 5 * 10^16
        stor13[address(msg.sender)] = 1
        stor10[address(msg.sender)] = 1
        call sub_2cb652cbAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        stor8[address(msg.sender)] = block.timestamp
        stor14[address(msg.sender)] = 20000000 * 10^18 * msg.value / 5 * 10^16
        require (20000000 * 10^18 * msg.value / 5 * 10^16) + a >= a
        a += 20000000 * 10^18 * msg.value / 5 * 10^16
        emit Transfer((20000000 * 10^18 * msg.value / 5 * 10^16), adminAddress, msg.sender);
}

function sub_c421d2fe(?) {
    if 1 == stor13[address(arg1)]:
        require block.timestamp > stor8[address(arg1)] + (2 * 3600)
        if block.timestamp + -stor8[address(arg1)] - (2 * 3600) / 1800 < 100:
            require balanceOf[address(arg1)] >= (100 * stor14[address(arg1)]) - (block.timestamp + -stor8[address(arg1)] - (2 * 3600) / 1800 * stor14[address(arg1)]) / 100
            if (100 * stor14[address(arg1)]) - (block.timestamp + -stor8[address(arg1)] - (2 * 3600) / 1800 * stor14[address(arg1)]) / 100 <= balanceOf[address(arg1)]:
                return (balanceOf[address(arg1)] - ((100 * stor14[address(arg1)]) - (block.timestamp + -stor8[address(arg1)] - (2 * 3600) / 1800 * stor14[address(arg1)]) / 100))
        else:
            require balanceOf[address(arg1)] >= 0
            if 0 <= balanceOf[address(arg1)]:
                return balanceOf[address(arg1)]
    else:
        if 2 == stor13[address(arg1)]:
            require block.timestamp > stor8[address(arg1)] + 3600
            if block.timestamp + -stor8[address(arg1)] - 3600 / 1200 < 200:
                require balanceOf[address(arg1)] >= (1000 * stor14[address(arg1)]) - (5 * block.timestamp + -stor8[address(arg1)] - 3600 / 1200 * stor14[address(arg1)]) / 1000
                if (1000 * stor14[address(arg1)]) - (5 * block.timestamp + -stor8[address(arg1)] - 3600 / 1200 * stor14[address(arg1)]) / 1000 <= balanceOf[address(arg1)]:
                    return (balanceOf[address(arg1)] - ((1000 * stor14[address(arg1)]) - (5 * block.timestamp + -stor8[address(arg1)] - 3600 / 1200 * stor14[address(arg1)]) / 1000))
            else:
                require balanceOf[address(arg1)] >= 0
                if 0 <= balanceOf[address(arg1)]:
                    return balanceOf[address(arg1)]
        else:
            if stor13[address(arg1)] != 3:
                return 0
            require block.timestamp > stor8[address(arg1)] + 1800
            if block.timestamp + -stor8[address(arg1)] - 1800 / 600 < 200:
                require balanceOf[address(arg1)] >= (1000 * stor14[address(arg1)]) - (5 * block.timestamp + -stor8[address(arg1)] - 1800 / 600 * stor14[address(arg1)]) / 1000
                if (1000 * stor14[address(arg1)]) - (5 * block.timestamp + -stor8[address(arg1)] - 1800 / 600 * stor14[address(arg1)]) / 1000 <= balanceOf[address(arg1)]:
                    return (balanceOf[address(arg1)] - ((1000 * stor14[address(arg1)]) - (5 * block.timestamp + -stor8[address(arg1)] - 1800 / 600 * stor14[address(arg1)]) / 1000))
            else:
                require balanceOf[address(arg1)] >= 0
                if 0 <= balanceOf[address(arg1)]:
                    return balanceOf[address(arg1)]
    revert
}

function sub_c4b7e3ef(?) {
    if 1 == stor13[address(msg.sender)]:
        require block.timestamp > stor8[address(msg.sender)] + (2 * 3600)
        if block.timestamp + -stor8[address(msg.sender)] - (2 * 3600) / 1800 >= 100:
            stor10[address(msg.sender)] = 0
        else:
            require block.timestamp + -stor8[address(msg.sender)] - (2 * 3600) / 1800 <= 100
            require balanceOf[address(msg.sender)] >= (100 * stor14[address(msg.sender)]) - (block.timestamp + -stor8[address(msg.sender)] - (2 * 3600) / 1800 * stor14[address(msg.sender)]) / 100
            require (100 * stor14[address(msg.sender)]) - (block.timestamp + -stor8[address(msg.sender)] - (2 * 3600) / 1800 * stor14[address(msg.sender)]) / 100 <= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] - ((100 * stor14[address(msg.sender)]) - (block.timestamp + -stor8[address(msg.sender)] - (2 * 3600) / 1800 * stor14[address(msg.sender)]) / 100) >= arg1
    if 2 == stor13[address(msg.sender)]:
        require block.timestamp > stor8[address(msg.sender)] + 3600
        if block.timestamp + -stor8[address(msg.sender)] - 3600 / 1200 >= 200:
            stor10[address(msg.sender)] = 0
        else:
            require block.timestamp + -stor8[address(msg.sender)] - 3600 / 1200 <= 200
            require balanceOf[address(msg.sender)] >= (1000 * stor14[address(msg.sender)]) - (5 * block.timestamp + -stor8[address(msg.sender)] - 3600 / 1200 * stor14[address(msg.sender)]) / 1000
            require (1000 * stor14[address(msg.sender)]) - (5 * block.timestamp + -stor8[address(msg.sender)] - 3600 / 1200 * stor14[address(msg.sender)]) / 1000 <= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] - ((1000 * stor14[address(msg.sender)]) - (5 * block.timestamp + -stor8[address(msg.sender)] - 3600 / 1200 * stor14[address(msg.sender)]) / 1000) >= arg1
    if 3 == stor13[address(msg.sender)]:
        require block.timestamp > stor8[address(msg.sender)] + 1800
        if block.timestamp + -stor8[address(msg.sender)] - 1800 / 600 >= 200:
            stor10[address(msg.sender)] = 0
        else:
            require block.timestamp + -stor8[address(msg.sender)] - 1800 / 600 <= 200
            require balanceOf[address(msg.sender)] >= (1000 * stor14[address(msg.sender)]) - (5 * block.timestamp + -stor8[address(msg.sender)] - 1800 / 600 * stor14[address(msg.sender)]) / 1000
            require (1000 * stor14[address(msg.sender)]) - (5 * block.timestamp + -stor8[address(msg.sender)] - 1800 / 600 * stor14[address(msg.sender)]) / 1000 <= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] - ((1000 * stor14[address(msg.sender)]) - (5 * block.timestamp + -stor8[address(msg.sender)] - 1800 / 600 * stor14[address(msg.sender)]) / 1000) >= arg1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    if 1 == bool(stor10[address(msg.sender)]):
        if 1 == stor13[address(msg.sender)]:
            require block.timestamp > stor8[address(msg.sender)] + (2 * 3600)
            if block.timestamp + -stor8[address(msg.sender)] - (2 * 3600) / 1800 >= 100:
                stor10[address(msg.sender)] = 0
            else:
                require block.timestamp + -stor8[address(msg.sender)] - (2 * 3600) / 1800 <= 100
                require balanceOf[address(msg.sender)] >= (100 * stor14[address(msg.sender)]) - (block.timestamp + -stor8[address(msg.sender)] - (2 * 3600) / 1800 * stor14[address(msg.sender)]) / 100
                require (100 * stor14[address(msg.sender)]) - (block.timestamp + -stor8[address(msg.sender)] - (2 * 3600) / 1800 * stor14[address(msg.sender)]) / 100 <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] - ((100 * stor14[address(msg.sender)]) - (block.timestamp + -stor8[address(msg.sender)] - (2 * 3600) / 1800 * stor14[address(msg.sender)]) / 100) >= arg2
        if 2 == stor13[address(msg.sender)]:
            require block.timestamp > stor8[address(msg.sender)] + 3600
            if block.timestamp + -stor8[address(msg.sender)] - 3600 / 1200 >= 200:
                stor10[address(msg.sender)] = 0
            else:
                require block.timestamp + -stor8[address(msg.sender)] - 3600 / 1200 <= 200
                require balanceOf[address(msg.sender)] >= (1000 * stor14[address(msg.sender)]) - (5 * block.timestamp + -stor8[address(msg.sender)] - 3600 / 1200 * stor14[address(msg.sender)]) / 1000
                require (1000 * stor14[address(msg.sender)]) - (5 * block.timestamp + -stor8[address(msg.sender)] - 3600 / 1200 * stor14[address(msg.sender)]) / 1000 <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] - ((1000 * stor14[address(msg.sender)]) - (5 * block.timestamp + -stor8[address(msg.sender)] - 3600 / 1200 * stor14[address(msg.sender)]) / 1000) >= arg2
        if 3 == stor13[address(msg.sender)]:
            require block.timestamp > stor8[address(msg.sender)] + 1800
            if block.timestamp + -stor8[address(msg.sender)] - 1800 / 600 >= 200:
                stor10[address(msg.sender)] = 0
            else:
                require block.timestamp + -stor8[address(msg.sender)] - 1800 / 600 <= 200
                require balanceOf[address(msg.sender)] >= (1000 * stor14[address(msg.sender)]) - (5 * block.timestamp + -stor8[address(msg.sender)] - 1800 / 600 * stor14[address(msg.sender)]) / 1000
                require (1000 * stor14[address(msg.sender)]) - (5 * block.timestamp + -stor8[address(msg.sender)] - 1800 / 600 * stor14[address(msg.sender)]) / 1000 <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] - ((1000 * stor14[address(msg.sender)]) - (5 * block.timestamp + -stor8[address(msg.sender)] - 1800 / 600 * stor14[address(msg.sender)]) / 1000) >= arg2
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
    if 1 == bool(stor10[address(msg.sender)]):
        if 1 == stor13[address(msg.sender)]:
            require block.timestamp > stor8[address(msg.sender)] + (2 * 3600)
            if block.timestamp + -stor8[address(msg.sender)] - (2 * 3600) / 1800 >= 100:
                stor10[address(msg.sender)] = 0
            else:
                require block.timestamp + -stor8[address(msg.sender)] - (2 * 3600) / 1800 <= 100
                require balanceOf[address(msg.sender)] >= (100 * stor14[address(msg.sender)]) - (block.timestamp + -stor8[address(msg.sender)] - (2 * 3600) / 1800 * stor14[address(msg.sender)]) / 100
                require (100 * stor14[address(msg.sender)]) - (block.timestamp + -stor8[address(msg.sender)] - (2 * 3600) / 1800 * stor14[address(msg.sender)]) / 100 <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] - ((100 * stor14[address(msg.sender)]) - (block.timestamp + -stor8[address(msg.sender)] - (2 * 3600) / 1800 * stor14[address(msg.sender)]) / 100) >= arg3
        if 2 == stor13[address(msg.sender)]:
            require block.timestamp > stor8[address(msg.sender)] + 3600
            if block.timestamp + -stor8[address(msg.sender)] - 3600 / 1200 >= 200:
                stor10[address(msg.sender)] = 0
            else:
                require block.timestamp + -stor8[address(msg.sender)] - 3600 / 1200 <= 200
                require balanceOf[address(msg.sender)] >= (1000 * stor14[address(msg.sender)]) - (5 * block.timestamp + -stor8[address(msg.sender)] - 3600 / 1200 * stor14[address(msg.sender)]) / 1000
                require (1000 * stor14[address(msg.sender)]) - (5 * block.timestamp + -stor8[address(msg.sender)] - 3600 / 1200 * stor14[address(msg.sender)]) / 1000 <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] - ((1000 * stor14[address(msg.sender)]) - (5 * block.timestamp + -stor8[address(msg.sender)] - 3600 / 1200 * stor14[address(msg.sender)]) / 1000) >= arg3
        if 3 == stor13[address(msg.sender)]:
            require block.timestamp > stor8[address(msg.sender)] + 1800
            if block.timestamp + -stor8[address(msg.sender)] - 1800 / 600 >= 200:
                stor10[address(msg.sender)] = 0
            else:
                require block.timestamp + -stor8[address(msg.sender)] - 1800 / 600 <= 200
                require balanceOf[address(msg.sender)] >= (1000 * stor14[address(msg.sender)]) - (5 * block.timestamp + -stor8[address(msg.sender)] - 1800 / 600 * stor14[address(msg.sender)]) / 1000
                require (1000 * stor14[address(msg.sender)]) - (5 * block.timestamp + -stor8[address(msg.sender)] - 1800 / 600 * stor14[address(msg.sender)]) / 1000 <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] - ((1000 * stor14[address(msg.sender)]) - (5 * block.timestamp + -stor8[address(msg.sender)] - 1800 / 600 * stor14[address(msg.sender)]) / 1000) >= arg3
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
    require 1 == bool(stor15[address(msg.sender)])
    require bool(stor10[address(arg1)]) != 1
    if c < 0:
        require balanceOf[stor3] >= 0
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require 0 <= balanceOf[stor3]
        balanceOf[stor3] = balanceOf[stor3]
        stor14[address(arg1)] = 0
        require c >= c
        stor13[address(arg1)] = 3
        stor10[address(arg1)] = 1
        stor8[address(arg1)] = block.timestamp
        emit Transfer(0, adminAddress, arg1);
    else:
        if c < 1000000 * 10^18:
            require balanceOf[stor3] >= 100 * 10^6 * arg2
            require (100 * 10^6 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += 100 * 10^6 * arg2
            require 100 * 10^6 * arg2 <= balanceOf[stor3]
            balanceOf[stor3] += -100 * 10^6 * arg2
            stor14[address(arg1)] = 100 * 10^6 * arg2
            require (100 * 10^6 * arg2) + c >= c
            c += 100 * 10^6 * arg2
            stor13[address(arg1)] = 3
            stor10[address(arg1)] = 1
            stor8[address(arg1)] = block.timestamp
            emit Transfer((100 * 10^6 * arg2), adminAddress, arg1);
        else:
            if c < 1900000 * 10^18:
                require balanceOf[stor3] >= 25000 * 3600 * arg2
                require (25000 * 3600 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += 25000 * 3600 * arg2
                require 25000 * 3600 * arg2 <= balanceOf[stor3]
                balanceOf[stor3] += -90 * 10^6 * arg2
                stor14[address(arg1)] = 25000 * 3600 * arg2
                require (25000 * 3600 * arg2) + c >= c
                c += 25000 * 3600 * arg2
                stor13[address(arg1)] = 3
                stor10[address(arg1)] = 1
                stor8[address(arg1)] = block.timestamp
                emit Transfer((25000 * 3600 * arg2), adminAddress, arg1);
            else:
                if c < 750 * 10^18 * 24 * 3600:
                    require balanceOf[stor3] >= 80 * 10^6 * arg2
                    require (80 * 10^6 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 80 * 10^6 * arg2
                    require 80 * 10^6 * arg2 <= balanceOf[stor3]
                    balanceOf[stor3] += -80 * 10^6 * arg2
                    stor14[address(arg1)] = 80 * 10^6 * arg2
                    require (80 * 10^6 * arg2) + c >= c
                    c += 80 * 10^6 * arg2
                    stor13[address(arg1)] = 3
                    stor10[address(arg1)] = 1
                    stor8[address(arg1)] = block.timestamp
                    emit Transfer((80 * 10^6 * arg2), adminAddress, arg1);
                else:
                    if c < 3400000 * 10^18:
                        require balanceOf[stor3] >= 70 * 10^6 * arg2
                        require (70 * 10^6 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 70 * 10^6 * arg2
                        require 70 * 10^6 * arg2 <= balanceOf[stor3]
                        balanceOf[stor3] += -70 * 10^6 * arg2
                        stor14[address(arg1)] = 70 * 10^6 * arg2
                        require (70 * 10^6 * arg2) + c >= c
                        c += 70 * 10^6 * arg2
                        stor13[address(arg1)] = 3
                        stor10[address(arg1)] = 1
                        stor8[address(arg1)] = block.timestamp
                        emit Transfer((70 * 10^6 * arg2), adminAddress, arg1);
                    else:
                        if c < 4000000 * 10^18:
                            require balanceOf[stor3] >= 60 * 10^6 * arg2
                            require (60 * 10^6 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 60 * 10^6 * arg2
                            require 60 * 10^6 * arg2 <= balanceOf[stor3]
                            balanceOf[stor3] += -60 * 10^6 * arg2
                            stor14[address(arg1)] = 60 * 10^6 * arg2
                            require (60 * 10^6 * arg2) + c >= c
                            c += 60 * 10^6 * arg2
                            stor13[address(arg1)] = 3
                            stor10[address(arg1)] = 1
                            stor8[address(arg1)] = block.timestamp
                            emit Transfer((60 * 10^6 * arg2), adminAddress, arg1);
                        else:
                            if c < 1250 * 10^18 * 3600:
                                require balanceOf[stor3] >= 50 * 10^6 * arg2
                                require (50 * 10^6 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 50 * 10^6 * arg2
                                require 50 * 10^6 * arg2 <= balanceOf[stor3]
                                balanceOf[stor3] += -50 * 10^6 * arg2
                                stor14[address(arg1)] = 50 * 10^6 * arg2
                                require (50 * 10^6 * arg2) + c >= c
                                c += 50 * 10^6 * arg2
                                stor13[address(arg1)] = 3
                                stor10[address(arg1)] = 1
                                stor8[address(arg1)] = block.timestamp
                                emit Transfer((50 * 10^6 * arg2), adminAddress, arg1);
                            else:
                                if c < 4900000 * 10^18:
                                    require balanceOf[stor3] >= 40 * 10^6 * arg2
                                    require (40 * 10^6 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += 40 * 10^6 * arg2
                                    require 40 * 10^6 * arg2 <= balanceOf[stor3]
                                    balanceOf[stor3] += -40 * 10^6 * arg2
                                    stor14[address(arg1)] = 40 * 10^6 * arg2
                                    require (40 * 10^6 * arg2) + c >= c
                                    c += 40 * 10^6 * arg2
                                    stor13[address(arg1)] = 3
                                    stor10[address(arg1)] = 1
                                    stor8[address(arg1)] = block.timestamp
                                    emit Transfer((40 * 10^6 * arg2), adminAddress, arg1);
                                else:
                                    if c < 5200000 * 10^18:
                                        require balanceOf[stor3] >= 30 * 10^6 * arg2
                                        require (30 * 10^6 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] += 30 * 10^6 * arg2
                                        require 30 * 10^6 * arg2 <= balanceOf[stor3]
                                        balanceOf[stor3] += -30 * 10^6 * arg2
                                        stor14[address(arg1)] = 30 * 10^6 * arg2
                                        require (30 * 10^6 * arg2) + c >= c
                                        c += 30 * 10^6 * arg2
                                        stor13[address(arg1)] = 3
                                        stor10[address(arg1)] = 1
                                        stor8[address(arg1)] = block.timestamp
                                        emit Transfer((30 * 10^6 * arg2), adminAddress, arg1);
                                    else:
                                        if c >= 1500 * 10^18 * 24 * 3600:
                                            require balanceOf[stor3] >= 0
                                            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            require 0 <= balanceOf[stor3]
                                            balanceOf[stor3] = balanceOf[stor3]
                                            stor14[address(arg1)] = 0
                                            require c >= c
                                            stor13[address(arg1)] = 3
                                            stor10[address(arg1)] = 1
                                            stor8[address(arg1)] = block.timestamp
                                            emit Transfer(0, adminAddress, arg1);
                                        else:
                                            require balanceOf[stor3] >= 20 * 10^6 * arg2
                                            require (20 * 10^6 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] += 20 * 10^6 * arg2
                                            require 20 * 10^6 * arg2 <= balanceOf[stor3]
                                            balanceOf[stor3] += -20 * 10^6 * arg2
                                            stor14[address(arg1)] = 20 * 10^6 * arg2
                                            require (20 * 10^6 * arg2) + c >= c
                                            c += 20 * 10^6 * arg2
                                            stor13[address(arg1)] = 3
                                            stor10[address(arg1)] = 1
                                            stor8[address(arg1)] = block.timestamp
                                            emit Transfer((20 * 10^6 * arg2), adminAddress, arg1);
    return 0
}



}

contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1;
uint256 stor1; offset 8
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
mapping of uint256 stor6;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;

function _fallback() payable {
    stor0 = 0
    uint8(stor1.field_0) = 1
    Mask(248, 0, stor1.field_8) = 1
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'PTC' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 15000000 * 10^18
    stor4 = 1200000 * 10^18
    require not msg.value
    stor5 = msg.sender
    stor6[address(msg.sender)] = stor3
    stor8 = block.timestamp
    require block.timestamp + 300 >= block.timestamp
    stor9 = block.timestamp + 300
    require stor9 + 180 >= stor9
    stor10 = stor9 + 180
    require stor10 + 120 >= stor10
    stor11 = stor10 + 120
    require stor11 + 120 >= stor11
    stor12 = stor11 + 120
    return code.data[721 len 6746]
}



// =====================  Runtime code  =====================


#
#  - createTokens()
#
const name = 'PosteCoin'

const decimals = 18

const RATE = 500


uint256 totalSupply;
uint8 stor1;
uint8 stor1; offset 8
uint256 stor1; offset 8
array of uint256 symbol;
uint256 CREATOR_TOKEN;
uint256 CREATOR_TOKEN_END;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;

function _totalSupply() {
    return totalSupply
}

function CREATOR_TOKEN_END() {
    return CREATOR_TOKEN_END
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function TotalSupply() {
    return totalSupply
}

function bonusAllowed() {
    return bool(uint8(stor1.field_8))
}

function CREATOR_TOKEN() {
    return CREATOR_TOKEN
}

function purchasingAllowed() {
    return bool(uint8(stor1.field_0))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function enablePurchasing() {
    require msg.sender == owner
    uint8(stor1.field_0) = 1
}

function disablePurchasing() {
    require msg.sender == owner
    uint8(stor1.field_0) = 0
}

function enableBonus() {
    require msg.sender == owner
    Mask(248, 0, stor1.field_8) = 1
}

function disableBonus() {
    require msg.sender == owner
    Mask(248, 0, stor1.field_8) = 0
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(msg.sender)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    if arg1:
        require arg1
        require 10^18 * arg1 / arg1 == 10^18
    require 10^18 * arg1 <= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] - (10^18 * arg1) >= CREATOR_TOKEN_END
    require 10^18 * arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += -1 * 10^18 * arg1
    if totalSupply >= 10^18 * arg1:
        require 10^18 * arg1 <= totalSupply
        totalSupply += -1 * 10^18 * arg1
    emit Burn((10^18 * arg1), msg.sender);
}

function burnAll() {
    require msg.sender == owner
    if balanceOf[address(msg.sender)] > CREATOR_TOKEN_END:
        require CREATOR_TOKEN_END <= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] - CREATOR_TOKEN_END <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = CREATOR_TOKEN_END
        if totalSupply >= balanceOf[address(msg.sender)] - CREATOR_TOKEN_END:
            require balanceOf[address(msg.sender)] - CREATOR_TOKEN_END <= totalSupply
            totalSupply = totalSupply - balanceOf[address(msg.sender)] + CREATOR_TOKEN_END
        emit Burn((balanceOf[address(msg.sender)] - CREATOR_TOKEN_END), msg.sender);
}

function _fallback() payable {
    require uint8(stor1.field_0)
    require msg.value >= 0
    if msg.value:
        require msg.value
        require 10^18 * msg.value / msg.value == 10^18
    if 10^18 * msg.value:
        require 10^18 * msg.value
        require 500 * 10^18 * msg.value / 10^18 * msg.value == 500
    if not uint8(stor1.field_8):
        require 500 * 10^18 * msg.value / 10^18 <= balanceOf[stor5]
        require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) >= CREATOR_TOKEN_END
        require totalSupply + (500 * 10^18 * msg.value / 10^18) >= totalSupply
        require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 500 * 10^18 * msg.value / 10^18
        require 500 * 10^18 * msg.value / 10^18 <= balanceOf[stor5]
        balanceOf[stor5] -= 500 * 10^18 * msg.value / 10^18
        totalSupply += 500 * 10^18 * msg.value / 10^18
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Transfer((500 * 10^18 * msg.value / 10^18), owner, msg.sender);
    else:
        if block.timestamp < stor8:
            if block.timestamp < stor9:
                if block.timestamp < stor10:
                    if block.timestamp < stor11:
                        require 500 * 10^18 * msg.value / 10^18 <= balanceOf[stor5]
                        require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) >= CREATOR_TOKEN_END
                        require totalSupply + (500 * 10^18 * msg.value / 10^18) >= totalSupply
                        require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 500 * 10^18 * msg.value / 10^18
                        require 500 * 10^18 * msg.value / 10^18 <= balanceOf[stor5]
                        balanceOf[stor5] -= 500 * 10^18 * msg.value / 10^18
                        totalSupply += 500 * 10^18 * msg.value / 10^18
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((500 * 10^18 * msg.value / 10^18), owner, msg.sender);
                    else:
                        if block.timestamp >= stor12:
                            require 500 * 10^18 * msg.value / 10^18 <= balanceOf[stor5]
                            require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) >= CREATOR_TOKEN_END
                            require totalSupply + (500 * 10^18 * msg.value / 10^18) >= totalSupply
                            require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 500 * 10^18 * msg.value / 10^18
                            require 500 * 10^18 * msg.value / 10^18 <= balanceOf[stor5]
                            balanceOf[stor5] -= 500 * 10^18 * msg.value / 10^18
                            totalSupply += 500 * 10^18 * msg.value / 10^18
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer((500 * 10^18 * msg.value / 10^18), owner, msg.sender);
                        else:
                            if 500 * 10^18 * msg.value / 10^18:
                                require 500 * 10^18 * msg.value / 10^18
                                require 5 * 500 * 10^18 * msg.value / 10^18 / 500 * 10^18 * msg.value / 10^18 == 5
                            require (500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                            require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (5 * 500 * 10^18 * msg.value / 10^18 / 100) >= CREATOR_TOKEN_END
                            require totalSupply + (500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100) >= totalSupply
                            require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100)
                            require (500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                            balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (5 * 500 * 10^18 * msg.value / 10^18 / 100)
                            totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100)
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer(((500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100)), owner, msg.sender);
                else:
                    if block.timestamp >= stor11:
                        if block.timestamp >= stor12:
                            require 500 * 10^18 * msg.value / 10^18 <= balanceOf[stor5]
                            require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) >= CREATOR_TOKEN_END
                            require totalSupply + (500 * 10^18 * msg.value / 10^18) >= totalSupply
                            require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 500 * 10^18 * msg.value / 10^18
                            require 500 * 10^18 * msg.value / 10^18 <= balanceOf[stor5]
                            balanceOf[stor5] -= 500 * 10^18 * msg.value / 10^18
                            totalSupply += 500 * 10^18 * msg.value / 10^18
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer((500 * 10^18 * msg.value / 10^18), owner, msg.sender);
                        else:
                            if 500 * 10^18 * msg.value / 10^18:
                                require 500 * 10^18 * msg.value / 10^18
                                require 5 * 500 * 10^18 * msg.value / 10^18 / 500 * 10^18 * msg.value / 10^18 == 5
                            require (500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                            require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (5 * 500 * 10^18 * msg.value / 10^18 / 100) >= CREATOR_TOKEN_END
                            require totalSupply + (500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100) >= totalSupply
                            require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100)
                            require (500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                            balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (5 * 500 * 10^18 * msg.value / 10^18 / 100)
                            totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100)
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer(((500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100)), owner, msg.sender);
                    else:
                        if 500 * 10^18 * msg.value / 10^18:
                            require 500 * 10^18 * msg.value / 10^18
                            require 10 * 500 * 10^18 * msg.value / 10^18 / 500 * 10^18 * msg.value / 10^18 == 10
                        if block.timestamp < stor11:
                            require (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                            require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (10 * 500 * 10^18 * msg.value / 10^18 / 100) >= CREATOR_TOKEN_END
                            require totalSupply + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) >= totalSupply
                            require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100)
                            require (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                            balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (10 * 500 * 10^18 * msg.value / 10^18 / 100)
                            totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100)
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer(((500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100)), owner, msg.sender);
                        else:
                            if block.timestamp >= stor12:
                                require (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                                require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (10 * 500 * 10^18 * msg.value / 10^18 / 100) >= CREATOR_TOKEN_END
                                require totalSupply + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) >= totalSupply
                                require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100)
                                require (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                                balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (10 * 500 * 10^18 * msg.value / 10^18 / 100)
                                totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100)
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Transfer(((500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100)), owner, msg.sender);
                            else:
                                if (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100):
                                    require (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100)
                                    require (5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) == 5
                                require (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (10 * 500 * 10^18 * msg.value / 10^18 / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= CREATOR_TOKEN_END
                                require totalSupply + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= totalSupply
                                require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                require (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (10 * 500 * 10^18 * msg.value / 10^18 / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Transfer(((500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)), owner, msg.sender);
            else:
                if block.timestamp >= stor10:
                    if block.timestamp >= stor11:
                        if block.timestamp >= stor12:
                            require 500 * 10^18 * msg.value / 10^18 <= balanceOf[stor5]
                            require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) >= CREATOR_TOKEN_END
                            require totalSupply + (500 * 10^18 * msg.value / 10^18) >= totalSupply
                            require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 500 * 10^18 * msg.value / 10^18
                            require 500 * 10^18 * msg.value / 10^18 <= balanceOf[stor5]
                            balanceOf[stor5] -= 500 * 10^18 * msg.value / 10^18
                            totalSupply += 500 * 10^18 * msg.value / 10^18
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer((500 * 10^18 * msg.value / 10^18), owner, msg.sender);
                        else:
                            if 500 * 10^18 * msg.value / 10^18:
                                require 500 * 10^18 * msg.value / 10^18
                                require 5 * 500 * 10^18 * msg.value / 10^18 / 500 * 10^18 * msg.value / 10^18 == 5
                            require (500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                            require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (5 * 500 * 10^18 * msg.value / 10^18 / 100) >= CREATOR_TOKEN_END
                            require totalSupply + (500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100) >= totalSupply
                            require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100)
                            require (500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                            balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (5 * 500 * 10^18 * msg.value / 10^18 / 100)
                            totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100)
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer(((500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100)), owner, msg.sender);
                    else:
                        if 500 * 10^18 * msg.value / 10^18:
                            require 500 * 10^18 * msg.value / 10^18
                            require 10 * 500 * 10^18 * msg.value / 10^18 / 500 * 10^18 * msg.value / 10^18 == 10
                        if block.timestamp < stor11:
                            require (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                            require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (10 * 500 * 10^18 * msg.value / 10^18 / 100) >= CREATOR_TOKEN_END
                            require totalSupply + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) >= totalSupply
                            require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100)
                            require (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                            balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (10 * 500 * 10^18 * msg.value / 10^18 / 100)
                            totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100)
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer(((500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100)), owner, msg.sender);
                        else:
                            if block.timestamp >= stor12:
                                require (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                                require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (10 * 500 * 10^18 * msg.value / 10^18 / 100) >= CREATOR_TOKEN_END
                                require totalSupply + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) >= totalSupply
                                require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100)
                                require (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                                balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (10 * 500 * 10^18 * msg.value / 10^18 / 100)
                                totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100)
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Transfer(((500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100)), owner, msg.sender);
                            else:
                                if (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100):
                                    require (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100)
                                    require (5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) == 5
                                require (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (10 * 500 * 10^18 * msg.value / 10^18 / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= CREATOR_TOKEN_END
                                require totalSupply + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= totalSupply
                                require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                require (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (10 * 500 * 10^18 * msg.value / 10^18 / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Transfer(((500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)), owner, msg.sender);
                else:
                    if 500 * 10^18 * msg.value / 10^18:
                        require 500 * 10^18 * msg.value / 10^18
                        require 20 * 500 * 10^18 * msg.value / 10^18 / 500 * 10^18 * msg.value / 10^18 == 20
                    if block.timestamp < stor10:
                        if block.timestamp < stor11:
                            require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                            require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) >= CREATOR_TOKEN_END
                            require totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) >= totalSupply
                            require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100)
                            require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                            balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100)
                            totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100)
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer(((500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100)), owner, msg.sender);
                        else:
                            if block.timestamp >= stor12:
                                require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                                require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) >= CREATOR_TOKEN_END
                                require totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) >= totalSupply
                                require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100)
                                require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                                balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100)
                                totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100)
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Transfer(((500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100)), owner, msg.sender);
                            else:
                                if (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100):
                                    require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100)
                                    require (5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) == 5
                                require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= CREATOR_TOKEN_END
                                require totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= totalSupply
                                require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Transfer(((500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)), owner, msg.sender);
                    else:
                        if block.timestamp >= stor11:
                            if block.timestamp >= stor12:
                                require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                                require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) >= CREATOR_TOKEN_END
                                require totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) >= totalSupply
                                require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100)
                                require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                                balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100)
                                totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100)
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Transfer(((500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100)), owner, msg.sender);
                            else:
                                if (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100):
                                    require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100)
                                    require (5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) == 5
                                require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= CREATOR_TOKEN_END
                                require totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= totalSupply
                                require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Transfer(((500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)), owner, msg.sender);
                        else:
                            if (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100):
                                require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100)
                                require (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) == 10
                            if block.timestamp < stor11:
                                require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= CREATOR_TOKEN_END
                                require totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= totalSupply
                                require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Transfer(((500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)), owner, msg.sender);
                            else:
                                if block.timestamp >= stor12:
                                    require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                    require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= CREATOR_TOKEN_END
                                    require totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= totalSupply
                                    require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                    require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                    balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                    totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit Transfer(((500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)), owner, msg.sender);
                                else:
                                    if (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100):
                                        require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                        require (5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) == 5
                                    require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) <= balanceOf[stor5]
                                    require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) >= CREATOR_TOKEN_END
                                    require totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) >= totalSupply
                                    require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)
                                    require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) <= balanceOf[stor5]
                                    balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)
                                    totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit Transfer(((500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)), owner, msg.sender);
        else:
            if block.timestamp >= stor9:
                if block.timestamp >= stor10:
                    if block.timestamp >= stor11:
                        if block.timestamp >= stor12:
                            require 500 * 10^18 * msg.value / 10^18 <= balanceOf[stor5]
                            require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) >= CREATOR_TOKEN_END
                            require totalSupply + (500 * 10^18 * msg.value / 10^18) >= totalSupply
                            require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 500 * 10^18 * msg.value / 10^18
                            require 500 * 10^18 * msg.value / 10^18 <= balanceOf[stor5]
                            balanceOf[stor5] -= 500 * 10^18 * msg.value / 10^18
                            totalSupply += 500 * 10^18 * msg.value / 10^18
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer((500 * 10^18 * msg.value / 10^18), owner, msg.sender);
                        else:
                            if 500 * 10^18 * msg.value / 10^18:
                                require 500 * 10^18 * msg.value / 10^18
                                require 5 * 500 * 10^18 * msg.value / 10^18 / 500 * 10^18 * msg.value / 10^18 == 5
                            require (500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                            require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (5 * 500 * 10^18 * msg.value / 10^18 / 100) >= CREATOR_TOKEN_END
                            require totalSupply + (500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100) >= totalSupply
                            require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100)
                            require (500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                            balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (5 * 500 * 10^18 * msg.value / 10^18 / 100)
                            totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100)
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer(((500 * 10^18 * msg.value / 10^18) + (5 * 500 * 10^18 * msg.value / 10^18 / 100)), owner, msg.sender);
                    else:
                        if 500 * 10^18 * msg.value / 10^18:
                            require 500 * 10^18 * msg.value / 10^18
                            require 10 * 500 * 10^18 * msg.value / 10^18 / 500 * 10^18 * msg.value / 10^18 == 10
                        if block.timestamp < stor11:
                            require (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                            require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (10 * 500 * 10^18 * msg.value / 10^18 / 100) >= CREATOR_TOKEN_END
                            require totalSupply + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) >= totalSupply
                            require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100)
                            require (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                            balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (10 * 500 * 10^18 * msg.value / 10^18 / 100)
                            totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100)
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer(((500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100)), owner, msg.sender);
                        else:
                            if block.timestamp >= stor12:
                                require (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                                require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (10 * 500 * 10^18 * msg.value / 10^18 / 100) >= CREATOR_TOKEN_END
                                require totalSupply + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) >= totalSupply
                                require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100)
                                require (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                                balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (10 * 500 * 10^18 * msg.value / 10^18 / 100)
                                totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100)
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Transfer(((500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100)), owner, msg.sender);
                            else:
                                if (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100):
                                    require (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100)
                                    require (5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) == 5
                                require (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (10 * 500 * 10^18 * msg.value / 10^18 / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= CREATOR_TOKEN_END
                                require totalSupply + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= totalSupply
                                require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                require (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (10 * 500 * 10^18 * msg.value / 10^18 / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Transfer(((500 * 10^18 * msg.value / 10^18) + (10 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 10 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)), owner, msg.sender);
                else:
                    if 500 * 10^18 * msg.value / 10^18:
                        require 500 * 10^18 * msg.value / 10^18
                        require 20 * 500 * 10^18 * msg.value / 10^18 / 500 * 10^18 * msg.value / 10^18 == 20
                    if block.timestamp < stor10:
                        if block.timestamp < stor11:
                            require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                            require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) >= CREATOR_TOKEN_END
                            require totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) >= totalSupply
                            require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100)
                            require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                            balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100)
                            totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100)
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer(((500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100)), owner, msg.sender);
                        else:
                            if block.timestamp >= stor12:
                                require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                                require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) >= CREATOR_TOKEN_END
                                require totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) >= totalSupply
                                require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100)
                                require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                                balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100)
                                totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100)
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Transfer(((500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100)), owner, msg.sender);
                            else:
                                if (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100):
                                    require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100)
                                    require (5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) == 5
                                require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= CREATOR_TOKEN_END
                                require totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= totalSupply
                                require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Transfer(((500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)), owner, msg.sender);
                    else:
                        if block.timestamp >= stor11:
                            if block.timestamp >= stor12:
                                require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                                require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) >= CREATOR_TOKEN_END
                                require totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) >= totalSupply
                                require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100)
                                require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                                balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100)
                                totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100)
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Transfer(((500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100)), owner, msg.sender);
                            else:
                                if (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100):
                                    require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100)
                                    require (5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) == 5
                                require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= CREATOR_TOKEN_END
                                require totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= totalSupply
                                require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Transfer(((500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)), owner, msg.sender);
                        else:
                            if (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100):
                                require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100)
                                require (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) == 10
                            if block.timestamp < stor11:
                                require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= CREATOR_TOKEN_END
                                require totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= totalSupply
                                require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Transfer(((500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)), owner, msg.sender);
                            else:
                                if block.timestamp >= stor12:
                                    require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                    require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= CREATOR_TOKEN_END
                                    require totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= totalSupply
                                    require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                    require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                    balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                    totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit Transfer(((500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)), owner, msg.sender);
                                else:
                                    if (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100):
                                        require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                        require (5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) == 5
                                    require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) <= balanceOf[stor5]
                                    require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) >= CREATOR_TOKEN_END
                                    require totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) >= totalSupply
                                    require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)
                                    require (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) <= balanceOf[stor5]
                                    balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (20 * 500 * 10^18 * msg.value / 10^18 / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)
                                    totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit Transfer(((500 * 10^18 * msg.value / 10^18) + (20 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 20 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)), owner, msg.sender);
            else:
                if 500 * 10^18 * msg.value / 10^18:
                    require 500 * 10^18 * msg.value / 10^18
                    require 50 * 500 * 10^18 * msg.value / 10^18 / 500 * 10^18 * msg.value / 10^18 == 50
                if block.timestamp < stor9:
                    if block.timestamp < stor10:
                        if block.timestamp < stor11:
                            require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                            require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) >= CREATOR_TOKEN_END
                            require totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) >= totalSupply
                            require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100)
                            require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                            balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100)
                            totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100)
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer(((500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100)), owner, msg.sender);
                        else:
                            if block.timestamp >= stor12:
                                require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                                require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) >= CREATOR_TOKEN_END
                                require totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) >= totalSupply
                                require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100)
                                require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                                balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100)
                                totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100)
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Transfer(((500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100)), owner, msg.sender);
                            else:
                                if (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100):
                                    require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100)
                                    require (5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) == 5
                                require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= CREATOR_TOKEN_END
                                require totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= totalSupply
                                require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Transfer(((500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)), owner, msg.sender);
                    else:
                        if block.timestamp >= stor11:
                            if block.timestamp >= stor12:
                                require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                                require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) >= CREATOR_TOKEN_END
                                require totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) >= totalSupply
                                require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100)
                                require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                                balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100)
                                totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100)
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Transfer(((500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100)), owner, msg.sender);
                            else:
                                if (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100):
                                    require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100)
                                    require (5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) == 5
                                require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= CREATOR_TOKEN_END
                                require totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= totalSupply
                                require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Transfer(((500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)), owner, msg.sender);
                        else:
                            if (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100):
                                require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100)
                                require (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) == 10
                            if block.timestamp < stor11:
                                require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= CREATOR_TOKEN_END
                                require totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= totalSupply
                                require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Transfer(((500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)), owner, msg.sender);
                            else:
                                if block.timestamp >= stor12:
                                    require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                    require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= CREATOR_TOKEN_END
                                    require totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= totalSupply
                                    require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                    require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                    balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                    totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit Transfer(((500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)), owner, msg.sender);
                                else:
                                    if (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100):
                                        require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                        require (5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) == 5
                                    require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) <= balanceOf[stor5]
                                    require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) >= CREATOR_TOKEN_END
                                    require totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) >= totalSupply
                                    require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)
                                    require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) <= balanceOf[stor5]
                                    balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)
                                    totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit Transfer(((500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)), owner, msg.sender);
                else:
                    if block.timestamp >= stor10:
                        if block.timestamp >= stor11:
                            if block.timestamp >= stor12:
                                require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                                require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) >= CREATOR_TOKEN_END
                                require totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) >= totalSupply
                                require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100)
                                require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) <= balanceOf[stor5]
                                balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100)
                                totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100)
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Transfer(((500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100)), owner, msg.sender);
                            else:
                                if (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100):
                                    require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100)
                                    require (5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) == 5
                                require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= CREATOR_TOKEN_END
                                require totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= totalSupply
                                require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Transfer(((500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)), owner, msg.sender);
                        else:
                            if (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100):
                                require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100)
                                require (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) == 10
                            if block.timestamp < stor11:
                                require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= CREATOR_TOKEN_END
                                require totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= totalSupply
                                require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Transfer(((500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)), owner, msg.sender);
                            else:
                                if block.timestamp >= stor12:
                                    require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                    require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= CREATOR_TOKEN_END
                                    require totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= totalSupply
                                    require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                    require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                    balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                    totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit Transfer(((500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)), owner, msg.sender);
                                else:
                                    if (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100):
                                        require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                        require (5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) == 5
                                    require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) <= balanceOf[stor5]
                                    require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) >= CREATOR_TOKEN_END
                                    require totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) >= totalSupply
                                    require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)
                                    require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) <= balanceOf[stor5]
                                    balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)
                                    totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit Transfer(((500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)), owner, msg.sender);
                    else:
                        if (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100):
                            require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100)
                            require (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) == 20
                        if block.timestamp < stor10:
                            if block.timestamp < stor11:
                                require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= CREATOR_TOKEN_END
                                require totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= totalSupply
                                require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit Transfer(((500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)), owner, msg.sender);
                            else:
                                if block.timestamp >= stor12:
                                    require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                    require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= CREATOR_TOKEN_END
                                    require totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= totalSupply
                                    require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                    require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                    balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                    totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit Transfer(((500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)), owner, msg.sender);
                                else:
                                    if (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100):
                                        require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                        require (5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) == 5
                                    require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) <= balanceOf[stor5]
                                    require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) >= CREATOR_TOKEN_END
                                    require totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) >= totalSupply
                                    require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)
                                    require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) <= balanceOf[stor5]
                                    balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)
                                    totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit Transfer(((500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)), owner, msg.sender);
                        else:
                            if block.timestamp >= stor11:
                                if block.timestamp >= stor12:
                                    require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                    require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= CREATOR_TOKEN_END
                                    require totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= totalSupply
                                    require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                    require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) <= balanceOf[stor5]
                                    balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                    totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit Transfer(((500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)), owner, msg.sender);
                                else:
                                    if (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100):
                                        require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                        require (5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) == 5
                                    require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) <= balanceOf[stor5]
                                    require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) >= CREATOR_TOKEN_END
                                    require totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) >= totalSupply
                                    require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)
                                    require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) <= balanceOf[stor5]
                                    balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)
                                    totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit Transfer(((500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)), owner, msg.sender);
                            else:
                                if (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100):
                                    require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100)
                                    require (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) == 10
                                if block.timestamp < stor11:
                                    require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) <= balanceOf[stor5]
                                    require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) >= CREATOR_TOKEN_END
                                    require totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) >= totalSupply
                                    require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)
                                    require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) <= balanceOf[stor5]
                                    balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)
                                    totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit Transfer(((500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)), owner, msg.sender);
                                else:
                                    if block.timestamp >= stor12:
                                        require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) <= balanceOf[stor5]
                                        require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) >= CREATOR_TOKEN_END
                                        require totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) >= totalSupply
                                        require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)
                                        require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) <= balanceOf[stor5]
                                        balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)
                                        totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Transfer(((500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)), owner, msg.sender);
                                    else:
                                        if (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100):
                                            require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100)
                                            require (5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) / (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) == 5
                                        require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) / 100) <= balanceOf[stor5]
                                        require balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) / 100) >= CREATOR_TOKEN_END
                                        require totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) / 100) >= totalSupply
                                        require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) / 100) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) / 100)
                                        require (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) / 100) <= balanceOf[stor5]
                                        balanceOf[stor5] = balanceOf[stor5] - (500 * 10^18 * msg.value / 10^18) - (50 * 500 * 10^18 * msg.value / 10^18 / 100) - ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) - ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) - ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) / 100)
                                        totalSupply = totalSupply + (500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) / 100)
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Transfer(((500 * 10^18 * msg.value / 10^18) + (50 * 500 * 10^18 * msg.value / 10^18 / 100) + ((20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + ((10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) + ((5 * 500 * 10^18 * msg.value / 10^18) + (5 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (5 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) + (5 * (10 * 500 * 10^18 * msg.value / 10^18) + (10 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) + (10 * (20 * 500 * 10^18 * msg.value / 10^18) + (20 * 50 * 500 * 10^18 * msg.value / 10^18 / 100) / 100) / 100) / 100)), owner, msg.sender);
}



}

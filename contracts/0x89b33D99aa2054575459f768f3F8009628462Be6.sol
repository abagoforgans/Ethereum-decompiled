contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
const sub_1244e1b6(?) = 5

const sub_24954964(?) = 10^10

const sub_3b6603fa(?) = 10

const sub_5576c37a(?) = 10

const sub_585172e0(?) = 20 * 10^18

const sub_5fb1e75d(?) = 3

const sub_aeddbfbf(?) = 5

const sub_d8806aa9(?) = 7

const CASHBACK_PERCENT = 2


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address gameAddress;
array of struct stor4;
mapping of uint8 stor5;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
uint256 sub_1a42ce6e;
uint256 sub_74a4f5ea;
uint256 sub_96772795;
mapping of uint256 sub_4c7a9901;
mapping of address referrers;
mapping of uint256 sub_f979fcf6;
mapping of uint256 sub_78a1cff6;
address bonusTokenAddress;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_1a42ce6e(?) {
    return sub_1a42ce6e
}

function decimals() {
    return decimals
}

function bonusToken() {
    return bonusTokenAddress
}

function referrers(address arg1) {
    return referrers[arg1]
}

function sub_4c7a9901(?) {
    return sub_4c7a9901[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_74a4f5ea(?) {
    return sub_74a4f5ea
}

function sub_78a1cff6(?) {
    return sub_78a1cff6[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_96772795(?) {
    return sub_96772795
}

function gameAddress() {
    return gameAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_f979fcf6(?) {
    return sub_f979fcf6[arg1]
}

function isOwner() {
    return (msg.sender == owner)
}

function price() {
    require stor20 + 5 * 10^9 >= stor20
    return (stor20 + 5 * 10^9)
}

function setGameAddress(address arg1) {
    require msg.sender == owner
    gameAddress = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_52f1365c(?) {
    if gameAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The sender must be a game contract.'
    require arg1 + sub_96772795 >= sub_96772795
    sub_96772795 += arg1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] -= arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function withdraw(uint256 arg1) {
    require arg1 > 0
    require arg1 <= sub_4c7a9901[msg.sender]
    sub_4c7a9901[msg.sender] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(arg1, block.timestamp, msg.sender);
}

function getHolders() {
    if not stor4.length:
        mem[(32 * stor4.length) + 128] = 32
        mem[(32 * stor4.length) + 160] = stor4.length
        mem[(32 * stor4.length) + 192 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
        return memory
          from (32 * stor4.length) + 128
           len (96 * stor4.length) + 64
    mem[128] = address(stor4.field_0)
    idx = 128
    s = 0
    while (32 * stor4.length) + 96 > idx:
        mem[idx + 32] = address(stor4[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4.length) + 192 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
    return Array(len=stor4.length, data=mem[128 len floor32(stor4.length)], mem[(32 * stor4.length) + floor32(stor4.length) + 192 len (32 * stor4.length) - floor32(stor4.length)]), 
}

function swapTokens(uint256 arg1) {
    require arg1 / 10 <= sub_1a42ce6e
    require arg1 / 10 <= sub_1a42ce6e - (arg1 / 10)
    require ext_code.size(bonusTokenAddress)
    call bonusTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Not enough bonus tokens.'
    require ext_code.size(bonusTokenAddress)
    call bonusTokenAddress.swapTokens(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 / 10 <= sub_1a42ce6e
    sub_1a42ce6e -= arg1 / 10
    if not arg1 / 10:
        require stor20 >= stor20
    else:
        require 10^10 * arg1 / 10 / arg1 / 10 == 10^10
        require (10^10 * arg1 / 10) + stor20 >= stor20
        stor20 += 10^10 * arg1 / 10
    require msg.sender
    require (arg1 / 10) + totalSupply >= totalSupply
    totalSupply += arg1 / 10
    require (arg1 / 10) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1 / 10
    emit Transfer((arg1 / 10), 0, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    if gameAddress == arg1:
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require arg2 + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if gameAddress == msg.sender:
            if gameAddress != arg1:
                if not balanceOf[address(arg1)]:
                    if arg2 >= 20 * 10^18:
                        stor4.length++
                        address(stor4[stor4.length].field_0) = arg1
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require arg2 + balanceOf[arg1] >= balanceOf[arg1]
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
        else:
            require msg.sender
            require arg2 / 100 <= totalSupply
            totalSupply -= arg2 / 100
            require arg2 / 100 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2 / 100
            emit Transfer((arg2 / 100), msg.sender, 0);
            require arg2 / 100 <= arg2
            if gameAddress != arg1:
                if not balanceOf[address(arg1)]:
                    if arg2 - (arg2 / 100) >= 20 * 10^18:
                        stor4.length++
                        address(stor4[stor4.length].field_0) = arg1
            require arg2 - (arg2 / 100) <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100)
            require arg2 - (arg2 / 100) + balanceOf[arg1] >= balanceOf[arg1]
            balanceOf[address(arg1)] = arg2 - (arg2 / 100) + balanceOf[arg1]
            emit Transfer((arg2 - (arg2 / 100)), msg.sender, arg1);
    return 1
}

function sub_beb03eeb(?) {
    if gameAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The sender must be a game contract.'
    require gameAddress
    if gameAddress == gameAddress:
        require arg2 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg2
        require arg2 + balanceOf[stor3] >= balanceOf[stor3]
        balanceOf[stor3] += arg2
        emit Transfer(arg2, arg1, gameAddress);
    else:
        if gameAddress == arg1:
            if gameAddress != gameAddress:
                if not balanceOf[stor3]:
                    if arg2 >= 20 * 10^18:
                        stor4.length++
                        address(stor4[stor4.length].field_0) = gameAddress
            require arg2 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg2
            require arg2 + balanceOf[stor3] >= balanceOf[stor3]
            balanceOf[stor3] += arg2
            emit Transfer(arg2, arg1, gameAddress);
        else:
            require arg1
            require arg2 / 100 <= totalSupply
            totalSupply -= arg2 / 100
            require arg2 / 100 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg2 / 100
            emit Transfer((arg2 / 100), arg1, 0);
            require arg2 / 100 <= arg2
            if gameAddress != gameAddress:
                if not balanceOf[stor3]:
                    if arg2 - (arg2 / 100) >= 20 * 10^18:
                        stor4.length++
                        address(stor4[stor4.length].field_0) = gameAddress
            require arg2 - (arg2 / 100) <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg2 + (arg2 / 100)
            require arg2 - (arg2 / 100) + balanceOf[stor3] >= balanceOf[stor3]
            balanceOf[stor3] = arg2 - (arg2 / 100) + balanceOf[stor3]
            emit Transfer((arg2 - (arg2 / 100)), arg1, gameAddress);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg2
    if gameAddress == arg2:
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require arg3 + balanceOf[arg2] >= balanceOf[arg2]
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit Transfer(arg3, arg1, arg2);
    else:
        if gameAddress == arg1:
            if gameAddress != arg2:
                if not balanceOf[address(arg2)]:
                    if arg3 >= 20 * 10^18:
                        stor4.length++
                        address(stor4[stor4.length].field_0) = arg2
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require arg3 + balanceOf[arg2] >= balanceOf[arg2]
            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
            emit Transfer(arg3, arg1, arg2);
        else:
            require arg1
            require arg3 / 100 <= totalSupply
            totalSupply -= arg3 / 100
            require arg3 / 100 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3 / 100
            emit Transfer((arg3 / 100), arg1, 0);
            require arg3 / 100 <= arg3
            if gameAddress != arg2:
                if not balanceOf[address(arg2)]:
                    if arg3 - (arg3 / 100) >= 20 * 10^18:
                        stor4.length++
                        address(stor4[stor4.length].field_0) = arg2
            require arg3 - (arg3 / 100) <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100)
            require arg3 - (arg3 / 100) + balanceOf[arg2] >= balanceOf[arg2]
            balanceOf[address(arg2)] = arg3 - (arg3 / 100) + balanceOf[arg2]
            emit Transfer((arg3 - (arg3 / 100)), arg1, arg2);
    emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
    return 1
}

function reinvest(uint256 arg1) {
    require arg1 <= sub_4c7a9901[msg.sender]
    sub_4c7a9901[msg.sender] -= arg1
    require 2 * 10^10 * arg1 / 2 * 10^10 == arg1
    require (2 * 10^10 * arg1) + stor20^2 >= stor20^2
    s = (2 * 10^10 * arg1) + stor20^2 + 1 / 2
    t = (2 * 10^10 * arg1) + stor20^2
    while s < t:
        require s
        s = ((2 * 10^10 * arg1) + stor20^2 / s) + s / 2
        t = s
        continue 
    require stor20 <= t
    require t - stor20 / 10^10 > 0
    if not stor20:
        require 5 * 10^9 * (t - stor20 / 10^10)^2 / 5 * 10^9 == (t - stor20 / 10^10)^2
        require 5 * 10^9 * (t - stor20 / 10^10)^2 >= 5 * 10^9 * (t - stor20 / 10^10)^2
        require 5 * 10^9 * (t - stor20 / 10^10)^2 <= arg1
        if not t - stor20 / 10^10:
            require stor20 >= stor20
        else:
            require 10^10 * t - stor20 / 10^10 / t - stor20 / 10^10 == 10^10
            require (10^10 * t - stor20 / 10^10) + stor20 >= stor20
            stor20 += 10^10 * t - stor20 / 10^10
        if not t - stor20 / 10^10:
            require msg.sender
            require totalSupply >= totalSupply
            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            emit Transfer(0, 0, msg.sender);
            if arg1 - (5 * 10^9 * (t - stor20 / 10^10)^2) > 0:
                require arg1 - (5 * 10^9 * (t - stor20 / 10^10)^2) + sub_4c7a9901[msg.sender] >= sub_4c7a9901[msg.sender]
                sub_4c7a9901[msg.sender] = arg1 - (5 * 10^9 * (t - stor20 / 10^10)^2) + sub_4c7a9901[msg.sender]
            emit Reinvest(arg1 - (5 * 10^9 * (t - stor20 / 10^10)^2), 0, block.timestamp, msg.sender);
        else:
            require 10^decimals * t - stor20 / 10^10 / t - stor20 / 10^10 == 10^decimals
            require msg.sender
            require (10^decimals * t - stor20 / 10^10) + totalSupply >= totalSupply
            totalSupply += 10^decimals * t - stor20 / 10^10
            require (10^decimals * t - stor20 / 10^10) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 10^decimals * t - stor20 / 10^10
            emit Transfer((10^decimals * t - stor20 / 10^10), 0, msg.sender);
            if arg1 - (5 * 10^9 * (t - stor20 / 10^10)^2) > 0:
                require arg1 - (5 * 10^9 * (t - stor20 / 10^10)^2) + sub_4c7a9901[msg.sender] >= sub_4c7a9901[msg.sender]
                sub_4c7a9901[msg.sender] = arg1 - (5 * 10^9 * (t - stor20 / 10^10)^2) + sub_4c7a9901[msg.sender]
            emit Reinvest(arg1 - (5 * 10^9 * (t - stor20 / 10^10)^2), 10^decimals * t - stor20 / 10^10, block.timestamp, msg.sender);
    else:
        require t - stor20 / 10^10 * stor20 / stor20 == t - stor20 / 10^10
        require 5 * 10^9 * (t - stor20 / 10^10)^2 / 5 * 10^9 == (t - stor20 / 10^10)^2
        require (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) >= 5 * 10^9 * (t - stor20 / 10^10)^2
        require (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) <= arg1
        if not t - stor20 / 10^10:
            require stor20 >= stor20
        else:
            require 10^10 * t - stor20 / 10^10 / t - stor20 / 10^10 == 10^10
            require (10^10 * t - stor20 / 10^10) + stor20 >= stor20
            stor20 += 10^10 * t - stor20 / 10^10
        if not t - stor20 / 10^10:
            require msg.sender
            require totalSupply >= totalSupply
            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            emit Transfer(0, 0, msg.sender);
            if arg1 - (t - stor20 / 10^10 * stor20) - (5 * 10^9 * (t - stor20 / 10^10)^2) > 0:
                require arg1 - (t - stor20 / 10^10 * stor20) - (5 * 10^9 * (t - stor20 / 10^10)^2) + sub_4c7a9901[msg.sender] >= sub_4c7a9901[msg.sender]
                sub_4c7a9901[msg.sender] = arg1 - (t - stor20 / 10^10 * stor20) - (5 * 10^9 * (t - stor20 / 10^10)^2) + sub_4c7a9901[msg.sender]
            emit Reinvest(arg1 - (t - stor20 / 10^10 * stor20) - (5 * 10^9 * (t - stor20 / 10^10)^2), 0, block.timestamp, msg.sender);
        else:
            require 10^decimals * t - stor20 / 10^10 / t - stor20 / 10^10 == 10^decimals
            require msg.sender
            require (10^decimals * t - stor20 / 10^10) + totalSupply >= totalSupply
            totalSupply += 10^decimals * t - stor20 / 10^10
            require (10^decimals * t - stor20 / 10^10) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 10^decimals * t - stor20 / 10^10
            emit Transfer((10^decimals * t - stor20 / 10^10), 0, msg.sender);
            if arg1 - (t - stor20 / 10^10 * stor20) - (5 * 10^9 * (t - stor20 / 10^10)^2) > 0:
                require arg1 - (t - stor20 / 10^10 * stor20) - (5 * 10^9 * (t - stor20 / 10^10)^2) + sub_4c7a9901[msg.sender] >= sub_4c7a9901[msg.sender]
                sub_4c7a9901[msg.sender] = arg1 - (t - stor20 / 10^10 * stor20) - (5 * 10^9 * (t - stor20 / 10^10)^2) + sub_4c7a9901[msg.sender]
            emit Reinvest(arg1 - (t - stor20 / 10^10 * stor20) - (5 * 10^9 * (t - stor20 / 10^10)^2), 10^decimals * t - stor20 / 10^10, block.timestamp, msg.sender);
}

function sellTokens(uint256 arg1) {
    if not arg1:
        require msg.sender
        require 0 <= totalSupply
        require 0 <= balanceOf[address(msg.sender)]
        emit Transfer(0, msg.sender, 0);
    else:
        require 10^decimals * arg1 / arg1 == 10^decimals
        require msg.sender
        require 10^decimals * arg1 <= totalSupply
        totalSupply += -1 * 10^decimals * arg1
        require 10^decimals * arg1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += -1 * 10^decimals * arg1
        emit Transfer((10^decimals * arg1), msg.sender, 0);
    require arg1 > 0
    if not arg1^2:
        if not stor20:
            if not arg1:
                require 0 <= stor20
            else:
                require 10^10 * arg1 / arg1 == 10^10
                require 10^10 * arg1 <= stor20
                stor20 += -1 * 10^10 * arg1
            require sub_74a4f5ea >= sub_74a4f5ea
            call msg.sender with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Sell(0, arg1, block.timestamp, msg.sender);
        else:
            require arg1 * stor20 / stor20 == arg1
            require 0 <= arg1 * stor20
            if not arg1:
                require 0 <= stor20
            else:
                require 10^10 * arg1 / arg1 == 10^10
                require 10^10 * arg1 <= stor20
                stor20 += -1 * 10^10 * arg1
            if not arg1 * stor20:
                require sub_74a4f5ea >= sub_74a4f5ea
                require 0 <= arg1 * stor20
                call msg.sender with:
                   value arg1 * stor20 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Sell(arg1 * stor20, arg1, block.timestamp, msg.sender);
            else:
                require 5 * arg1 * stor20 / arg1 * stor20 == 5
                require (5 * arg1 * stor20 / 100) + sub_74a4f5ea >= sub_74a4f5ea
                sub_74a4f5ea += 5 * arg1 * stor20 / 100
                require 5 * arg1 * stor20 / 100 <= arg1 * stor20
                call msg.sender with:
                   value (arg1 * stor20) - (5 * arg1 * stor20 / 100) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Sell((arg1 * stor20) - (5 * arg1 * stor20 / 100), arg1, block.timestamp, msg.sender);
    else:
        require 5 * arg1^2 / arg1^2 == 5
        if not 5 * arg1^2:
            if not stor20:
                if not arg1:
                    require 0 <= stor20
                else:
                    require 10^10 * arg1 / arg1 == 10^10
                    require 10^10 * arg1 <= stor20
                    stor20 += -1 * 10^10 * arg1
                require sub_74a4f5ea >= sub_74a4f5ea
                call msg.sender with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Sell(0, arg1, block.timestamp, msg.sender);
            else:
                require arg1 * stor20 / stor20 == arg1
                require 0 <= arg1 * stor20
                if not arg1:
                    require 0 <= stor20
                else:
                    require 10^10 * arg1 / arg1 == 10^10
                    require 10^10 * arg1 <= stor20
                    stor20 += -1 * 10^10 * arg1
                if not arg1 * stor20:
                    require sub_74a4f5ea >= sub_74a4f5ea
                    require 0 <= arg1 * stor20
                    call msg.sender with:
                       value arg1 * stor20 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Sell(arg1 * stor20, arg1, block.timestamp, msg.sender);
                else:
                    require 5 * arg1 * stor20 / arg1 * stor20 == 5
                    require (5 * arg1 * stor20 / 100) + sub_74a4f5ea >= sub_74a4f5ea
                    sub_74a4f5ea += 5 * arg1 * stor20 / 100
                    require 5 * arg1 * stor20 / 100 <= arg1 * stor20
                    call msg.sender with:
                       value (arg1 * stor20) - (5 * arg1 * stor20 / 100) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Sell((arg1 * stor20) - (5 * arg1 * stor20 / 100), arg1, block.timestamp, msg.sender);
        else:
            require 5 * 10^9 * arg1^2 / 5 * arg1^2 == 10^9
            if not stor20:
                require 5 * 10^9 * arg1^2 <= 0
                if not arg1:
                    require 0 <= stor20
                else:
                    require 10^10 * arg1 / arg1 == 10^10
                    require 10^10 * arg1 <= stor20
                    stor20 += -1 * 10^10 * arg1
                if not -5 * 10^9 * arg1^2:
                    require sub_74a4f5ea >= sub_74a4f5ea
                    require 0 <= -5 * 10^9 * arg1^2
                    call msg.sender with:
                       value -5 * 10^9 * arg1^2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Sell(-5 * 10^9 * arg1^2, arg1, block.timestamp, msg.sender);
                else:
                    require -25 * 10^9 * arg1^2 / -5 * 10^9 * arg1^2 == 5
                    require (-25 * 10^9 * arg1^2 / 100) + sub_74a4f5ea >= sub_74a4f5ea
                    sub_74a4f5ea += -25 * 10^9 * arg1^2 / 100
                    require -25 * 10^9 * arg1^2 / 100 <= -5 * 10^9 * arg1^2
                    call msg.sender with:
                       value (-5 * 10^9 * arg1^2) - (-25 * 10^9 * arg1^2 / 100) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Sell((-5 * 10^9 * arg1^2) - (-25 * 10^9 * arg1^2 / 100), arg1, block.timestamp, msg.sender);
            else:
                require arg1 * stor20 / stor20 == arg1
                require 5 * 10^9 * arg1^2 <= arg1 * stor20
                if not arg1:
                    require 0 <= stor20
                else:
                    require 10^10 * arg1 / arg1 == 10^10
                    require 10^10 * arg1 <= stor20
                    stor20 += -1 * 10^10 * arg1
                if not (arg1 * stor20) - (5 * 10^9 * arg1^2):
                    require sub_74a4f5ea >= sub_74a4f5ea
                    require 0 <= (arg1 * stor20) - (5 * 10^9 * arg1^2)
                    call msg.sender with:
                       value (arg1 * stor20) - (5 * 10^9 * arg1^2) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Sell((arg1 * stor20) - (5 * 10^9 * arg1^2), arg1, block.timestamp, msg.sender);
                else:
                    require (5 * arg1 * stor20) - (25 * 10^9 * arg1^2) / (arg1 * stor20) - (5 * 10^9 * arg1^2) == 5
                    require ((5 * arg1 * stor20) - (25 * 10^9 * arg1^2) / 100) + sub_74a4f5ea >= sub_74a4f5ea
                    sub_74a4f5ea += (5 * arg1 * stor20) - (25 * 10^9 * arg1^2) / 100
                    require (5 * arg1 * stor20) - (25 * 10^9 * arg1^2) / 100 <= (arg1 * stor20) - (5 * 10^9 * arg1^2)
                    call msg.sender with:
                       value (arg1 * stor20) - (5 * 10^9 * arg1^2) - ((5 * arg1 * stor20) - (25 * 10^9 * arg1^2) / 100) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Sell((arg1 * stor20) - (5 * 10^9 * arg1^2) - ((5 * arg1 * stor20) - (25 * 10^9 * arg1^2) / 100), arg1, block.timestamp, msg.sender);
}

function sub_fa7aaa6f(?) {
    require msg.sender == owner
    if not stor17:
        stor18 = sub_74a4f5ea
        stor19 = sub_96772795
    require stor17 <= stor4.length
    if stor4.length - stor17 >= arg1:
        s = 0
        t = 0
        idx = 0
        while idx < arg1:
            require stor17 < stor4.length
            mem[0] = address(stor4[stor17].field_0)
            mem[32] = 0
            if balanceOf[address(stor4[stor17].field_0)] < 20 * 10^18:
                require stor4.length - 1 < stor4.length
                require stor17 < stor4.length
                address(stor4[stor17].field_0) = address(stor4[stor4.length].field_0)
                require stor4.length - 1 < stor4.length
                mem[0] = 4
                address(stor4[stor4.length].field_0) = 0
                stor4.length--
                if stor4.length > stor4.length - 1:
                    mem[0] = 4
                    t = stor4.length + sha3(4) - 1
                    while sha3(4) + stor4.length > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                stor17++
                s = s
                t = balanceOf[address(stor4[stor17].field_0)]
                idx = idx + 1
                continue 
            if stor18 <= 0:
                if stor19 <= 0:
                    stor17++
                    s = 0
                    t = balanceOf[address(stor4[stor17].field_0)]
                    idx = idx + 1
                    continue 
            else:
                if not balanceOf[address(stor4[stor17].field_0)]:
                    require totalSupply > 0
                    require totalSupply
                    require 0 / totalSupply <= sub_74a4f5ea
                    sub_74a4f5ea -= 0 / totalSupply
                    require stor17 < stor4.length
                    mem[96] = 0 / totalSupply
                    mem[128] = block.timestamp
                    emit 0xef1e9761: 0 / totalSupply, block.timestamp, address(stor4[stor17].field_0)
                    require (0 / totalSupply) + sub_4c7a9901[address(stor4[stor17].field_0)] >= sub_4c7a9901[address(stor4[stor17].field_0)]
                    require stor17 < stor4.length
                    mem[0] = address(stor4[stor17].field_0)
                    mem[32] = 12
                    sub_4c7a9901[address(stor4[stor17].field_0)] += 0 / totalSupply
                    if stor19 <= 0:
                        stor17++
                        s = 0 / totalSupply
                        t = balanceOf[address(stor4[stor17].field_0)]
                        idx = idx + 1
                        continue 
                else:
                    require stor18 * balanceOf[address(stor4[stor17].field_0)] / balanceOf[address(stor4[stor17].field_0)] == stor18
                    require totalSupply > 0
                    require totalSupply
                    require stor18 * balanceOf[address(stor4[stor17].field_0)] / totalSupply <= sub_74a4f5ea
                    sub_74a4f5ea -= stor18 * balanceOf[address(stor4[stor17].field_0)] / totalSupply
                    require stor17 < stor4.length
                    mem[96] = stor18 * balanceOf[address(stor4[stor17].field_0)] / totalSupply
                    mem[128] = block.timestamp
                    emit 0xef1e9761: stor18 * balanceOf[address(stor4[stor17].field_0)] / totalSupply, block.timestamp, address(stor4[stor17].field_0)
                    require (stor18 * balanceOf[address(stor4[stor17].field_0)] / totalSupply) + sub_4c7a9901[address(stor4[stor17].field_0)] >= sub_4c7a9901[address(stor4[stor17].field_0)]
                    require stor17 < stor4.length
                    mem[0] = address(stor4[stor17].field_0)
                    mem[32] = 12
                    sub_4c7a9901[address(stor4[stor17].field_0)] += stor18 * balanceOf[address(stor4[stor17].field_0)] / totalSupply
                    if stor19 <= 0:
                        stor17++
                        s = stor18 * balanceOf[address(stor4[stor17].field_0)] / totalSupply
                        t = balanceOf[address(stor4[stor17].field_0)]
                        idx = idx + 1
                        continue 
            ('gt', ('stor', ('name', 'stor19', 19)), 0)
            if not balanceOf[address(stor4[stor17].field_0)]:
                require totalSupply > 0
                require totalSupply
                require 0 / totalSupply <= sub_96772795
                sub_96772795 -= 0 / totalSupply
                require stor17 < stor4.length
                mem[96] = 0 / totalSupply
                mem[128] = block.timestamp
                emit 0x70a7d4f5: 0 / totalSupply, block.timestamp, address(stor4[stor17].field_0)
                require (0 / totalSupply) + sub_4c7a9901[address(stor4[stor17].field_0)] >= sub_4c7a9901[address(stor4[stor17].field_0)]
                require stor17 < stor4.length
                mem[0] = address(stor4[stor17].field_0)
                mem[32] = 12
                sub_4c7a9901[address(stor4[stor17].field_0)] += 0 / totalSupply
                stor17++
                s = 0 / totalSupply
                t = balanceOf[address(stor4[stor17].field_0)]
                idx = idx + 1
                continue 
            require stor19 * balanceOf[address(stor4[stor17].field_0)] / balanceOf[address(stor4[stor17].field_0)] == stor19
            require totalSupply > 0
            require totalSupply
            require stor19 * balanceOf[address(stor4[stor17].field_0)] / totalSupply <= sub_96772795
            sub_96772795 -= stor19 * balanceOf[address(stor4[stor17].field_0)] / totalSupply
            require stor17 < stor4.length
            mem[96] = stor19 * balanceOf[address(stor4[stor17].field_0)] / totalSupply
            mem[128] = block.timestamp
            emit 0x70a7d4f5: stor19 * balanceOf[address(stor4[stor17].field_0)] / totalSupply, block.timestamp, address(stor4[stor17].field_0)
            require (stor19 * balanceOf[address(stor4[stor17].field_0)] / totalSupply) + sub_4c7a9901[address(stor4[stor17].field_0)] >= sub_4c7a9901[address(stor4[stor17].field_0)]
            require stor17 < stor4.length
            mem[0] = address(stor4[stor17].field_0)
            mem[32] = 12
            sub_4c7a9901[address(stor4[stor17].field_0)] += stor19 * balanceOf[address(stor4[stor17].field_0)] / totalSupply
            stor17++
            s = stor19 * balanceOf[address(stor4[stor17].field_0)] / totalSupply
            t = balanceOf[address(stor4[stor17].field_0)]
            idx = idx + 1
            continue 
    else:
        require stor17 <= stor4.length
        s = 0
        t = 0
        idx = 0
        while idx < stor4.length - stor17:
            require stor17 < stor4.length
            mem[0] = address(stor4[stor17].field_0)
            mem[32] = 0
            if balanceOf[address(stor4[stor17].field_0)] < 20 * 10^18:
                require stor4.length - 1 < stor4.length
                require stor17 < stor4.length
                address(stor4[stor17].field_0) = address(stor4[stor4.length].field_0)
                require stor4.length - 1 < stor4.length
                mem[0] = 4
                address(stor4[stor4.length].field_0) = 0
                stor4.length--
                if stor4.length > stor4.length - 1:
                    mem[0] = 4
                    t = stor4.length + sha3(4) - 1
                    while sha3(4) + stor4.length > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                stor17++
                s = s
                t = balanceOf[address(stor4[stor17].field_0)]
                idx = idx + 1
                continue 
            if stor18 <= 0:
                if stor19 <= 0:
                    stor17++
                    s = 0
                    t = balanceOf[address(stor4[stor17].field_0)]
                    idx = idx + 1
                    continue 
            else:
                if not balanceOf[address(stor4[stor17].field_0)]:
                    require totalSupply > 0
                    require totalSupply
                    require 0 / totalSupply <= sub_74a4f5ea
                    sub_74a4f5ea -= 0 / totalSupply
                    require stor17 < stor4.length
                    mem[96] = 0 / totalSupply
                    mem[128] = block.timestamp
                    emit 0xef1e9761: 0 / totalSupply, block.timestamp, address(stor4[stor17].field_0)
                    require (0 / totalSupply) + sub_4c7a9901[address(stor4[stor17].field_0)] >= sub_4c7a9901[address(stor4[stor17].field_0)]
                    require stor17 < stor4.length
                    mem[0] = address(stor4[stor17].field_0)
                    mem[32] = 12
                    sub_4c7a9901[address(stor4[stor17].field_0)] += 0 / totalSupply
                    if stor19 <= 0:
                        stor17++
                        s = 0 / totalSupply
                        t = balanceOf[address(stor4[stor17].field_0)]
                        idx = idx + 1
                        continue 
                else:
                    require stor18 * balanceOf[address(stor4[stor17].field_0)] / balanceOf[address(stor4[stor17].field_0)] == stor18
                    require totalSupply > 0
                    require totalSupply
                    require stor18 * balanceOf[address(stor4[stor17].field_0)] / totalSupply <= sub_74a4f5ea
                    sub_74a4f5ea -= stor18 * balanceOf[address(stor4[stor17].field_0)] / totalSupply
                    require stor17 < stor4.length
                    mem[96] = stor18 * balanceOf[address(stor4[stor17].field_0)] / totalSupply
                    mem[128] = block.timestamp
                    emit 0xef1e9761: stor18 * balanceOf[address(stor4[stor17].field_0)] / totalSupply, block.timestamp, address(stor4[stor17].field_0)
                    require (stor18 * balanceOf[address(stor4[stor17].field_0)] / totalSupply) + sub_4c7a9901[address(stor4[stor17].field_0)] >= sub_4c7a9901[address(stor4[stor17].field_0)]
                    require stor17 < stor4.length
                    mem[0] = address(stor4[stor17].field_0)
                    mem[32] = 12
                    sub_4c7a9901[address(stor4[stor17].field_0)] += stor18 * balanceOf[address(stor4[stor17].field_0)] / totalSupply
                    if stor19 <= 0:
                        stor17++
                        s = stor18 * balanceOf[address(stor4[stor17].field_0)] / totalSupply
                        t = balanceOf[address(stor4[stor17].field_0)]
                        idx = idx + 1
                        continue 
            ('gt', ('stor', ('name', 'stor19', 19)), 0)
            if not balanceOf[address(stor4[stor17].field_0)]:
                require totalSupply > 0
                require totalSupply
                require 0 / totalSupply <= sub_96772795
                sub_96772795 -= 0 / totalSupply
                require stor17 < stor4.length
                mem[96] = 0 / totalSupply
                mem[128] = block.timestamp
                emit 0x70a7d4f5: 0 / totalSupply, block.timestamp, address(stor4[stor17].field_0)
                require (0 / totalSupply) + sub_4c7a9901[address(stor4[stor17].field_0)] >= sub_4c7a9901[address(stor4[stor17].field_0)]
                require stor17 < stor4.length
                mem[0] = address(stor4[stor17].field_0)
                mem[32] = 12
                sub_4c7a9901[address(stor4[stor17].field_0)] += 0 / totalSupply
                stor17++
                s = 0 / totalSupply
                t = balanceOf[address(stor4[stor17].field_0)]
                idx = idx + 1
                continue 
            require stor19 * balanceOf[address(stor4[stor17].field_0)] / balanceOf[address(stor4[stor17].field_0)] == stor19
            require totalSupply > 0
            require totalSupply
            require stor19 * balanceOf[address(stor4[stor17].field_0)] / totalSupply <= sub_96772795
            sub_96772795 -= stor19 * balanceOf[address(stor4[stor17].field_0)] / totalSupply
            require stor17 < stor4.length
            mem[96] = stor19 * balanceOf[address(stor4[stor17].field_0)] / totalSupply
            mem[128] = block.timestamp
            emit 0x70a7d4f5: stor19 * balanceOf[address(stor4[stor17].field_0)] / totalSupply, block.timestamp, address(stor4[stor17].field_0)
            require (stor19 * balanceOf[address(stor4[stor17].field_0)] / totalSupply) + sub_4c7a9901[address(stor4[stor17].field_0)] >= sub_4c7a9901[address(stor4[stor17].field_0)]
            require stor17 < stor4.length
            mem[0] = address(stor4[stor17].field_0)
            mem[32] = 12
            sub_4c7a9901[address(stor4[stor17].field_0)] += stor19 * balanceOf[address(stor4[stor17].field_0)] / totalSupply
            stor17++
            s = stor19 * balanceOf[address(stor4[stor17].field_0)] / totalSupply
            t = balanceOf[address(stor4[stor17].field_0)]
            idx = idx + 1
            continue 
    if stor17 == stor4.length:
        stor17 = 0
}

function buyTokens(address arg1) payable {
    require 2 * 10^10 * msg.value / 2 * 10^10 == msg.value
    require (2 * 10^10 * msg.value) + stor20^2 >= stor20^2
    s = (2 * 10^10 * msg.value) + stor20^2 + 1 / 2
    t = (2 * 10^10 * msg.value) + stor20^2
    while s < t:
        require s
        s = ((2 * 10^10 * msg.value) + stor20^2 / s) + s / 2
        t = s
        continue 
    require stor20 <= t
    require t - stor20 / 10^10 > 0
    if not stor20:
        require 5 * 10^9 * (t - stor20 / 10^10)^2 / 5 * 10^9 == (t - stor20 / 10^10)^2
        require 5 * 10^9 * (t - stor20 / 10^10)^2 >= 5 * 10^9 * (t - stor20 / 10^10)^2
        require 5 * 10^9 * (t - stor20 / 10^10)^2 <= msg.value
        if not t - stor20 / 10^10:
            require stor20 >= stor20
        else:
            require 10^10 * t - stor20 / 10^10 / t - stor20 / 10^10 == 10^10
            require (10^10 * t - stor20 / 10^10) + stor20 >= stor20
            stor20 += 10^10 * t - stor20 / 10^10
        if not t - stor20 / 10^10:
            require msg.sender
            require totalSupply >= totalSupply
            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            emit Transfer(0, 0, msg.sender);
            require msg.value - (5 * 10^9 * (t - stor20 / 10^10)^2) <= msg.value
            if block.timestamp - sub_78a1cff6[address(msg.sender)] > 24 * 3600:
                sub_f979fcf6[address(msg.sender)] = 0
            require (5 * 10^9 * (t - stor20 / 10^10)^2) + sub_f979fcf6[address(msg.sender)] >= sub_f979fcf6[address(msg.sender)]
            if (5 * 10^9 * (t - stor20 / 10^10)^2) + sub_f979fcf6[address(msg.sender)] > 5 * 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Investment limit exceeded for 24 hours.'
            require (5 * 10^9 * (t - stor20 / 10^10)^2) + sub_f979fcf6[address(msg.sender)] >= sub_f979fcf6[address(msg.sender)]
            sub_f979fcf6[address(msg.sender)] += 5 * 10^9 * (t - stor20 / 10^10)^2
            sub_78a1cff6[address(msg.sender)] = block.timestamp
            if stor5[address(msg.sender)]:
                if not referrers[address(msg.sender)]:
                    if not 5 * 10^9 * (t - stor20 / 10^10)^2:
                        require sub_74a4f5ea >= sub_74a4f5ea
                    else:
                        require 5 * 10^10 * (t - stor20 / 10^10)^2 / 5 * 10^9 * (t - stor20 / 10^10)^2 == 10
                        require (5 * 10^10 * (t - stor20 / 10^10)^2 / 100) + sub_74a4f5ea >= sub_74a4f5ea
                        sub_74a4f5ea += 5 * 10^10 * (t - stor20 / 10^10)^2 / 100
                else:
                    if not 5 * 10^9 * (t - stor20 / 10^10)^2:
                        emit 0x71bbadad: 0, block.timestamp, referrers[address(msg.sender)]
                        require sub_4c7a9901[stor13[address(msg.sender)]] >= sub_4c7a9901[stor13[address(msg.sender)]]
                    else:
                        require 15 * 10^9 * (t - stor20 / 10^10)^2 / 5 * 10^9 * (t - stor20 / 10^10)^2 == 3
                        emit 0x71bbadad: 15 * 10^9 * (t - stor20 / 10^10)^2 / 100, block.timestamp, referrers[address(msg.sender)]
                        require (15 * 10^9 * (t - stor20 / 10^10)^2 / 100) + sub_4c7a9901[stor13[address(msg.sender)]] >= sub_4c7a9901[stor13[address(msg.sender)]]
                        sub_4c7a9901[stor13[address(msg.sender)]] += 15 * 10^9 * (t - stor20 / 10^10)^2 / 100
                    if not 5 * 10^9 * (t - stor20 / 10^10)^2:
                        require sub_74a4f5ea >= sub_74a4f5ea
                    else:
                        require 35 * 10^9 * (t - stor20 / 10^10)^2 / 5 * 10^9 * (t - stor20 / 10^10)^2 == 7
                        require (35 * 10^9 * (t - stor20 / 10^10)^2 / 100) + sub_74a4f5ea >= sub_74a4f5ea
                        sub_74a4f5ea += 35 * 10^9 * (t - stor20 / 10^10)^2 / 100
            else:
                if arg1:
                    if arg1 != msg.sender:
                        referrers[address(msg.sender)] = arg1
                if not referrers[address(msg.sender)]:
                    if not 5 * 10^9 * (t - stor20 / 10^10)^2:
                        require sub_74a4f5ea >= sub_74a4f5ea
                    else:
                        require 5 * 10^10 * (t - stor20 / 10^10)^2 / 5 * 10^9 * (t - stor20 / 10^10)^2 == 10
                        require (5 * 10^10 * (t - stor20 / 10^10)^2 / 100) + sub_74a4f5ea >= sub_74a4f5ea
                        sub_74a4f5ea += 5 * 10^10 * (t - stor20 / 10^10)^2 / 100
                else:
                    if not 5 * 10^9 * (t - stor20 / 10^10)^2:
                        emit 0x71bbadad: 0, block.timestamp, referrers[address(msg.sender)]
                        require sub_4c7a9901[stor13[address(msg.sender)]] >= sub_4c7a9901[stor13[address(msg.sender)]]
                    else:
                        require 15 * 10^9 * (t - stor20 / 10^10)^2 / 5 * 10^9 * (t - stor20 / 10^10)^2 == 3
                        emit 0x71bbadad: 15 * 10^9 * (t - stor20 / 10^10)^2 / 100, block.timestamp, referrers[address(msg.sender)]
                        require (15 * 10^9 * (t - stor20 / 10^10)^2 / 100) + sub_4c7a9901[stor13[address(msg.sender)]] >= sub_4c7a9901[stor13[address(msg.sender)]]
                        sub_4c7a9901[stor13[address(msg.sender)]] += 15 * 10^9 * (t - stor20 / 10^10)^2 / 100
                    if not 5 * 10^9 * (t - stor20 / 10^10)^2:
                        emit 0x71bbadad: 0, block.timestamp, msg.sender
                        require sub_4c7a9901[address(msg.sender)] >= sub_4c7a9901[address(msg.sender)]
                    else:
                        require 2 * 5 * 10^9 * (t - stor20 / 10^10)^2 / 5 * 10^9 * (t - stor20 / 10^10)^2 == 2
                        emit 0x71bbadad: 2 * 5 * 10^9 * (t - stor20 / 10^10)^2 / 100, block.timestamp, msg.sender
                        require (2 * 5 * 10^9 * (t - stor20 / 10^10)^2 / 100) + sub_4c7a9901[address(msg.sender)] >= sub_4c7a9901[address(msg.sender)]
                        sub_4c7a9901[address(msg.sender)] += 2 * 5 * 10^9 * (t - stor20 / 10^10)^2 / 100
                    if not 5 * 10^9 * (t - stor20 / 10^10)^2:
                        require sub_74a4f5ea >= sub_74a4f5ea
                    else:
                        require 25 * 10^9 * (t - stor20 / 10^10)^2 / 5 * 10^9 * (t - stor20 / 10^10)^2 == 5
                        require (25 * 10^9 * (t - stor20 / 10^10)^2 / 100) + sub_74a4f5ea >= sub_74a4f5ea
                        sub_74a4f5ea += 25 * 10^9 * (t - stor20 / 10^10)^2 / 100
                stor5[address(msg.sender)] = 1
            if msg.value - (5 * 10^9 * (t - stor20 / 10^10)^2) > 0:
                call msg.sender with:
                   value msg.value - (5 * 10^9 * (t - stor20 / 10^10)^2) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if balanceOf[address(msg.sender)] >= 20 * 10^18:
                stor4.length++
                address(stor4[stor4.length].field_0) = msg.sender
            emit Buy(5 * 10^9 * (t - stor20 / 10^10)^2, 0, block.timestamp, msg.sender);
        else:
            require 10^decimals * t - stor20 / 10^10 / t - stor20 / 10^10 == 10^decimals
            require msg.sender
            require (10^decimals * t - stor20 / 10^10) + totalSupply >= totalSupply
            totalSupply += 10^decimals * t - stor20 / 10^10
            require (10^decimals * t - stor20 / 10^10) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 10^decimals * t - stor20 / 10^10
            emit Transfer((10^decimals * t - stor20 / 10^10), 0, msg.sender);
            require msg.value - (5 * 10^9 * (t - stor20 / 10^10)^2) <= msg.value
            if block.timestamp - sub_78a1cff6[address(msg.sender)] > 24 * 3600:
                sub_f979fcf6[address(msg.sender)] = 0
            require (5 * 10^9 * (t - stor20 / 10^10)^2) + sub_f979fcf6[address(msg.sender)] >= sub_f979fcf6[address(msg.sender)]
            if (5 * 10^9 * (t - stor20 / 10^10)^2) + sub_f979fcf6[address(msg.sender)] > 5 * 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Investment limit exceeded for 24 hours.'
            require (5 * 10^9 * (t - stor20 / 10^10)^2) + sub_f979fcf6[address(msg.sender)] >= sub_f979fcf6[address(msg.sender)]
            sub_f979fcf6[address(msg.sender)] += 5 * 10^9 * (t - stor20 / 10^10)^2
            sub_78a1cff6[address(msg.sender)] = block.timestamp
            if stor5[address(msg.sender)]:
                if not referrers[address(msg.sender)]:
                    if not 5 * 10^9 * (t - stor20 / 10^10)^2:
                        require sub_74a4f5ea >= sub_74a4f5ea
                    else:
                        require 5 * 10^10 * (t - stor20 / 10^10)^2 / 5 * 10^9 * (t - stor20 / 10^10)^2 == 10
                        require (5 * 10^10 * (t - stor20 / 10^10)^2 / 100) + sub_74a4f5ea >= sub_74a4f5ea
                        sub_74a4f5ea += 5 * 10^10 * (t - stor20 / 10^10)^2 / 100
                else:
                    if not 5 * 10^9 * (t - stor20 / 10^10)^2:
                        emit 0x71bbadad: 0, block.timestamp, referrers[address(msg.sender)]
                        require sub_4c7a9901[stor13[address(msg.sender)]] >= sub_4c7a9901[stor13[address(msg.sender)]]
                    else:
                        require 15 * 10^9 * (t - stor20 / 10^10)^2 / 5 * 10^9 * (t - stor20 / 10^10)^2 == 3
                        emit 0x71bbadad: 15 * 10^9 * (t - stor20 / 10^10)^2 / 100, block.timestamp, referrers[address(msg.sender)]
                        require (15 * 10^9 * (t - stor20 / 10^10)^2 / 100) + sub_4c7a9901[stor13[address(msg.sender)]] >= sub_4c7a9901[stor13[address(msg.sender)]]
                        sub_4c7a9901[stor13[address(msg.sender)]] += 15 * 10^9 * (t - stor20 / 10^10)^2 / 100
                    if not 5 * 10^9 * (t - stor20 / 10^10)^2:
                        require sub_74a4f5ea >= sub_74a4f5ea
                    else:
                        require 35 * 10^9 * (t - stor20 / 10^10)^2 / 5 * 10^9 * (t - stor20 / 10^10)^2 == 7
                        require (35 * 10^9 * (t - stor20 / 10^10)^2 / 100) + sub_74a4f5ea >= sub_74a4f5ea
                        sub_74a4f5ea += 35 * 10^9 * (t - stor20 / 10^10)^2 / 100
            else:
                if arg1:
                    if arg1 != msg.sender:
                        referrers[address(msg.sender)] = arg1
                if not referrers[address(msg.sender)]:
                    if not 5 * 10^9 * (t - stor20 / 10^10)^2:
                        require sub_74a4f5ea >= sub_74a4f5ea
                    else:
                        require 5 * 10^10 * (t - stor20 / 10^10)^2 / 5 * 10^9 * (t - stor20 / 10^10)^2 == 10
                        require (5 * 10^10 * (t - stor20 / 10^10)^2 / 100) + sub_74a4f5ea >= sub_74a4f5ea
                        sub_74a4f5ea += 5 * 10^10 * (t - stor20 / 10^10)^2 / 100
                else:
                    if not 5 * 10^9 * (t - stor20 / 10^10)^2:
                        emit 0x71bbadad: 0, block.timestamp, referrers[address(msg.sender)]
                        require sub_4c7a9901[stor13[address(msg.sender)]] >= sub_4c7a9901[stor13[address(msg.sender)]]
                    else:
                        require 15 * 10^9 * (t - stor20 / 10^10)^2 / 5 * 10^9 * (t - stor20 / 10^10)^2 == 3
                        emit 0x71bbadad: 15 * 10^9 * (t - stor20 / 10^10)^2 / 100, block.timestamp, referrers[address(msg.sender)]
                        require (15 * 10^9 * (t - stor20 / 10^10)^2 / 100) + sub_4c7a9901[stor13[address(msg.sender)]] >= sub_4c7a9901[stor13[address(msg.sender)]]
                        sub_4c7a9901[stor13[address(msg.sender)]] += 15 * 10^9 * (t - stor20 / 10^10)^2 / 100
                    if not 5 * 10^9 * (t - stor20 / 10^10)^2:
                        emit 0x71bbadad: 0, block.timestamp, msg.sender
                        require sub_4c7a9901[address(msg.sender)] >= sub_4c7a9901[address(msg.sender)]
                    else:
                        require 2 * 5 * 10^9 * (t - stor20 / 10^10)^2 / 5 * 10^9 * (t - stor20 / 10^10)^2 == 2
                        emit 0x71bbadad: 2 * 5 * 10^9 * (t - stor20 / 10^10)^2 / 100, block.timestamp, msg.sender
                        require (2 * 5 * 10^9 * (t - stor20 / 10^10)^2 / 100) + sub_4c7a9901[address(msg.sender)] >= sub_4c7a9901[address(msg.sender)]
                        sub_4c7a9901[address(msg.sender)] += 2 * 5 * 10^9 * (t - stor20 / 10^10)^2 / 100
                    if not 5 * 10^9 * (t - stor20 / 10^10)^2:
                        require sub_74a4f5ea >= sub_74a4f5ea
                    else:
                        require 25 * 10^9 * (t - stor20 / 10^10)^2 / 5 * 10^9 * (t - stor20 / 10^10)^2 == 5
                        require (25 * 10^9 * (t - stor20 / 10^10)^2 / 100) + sub_74a4f5ea >= sub_74a4f5ea
                        sub_74a4f5ea += 25 * 10^9 * (t - stor20 / 10^10)^2 / 100
                stor5[address(msg.sender)] = 1
            if msg.value - (5 * 10^9 * (t - stor20 / 10^10)^2) > 0:
                call msg.sender with:
                   value msg.value - (5 * 10^9 * (t - stor20 / 10^10)^2) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if balanceOf[address(msg.sender)] >= 20 * 10^18:
                stor4.length++
                address(stor4[stor4.length].field_0) = msg.sender
            emit Buy(5 * 10^9 * (t - stor20 / 10^10)^2, 10^decimals * t - stor20 / 10^10, block.timestamp, msg.sender);
    else:
        require t - stor20 / 10^10 * stor20 / stor20 == t - stor20 / 10^10
        require 5 * 10^9 * (t - stor20 / 10^10)^2 / 5 * 10^9 == (t - stor20 / 10^10)^2
        require (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) >= 5 * 10^9 * (t - stor20 / 10^10)^2
        require (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) <= msg.value
        if not t - stor20 / 10^10:
            require stor20 >= stor20
        else:
            require 10^10 * t - stor20 / 10^10 / t - stor20 / 10^10 == 10^10
            require (10^10 * t - stor20 / 10^10) + stor20 >= stor20
            stor20 += 10^10 * t - stor20 / 10^10
        if not t - stor20 / 10^10:
            require msg.sender
            require totalSupply >= totalSupply
            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            emit Transfer(0, 0, msg.sender);
            require msg.value - (t - stor20 / 10^10 * stor20) - (5 * 10^9 * (t - stor20 / 10^10)^2) <= msg.value
            if block.timestamp - sub_78a1cff6[address(msg.sender)] > 24 * 3600:
                sub_f979fcf6[address(msg.sender)] = 0
            require (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) + sub_f979fcf6[address(msg.sender)] >= sub_f979fcf6[address(msg.sender)]
            if (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) + sub_f979fcf6[address(msg.sender)] > 5 * 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Investment limit exceeded for 24 hours.'
            require (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) + sub_f979fcf6[address(msg.sender)] >= sub_f979fcf6[address(msg.sender)]
            sub_f979fcf6[address(msg.sender)] = (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) + sub_f979fcf6[address(msg.sender)]
            sub_78a1cff6[address(msg.sender)] = block.timestamp
            if stor5[address(msg.sender)]:
                if not referrers[address(msg.sender)]:
                    if not (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2):
                        require sub_74a4f5ea >= sub_74a4f5ea
                    else:
                        require (10 * t - stor20 / 10^10 * stor20) + (5 * 10^10 * (t - stor20 / 10^10)^2) / (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) == 10
                        require ((10 * t - stor20 / 10^10 * stor20) + (5 * 10^10 * (t - stor20 / 10^10)^2) / 100) + sub_74a4f5ea >= sub_74a4f5ea
                        sub_74a4f5ea += (10 * t - stor20 / 10^10 * stor20) + (5 * 10^10 * (t - stor20 / 10^10)^2) / 100
                else:
                    if not (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2):
                        emit 0x71bbadad: 0, block.timestamp, referrers[address(msg.sender)]
                        require sub_4c7a9901[stor13[address(msg.sender)]] >= sub_4c7a9901[stor13[address(msg.sender)]]
                    else:
                        require (3 * t - stor20 / 10^10 * stor20) + (15 * 10^9 * (t - stor20 / 10^10)^2) / (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) == 3
                        emit 0x71bbadad: (3 * t - stor20 / 10^10 * stor20) + (15 * 10^9 * (t - stor20 / 10^10)^2) / 100, block.timestamp, referrers[address(msg.sender)]
                        require ((3 * t - stor20 / 10^10 * stor20) + (15 * 10^9 * (t - stor20 / 10^10)^2) / 100) + sub_4c7a9901[stor13[address(msg.sender)]] >= sub_4c7a9901[stor13[address(msg.sender)]]
                        sub_4c7a9901[stor13[address(msg.sender)]] += (3 * t - stor20 / 10^10 * stor20) + (15 * 10^9 * (t - stor20 / 10^10)^2) / 100
                    if not (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2):
                        require sub_74a4f5ea >= sub_74a4f5ea
                    else:
                        require (7 * t - stor20 / 10^10 * stor20) + (35 * 10^9 * (t - stor20 / 10^10)^2) / (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) == 7
                        require ((7 * t - stor20 / 10^10 * stor20) + (35 * 10^9 * (t - stor20 / 10^10)^2) / 100) + sub_74a4f5ea >= sub_74a4f5ea
                        sub_74a4f5ea += (7 * t - stor20 / 10^10 * stor20) + (35 * 10^9 * (t - stor20 / 10^10)^2) / 100
            else:
                if arg1:
                    if arg1 != msg.sender:
                        referrers[address(msg.sender)] = arg1
                if not referrers[address(msg.sender)]:
                    if not (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2):
                        require sub_74a4f5ea >= sub_74a4f5ea
                    else:
                        require (10 * t - stor20 / 10^10 * stor20) + (5 * 10^10 * (t - stor20 / 10^10)^2) / (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) == 10
                        require ((10 * t - stor20 / 10^10 * stor20) + (5 * 10^10 * (t - stor20 / 10^10)^2) / 100) + sub_74a4f5ea >= sub_74a4f5ea
                        sub_74a4f5ea += (10 * t - stor20 / 10^10 * stor20) + (5 * 10^10 * (t - stor20 / 10^10)^2) / 100
                else:
                    if not (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2):
                        emit 0x71bbadad: 0, block.timestamp, referrers[address(msg.sender)]
                        require sub_4c7a9901[stor13[address(msg.sender)]] >= sub_4c7a9901[stor13[address(msg.sender)]]
                    else:
                        require (3 * t - stor20 / 10^10 * stor20) + (15 * 10^9 * (t - stor20 / 10^10)^2) / (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) == 3
                        emit 0x71bbadad: (3 * t - stor20 / 10^10 * stor20) + (15 * 10^9 * (t - stor20 / 10^10)^2) / 100, block.timestamp, referrers[address(msg.sender)]
                        require ((3 * t - stor20 / 10^10 * stor20) + (15 * 10^9 * (t - stor20 / 10^10)^2) / 100) + sub_4c7a9901[stor13[address(msg.sender)]] >= sub_4c7a9901[stor13[address(msg.sender)]]
                        sub_4c7a9901[stor13[address(msg.sender)]] += (3 * t - stor20 / 10^10 * stor20) + (15 * 10^9 * (t - stor20 / 10^10)^2) / 100
                    if not (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2):
                        emit 0x71bbadad: 0, block.timestamp, msg.sender
                        require sub_4c7a9901[address(msg.sender)] >= sub_4c7a9901[address(msg.sender)]
                    else:
                        require 2 * (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) / (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) == 2
                        emit 0x71bbadad: 2 * (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) / 100, block.timestamp, msg.sender
                        require (2 * (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) / 100) + sub_4c7a9901[address(msg.sender)] >= sub_4c7a9901[address(msg.sender)]
                        sub_4c7a9901[address(msg.sender)] += 2 * (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) / 100
                    if not (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2):
                        require sub_74a4f5ea >= sub_74a4f5ea
                    else:
                        require (5 * t - stor20 / 10^10 * stor20) + (25 * 10^9 * (t - stor20 / 10^10)^2) / (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) == 5
                        require ((5 * t - stor20 / 10^10 * stor20) + (25 * 10^9 * (t - stor20 / 10^10)^2) / 100) + sub_74a4f5ea >= sub_74a4f5ea
                        sub_74a4f5ea += (5 * t - stor20 / 10^10 * stor20) + (25 * 10^9 * (t - stor20 / 10^10)^2) / 100
                stor5[address(msg.sender)] = 1
            if msg.value - (t - stor20 / 10^10 * stor20) - (5 * 10^9 * (t - stor20 / 10^10)^2) > 0:
                call msg.sender with:
                   value msg.value - (t - stor20 / 10^10 * stor20) - (5 * 10^9 * (t - stor20 / 10^10)^2) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if balanceOf[address(msg.sender)] >= 20 * 10^18:
                stor4.length++
                address(stor4[stor4.length].field_0) = msg.sender
            emit Buy((t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2), 0, block.timestamp, msg.sender);
        else:
            require 10^decimals * t - stor20 / 10^10 / t - stor20 / 10^10 == 10^decimals
            require msg.sender
            require (10^decimals * t - stor20 / 10^10) + totalSupply >= totalSupply
            totalSupply += 10^decimals * t - stor20 / 10^10
            require (10^decimals * t - stor20 / 10^10) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 10^decimals * t - stor20 / 10^10
            emit Transfer((10^decimals * t - stor20 / 10^10), 0, msg.sender);
            require msg.value - (t - stor20 / 10^10 * stor20) - (5 * 10^9 * (t - stor20 / 10^10)^2) <= msg.value
            if block.timestamp - sub_78a1cff6[address(msg.sender)] > 24 * 3600:
                sub_f979fcf6[address(msg.sender)] = 0
            require (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) + sub_f979fcf6[address(msg.sender)] >= sub_f979fcf6[address(msg.sender)]
            if (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) + sub_f979fcf6[address(msg.sender)] > 5 * 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Investment limit exceeded for 24 hours.'
            require (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) + sub_f979fcf6[address(msg.sender)] >= sub_f979fcf6[address(msg.sender)]
            sub_f979fcf6[address(msg.sender)] = (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) + sub_f979fcf6[address(msg.sender)]
            sub_78a1cff6[address(msg.sender)] = block.timestamp
            if stor5[address(msg.sender)]:
                if not referrers[address(msg.sender)]:
                    if not (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2):
                        require sub_74a4f5ea >= sub_74a4f5ea
                    else:
                        require (10 * t - stor20 / 10^10 * stor20) + (5 * 10^10 * (t - stor20 / 10^10)^2) / (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) == 10
                        require ((10 * t - stor20 / 10^10 * stor20) + (5 * 10^10 * (t - stor20 / 10^10)^2) / 100) + sub_74a4f5ea >= sub_74a4f5ea
                        sub_74a4f5ea += (10 * t - stor20 / 10^10 * stor20) + (5 * 10^10 * (t - stor20 / 10^10)^2) / 100
                else:
                    if not (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2):
                        emit 0x71bbadad: 0, block.timestamp, referrers[address(msg.sender)]
                        require sub_4c7a9901[stor13[address(msg.sender)]] >= sub_4c7a9901[stor13[address(msg.sender)]]
                    else:
                        require (3 * t - stor20 / 10^10 * stor20) + (15 * 10^9 * (t - stor20 / 10^10)^2) / (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) == 3
                        emit 0x71bbadad: (3 * t - stor20 / 10^10 * stor20) + (15 * 10^9 * (t - stor20 / 10^10)^2) / 100, block.timestamp, referrers[address(msg.sender)]
                        require ((3 * t - stor20 / 10^10 * stor20) + (15 * 10^9 * (t - stor20 / 10^10)^2) / 100) + sub_4c7a9901[stor13[address(msg.sender)]] >= sub_4c7a9901[stor13[address(msg.sender)]]
                        sub_4c7a9901[stor13[address(msg.sender)]] += (3 * t - stor20 / 10^10 * stor20) + (15 * 10^9 * (t - stor20 / 10^10)^2) / 100
                    if not (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2):
                        require sub_74a4f5ea >= sub_74a4f5ea
                    else:
                        require (7 * t - stor20 / 10^10 * stor20) + (35 * 10^9 * (t - stor20 / 10^10)^2) / (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) == 7
                        require ((7 * t - stor20 / 10^10 * stor20) + (35 * 10^9 * (t - stor20 / 10^10)^2) / 100) + sub_74a4f5ea >= sub_74a4f5ea
                        sub_74a4f5ea += (7 * t - stor20 / 10^10 * stor20) + (35 * 10^9 * (t - stor20 / 10^10)^2) / 100
            else:
                if arg1:
                    if arg1 != msg.sender:
                        referrers[address(msg.sender)] = arg1
                if not referrers[address(msg.sender)]:
                    if not (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2):
                        require sub_74a4f5ea >= sub_74a4f5ea
                    else:
                        require (10 * t - stor20 / 10^10 * stor20) + (5 * 10^10 * (t - stor20 / 10^10)^2) / (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) == 10
                        require ((10 * t - stor20 / 10^10 * stor20) + (5 * 10^10 * (t - stor20 / 10^10)^2) / 100) + sub_74a4f5ea >= sub_74a4f5ea
                        sub_74a4f5ea += (10 * t - stor20 / 10^10 * stor20) + (5 * 10^10 * (t - stor20 / 10^10)^2) / 100
                else:
                    if not (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2):
                        emit 0x71bbadad: 0, block.timestamp, referrers[address(msg.sender)]
                        require sub_4c7a9901[stor13[address(msg.sender)]] >= sub_4c7a9901[stor13[address(msg.sender)]]
                    else:
                        require (3 * t - stor20 / 10^10 * stor20) + (15 * 10^9 * (t - stor20 / 10^10)^2) / (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) == 3
                        emit 0x71bbadad: (3 * t - stor20 / 10^10 * stor20) + (15 * 10^9 * (t - stor20 / 10^10)^2) / 100, block.timestamp, referrers[address(msg.sender)]
                        require ((3 * t - stor20 / 10^10 * stor20) + (15 * 10^9 * (t - stor20 / 10^10)^2) / 100) + sub_4c7a9901[stor13[address(msg.sender)]] >= sub_4c7a9901[stor13[address(msg.sender)]]
                        sub_4c7a9901[stor13[address(msg.sender)]] += (3 * t - stor20 / 10^10 * stor20) + (15 * 10^9 * (t - stor20 / 10^10)^2) / 100
                    if not (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2):
                        emit 0x71bbadad: 0, block.timestamp, msg.sender
                        require sub_4c7a9901[address(msg.sender)] >= sub_4c7a9901[address(msg.sender)]
                    else:
                        require 2 * (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) / (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) == 2
                        emit 0x71bbadad: 2 * (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) / 100, block.timestamp, msg.sender
                        require (2 * (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) / 100) + sub_4c7a9901[address(msg.sender)] >= sub_4c7a9901[address(msg.sender)]
                        sub_4c7a9901[address(msg.sender)] += 2 * (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) / 100
                    if not (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2):
                        require sub_74a4f5ea >= sub_74a4f5ea
                    else:
                        require (5 * t - stor20 / 10^10 * stor20) + (25 * 10^9 * (t - stor20 / 10^10)^2) / (t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2) == 5
                        require ((5 * t - stor20 / 10^10 * stor20) + (25 * 10^9 * (t - stor20 / 10^10)^2) / 100) + sub_74a4f5ea >= sub_74a4f5ea
                        sub_74a4f5ea += (5 * t - stor20 / 10^10 * stor20) + (25 * 10^9 * (t - stor20 / 10^10)^2) / 100
                stor5[address(msg.sender)] = 1
            if msg.value - (t - stor20 / 10^10 * stor20) - (5 * 10^9 * (t - stor20 / 10^10)^2) > 0:
                call msg.sender with:
                   value msg.value - (t - stor20 / 10^10 * stor20) - (5 * 10^9 * (t - stor20 / 10^10)^2) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if balanceOf[address(msg.sender)] >= 20 * 10^18:
                stor4.length++
                address(stor4[stor4.length].field_0) = msg.sender
            emit Buy((t - stor20 / 10^10 * stor20) + (5 * 10^9 * (t - stor20 / 10^10)^2), 10^decimals * t - stor20 / 10^10, block.timestamp, msg.sender);
}



}

contract main {




// =====================  Runtime code  =====================


const name = 'RewardWorK'

const decimals = 18

const symbol = 'RWK'


address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
uint256 totalSupply;
uint256 tokenPerETH;
uint256 valueToGive;
uint256 totalDistributed;
uint256 totalRemaining;
uint8 distributionFinished;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function distributionFinished() {
    return bool(distributionFinished)
}

function valueToGive() {
    return valueToGive
}

function tokenPerETH() {
    return tokenPerETH
}

function totalRemaining() {
    return totalRemaining
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalDistributed() {
    return totalDistributed
}

function blacklist(address arg1) {
    return bool(stor4[arg1])
}

function transferOwnership(address arg1) {
    require msg.sender == stor1
    if arg1:
        stor1 = arg1
}

function finishDistribution() {
    require msg.sender == stor1
    require not distributionFinished
    distributionFinished = 1
    emit DistrFinished()
    return 1
}

function withdraw() {
    require msg.sender == stor1
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function getTokenBalance(address arg1, address arg2) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function burnFrom(uint256 arg1, address arg2) {
    require msg.sender == stor1
    require arg1 <= balanceOf[address(arg2)]
    require arg1 <= balanceOf[address(arg2)]
    balanceOf[address(arg2)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= totalDistributed
    totalDistributed -= arg1
    emit Burn(arg1, arg2);
}

function burn(uint256 arg1) {
    require msg.sender == stor1
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= totalDistributed
    totalDistributed -= arg1
    emit Burn(arg1, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdrawAltcoinTokens(address arg1) {
    require msg.sender == stor1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function buyToken(address arg1, uint256 arg2) {
    require not distributionFinished
    if tokenPerETH:
        require tokenPerETH
        require tokenPerETH * arg2 / tokenPerETH == arg2
        if arg2 < 10^16:
            require tokenPerETH * arg2 / 10^18 >= tokenPerETH * arg2 / 10^18
            require tokenPerETH * arg2 / 10^18 <= totalRemaining
            require not distributionFinished
            require totalDistributed + (tokenPerETH * arg2 / 10^18) >= totalDistributed
            totalDistributed += tokenPerETH * arg2 / 10^18
            require tokenPerETH * arg2 / 10^18 <= totalRemaining
            totalRemaining -= tokenPerETH * arg2 / 10^18
            require balanceOf[address(arg1)] + (tokenPerETH * arg2 / 10^18) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += tokenPerETH * arg2 / 10^18
            emit Distr((tokenPerETH * arg2 / 10^18), arg1);
            emit Transfer((tokenPerETH * arg2 / 10^18), 0, arg1);
        else:
            if arg2 >= 10^17:
                if arg2 >= 10^18:
                    require (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100) >= tokenPerETH * arg2 / 10^18
                    require (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100) <= totalRemaining
                    require not distributionFinished
                    require totalDistributed + (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100) >= totalDistributed
                    totalDistributed = totalDistributed + (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100)
                    require (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100) <= totalRemaining
                    totalRemaining = totalRemaining - (tokenPerETH * arg2 / 10^18) - (30 * tokenPerETH * arg2 / 10^18 / 100)
                    require balanceOf[address(arg1)] + (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100)
                    emit Distr(((tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100)), arg1);
                    emit Transfer(((tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100)), 0, arg1);
                else:
                    if arg2 < 10^18:
                        require (tokenPerETH * arg2 / 10^18) + (20 * tokenPerETH * arg2 / 10^18 / 100) >= tokenPerETH * arg2 / 10^18
                        require (tokenPerETH * arg2 / 10^18) + (20 * tokenPerETH * arg2 / 10^18 / 100) <= totalRemaining
                        require not distributionFinished
                        require totalDistributed + (tokenPerETH * arg2 / 10^18) + (20 * tokenPerETH * arg2 / 10^18 / 100) >= totalDistributed
                        totalDistributed = totalDistributed + (tokenPerETH * arg2 / 10^18) + (20 * tokenPerETH * arg2 / 10^18 / 100)
                        require (tokenPerETH * arg2 / 10^18) + (20 * tokenPerETH * arg2 / 10^18 / 100) <= totalRemaining
                        totalRemaining = totalRemaining - (tokenPerETH * arg2 / 10^18) - (20 * tokenPerETH * arg2 / 10^18 / 100)
                        require balanceOf[address(arg1)] + (tokenPerETH * arg2 / 10^18) + (20 * tokenPerETH * arg2 / 10^18 / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (tokenPerETH * arg2 / 10^18) + (20 * tokenPerETH * arg2 / 10^18 / 100)
                        emit Distr(((tokenPerETH * arg2 / 10^18) + (20 * tokenPerETH * arg2 / 10^18 / 100)), arg1);
                        emit Transfer(((tokenPerETH * arg2 / 10^18) + (20 * tokenPerETH * arg2 / 10^18 / 100)), 0, arg1);
                    else:
                        require (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100) >= tokenPerETH * arg2 / 10^18
                        require (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100) <= totalRemaining
                        require not distributionFinished
                        require totalDistributed + (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100) >= totalDistributed
                        totalDistributed = totalDistributed + (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100)
                        require (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100) <= totalRemaining
                        totalRemaining = totalRemaining - (tokenPerETH * arg2 / 10^18) - (30 * tokenPerETH * arg2 / 10^18 / 100)
                        require balanceOf[address(arg1)] + (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100)
                        emit Distr(((tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100)), arg1);
                        emit Transfer(((tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100)), 0, arg1);
            else:
                if arg2 < 10^17:
                    require (tokenPerETH * arg2 / 10^18) + (10 * tokenPerETH * arg2 / 10^18 / 100) >= tokenPerETH * arg2 / 10^18
                    require (tokenPerETH * arg2 / 10^18) + (10 * tokenPerETH * arg2 / 10^18 / 100) <= totalRemaining
                    require not distributionFinished
                    require totalDistributed + (tokenPerETH * arg2 / 10^18) + (10 * tokenPerETH * arg2 / 10^18 / 100) >= totalDistributed
                    totalDistributed = totalDistributed + (tokenPerETH * arg2 / 10^18) + (10 * tokenPerETH * arg2 / 10^18 / 100)
                    require (tokenPerETH * arg2 / 10^18) + (10 * tokenPerETH * arg2 / 10^18 / 100) <= totalRemaining
                    totalRemaining = totalRemaining - (tokenPerETH * arg2 / 10^18) - (10 * tokenPerETH * arg2 / 10^18 / 100)
                    require balanceOf[address(arg1)] + (tokenPerETH * arg2 / 10^18) + (10 * tokenPerETH * arg2 / 10^18 / 100) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (tokenPerETH * arg2 / 10^18) + (10 * tokenPerETH * arg2 / 10^18 / 100)
                    emit Distr(((tokenPerETH * arg2 / 10^18) + (10 * tokenPerETH * arg2 / 10^18 / 100)), arg1);
                    emit Transfer(((tokenPerETH * arg2 / 10^18) + (10 * tokenPerETH * arg2 / 10^18 / 100)), 0, arg1);
                else:
                    if arg2 >= 10^18:
                        require (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100) >= tokenPerETH * arg2 / 10^18
                        require (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100) <= totalRemaining
                        require not distributionFinished
                        require totalDistributed + (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100) >= totalDistributed
                        totalDistributed = totalDistributed + (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100)
                        require (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100) <= totalRemaining
                        totalRemaining = totalRemaining - (tokenPerETH * arg2 / 10^18) - (30 * tokenPerETH * arg2 / 10^18 / 100)
                        require balanceOf[address(arg1)] + (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100)
                        emit Distr(((tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100)), arg1);
                        emit Transfer(((tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100)), 0, arg1);
                    else:
                        if arg2 < 10^18:
                            require (tokenPerETH * arg2 / 10^18) + (20 * tokenPerETH * arg2 / 10^18 / 100) >= tokenPerETH * arg2 / 10^18
                            require (tokenPerETH * arg2 / 10^18) + (20 * tokenPerETH * arg2 / 10^18 / 100) <= totalRemaining
                            require not distributionFinished
                            require totalDistributed + (tokenPerETH * arg2 / 10^18) + (20 * tokenPerETH * arg2 / 10^18 / 100) >= totalDistributed
                            totalDistributed = totalDistributed + (tokenPerETH * arg2 / 10^18) + (20 * tokenPerETH * arg2 / 10^18 / 100)
                            require (tokenPerETH * arg2 / 10^18) + (20 * tokenPerETH * arg2 / 10^18 / 100) <= totalRemaining
                            totalRemaining = totalRemaining - (tokenPerETH * arg2 / 10^18) - (20 * tokenPerETH * arg2 / 10^18 / 100)
                            require balanceOf[address(arg1)] + (tokenPerETH * arg2 / 10^18) + (20 * tokenPerETH * arg2 / 10^18 / 100) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (tokenPerETH * arg2 / 10^18) + (20 * tokenPerETH * arg2 / 10^18 / 100)
                            emit Distr(((tokenPerETH * arg2 / 10^18) + (20 * tokenPerETH * arg2 / 10^18 / 100)), arg1);
                            emit Transfer(((tokenPerETH * arg2 / 10^18) + (20 * tokenPerETH * arg2 / 10^18 / 100)), 0, arg1);
                        else:
                            require (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100) >= tokenPerETH * arg2 / 10^18
                            require (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100) <= totalRemaining
                            require not distributionFinished
                            require totalDistributed + (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100) >= totalDistributed
                            totalDistributed = totalDistributed + (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100)
                            require (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100) <= totalRemaining
                            totalRemaining = totalRemaining - (tokenPerETH * arg2 / 10^18) - (30 * tokenPerETH * arg2 / 10^18 / 100)
                            require balanceOf[address(arg1)] + (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100)
                            emit Distr(((tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100)), arg1);
                            emit Transfer(((tokenPerETH * arg2 / 10^18) + (30 * tokenPerETH * arg2 / 10^18 / 100)), 0, arg1);
    else:
        if arg2 < 10^16:
            require 0 <= totalRemaining
            require not distributionFinished
            require totalDistributed >= totalDistributed
            require 0 <= totalRemaining
            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            emit Distr(0, arg1);
            emit Transfer(0, 0, arg1);
        else:
            if arg2 >= 10^17:
                if arg2 >= 10^18:
                    require 0 <= totalRemaining
                    require not distributionFinished
                    require totalDistributed >= totalDistributed
                    require 0 <= totalRemaining
                    require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    emit Distr(0, arg1);
                    emit Transfer(0, 0, arg1);
                else:
                    if arg2 < 10^18:
                        require 0 <= totalRemaining
                        require not distributionFinished
                        require totalDistributed >= totalDistributed
                        require 0 <= totalRemaining
                        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                        emit Distr(0, arg1);
                        emit Transfer(0, 0, arg1);
                    else:
                        require 0 <= totalRemaining
                        require not distributionFinished
                        require totalDistributed >= totalDistributed
                        require 0 <= totalRemaining
                        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                        emit Distr(0, arg1);
                        emit Transfer(0, 0, arg1);
            else:
                if arg2 < 10^17:
                    require 0 <= totalRemaining
                    require not distributionFinished
                    require totalDistributed >= totalDistributed
                    require 0 <= totalRemaining
                    require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    emit Distr(0, arg1);
                    emit Transfer(0, 0, arg1);
                else:
                    if arg2 >= 10^18:
                        require 0 <= totalRemaining
                        require not distributionFinished
                        require totalDistributed >= totalDistributed
                        require 0 <= totalRemaining
                        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                        emit Distr(0, arg1);
                        emit Transfer(0, 0, arg1);
                    else:
                        if arg2 < 10^18:
                            require 0 <= totalRemaining
                            require not distributionFinished
                            require totalDistributed >= totalDistributed
                            require 0 <= totalRemaining
                            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                            emit Distr(0, arg1);
                            emit Transfer(0, 0, arg1);
                        else:
                            require 0 <= totalRemaining
                            require not distributionFinished
                            require totalDistributed >= totalDistributed
                            require 0 <= totalRemaining
                            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                            emit Distr(0, arg1);
                            emit Transfer(0, 0, arg1);
}

function _fallback() payable {
    if msg.value:
        if msg.value <= 0:
        else:
            require not distributionFinished
            if tokenPerETH:
                require tokenPerETH
                require tokenPerETH * msg.value / tokenPerETH == msg.value
                if msg.value < 10^16:
                    require tokenPerETH * msg.value / 10^18 >= tokenPerETH * msg.value / 10^18
                    require tokenPerETH * msg.value / 10^18 <= totalRemaining
                    require not distributionFinished
                    require totalDistributed + (tokenPerETH * msg.value / 10^18) >= totalDistributed
                    totalDistributed += tokenPerETH * msg.value / 10^18
                    require tokenPerETH * msg.value / 10^18 <= totalRemaining
                    totalRemaining -= tokenPerETH * msg.value / 10^18
                    require balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += tokenPerETH * msg.value / 10^18
                    emit Distr((tokenPerETH * msg.value / 10^18), msg.sender);
                    emit Transfer((tokenPerETH * msg.value / 10^18), 0, msg.sender);
                else:
                    if msg.value >= 10^17:
                        if msg.value >= 10^18:
                            require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= tokenPerETH * msg.value / 10^18
                            require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                            require not distributionFinished
                            require totalDistributed + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= totalDistributed
                            totalDistributed = totalDistributed + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)
                            require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                            totalRemaining = totalRemaining - (tokenPerETH * msg.value / 10^18) - (30 * tokenPerETH * msg.value / 10^18 / 100)
                            require balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)
                            emit Distr(((tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)), msg.sender);
                            emit Transfer(((tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)), 0, msg.sender);
                        else:
                            if msg.value < 10^18:
                                require (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) >= tokenPerETH * msg.value / 10^18
                                require (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                require not distributionFinished
                                require totalDistributed + (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) >= totalDistributed
                                totalDistributed = totalDistributed + (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100)
                                require (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                totalRemaining = totalRemaining - (tokenPerETH * msg.value / 10^18) - (20 * tokenPerETH * msg.value / 10^18 / 100)
                                require balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100)
                                emit Distr(((tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100)), msg.sender);
                                emit Transfer(((tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100)), 0, msg.sender);
                            else:
                                require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= tokenPerETH * msg.value / 10^18
                                require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                require not distributionFinished
                                require totalDistributed + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= totalDistributed
                                totalDistributed = totalDistributed + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)
                                require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                totalRemaining = totalRemaining - (tokenPerETH * msg.value / 10^18) - (30 * tokenPerETH * msg.value / 10^18 / 100)
                                require balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)
                                emit Distr(((tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)), msg.sender);
                                emit Transfer(((tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)), 0, msg.sender);
                    else:
                        if msg.value < 10^17:
                            require (tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100) >= tokenPerETH * msg.value / 10^18
                            require (tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                            require not distributionFinished
                            require totalDistributed + (tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100) >= totalDistributed
                            totalDistributed = totalDistributed + (tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100)
                            require (tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                            totalRemaining = totalRemaining - (tokenPerETH * msg.value / 10^18) - (10 * tokenPerETH * msg.value / 10^18 / 100)
                            require balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100)
                            emit Distr(((tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100)), msg.sender);
                            emit Transfer(((tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100)), 0, msg.sender);
                        else:
                            if msg.value >= 10^18:
                                require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= tokenPerETH * msg.value / 10^18
                                require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                require not distributionFinished
                                require totalDistributed + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= totalDistributed
                                totalDistributed = totalDistributed + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)
                                require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                totalRemaining = totalRemaining - (tokenPerETH * msg.value / 10^18) - (30 * tokenPerETH * msg.value / 10^18 / 100)
                                require balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)
                                emit Distr(((tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)), msg.sender);
                                emit Transfer(((tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)), 0, msg.sender);
                            else:
                                if msg.value < 10^18:
                                    require (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) >= tokenPerETH * msg.value / 10^18
                                    require (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                    require not distributionFinished
                                    require totalDistributed + (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) >= totalDistributed
                                    totalDistributed = totalDistributed + (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100)
                                    require (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                    totalRemaining = totalRemaining - (tokenPerETH * msg.value / 10^18) - (20 * tokenPerETH * msg.value / 10^18 / 100)
                                    require balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100)
                                    emit Distr(((tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100)), msg.sender);
                                    emit Transfer(((tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100)), 0, msg.sender);
                                else:
                                    require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= tokenPerETH * msg.value / 10^18
                                    require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                    require not distributionFinished
                                    require totalDistributed + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= totalDistributed
                                    totalDistributed = totalDistributed + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)
                                    require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                    totalRemaining = totalRemaining - (tokenPerETH * msg.value / 10^18) - (30 * tokenPerETH * msg.value / 10^18 / 100)
                                    require balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)
                                    emit Distr(((tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)), msg.sender);
                                    emit Transfer(((tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)), 0, msg.sender);
            else:
                if msg.value < 10^16:
                    require 0 <= totalRemaining
                    require not distributionFinished
                    require totalDistributed >= totalDistributed
                    require 0 <= totalRemaining
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    emit Distr(0, msg.sender);
                    emit Transfer(0, 0, msg.sender);
                else:
                    if msg.value >= 10^17:
                        if msg.value >= 10^18:
                            require 0 <= totalRemaining
                            require not distributionFinished
                            require totalDistributed >= totalDistributed
                            require 0 <= totalRemaining
                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            emit Distr(0, msg.sender);
                            emit Transfer(0, 0, msg.sender);
                        else:
                            if msg.value < 10^18:
                                require 0 <= totalRemaining
                                require not distributionFinished
                                require totalDistributed >= totalDistributed
                                require 0 <= totalRemaining
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit Distr(0, msg.sender);
                                emit Transfer(0, 0, msg.sender);
                            else:
                                require 0 <= totalRemaining
                                require not distributionFinished
                                require totalDistributed >= totalDistributed
                                require 0 <= totalRemaining
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit Distr(0, msg.sender);
                                emit Transfer(0, 0, msg.sender);
                    else:
                        if msg.value < 10^17:
                            require 0 <= totalRemaining
                            require not distributionFinished
                            require totalDistributed >= totalDistributed
                            require 0 <= totalRemaining
                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            emit Distr(0, msg.sender);
                            emit Transfer(0, 0, msg.sender);
                        else:
                            if msg.value >= 10^18:
                                require 0 <= totalRemaining
                                require not distributionFinished
                                require totalDistributed >= totalDistributed
                                require 0 <= totalRemaining
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit Distr(0, msg.sender);
                                emit Transfer(0, 0, msg.sender);
                            else:
                                if msg.value < 10^18:
                                    require 0 <= totalRemaining
                                    require not distributionFinished
                                    require totalDistributed >= totalDistributed
                                    require 0 <= totalRemaining
                                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    emit Distr(0, msg.sender);
                                    emit Transfer(0, 0, msg.sender);
                                else:
                                    require 0 <= totalRemaining
                                    require not distributionFinished
                                    require totalDistributed >= totalDistributed
                                    require 0 <= totalRemaining
                                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    emit Distr(0, msg.sender);
                                    emit Transfer(0, 0, msg.sender);
    else:
        require valueToGive <= totalRemaining
        require not stor4[address(msg.sender)]
        require not distributionFinished
        require totalDistributed + valueToGive >= totalDistributed
        totalDistributed += valueToGive
        require valueToGive <= totalRemaining
        totalRemaining -= valueToGive
        require balanceOf[address(msg.sender)] + valueToGive >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += valueToGive
        emit Distr(valueToGive, msg.sender);
        emit Transfer(valueToGive, 0, msg.sender);
        stor4[address(msg.sender)] = 1
        if valueToGive / 10^6:
            require valueToGive / 10^6
            require 999999 * valueToGive / 10^6 / valueToGive / 10^6 == 999999
            valueToGive = 999999 * valueToGive / 10^6
            if msg.value <= 0:
            else:
                require not distributionFinished
                if tokenPerETH:
                    require tokenPerETH
                    require tokenPerETH * msg.value / tokenPerETH == msg.value
                    if msg.value < 10^16:
                        require tokenPerETH * msg.value / 10^18 >= tokenPerETH * msg.value / 10^18
                        require tokenPerETH * msg.value / 10^18 <= totalRemaining
                        require not distributionFinished
                        require totalDistributed + (tokenPerETH * msg.value / 10^18) >= totalDistributed
                        totalDistributed += tokenPerETH * msg.value / 10^18
                        require tokenPerETH * msg.value / 10^18 <= totalRemaining
                        totalRemaining -= tokenPerETH * msg.value / 10^18
                        require balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += tokenPerETH * msg.value / 10^18
                        emit Distr((tokenPerETH * msg.value / 10^18), msg.sender);
                        emit Transfer((tokenPerETH * msg.value / 10^18), 0, msg.sender);
                    else:
                        if msg.value >= 10^17:
                            if msg.value >= 10^18:
                                require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= tokenPerETH * msg.value / 10^18
                                require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                require not distributionFinished
                                require totalDistributed + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= totalDistributed
                                totalDistributed = totalDistributed + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)
                                require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                totalRemaining = totalRemaining - (tokenPerETH * msg.value / 10^18) - (30 * tokenPerETH * msg.value / 10^18 / 100)
                                require balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)
                                emit Distr(((tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)), msg.sender);
                                emit Transfer(((tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)), 0, msg.sender);
                            else:
                                if msg.value < 10^18:
                                    require (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) >= tokenPerETH * msg.value / 10^18
                                    require (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                    require not distributionFinished
                                    require totalDistributed + (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) >= totalDistributed
                                    totalDistributed = totalDistributed + (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100)
                                    require (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                    totalRemaining = totalRemaining - (tokenPerETH * msg.value / 10^18) - (20 * tokenPerETH * msg.value / 10^18 / 100)
                                    require balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100)
                                    emit Distr(((tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100)), msg.sender);
                                    emit Transfer(((tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100)), 0, msg.sender);
                                else:
                                    require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= tokenPerETH * msg.value / 10^18
                                    require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                    require not distributionFinished
                                    require totalDistributed + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= totalDistributed
                                    totalDistributed = totalDistributed + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)
                                    require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                    totalRemaining = totalRemaining - (tokenPerETH * msg.value / 10^18) - (30 * tokenPerETH * msg.value / 10^18 / 100)
                                    require balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)
                                    emit Distr(((tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)), msg.sender);
                                    emit Transfer(((tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)), 0, msg.sender);
                        else:
                            if msg.value < 10^17:
                                require (tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100) >= tokenPerETH * msg.value / 10^18
                                require (tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                require not distributionFinished
                                require totalDistributed + (tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100) >= totalDistributed
                                totalDistributed = totalDistributed + (tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100)
                                require (tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                totalRemaining = totalRemaining - (tokenPerETH * msg.value / 10^18) - (10 * tokenPerETH * msg.value / 10^18 / 100)
                                require balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100)
                                emit Distr(((tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100)), msg.sender);
                                emit Transfer(((tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100)), 0, msg.sender);
                            else:
                                if msg.value >= 10^18:
                                    require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= tokenPerETH * msg.value / 10^18
                                    require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                    require not distributionFinished
                                    require totalDistributed + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= totalDistributed
                                    totalDistributed = totalDistributed + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)
                                    require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                    totalRemaining = totalRemaining - (tokenPerETH * msg.value / 10^18) - (30 * tokenPerETH * msg.value / 10^18 / 100)
                                    require balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)
                                    emit Distr(((tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)), msg.sender);
                                    emit Transfer(((tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)), 0, msg.sender);
                                else:
                                    if msg.value < 10^18:
                                        require (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) >= tokenPerETH * msg.value / 10^18
                                        require (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                        require not distributionFinished
                                        require totalDistributed + (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) >= totalDistributed
                                        totalDistributed = totalDistributed + (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100)
                                        require (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                        totalRemaining = totalRemaining - (tokenPerETH * msg.value / 10^18) - (20 * tokenPerETH * msg.value / 10^18 / 100)
                                        require balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100)
                                        emit Distr(((tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100)), msg.sender);
                                        emit Transfer(((tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100)), 0, msg.sender);
                                    else:
                                        require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= tokenPerETH * msg.value / 10^18
                                        require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                        require not distributionFinished
                                        require totalDistributed + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= totalDistributed
                                        totalDistributed = totalDistributed + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)
                                        require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                        totalRemaining = totalRemaining - (tokenPerETH * msg.value / 10^18) - (30 * tokenPerETH * msg.value / 10^18 / 100)
                                        require balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)
                                        emit Distr(((tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)), msg.sender);
                                        emit Transfer(((tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)), 0, msg.sender);
                else:
                    if msg.value < 10^16:
                        require 0 <= totalRemaining
                        require not distributionFinished
                        require totalDistributed >= totalDistributed
                        require 0 <= totalRemaining
                        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        emit Distr(0, msg.sender);
                        emit Transfer(0, 0, msg.sender);
                    else:
                        if msg.value >= 10^17:
                            if msg.value >= 10^18:
                                require 0 <= totalRemaining
                                require not distributionFinished
                                require totalDistributed >= totalDistributed
                                require 0 <= totalRemaining
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit Distr(0, msg.sender);
                                emit Transfer(0, 0, msg.sender);
                            else:
                                if msg.value < 10^18:
                                    require 0 <= totalRemaining
                                    require not distributionFinished
                                    require totalDistributed >= totalDistributed
                                    require 0 <= totalRemaining
                                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    emit Distr(0, msg.sender);
                                    emit Transfer(0, 0, msg.sender);
                                else:
                                    require 0 <= totalRemaining
                                    require not distributionFinished
                                    require totalDistributed >= totalDistributed
                                    require 0 <= totalRemaining
                                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    emit Distr(0, msg.sender);
                                    emit Transfer(0, 0, msg.sender);
                        else:
                            if msg.value < 10^17:
                                require 0 <= totalRemaining
                                require not distributionFinished
                                require totalDistributed >= totalDistributed
                                require 0 <= totalRemaining
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit Distr(0, msg.sender);
                                emit Transfer(0, 0, msg.sender);
                            else:
                                if msg.value >= 10^18:
                                    require 0 <= totalRemaining
                                    require not distributionFinished
                                    require totalDistributed >= totalDistributed
                                    require 0 <= totalRemaining
                                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    emit Distr(0, msg.sender);
                                    emit Transfer(0, 0, msg.sender);
                                else:
                                    if msg.value < 10^18:
                                        require 0 <= totalRemaining
                                        require not distributionFinished
                                        require totalDistributed >= totalDistributed
                                        require 0 <= totalRemaining
                                        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        emit Distr(0, msg.sender);
                                        emit Transfer(0, 0, msg.sender);
                                    else:
                                        require 0 <= totalRemaining
                                        require not distributionFinished
                                        require totalDistributed >= totalDistributed
                                        require 0 <= totalRemaining
                                        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        emit Distr(0, msg.sender);
                                        emit Transfer(0, 0, msg.sender);
        else:
            valueToGive = 0
            if msg.value <= 0:
            else:
                require not distributionFinished
                if tokenPerETH:
                    require tokenPerETH
                    require tokenPerETH * msg.value / tokenPerETH == msg.value
                    if msg.value < 10^16:
                        require tokenPerETH * msg.value / 10^18 >= tokenPerETH * msg.value / 10^18
                        require tokenPerETH * msg.value / 10^18 <= totalRemaining
                        require not distributionFinished
                        require totalDistributed + (tokenPerETH * msg.value / 10^18) >= totalDistributed
                        totalDistributed += tokenPerETH * msg.value / 10^18
                        require tokenPerETH * msg.value / 10^18 <= totalRemaining
                        totalRemaining -= tokenPerETH * msg.value / 10^18
                        require balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += tokenPerETH * msg.value / 10^18
                        emit Distr((tokenPerETH * msg.value / 10^18), msg.sender);
                        emit Transfer((tokenPerETH * msg.value / 10^18), 0, msg.sender);
                    else:
                        if msg.value >= 10^17:
                            if msg.value >= 10^18:
                                require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= tokenPerETH * msg.value / 10^18
                                require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                require not distributionFinished
                                require totalDistributed + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= totalDistributed
                                totalDistributed = totalDistributed + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)
                                require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                totalRemaining = totalRemaining - (tokenPerETH * msg.value / 10^18) - (30 * tokenPerETH * msg.value / 10^18 / 100)
                                require balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)
                                emit Distr(((tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)), msg.sender);
                                emit Transfer(((tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)), 0, msg.sender);
                            else:
                                if msg.value < 10^18:
                                    require (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) >= tokenPerETH * msg.value / 10^18
                                    require (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                    require not distributionFinished
                                    require totalDistributed + (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) >= totalDistributed
                                    totalDistributed = totalDistributed + (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100)
                                    require (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                    totalRemaining = totalRemaining - (tokenPerETH * msg.value / 10^18) - (20 * tokenPerETH * msg.value / 10^18 / 100)
                                    require balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100)
                                    emit Distr(((tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100)), msg.sender);
                                    emit Transfer(((tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100)), 0, msg.sender);
                                else:
                                    require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= tokenPerETH * msg.value / 10^18
                                    require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                    require not distributionFinished
                                    require totalDistributed + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= totalDistributed
                                    totalDistributed = totalDistributed + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)
                                    require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                    totalRemaining = totalRemaining - (tokenPerETH * msg.value / 10^18) - (30 * tokenPerETH * msg.value / 10^18 / 100)
                                    require balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)
                                    emit Distr(((tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)), msg.sender);
                                    emit Transfer(((tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)), 0, msg.sender);
                        else:
                            if msg.value < 10^17:
                                require (tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100) >= tokenPerETH * msg.value / 10^18
                                require (tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                require not distributionFinished
                                require totalDistributed + (tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100) >= totalDistributed
                                totalDistributed = totalDistributed + (tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100)
                                require (tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                totalRemaining = totalRemaining - (tokenPerETH * msg.value / 10^18) - (10 * tokenPerETH * msg.value / 10^18 / 100)
                                require balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100)
                                emit Distr(((tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100)), msg.sender);
                                emit Transfer(((tokenPerETH * msg.value / 10^18) + (10 * tokenPerETH * msg.value / 10^18 / 100)), 0, msg.sender);
                            else:
                                if msg.value >= 10^18:
                                    require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= tokenPerETH * msg.value / 10^18
                                    require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                    require not distributionFinished
                                    require totalDistributed + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= totalDistributed
                                    totalDistributed = totalDistributed + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)
                                    require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                    totalRemaining = totalRemaining - (tokenPerETH * msg.value / 10^18) - (30 * tokenPerETH * msg.value / 10^18 / 100)
                                    require balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)
                                    emit Distr(((tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)), msg.sender);
                                    emit Transfer(((tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)), 0, msg.sender);
                                else:
                                    if msg.value < 10^18:
                                        require (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) >= tokenPerETH * msg.value / 10^18
                                        require (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                        require not distributionFinished
                                        require totalDistributed + (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) >= totalDistributed
                                        totalDistributed = totalDistributed + (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100)
                                        require (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                        totalRemaining = totalRemaining - (tokenPerETH * msg.value / 10^18) - (20 * tokenPerETH * msg.value / 10^18 / 100)
                                        require balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100)
                                        emit Distr(((tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100)), msg.sender);
                                        emit Transfer(((tokenPerETH * msg.value / 10^18) + (20 * tokenPerETH * msg.value / 10^18 / 100)), 0, msg.sender);
                                    else:
                                        require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= tokenPerETH * msg.value / 10^18
                                        require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                        require not distributionFinished
                                        require totalDistributed + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= totalDistributed
                                        totalDistributed = totalDistributed + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)
                                        require (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) <= totalRemaining
                                        totalRemaining = totalRemaining - (tokenPerETH * msg.value / 10^18) - (30 * tokenPerETH * msg.value / 10^18 / 100)
                                        require balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)
                                        emit Distr(((tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)), msg.sender);
                                        emit Transfer(((tokenPerETH * msg.value / 10^18) + (30 * tokenPerETH * msg.value / 10^18 / 100)), 0, msg.sender);
                else:
                    if msg.value < 10^16:
                        require 0 <= totalRemaining
                        require not distributionFinished
                        require totalDistributed >= totalDistributed
                        require 0 <= totalRemaining
                        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        emit Distr(0, msg.sender);
                        emit Transfer(0, 0, msg.sender);
                    else:
                        if msg.value >= 10^17:
                            if msg.value >= 10^18:
                                require 0 <= totalRemaining
                                require not distributionFinished
                                require totalDistributed >= totalDistributed
                                require 0 <= totalRemaining
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit Distr(0, msg.sender);
                                emit Transfer(0, 0, msg.sender);
                            else:
                                if msg.value < 10^18:
                                    require 0 <= totalRemaining
                                    require not distributionFinished
                                    require totalDistributed >= totalDistributed
                                    require 0 <= totalRemaining
                                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    emit Distr(0, msg.sender);
                                    emit Transfer(0, 0, msg.sender);
                                else:
                                    require 0 <= totalRemaining
                                    require not distributionFinished
                                    require totalDistributed >= totalDistributed
                                    require 0 <= totalRemaining
                                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    emit Distr(0, msg.sender);
                                    emit Transfer(0, 0, msg.sender);
                        else:
                            if msg.value < 10^17:
                                require 0 <= totalRemaining
                                require not distributionFinished
                                require totalDistributed >= totalDistributed
                                require 0 <= totalRemaining
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit Distr(0, msg.sender);
                                emit Transfer(0, 0, msg.sender);
                            else:
                                if msg.value >= 10^18:
                                    require 0 <= totalRemaining
                                    require not distributionFinished
                                    require totalDistributed >= totalDistributed
                                    require 0 <= totalRemaining
                                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    emit Distr(0, msg.sender);
                                    emit Transfer(0, 0, msg.sender);
                                else:
                                    if msg.value < 10^18:
                                        require 0 <= totalRemaining
                                        require not distributionFinished
                                        require totalDistributed >= totalDistributed
                                        require 0 <= totalRemaining
                                        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        emit Distr(0, msg.sender);
                                        emit Transfer(0, 0, msg.sender);
                                    else:
                                        require 0 <= totalRemaining
                                        require not distributionFinished
                                        require totalDistributed >= totalDistributed
                                        require 0 <= totalRemaining
                                        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        emit Distr(0, msg.sender);
                                        emit Transfer(0, 0, msg.sender);
}



}

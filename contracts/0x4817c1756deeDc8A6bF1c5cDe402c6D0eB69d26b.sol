contract main {




// =====================  Runtime code  =====================


const name = 'Miggers'

const decimals = 18

const symbol = 'MIGG'


address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
uint256 totalSupply;
uint256 valueToGive;
uint256 tokenPerETH;
address stor8;
uint256 totalDistributed;
uint256 totalRemaining;
uint8 stor11;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function distributionFinished() {
    return bool(stor11)
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

function selfdestroy() {
    require msg.sender == stor1
    selfdestruct(stor1)
}

function transferOwnership(address arg1) {
    require msg.sender == stor1
    if arg1:
        stor1 = arg1
}

function finishDistribution() {
    require msg.sender == stor1
    require not stor11
    stor11 = 1
    emit DistrFinished()
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[msg.sender][address(arg1)]:
            return 0
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
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
    require arg1 <= balanceOf[msg.sender]
    require arg1 <= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= totalDistributed
    totalDistributed -= arg1
    emit Burn(arg1, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
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

function buyToken(address arg1, uint256 arg2) payable {
    require not stor11
    if tokenPerETH:
        require arg2 * tokenPerETH / tokenPerETH == arg2
        if arg2 < 10^17:
            require arg2 * tokenPerETH / 10^18 <= totalRemaining
            require not stor11
            require (arg2 * tokenPerETH / 10^18) + totalDistributed >= totalDistributed
            totalDistributed += arg2 * tokenPerETH / 10^18
            require arg2 * tokenPerETH / 10^18 <= totalRemaining
            totalRemaining -= arg2 * tokenPerETH / 10^18
            require (arg2 * tokenPerETH / 10^18) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2 * tokenPerETH / 10^18
            emit Distr((arg2 * tokenPerETH / 10^18), arg1);
            emit Transfer((arg2 * tokenPerETH / 10^18), 0, arg1);
            call stor8 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
        else:
            if arg2 >= 10^18:
                if arg2 >= 5 * 10^18:
                    require (arg2 * tokenPerETH / 10^18) + (50 * arg2 * tokenPerETH / 10^18 / 100) <= totalRemaining
                    require not stor11
                    require (arg2 * tokenPerETH / 10^18) + (50 * arg2 * tokenPerETH / 10^18 / 100) + totalDistributed >= totalDistributed
                    totalDistributed = (arg2 * tokenPerETH / 10^18) + (50 * arg2 * tokenPerETH / 10^18 / 100) + totalDistributed
                    require (arg2 * tokenPerETH / 10^18) + (50 * arg2 * tokenPerETH / 10^18 / 100) <= totalRemaining
                    totalRemaining = totalRemaining - (arg2 * tokenPerETH / 10^18) - (50 * arg2 * tokenPerETH / 10^18 / 100)
                    require (arg2 * tokenPerETH / 10^18) + (50 * arg2 * tokenPerETH / 10^18 / 100) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = (arg2 * tokenPerETH / 10^18) + (50 * arg2 * tokenPerETH / 10^18 / 100) + balanceOf[address(arg1)]
                    emit Distr(((arg2 * tokenPerETH / 10^18) + (50 * arg2 * tokenPerETH / 10^18 / 100)), arg1);
                    emit Transfer(((arg2 * tokenPerETH / 10^18) + (50 * arg2 * tokenPerETH / 10^18 / 100)), 0, arg1);
                    call stor8 with:
                       value arg2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                else:
                    require (arg2 * tokenPerETH / 10^18) + (25 * arg2 * tokenPerETH / 10^18 / 100) <= totalRemaining
                    require not stor11
                    require (arg2 * tokenPerETH / 10^18) + (25 * arg2 * tokenPerETH / 10^18 / 100) + totalDistributed >= totalDistributed
                    totalDistributed = (arg2 * tokenPerETH / 10^18) + (25 * arg2 * tokenPerETH / 10^18 / 100) + totalDistributed
                    require (arg2 * tokenPerETH / 10^18) + (25 * arg2 * tokenPerETH / 10^18 / 100) <= totalRemaining
                    totalRemaining = totalRemaining - (arg2 * tokenPerETH / 10^18) - (25 * arg2 * tokenPerETH / 10^18 / 100)
                    require (arg2 * tokenPerETH / 10^18) + (25 * arg2 * tokenPerETH / 10^18 / 100) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = (arg2 * tokenPerETH / 10^18) + (25 * arg2 * tokenPerETH / 10^18 / 100) + balanceOf[address(arg1)]
                    emit Distr(((arg2 * tokenPerETH / 10^18) + (25 * arg2 * tokenPerETH / 10^18 / 100)), arg1);
                    emit Transfer(((arg2 * tokenPerETH / 10^18) + (25 * arg2 * tokenPerETH / 10^18 / 100)), 0, arg1);
                    call stor8 with:
                       value arg2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
            else:
                require (arg2 * tokenPerETH / 10^18) + (10 * arg2 * tokenPerETH / 10^18 / 100) <= totalRemaining
                require not stor11
                require (arg2 * tokenPerETH / 10^18) + (10 * arg2 * tokenPerETH / 10^18 / 100) + totalDistributed >= totalDistributed
                totalDistributed = (arg2 * tokenPerETH / 10^18) + (10 * arg2 * tokenPerETH / 10^18 / 100) + totalDistributed
                require (arg2 * tokenPerETH / 10^18) + (10 * arg2 * tokenPerETH / 10^18 / 100) <= totalRemaining
                totalRemaining = totalRemaining - (arg2 * tokenPerETH / 10^18) - (10 * arg2 * tokenPerETH / 10^18 / 100)
                require (arg2 * tokenPerETH / 10^18) + (10 * arg2 * tokenPerETH / 10^18 / 100) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = (arg2 * tokenPerETH / 10^18) + (10 * arg2 * tokenPerETH / 10^18 / 100) + balanceOf[address(arg1)]
                emit Distr(((arg2 * tokenPerETH / 10^18) + (10 * arg2 * tokenPerETH / 10^18 / 100)), arg1);
                emit Transfer(((arg2 * tokenPerETH / 10^18) + (10 * arg2 * tokenPerETH / 10^18 / 100)), 0, arg1);
                call stor8 with:
                   value arg2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
    else:
        if arg2 < 10^17:
            require 0 <= totalRemaining
            require not stor11
            require totalDistributed >= totalDistributed
            require 0 <= totalRemaining
            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            emit Distr(0, arg1);
            emit Transfer(0, 0, arg1);
            call stor8 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
        else:
            if arg2 >= 10^18:
                if arg2 >= 5 * 10^18:
                    require 0 <= totalRemaining
                    require not stor11
                    require totalDistributed >= totalDistributed
                    require 0 <= totalRemaining
                    require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    emit Distr(0, arg1);
                    emit Transfer(0, 0, arg1);
                    call stor8 with:
                       value arg2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                else:
                    require 0 <= totalRemaining
                    require not stor11
                    require totalDistributed >= totalDistributed
                    require 0 <= totalRemaining
                    require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    emit Distr(0, arg1);
                    emit Transfer(0, 0, arg1);
                    call stor8 with:
                       value arg2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
            else:
                require 0 <= totalRemaining
                require not stor11
                require totalDistributed >= totalDistributed
                require 0 <= totalRemaining
                require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                emit Distr(0, arg1);
                emit Transfer(0, 0, arg1);
                call stor8 with:
                   value arg2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
}

function getTokens() payable {
    require not stor11
    if msg.value:
        if msg.value <= 0:
        else:
            require not stor11
            if tokenPerETH:
                require msg.value * tokenPerETH / tokenPerETH == msg.value
                if msg.value < 10^17:
                    require msg.value * tokenPerETH / 10^18 <= totalRemaining
                    require not stor11
                    require (msg.value * tokenPerETH / 10^18) + totalDistributed >= totalDistributed
                    totalDistributed += msg.value * tokenPerETH / 10^18
                    require msg.value * tokenPerETH / 10^18 <= totalRemaining
                    totalRemaining -= msg.value * tokenPerETH / 10^18
                    require (msg.value * tokenPerETH / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value * tokenPerETH / 10^18
                    emit Distr((msg.value * tokenPerETH / 10^18), msg.sender);
                    emit Transfer((msg.value * tokenPerETH / 10^18), 0, msg.sender);
                    call stor8 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                else:
                    if msg.value >= 10^18:
                        if msg.value >= 5 * 10^18:
                            require (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                            require not stor11
                            require (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed >= totalDistributed
                            totalDistributed = (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed
                            require (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                            totalRemaining = totalRemaining - (msg.value * tokenPerETH / 10^18) - (50 * msg.value * tokenPerETH / 10^18 / 100)
                            require (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)]
                            emit Distr(((msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100)), msg.sender);
                            emit Transfer(((msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100)), 0, msg.sender);
                            call stor8 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                        else:
                            require (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                            require not stor11
                            require (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed >= totalDistributed
                            totalDistributed = (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed
                            require (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                            totalRemaining = totalRemaining - (msg.value * tokenPerETH / 10^18) - (25 * msg.value * tokenPerETH / 10^18 / 100)
                            require (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)]
                            emit Distr(((msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100)), msg.sender);
                            emit Transfer(((msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100)), 0, msg.sender);
                            call stor8 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                    else:
                        require (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                        require not stor11
                        require (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed >= totalDistributed
                        totalDistributed = (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed
                        require (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                        totalRemaining = totalRemaining - (msg.value * tokenPerETH / 10^18) - (10 * msg.value * tokenPerETH / 10^18 / 100)
                        require (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)]
                        emit Distr(((msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100)), msg.sender);
                        emit Transfer(((msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100)), 0, msg.sender);
                        call stor8 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
            else:
                if msg.value < 10^17:
                    require 0 <= totalRemaining
                    require not stor11
                    require totalDistributed >= totalDistributed
                    require 0 <= totalRemaining
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    emit Distr(0, msg.sender);
                    emit Transfer(0, 0, msg.sender);
                    call stor8 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                else:
                    if msg.value >= 10^18:
                        if msg.value >= 5 * 10^18:
                            require 0 <= totalRemaining
                            require not stor11
                            require totalDistributed >= totalDistributed
                            require 0 <= totalRemaining
                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            emit Distr(0, msg.sender);
                            emit Transfer(0, 0, msg.sender);
                            call stor8 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                        else:
                            require 0 <= totalRemaining
                            require not stor11
                            require totalDistributed >= totalDistributed
                            require 0 <= totalRemaining
                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            emit Distr(0, msg.sender);
                            emit Transfer(0, 0, msg.sender);
                            call stor8 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                    else:
                        require 0 <= totalRemaining
                        require not stor11
                        require totalDistributed >= totalDistributed
                        require 0 <= totalRemaining
                        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        emit Distr(0, msg.sender);
                        emit Transfer(0, 0, msg.sender);
                        call stor8 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
    else:
        require valueToGive <= totalRemaining
        require not stor4[address(msg.sender)]
        if valueToGive / 100000:
            require 99998 * valueToGive / 100000 / valueToGive / 100000 == 99998
            valueToGive = 99998 * valueToGive / 100000
            require not stor11
            require valueToGive + totalDistributed >= totalDistributed
            totalDistributed += valueToGive
            require valueToGive <= totalRemaining
            totalRemaining -= valueToGive
            require valueToGive + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += valueToGive
            emit Distr(valueToGive, msg.sender);
            emit Transfer(valueToGive, 0, msg.sender);
            stor4[address(msg.sender)] = 1
            if msg.value <= 0:
            else:
                require not stor11
                if tokenPerETH:
                    require msg.value * tokenPerETH / tokenPerETH == msg.value
                    if msg.value < 10^17:
                        require msg.value * tokenPerETH / 10^18 <= totalRemaining
                        require not stor11
                        require (msg.value * tokenPerETH / 10^18) + totalDistributed >= totalDistributed
                        totalDistributed += msg.value * tokenPerETH / 10^18
                        require msg.value * tokenPerETH / 10^18 <= totalRemaining
                        totalRemaining -= msg.value * tokenPerETH / 10^18
                        require (msg.value * tokenPerETH / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value * tokenPerETH / 10^18
                        emit Distr((msg.value * tokenPerETH / 10^18), msg.sender);
                        emit Transfer((msg.value * tokenPerETH / 10^18), 0, msg.sender);
                        call stor8 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                    else:
                        if msg.value >= 10^18:
                            if msg.value >= 5 * 10^18:
                                require (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                                require not stor11
                                require (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed >= totalDistributed
                                totalDistributed = (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed
                                require (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                                totalRemaining = totalRemaining - (msg.value * tokenPerETH / 10^18) - (50 * msg.value * tokenPerETH / 10^18 / 100)
                                require (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)]
                                emit Distr(((msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100)), msg.sender);
                                emit Transfer(((msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100)), 0, msg.sender);
                                call stor8 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                            else:
                                require (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                                require not stor11
                                require (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed >= totalDistributed
                                totalDistributed = (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed
                                require (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                                totalRemaining = totalRemaining - (msg.value * tokenPerETH / 10^18) - (25 * msg.value * tokenPerETH / 10^18 / 100)
                                require (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)]
                                emit Distr(((msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100)), msg.sender);
                                emit Transfer(((msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100)), 0, msg.sender);
                                call stor8 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                        else:
                            require (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                            require not stor11
                            require (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed >= totalDistributed
                            totalDistributed = (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed
                            require (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                            totalRemaining = totalRemaining - (msg.value * tokenPerETH / 10^18) - (10 * msg.value * tokenPerETH / 10^18 / 100)
                            require (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)]
                            emit Distr(((msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100)), msg.sender);
                            emit Transfer(((msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100)), 0, msg.sender);
                            call stor8 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                else:
                    if msg.value < 10^17:
                        require 0 <= totalRemaining
                        require not stor11
                        require totalDistributed >= totalDistributed
                        require 0 <= totalRemaining
                        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        emit Distr(0, msg.sender);
                        emit Transfer(0, 0, msg.sender);
                        call stor8 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                    else:
                        if msg.value >= 10^18:
                            if msg.value >= 5 * 10^18:
                                require 0 <= totalRemaining
                                require not stor11
                                require totalDistributed >= totalDistributed
                                require 0 <= totalRemaining
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit Distr(0, msg.sender);
                                emit Transfer(0, 0, msg.sender);
                                call stor8 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                            else:
                                require 0 <= totalRemaining
                                require not stor11
                                require totalDistributed >= totalDistributed
                                require 0 <= totalRemaining
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit Distr(0, msg.sender);
                                emit Transfer(0, 0, msg.sender);
                                call stor8 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                        else:
                            require 0 <= totalRemaining
                            require not stor11
                            require totalDistributed >= totalDistributed
                            require 0 <= totalRemaining
                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            emit Distr(0, msg.sender);
                            emit Transfer(0, 0, msg.sender);
                            call stor8 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
        else:
            valueToGive = 0
            require not stor11
            require valueToGive + totalDistributed >= totalDistributed
            totalDistributed += valueToGive
            require valueToGive <= totalRemaining
            totalRemaining -= valueToGive
            require valueToGive + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += valueToGive
            emit Distr(valueToGive, msg.sender);
            emit Transfer(valueToGive, 0, msg.sender);
            stor4[address(msg.sender)] = 1
            if msg.value <= 0:
            else:
                require not stor11
                if tokenPerETH:
                    require msg.value * tokenPerETH / tokenPerETH == msg.value
                    if msg.value < 10^17:
                        require msg.value * tokenPerETH / 10^18 <= totalRemaining
                        require not stor11
                        require (msg.value * tokenPerETH / 10^18) + totalDistributed >= totalDistributed
                        totalDistributed += msg.value * tokenPerETH / 10^18
                        require msg.value * tokenPerETH / 10^18 <= totalRemaining
                        totalRemaining -= msg.value * tokenPerETH / 10^18
                        require (msg.value * tokenPerETH / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value * tokenPerETH / 10^18
                        emit Distr((msg.value * tokenPerETH / 10^18), msg.sender);
                        emit Transfer((msg.value * tokenPerETH / 10^18), 0, msg.sender);
                        call stor8 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                    else:
                        if msg.value >= 10^18:
                            if msg.value >= 5 * 10^18:
                                require (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                                require not stor11
                                require (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed >= totalDistributed
                                totalDistributed = (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed
                                require (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                                totalRemaining = totalRemaining - (msg.value * tokenPerETH / 10^18) - (50 * msg.value * tokenPerETH / 10^18 / 100)
                                require (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)]
                                emit Distr(((msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100)), msg.sender);
                                emit Transfer(((msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100)), 0, msg.sender);
                                call stor8 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                            else:
                                require (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                                require not stor11
                                require (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed >= totalDistributed
                                totalDistributed = (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed
                                require (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                                totalRemaining = totalRemaining - (msg.value * tokenPerETH / 10^18) - (25 * msg.value * tokenPerETH / 10^18 / 100)
                                require (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)]
                                emit Distr(((msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100)), msg.sender);
                                emit Transfer(((msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100)), 0, msg.sender);
                                call stor8 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                        else:
                            require (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                            require not stor11
                            require (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed >= totalDistributed
                            totalDistributed = (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed
                            require (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                            totalRemaining = totalRemaining - (msg.value * tokenPerETH / 10^18) - (10 * msg.value * tokenPerETH / 10^18 / 100)
                            require (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)]
                            emit Distr(((msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100)), msg.sender);
                            emit Transfer(((msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100)), 0, msg.sender);
                            call stor8 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                else:
                    if msg.value < 10^17:
                        require 0 <= totalRemaining
                        require not stor11
                        require totalDistributed >= totalDistributed
                        require 0 <= totalRemaining
                        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        emit Distr(0, msg.sender);
                        emit Transfer(0, 0, msg.sender);
                        call stor8 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                    else:
                        if msg.value >= 10^18:
                            if msg.value >= 5 * 10^18:
                                require 0 <= totalRemaining
                                require not stor11
                                require totalDistributed >= totalDistributed
                                require 0 <= totalRemaining
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit Distr(0, msg.sender);
                                emit Transfer(0, 0, msg.sender);
                                call stor8 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                            else:
                                require 0 <= totalRemaining
                                require not stor11
                                require totalDistributed >= totalDistributed
                                require 0 <= totalRemaining
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit Distr(0, msg.sender);
                                emit Transfer(0, 0, msg.sender);
                                call stor8 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                        else:
                            require 0 <= totalRemaining
                            require not stor11
                            require totalDistributed >= totalDistributed
                            require 0 <= totalRemaining
                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            emit Distr(0, msg.sender);
                            emit Transfer(0, 0, msg.sender);
                            call stor8 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
}

function _fallback() payable {
    require not stor11
    if msg.value:
        if msg.value <= 0:
        else:
            require not stor11
            if tokenPerETH:
                require msg.value * tokenPerETH / tokenPerETH == msg.value
                if msg.value < 10^17:
                    require msg.value * tokenPerETH / 10^18 <= totalRemaining
                    require not stor11
                    require (msg.value * tokenPerETH / 10^18) + totalDistributed >= totalDistributed
                    totalDistributed += msg.value * tokenPerETH / 10^18
                    require msg.value * tokenPerETH / 10^18 <= totalRemaining
                    totalRemaining -= msg.value * tokenPerETH / 10^18
                    require (msg.value * tokenPerETH / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value * tokenPerETH / 10^18
                    emit Distr((msg.value * tokenPerETH / 10^18), msg.sender);
                    emit Transfer((msg.value * tokenPerETH / 10^18), 0, msg.sender);
                    call stor8 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                else:
                    if msg.value >= 10^18:
                        if msg.value >= 5 * 10^18:
                            require (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                            require not stor11
                            require (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed >= totalDistributed
                            totalDistributed = (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed
                            require (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                            totalRemaining = totalRemaining - (msg.value * tokenPerETH / 10^18) - (50 * msg.value * tokenPerETH / 10^18 / 100)
                            require (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)]
                            emit Distr(((msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100)), msg.sender);
                            emit Transfer(((msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100)), 0, msg.sender);
                            call stor8 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                        else:
                            require (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                            require not stor11
                            require (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed >= totalDistributed
                            totalDistributed = (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed
                            require (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                            totalRemaining = totalRemaining - (msg.value * tokenPerETH / 10^18) - (25 * msg.value * tokenPerETH / 10^18 / 100)
                            require (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)]
                            emit Distr(((msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100)), msg.sender);
                            emit Transfer(((msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100)), 0, msg.sender);
                            call stor8 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                    else:
                        require (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                        require not stor11
                        require (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed >= totalDistributed
                        totalDistributed = (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed
                        require (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                        totalRemaining = totalRemaining - (msg.value * tokenPerETH / 10^18) - (10 * msg.value * tokenPerETH / 10^18 / 100)
                        require (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)]
                        emit Distr(((msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100)), msg.sender);
                        emit Transfer(((msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100)), 0, msg.sender);
                        call stor8 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
            else:
                if msg.value < 10^17:
                    require 0 <= totalRemaining
                    require not stor11
                    require totalDistributed >= totalDistributed
                    require 0 <= totalRemaining
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    emit Distr(0, msg.sender);
                    emit Transfer(0, 0, msg.sender);
                    call stor8 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                else:
                    if msg.value >= 10^18:
                        if msg.value >= 5 * 10^18:
                            require 0 <= totalRemaining
                            require not stor11
                            require totalDistributed >= totalDistributed
                            require 0 <= totalRemaining
                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            emit Distr(0, msg.sender);
                            emit Transfer(0, 0, msg.sender);
                            call stor8 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                        else:
                            require 0 <= totalRemaining
                            require not stor11
                            require totalDistributed >= totalDistributed
                            require 0 <= totalRemaining
                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            emit Distr(0, msg.sender);
                            emit Transfer(0, 0, msg.sender);
                            call stor8 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                    else:
                        require 0 <= totalRemaining
                        require not stor11
                        require totalDistributed >= totalDistributed
                        require 0 <= totalRemaining
                        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        emit Distr(0, msg.sender);
                        emit Transfer(0, 0, msg.sender);
                        call stor8 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
    else:
        require valueToGive <= totalRemaining
        require not stor4[address(msg.sender)]
        if valueToGive / 100000:
            require 99998 * valueToGive / 100000 / valueToGive / 100000 == 99998
            valueToGive = 99998 * valueToGive / 100000
            require not stor11
            require valueToGive + totalDistributed >= totalDistributed
            totalDistributed += valueToGive
            require valueToGive <= totalRemaining
            totalRemaining -= valueToGive
            require valueToGive + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += valueToGive
            emit Distr(valueToGive, msg.sender);
            emit Transfer(valueToGive, 0, msg.sender);
            stor4[address(msg.sender)] = 1
            if msg.value <= 0:
            else:
                require not stor11
                if tokenPerETH:
                    require msg.value * tokenPerETH / tokenPerETH == msg.value
                    if msg.value < 10^17:
                        require msg.value * tokenPerETH / 10^18 <= totalRemaining
                        require not stor11
                        require (msg.value * tokenPerETH / 10^18) + totalDistributed >= totalDistributed
                        totalDistributed += msg.value * tokenPerETH / 10^18
                        require msg.value * tokenPerETH / 10^18 <= totalRemaining
                        totalRemaining -= msg.value * tokenPerETH / 10^18
                        require (msg.value * tokenPerETH / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value * tokenPerETH / 10^18
                        emit Distr((msg.value * tokenPerETH / 10^18), msg.sender);
                        emit Transfer((msg.value * tokenPerETH / 10^18), 0, msg.sender);
                        call stor8 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                    else:
                        if msg.value >= 10^18:
                            if msg.value >= 5 * 10^18:
                                require (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                                require not stor11
                                require (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed >= totalDistributed
                                totalDistributed = (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed
                                require (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                                totalRemaining = totalRemaining - (msg.value * tokenPerETH / 10^18) - (50 * msg.value * tokenPerETH / 10^18 / 100)
                                require (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)]
                                emit Distr(((msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100)), msg.sender);
                                emit Transfer(((msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100)), 0, msg.sender);
                                call stor8 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                            else:
                                require (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                                require not stor11
                                require (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed >= totalDistributed
                                totalDistributed = (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed
                                require (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                                totalRemaining = totalRemaining - (msg.value * tokenPerETH / 10^18) - (25 * msg.value * tokenPerETH / 10^18 / 100)
                                require (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)]
                                emit Distr(((msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100)), msg.sender);
                                emit Transfer(((msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100)), 0, msg.sender);
                                call stor8 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                        else:
                            require (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                            require not stor11
                            require (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed >= totalDistributed
                            totalDistributed = (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed
                            require (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                            totalRemaining = totalRemaining - (msg.value * tokenPerETH / 10^18) - (10 * msg.value * tokenPerETH / 10^18 / 100)
                            require (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)]
                            emit Distr(((msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100)), msg.sender);
                            emit Transfer(((msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100)), 0, msg.sender);
                            call stor8 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                else:
                    if msg.value < 10^17:
                        require 0 <= totalRemaining
                        require not stor11
                        require totalDistributed >= totalDistributed
                        require 0 <= totalRemaining
                        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        emit Distr(0, msg.sender);
                        emit Transfer(0, 0, msg.sender);
                        call stor8 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                    else:
                        if msg.value >= 10^18:
                            if msg.value >= 5 * 10^18:
                                require 0 <= totalRemaining
                                require not stor11
                                require totalDistributed >= totalDistributed
                                require 0 <= totalRemaining
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit Distr(0, msg.sender);
                                emit Transfer(0, 0, msg.sender);
                                call stor8 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                            else:
                                require 0 <= totalRemaining
                                require not stor11
                                require totalDistributed >= totalDistributed
                                require 0 <= totalRemaining
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit Distr(0, msg.sender);
                                emit Transfer(0, 0, msg.sender);
                                call stor8 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                        else:
                            require 0 <= totalRemaining
                            require not stor11
                            require totalDistributed >= totalDistributed
                            require 0 <= totalRemaining
                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            emit Distr(0, msg.sender);
                            emit Transfer(0, 0, msg.sender);
                            call stor8 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
        else:
            valueToGive = 0
            require not stor11
            require valueToGive + totalDistributed >= totalDistributed
            totalDistributed += valueToGive
            require valueToGive <= totalRemaining
            totalRemaining -= valueToGive
            require valueToGive + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += valueToGive
            emit Distr(valueToGive, msg.sender);
            emit Transfer(valueToGive, 0, msg.sender);
            stor4[address(msg.sender)] = 1
            if msg.value <= 0:
            else:
                require not stor11
                if tokenPerETH:
                    require msg.value * tokenPerETH / tokenPerETH == msg.value
                    if msg.value < 10^17:
                        require msg.value * tokenPerETH / 10^18 <= totalRemaining
                        require not stor11
                        require (msg.value * tokenPerETH / 10^18) + totalDistributed >= totalDistributed
                        totalDistributed += msg.value * tokenPerETH / 10^18
                        require msg.value * tokenPerETH / 10^18 <= totalRemaining
                        totalRemaining -= msg.value * tokenPerETH / 10^18
                        require (msg.value * tokenPerETH / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value * tokenPerETH / 10^18
                        emit Distr((msg.value * tokenPerETH / 10^18), msg.sender);
                        emit Transfer((msg.value * tokenPerETH / 10^18), 0, msg.sender);
                        call stor8 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                    else:
                        if msg.value >= 10^18:
                            if msg.value >= 5 * 10^18:
                                require (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                                require not stor11
                                require (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed >= totalDistributed
                                totalDistributed = (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed
                                require (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                                totalRemaining = totalRemaining - (msg.value * tokenPerETH / 10^18) - (50 * msg.value * tokenPerETH / 10^18 / 100)
                                require (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = (msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)]
                                emit Distr(((msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100)), msg.sender);
                                emit Transfer(((msg.value * tokenPerETH / 10^18) + (50 * msg.value * tokenPerETH / 10^18 / 100)), 0, msg.sender);
                                call stor8 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                            else:
                                require (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                                require not stor11
                                require (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed >= totalDistributed
                                totalDistributed = (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed
                                require (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                                totalRemaining = totalRemaining - (msg.value * tokenPerETH / 10^18) - (25 * msg.value * tokenPerETH / 10^18 / 100)
                                require (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = (msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)]
                                emit Distr(((msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100)), msg.sender);
                                emit Transfer(((msg.value * tokenPerETH / 10^18) + (25 * msg.value * tokenPerETH / 10^18 / 100)), 0, msg.sender);
                                call stor8 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                        else:
                            require (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                            require not stor11
                            require (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed >= totalDistributed
                            totalDistributed = (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) + totalDistributed
                            require (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) <= totalRemaining
                            totalRemaining = totalRemaining - (msg.value * tokenPerETH / 10^18) - (10 * msg.value * tokenPerETH / 10^18 / 100)
                            require (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = (msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100) + balanceOf[address(msg.sender)]
                            emit Distr(((msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100)), msg.sender);
                            emit Transfer(((msg.value * tokenPerETH / 10^18) + (10 * msg.value * tokenPerETH / 10^18 / 100)), 0, msg.sender);
                            call stor8 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                else:
                    if msg.value < 10^17:
                        require 0 <= totalRemaining
                        require not stor11
                        require totalDistributed >= totalDistributed
                        require 0 <= totalRemaining
                        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        emit Distr(0, msg.sender);
                        emit Transfer(0, 0, msg.sender);
                        call stor8 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                    else:
                        if msg.value >= 10^18:
                            if msg.value >= 5 * 10^18:
                                require 0 <= totalRemaining
                                require not stor11
                                require totalDistributed >= totalDistributed
                                require 0 <= totalRemaining
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit Distr(0, msg.sender);
                                emit Transfer(0, 0, msg.sender);
                                call stor8 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                            else:
                                require 0 <= totalRemaining
                                require not stor11
                                require totalDistributed >= totalDistributed
                                require 0 <= totalRemaining
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit Distr(0, msg.sender);
                                emit Transfer(0, 0, msg.sender);
                                call stor8 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                        else:
                            require 0 <= totalRemaining
                            require not stor11
                            require totalDistributed >= totalDistributed
                            require 0 <= totalRemaining
                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            emit Distr(0, msg.sender);
                            emit Transfer(0, 0, msg.sender);
                            call stor8 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
}



}

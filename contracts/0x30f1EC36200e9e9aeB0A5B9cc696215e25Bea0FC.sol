contract main {




// =====================  Runtime code  =====================


address priceUpdaterAddress;
mapping of uint256 totalInvested;
uint8 state;
mapping of uint256 weiBalances;
mapping of uint256 tokenBalances;
array of address investors;
address tokenAddress;
address controllerAddress;
uint256 teamPercent;
uint256 prTokens;
uint8 stor10; offset 160
address owner;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function investors(uint256 arg1) {
    require arg1 < investors.length
    return investors[arg1]
}

function tokenBalances(address arg1) {
    return tokenBalances[arg1]
}

function weiBalances(address arg1) {
    return weiBalances[arg1]
}

function totalInvested(uint256 arg1) {
    return totalInvested[arg1]
}

function owner() {
    return owner
}

function state() {
    require state <= 2
    return state
}

function prTokens() {
    return prTokens
}

function teamPercent() {
    return teamPercent
}

function getInvestorsCount() {
    return investors.length
}

function controller() {
    return controllerAddress
}

function token() {
    return tokenAddress
}

function priceUpdater() {
    return priceUpdaterAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function detachController() {
    require msg.sender == controllerAddress
    controllerAddress = 0
    emit ControllerRetired(controllerAddress);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function changeState(uint8 arg1) {
    require msg.sender == controllerAddress
    require arg1 <= 2
    require state <= 2
    require state != arg1
    require state <= 2
    require not state
    require arg1 <= 2
    require arg1 <= 2
    if arg1 != 1:
        require arg1 == 2
    state = arg1
    require state <= 2
    emit StateChanged(state);
}

function withdrawEther(uint256 arg1) {
    require msg.sender == owner
    require state <= 2
    require state == 2
    require arg1 > 0
    require arg1 <= eth.balance(this.address)
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit EtherWithdrawan(arg1, owner);
}

function withdrawTokens(uint256 arg1) {
    require msg.sender == owner
    require state <= 2
    require state == 1
    require arg1 > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawPayments() {
    require not stor10
    stor10 = 1
    require state <= 2
    require state == 1
    require weiBalances[msg.sender]
    require weiBalances[msg.sender] <= eth.balance(this.address)
    require ext_code.size(tokenAddress)
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= tokenBalances[address(msg.sender)]
    require weiBalances[msg.sender] <= totalInvested[0]
    totalInvested[0] -= weiBalances[msg.sender]
    weiBalances[address(msg.sender)] = 0
    tokenBalances[address(msg.sender)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, tokenBalances[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call msg.sender with:
       value weiBalances[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit RefundSent(weiBalances[msg.sender], msg.sender);
    stor10 = 0
}

function invested(address arg1, uint256 arg2, uint8 arg3, uint256 arg4) payable {
    require msg.sender == controllerAddress
    require state <= 2
    if state:
        require state <= 2
        require state == 2
    require arg3 <= 5
    if arg3:
        require arg4
        require arg2
        require controllerAddress != arg1
        if not tokenBalances[address(arg1)]:
            investors.length++
            stor36B6[stor5.length] = arg1
        require arg3 <= 5
        require arg4 + totalInvested[arg3 << 248] >= totalInvested[arg3 << 248]
        require arg3 <= 5
        totalInvested[arg3 << 248] += arg4
        require arg2 + tokenBalances[address(arg1)] >= tokenBalances[address(arg1)]
        tokenBalances[address(arg1)] += arg2
        require arg3 <= 5
        emit Invested(arg3 << 248, arg4, arg2, arg1);
    else:
        require msg.value + weiBalances[address(arg1)] >= weiBalances[address(arg1)]
        weiBalances[address(arg1)] += msg.value
        require msg.value
        require arg2
        require controllerAddress != arg1
        if not tokenBalances[address(arg1)]:
            investors.length++
            stor36B6[stor5.length] = arg1
        require arg3 <= 5
        require msg.value + totalInvested[arg3 << 248] >= totalInvested[arg3 << 248]
        require arg3 <= 5
        totalInvested[arg3 << 248] += msg.value
        require arg2 + tokenBalances[address(arg1)] >= tokenBalances[address(arg1)]
        tokenBalances[address(arg1)] += arg2
        require arg3 <= 5
        emit Invested(arg3 << 248, msg.value, arg2, arg1);
}

function unholdTeamTokens() {
    require msg.sender == controllerAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require state <= 2
    require ext_code.size(tokenAddress)
    if state != 2:
        call tokenAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= ext_call.return_data[0]
        require prTokens <= 0
        if not -prTokens:
            require -teamPercent + 100
            require prTokens <= 0 / -teamPercent + 100
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, (0 / -teamPercent + 100) - prTokens
        else:
            require (ext_call.return_data[0] * teamPercent) - (ext_call.return_data[0] * teamPercent) - (prTokens * teamPercent) / -prTokens == teamPercent
            require -teamPercent + 100
            require prTokens <= (ext_call.return_data[0] * teamPercent) - (ext_call.return_data[0] * teamPercent) - (prTokens * teamPercent) / -teamPercent + 100
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, ((ext_call.return_data[0] * teamPercent) - (ext_call.return_data[0] * teamPercent) - (prTokens * teamPercent) / -teamPercent + 100) - prTokens
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.0x42966c68 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function getTotalInvestedEur() {
    require ext_code.size(priceUpdaterAddress)
    call priceUpdaterAddress.0xc4efa665 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(priceUpdaterAddress)
    call priceUpdaterAddress.0x26a49e37 with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not totalInvested[1]:
        if ext_call.return_data[0]:
            if 0 / ext_call.return_data[0] >= 0:
                require ext_code.size(priceUpdaterAddress)
                call priceUpdaterAddress.0x26a49e37 with:
                     gas gas_remaining wei
                    args 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not totalInvested[2]:
                    if ext_call.return_data[0]:
                        if 2 * 0 / ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                            require ext_code.size(priceUpdaterAddress)
                            call priceUpdaterAddress.0x26a49e37 with:
                                 gas gas_remaining wei
                                args 3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not totalInvested[3]:
                                if ext_call.return_data[0]:
                                    if 0 / ext_call.return_data[0] >= 0:
                                        require ext_code.size(priceUpdaterAddress)
                                        call priceUpdaterAddress.0x26a49e37 with:
                                             gas gas_remaining wei
                                            args 4
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not totalInvested[4]:
                                            if ext_call.return_data[0]:
                                                if 0 / ext_call.return_data[0] >= 0:
                                                    require ext_code.size(priceUpdaterAddress)
                                                    call priceUpdaterAddress.0x26a49e37 with:
                                                         gas gas_remaining wei
                                                        args 5
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not totalInvested[5]:
                                                        if ext_call.return_data[0]:
                                                            if 0 / ext_call.return_data[0] >= 0:
                                                                require ext_code.size(priceUpdaterAddress)
                                                                call priceUpdaterAddress.0x26a49e37 with:
                                                                     gas gas_remaining wei
                                                                    args 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not totalInvested[0]:
                                                                    return (5 * 0 / ext_call.return_data[0])
                                                                if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                    if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                        return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (5 * 0 / ext_call.return_data[0]))
                                                    else:
                                                        if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                            if ext_call.return_data[0]:
                                                                if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                    require ext_code.size(priceUpdaterAddress)
                                                                    call priceUpdaterAddress.0x26a49e37 with:
                                                                         gas gas_remaining wei
                                                                        args 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if not totalInvested[0]:
                                                                        return ((10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (4 * 0 / ext_call.return_data[0]))
                                                                    if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                        if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                            return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (4 * 0 / ext_call.return_data[0]))
                                        else:
                                            if 10^ext_call.return_data[0] * totalInvested[4] / totalInvested[4] == 10^ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    if 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0] >= 0:
                                                        require ext_code.size(priceUpdaterAddress)
                                                        call priceUpdaterAddress.0x26a49e37 with:
                                                             gas gas_remaining wei
                                                            args 5
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not totalInvested[5]:
                                                            if ext_call.return_data[0]:
                                                                if 0 / ext_call.return_data[0] >= 0:
                                                                    require ext_code.size(priceUpdaterAddress)
                                                                    call priceUpdaterAddress.0x26a49e37 with:
                                                                         gas gas_remaining wei
                                                                        args 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if not totalInvested[0]:
                                                                        return ((4 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]))
                                                                    if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                        if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                            return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (4 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]))
                                                        else:
                                                            if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                if ext_call.return_data[0]:
                                                                    if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                        require ext_code.size(priceUpdaterAddress)
                                                                        call priceUpdaterAddress.0x26a49e37 with:
                                                                             gas gas_remaining wei
                                                                            args 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if not totalInvested[0]:
                                                                            return ((10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (3 * 0 / ext_call.return_data[0]))
                                                                        if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                            if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (3 * 0 / ext_call.return_data[0]))
                            else:
                                if 10^ext_call.return_data[0] * totalInvested[3] / totalInvested[3] == 10^ext_call.return_data[0]:
                                    if ext_call.return_data[0]:
                                        if 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0] >= 0:
                                            require ext_code.size(priceUpdaterAddress)
                                            call priceUpdaterAddress.0x26a49e37 with:
                                                 gas gas_remaining wei
                                                args 4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not totalInvested[4]:
                                                if ext_call.return_data[0]:
                                                    if 0 / ext_call.return_data[0] >= 0:
                                                        require ext_code.size(priceUpdaterAddress)
                                                        call priceUpdaterAddress.0x26a49e37 with:
                                                             gas gas_remaining wei
                                                            args 5
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not totalInvested[5]:
                                                            if ext_call.return_data[0]:
                                                                if 0 / ext_call.return_data[0] >= 0:
                                                                    require ext_code.size(priceUpdaterAddress)
                                                                    call priceUpdaterAddress.0x26a49e37 with:
                                                                         gas gas_remaining wei
                                                                        args 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if not totalInvested[0]:
                                                                        return ((4 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]))
                                                                    if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                        if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                            return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (4 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]))
                                                        else:
                                                            if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                if ext_call.return_data[0]:
                                                                    if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                        require ext_code.size(priceUpdaterAddress)
                                                                        call priceUpdaterAddress.0x26a49e37 with:
                                                                             gas gas_remaining wei
                                                                            args 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if not totalInvested[0]:
                                                                            return ((10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]))
                                                                        if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                            if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]))
                                            else:
                                                if 10^ext_call.return_data[0] * totalInvested[4] / totalInvested[4] == 10^ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        if 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0] >= 0:
                                                            require ext_code.size(priceUpdaterAddress)
                                                            call priceUpdaterAddress.0x26a49e37 with:
                                                                 gas gas_remaining wei
                                                                args 5
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not totalInvested[5]:
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0] >= 0:
                                                                        require ext_code.size(priceUpdaterAddress)
                                                                        call priceUpdaterAddress.0x26a49e37 with:
                                                                             gas gas_remaining wei
                                                                            args 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if not totalInvested[0]:
                                                                            return ((3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]))
                                                                        if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                            if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]))
                                                            else:
                                                                if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                    if ext_call.return_data[0]:
                                                                        if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                            require ext_code.size(priceUpdaterAddress)
                                                                            call priceUpdaterAddress.0x26a49e37 with:
                                                                                 gas gas_remaining wei
                                                                                args 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if not totalInvested[0]:
                                                                                return ((10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (2 * 0 / ext_call.return_data[0]))
                                                                            if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                                if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                    return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (2 * 0 / ext_call.return_data[0]))
                else:
                    if 10^ext_call.return_data[0] * totalInvested[2] / totalInvested[2] == 10^ext_call.return_data[0]:
                        if ext_call.return_data[0]:
                            if (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                require ext_code.size(priceUpdaterAddress)
                                call priceUpdaterAddress.0x26a49e37 with:
                                     gas gas_remaining wei
                                    args 3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not totalInvested[3]:
                                    if ext_call.return_data[0]:
                                        if 0 / ext_call.return_data[0] >= 0:
                                            require ext_code.size(priceUpdaterAddress)
                                            call priceUpdaterAddress.0x26a49e37 with:
                                                 gas gas_remaining wei
                                                args 4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not totalInvested[4]:
                                                if ext_call.return_data[0]:
                                                    if 0 / ext_call.return_data[0] >= 0:
                                                        require ext_code.size(priceUpdaterAddress)
                                                        call priceUpdaterAddress.0x26a49e37 with:
                                                             gas gas_remaining wei
                                                            args 5
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not totalInvested[5]:
                                                            if ext_call.return_data[0]:
                                                                if 0 / ext_call.return_data[0] >= 0:
                                                                    require ext_code.size(priceUpdaterAddress)
                                                                    call priceUpdaterAddress.0x26a49e37 with:
                                                                         gas gas_remaining wei
                                                                        args 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if not totalInvested[0]:
                                                                        return ((4 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]))
                                                                    if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                        if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                            return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (4 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]))
                                                        else:
                                                            if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                if ext_call.return_data[0]:
                                                                    if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                        require ext_code.size(priceUpdaterAddress)
                                                                        call priceUpdaterAddress.0x26a49e37 with:
                                                                             gas gas_remaining wei
                                                                            args 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if not totalInvested[0]:
                                                                            return ((10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]))
                                                                        if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                            if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]))
                                            else:
                                                if 10^ext_call.return_data[0] * totalInvested[4] / totalInvested[4] == 10^ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        if 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0] >= 0:
                                                            require ext_code.size(priceUpdaterAddress)
                                                            call priceUpdaterAddress.0x26a49e37 with:
                                                                 gas gas_remaining wei
                                                                args 5
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not totalInvested[5]:
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0] >= 0:
                                                                        require ext_code.size(priceUpdaterAddress)
                                                                        call priceUpdaterAddress.0x26a49e37 with:
                                                                             gas gas_remaining wei
                                                                            args 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if not totalInvested[0]:
                                                                            return ((3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]))
                                                                        if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                            if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]))
                                                            else:
                                                                if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                    if ext_call.return_data[0]:
                                                                        if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                            require ext_code.size(priceUpdaterAddress)
                                                                            call priceUpdaterAddress.0x26a49e37 with:
                                                                                 gas gas_remaining wei
                                                                                args 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if not totalInvested[0]:
                                                                                return ((10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]))
                                                                            if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                                if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                    return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]))
                                else:
                                    if 10^ext_call.return_data[0] * totalInvested[3] / totalInvested[3] == 10^ext_call.return_data[0]:
                                        if ext_call.return_data[0]:
                                            if 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0] >= 0:
                                                require ext_code.size(priceUpdaterAddress)
                                                call priceUpdaterAddress.0x26a49e37 with:
                                                     gas gas_remaining wei
                                                    args 4
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not totalInvested[4]:
                                                    if ext_call.return_data[0]:
                                                        if 0 / ext_call.return_data[0] >= 0:
                                                            require ext_code.size(priceUpdaterAddress)
                                                            call priceUpdaterAddress.0x26a49e37 with:
                                                                 gas gas_remaining wei
                                                                args 5
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not totalInvested[5]:
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0] >= 0:
                                                                        require ext_code.size(priceUpdaterAddress)
                                                                        call priceUpdaterAddress.0x26a49e37 with:
                                                                             gas gas_remaining wei
                                                                            args 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if not totalInvested[0]:
                                                                            return ((3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]))
                                                                        if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                            if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]))
                                                            else:
                                                                if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                    if ext_call.return_data[0]:
                                                                        if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                            require ext_code.size(priceUpdaterAddress)
                                                                            call priceUpdaterAddress.0x26a49e37 with:
                                                                                 gas gas_remaining wei
                                                                                args 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if not totalInvested[0]:
                                                                                return ((10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]))
                                                                            if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                                if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                    return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]))
                                                else:
                                                    if 10^ext_call.return_data[0] * totalInvested[4] / totalInvested[4] == 10^ext_call.return_data[0]:
                                                        if ext_call.return_data[0]:
                                                            if 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0] >= 0:
                                                                require ext_code.size(priceUpdaterAddress)
                                                                call priceUpdaterAddress.0x26a49e37 with:
                                                                     gas gas_remaining wei
                                                                    args 5
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not totalInvested[5]:
                                                                    if ext_call.return_data[0]:
                                                                        if 0 / ext_call.return_data[0] >= 0:
                                                                            require ext_code.size(priceUpdaterAddress)
                                                                            call priceUpdaterAddress.0x26a49e37 with:
                                                                                 gas gas_remaining wei
                                                                                args 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if not totalInvested[0]:
                                                                                return ((2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]))
                                                                            if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                                if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                    return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]))
                                                                else:
                                                                    if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                        if ext_call.return_data[0]:
                                                                            if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                                require ext_code.size(priceUpdaterAddress)
                                                                                call priceUpdaterAddress.0x26a49e37 with:
                                                                                     gas gas_remaining wei
                                                                                    args 0
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                require return_data.size >= 32
                                                                                if not totalInvested[0]:
                                                                                    return ((10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
                                                                                if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                                    if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                        return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
    else:
        if 10^ext_call.return_data[0] * totalInvested[1] / totalInvested[1] == 10^ext_call.return_data[0]:
            if ext_call.return_data[0]:
                if 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0] >= 0:
                    require ext_code.size(priceUpdaterAddress)
                    call priceUpdaterAddress.0x26a49e37 with:
                         gas gas_remaining wei
                        args 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not totalInvested[2]:
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) >= 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]:
                                require ext_code.size(priceUpdaterAddress)
                                call priceUpdaterAddress.0x26a49e37 with:
                                     gas gas_remaining wei
                                    args 3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not totalInvested[3]:
                                    if ext_call.return_data[0]:
                                        if 0 / ext_call.return_data[0] >= 0:
                                            require ext_code.size(priceUpdaterAddress)
                                            call priceUpdaterAddress.0x26a49e37 with:
                                                 gas gas_remaining wei
                                                args 4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not totalInvested[4]:
                                                if ext_call.return_data[0]:
                                                    if 0 / ext_call.return_data[0] >= 0:
                                                        require ext_code.size(priceUpdaterAddress)
                                                        call priceUpdaterAddress.0x26a49e37 with:
                                                             gas gas_remaining wei
                                                            args 5
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not totalInvested[5]:
                                                            if ext_call.return_data[0]:
                                                                if 0 / ext_call.return_data[0] >= 0:
                                                                    require ext_code.size(priceUpdaterAddress)
                                                                    call priceUpdaterAddress.0x26a49e37 with:
                                                                         gas gas_remaining wei
                                                                        args 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if not totalInvested[0]:
                                                                        return ((4 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                                    if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                        if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                            return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (4 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                        else:
                                                            if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                if ext_call.return_data[0]:
                                                                    if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                        require ext_code.size(priceUpdaterAddress)
                                                                        call priceUpdaterAddress.0x26a49e37 with:
                                                                             gas gas_remaining wei
                                                                            args 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if not totalInvested[0]:
                                                                            return ((10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                                        if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                            if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                            else:
                                                if 10^ext_call.return_data[0] * totalInvested[4] / totalInvested[4] == 10^ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        if 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0] >= 0:
                                                            require ext_code.size(priceUpdaterAddress)
                                                            call priceUpdaterAddress.0x26a49e37 with:
                                                                 gas gas_remaining wei
                                                                args 5
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not totalInvested[5]:
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0] >= 0:
                                                                        require ext_code.size(priceUpdaterAddress)
                                                                        call priceUpdaterAddress.0x26a49e37 with:
                                                                             gas gas_remaining wei
                                                                            args 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if not totalInvested[0]:
                                                                            return ((3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                                        if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                            if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                            else:
                                                                if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                    if ext_call.return_data[0]:
                                                                        if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                            require ext_code.size(priceUpdaterAddress)
                                                                            call priceUpdaterAddress.0x26a49e37 with:
                                                                                 gas gas_remaining wei
                                                                                args 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if not totalInvested[0]:
                                                                                return ((10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                                            if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                                if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                    return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                else:
                                    if 10^ext_call.return_data[0] * totalInvested[3] / totalInvested[3] == 10^ext_call.return_data[0]:
                                        if ext_call.return_data[0]:
                                            if 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0] >= 0:
                                                require ext_code.size(priceUpdaterAddress)
                                                call priceUpdaterAddress.0x26a49e37 with:
                                                     gas gas_remaining wei
                                                    args 4
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not totalInvested[4]:
                                                    if ext_call.return_data[0]:
                                                        if 0 / ext_call.return_data[0] >= 0:
                                                            require ext_code.size(priceUpdaterAddress)
                                                            call priceUpdaterAddress.0x26a49e37 with:
                                                                 gas gas_remaining wei
                                                                args 5
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not totalInvested[5]:
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0] >= 0:
                                                                        require ext_code.size(priceUpdaterAddress)
                                                                        call priceUpdaterAddress.0x26a49e37 with:
                                                                             gas gas_remaining wei
                                                                            args 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if not totalInvested[0]:
                                                                            return ((3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                                        if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                            if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                            else:
                                                                if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                    if ext_call.return_data[0]:
                                                                        if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                            require ext_code.size(priceUpdaterAddress)
                                                                            call priceUpdaterAddress.0x26a49e37 with:
                                                                                 gas gas_remaining wei
                                                                                args 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if not totalInvested[0]:
                                                                                return ((10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                                            if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                                if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                    return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                else:
                                                    if 10^ext_call.return_data[0] * totalInvested[4] / totalInvested[4] == 10^ext_call.return_data[0]:
                                                        if ext_call.return_data[0]:
                                                            if 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0] >= 0:
                                                                require ext_code.size(priceUpdaterAddress)
                                                                call priceUpdaterAddress.0x26a49e37 with:
                                                                     gas gas_remaining wei
                                                                    args 5
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not totalInvested[5]:
                                                                    if ext_call.return_data[0]:
                                                                        if 0 / ext_call.return_data[0] >= 0:
                                                                            require ext_code.size(priceUpdaterAddress)
                                                                            call priceUpdaterAddress.0x26a49e37 with:
                                                                                 gas gas_remaining wei
                                                                                args 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if not totalInvested[0]:
                                                                                return ((2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                                            if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                                if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                    return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                                else:
                                                                    if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                        if ext_call.return_data[0]:
                                                                            if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                                require ext_code.size(priceUpdaterAddress)
                                                                                call priceUpdaterAddress.0x26a49e37 with:
                                                                                     gas gas_remaining wei
                                                                                    args 0
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                require return_data.size >= 32
                                                                                if not totalInvested[0]:
                                                                                    return ((10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                                                if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                                    if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                        return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                    else:
                        if 10^ext_call.return_data[0] * totalInvested[2] / totalInvested[2] == 10^ext_call.return_data[0]:
                            if ext_call.return_data[0]:
                                if (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) >= 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]:
                                    require ext_code.size(priceUpdaterAddress)
                                    call priceUpdaterAddress.0x26a49e37 with:
                                         gas gas_remaining wei
                                        args 3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not totalInvested[3]:
                                        if ext_call.return_data[0]:
                                            if 0 / ext_call.return_data[0] >= 0:
                                                require ext_code.size(priceUpdaterAddress)
                                                call priceUpdaterAddress.0x26a49e37 with:
                                                     gas gas_remaining wei
                                                    args 4
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not totalInvested[4]:
                                                    if ext_call.return_data[0]:
                                                        if 0 / ext_call.return_data[0] >= 0:
                                                            require ext_code.size(priceUpdaterAddress)
                                                            call priceUpdaterAddress.0x26a49e37 with:
                                                                 gas gas_remaining wei
                                                                args 5
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not totalInvested[5]:
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0] >= 0:
                                                                        require ext_code.size(priceUpdaterAddress)
                                                                        call priceUpdaterAddress.0x26a49e37 with:
                                                                             gas gas_remaining wei
                                                                            args 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if not totalInvested[0]:
                                                                            return ((3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                                        if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                            if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                            else:
                                                                if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                    if ext_call.return_data[0]:
                                                                        if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                            require ext_code.size(priceUpdaterAddress)
                                                                            call priceUpdaterAddress.0x26a49e37 with:
                                                                                 gas gas_remaining wei
                                                                                args 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if not totalInvested[0]:
                                                                                return ((10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                                            if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                                if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                    return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                else:
                                                    if 10^ext_call.return_data[0] * totalInvested[4] / totalInvested[4] == 10^ext_call.return_data[0]:
                                                        if ext_call.return_data[0]:
                                                            if 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0] >= 0:
                                                                require ext_code.size(priceUpdaterAddress)
                                                                call priceUpdaterAddress.0x26a49e37 with:
                                                                     gas gas_remaining wei
                                                                    args 5
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not totalInvested[5]:
                                                                    if ext_call.return_data[0]:
                                                                        if 0 / ext_call.return_data[0] >= 0:
                                                                            require ext_code.size(priceUpdaterAddress)
                                                                            call priceUpdaterAddress.0x26a49e37 with:
                                                                                 gas gas_remaining wei
                                                                                args 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if not totalInvested[0]:
                                                                                return ((2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                                            if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                                if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                    return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                                else:
                                                                    if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                        if ext_call.return_data[0]:
                                                                            if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                                require ext_code.size(priceUpdaterAddress)
                                                                                call priceUpdaterAddress.0x26a49e37 with:
                                                                                     gas gas_remaining wei
                                                                                    args 0
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                require return_data.size >= 32
                                                                                if not totalInvested[0]:
                                                                                    return ((10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                                                if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                                    if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                        return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                    else:
                                        if 10^ext_call.return_data[0] * totalInvested[3] / totalInvested[3] == 10^ext_call.return_data[0]:
                                            if ext_call.return_data[0]:
                                                if 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0] >= 0:
                                                    require ext_code.size(priceUpdaterAddress)
                                                    call priceUpdaterAddress.0x26a49e37 with:
                                                         gas gas_remaining wei
                                                        args 4
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not totalInvested[4]:
                                                        if ext_call.return_data[0]:
                                                            if 0 / ext_call.return_data[0] >= 0:
                                                                require ext_code.size(priceUpdaterAddress)
                                                                call priceUpdaterAddress.0x26a49e37 with:
                                                                     gas gas_remaining wei
                                                                    args 5
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not totalInvested[5]:
                                                                    if ext_call.return_data[0]:
                                                                        if 0 / ext_call.return_data[0] >= 0:
                                                                            require ext_code.size(priceUpdaterAddress)
                                                                            call priceUpdaterAddress.0x26a49e37 with:
                                                                                 gas gas_remaining wei
                                                                                args 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if not totalInvested[0]:
                                                                                return ((2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                                            if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                                if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                    return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                                else:
                                                                    if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                        if ext_call.return_data[0]:
                                                                            if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                                require ext_code.size(priceUpdaterAddress)
                                                                                call priceUpdaterAddress.0x26a49e37 with:
                                                                                     gas gas_remaining wei
                                                                                    args 0
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                require return_data.size >= 32
                                                                                if not totalInvested[0]:
                                                                                    return ((10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                                                if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                                    if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                        return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                    else:
                                                        if 10^ext_call.return_data[0] * totalInvested[4] / totalInvested[4] == 10^ext_call.return_data[0]:
                                                            if ext_call.return_data[0]:
                                                                if 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0] >= 0:
                                                                    require ext_code.size(priceUpdaterAddress)
                                                                    call priceUpdaterAddress.0x26a49e37 with:
                                                                         gas gas_remaining wei
                                                                        args 5
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if not totalInvested[5]:
                                                                        if ext_call.return_data[0]:
                                                                            if 0 / ext_call.return_data[0] >= 0:
                                                                                require ext_code.size(priceUpdaterAddress)
                                                                                call priceUpdaterAddress.0x26a49e37 with:
                                                                                     gas gas_remaining wei
                                                                                    args 0
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                require return_data.size >= 32
                                                                                if not totalInvested[0]:
                                                                                    return ((0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                                                if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                                    if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                        return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                                    else:
                                                                        if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                            if ext_call.return_data[0]:
                                                                                if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                                    require ext_code.size(priceUpdaterAddress)
                                                                                    call priceUpdaterAddress.0x26a49e37 with:
                                                                                         gas gas_remaining wei
                                                                                        args 0
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    require return_data.size >= 32
                                                                                    if not totalInvested[0]:
                                                                                        return ((10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
                                                                                    if ext_call.return_data[0] * totalInvested[0] / totalInvested[0] == ext_call.return_data[0]:
                                                                                        if ext_call.return_data[0] * totalInvested[0] / 10^18 >= 0:
                                                                                            return ((ext_call.return_data[0] * totalInvested[0] / 10^18) + (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]))
    revert
}

function getTotalInvestedEther() {
    require ext_code.size(priceUpdaterAddress)
    call priceUpdaterAddress.0x26a49e37 with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(priceUpdaterAddress)
    call priceUpdaterAddress.0xc4efa665 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(priceUpdaterAddress)
    call priceUpdaterAddress.0x26a49e37 with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not totalInvested[1]:
        if ext_call.return_data[0]:
            if 0 / ext_call.return_data[0] >= 0:
                require ext_code.size(priceUpdaterAddress)
                call priceUpdaterAddress.0x26a49e37 with:
                     gas gas_remaining wei
                    args 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not totalInvested[2]:
                    if ext_call.return_data[0]:
                        if 2 * 0 / ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                            require ext_code.size(priceUpdaterAddress)
                            call priceUpdaterAddress.0x26a49e37 with:
                                 gas gas_remaining wei
                                args 3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not totalInvested[3]:
                                if ext_call.return_data[0]:
                                    if 0 / ext_call.return_data[0] >= 0:
                                        require ext_code.size(priceUpdaterAddress)
                                        call priceUpdaterAddress.0x26a49e37 with:
                                             gas gas_remaining wei
                                            args 4
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not totalInvested[4]:
                                            if ext_call.return_data[0]:
                                                if 0 / ext_call.return_data[0] >= 0:
                                                    require ext_code.size(priceUpdaterAddress)
                                                    call priceUpdaterAddress.0x26a49e37 with:
                                                         gas gas_remaining wei
                                                        args 5
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not totalInvested[5]:
                                                        if ext_call.return_data[0]:
                                                            if 0 / ext_call.return_data[0] >= 0:
                                                                if not 5 * 0 / ext_call.return_data[0]:
                                                                    if ext_call.return_data[0]:
                                                                        if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                            return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                else:
                                                                    if 5 * 10^18 * 0 / ext_call.return_data[0] / 5 * 0 / ext_call.return_data[0] == 10^18:
                                                                        if ext_call.return_data[0]:
                                                                            if totalInvested[0] + (5 * 10^18 * 0 / ext_call.return_data[0] / ext_call.return_data[0]) >= 5 * 10^18 * 0 / ext_call.return_data[0] / ext_call.return_data[0]:
                                                                                return (totalInvested[0] + (5 * 10^18 * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                                                    else:
                                                        if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                            if ext_call.return_data[0]:
                                                                if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                    if not (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (4 * 0 / ext_call.return_data[0]):
                                                                        if ext_call.return_data[0]:
                                                                            if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                    else:
                                                                        if (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (4 * 10^18 * 0 / ext_call.return_data[0]) / (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (4 * 0 / ext_call.return_data[0]) == 10^18:
                                                                            if ext_call.return_data[0]:
                                                                                if totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (4 * 10^18 * 0 / ext_call.return_data[0]) / ext_call.return_data[0]) >= (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (4 * 10^18 * 0 / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                    return (totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (4 * 10^18 * 0 / ext_call.return_data[0]) / ext_call.return_data[0]))
                                        else:
                                            if 10^ext_call.return_data[0] * totalInvested[4] / totalInvested[4] == 10^ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    if 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0] >= 0:
                                                        require ext_code.size(priceUpdaterAddress)
                                                        call priceUpdaterAddress.0x26a49e37 with:
                                                             gas gas_remaining wei
                                                            args 5
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not totalInvested[5]:
                                                            if ext_call.return_data[0]:
                                                                if 0 / ext_call.return_data[0] >= 0:
                                                                    if not (4 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]):
                                                                        if ext_call.return_data[0]:
                                                                            if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                    else:
                                                                        if (4 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) / (4 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) == 10^18:
                                                                            if ext_call.return_data[0]:
                                                                                if totalInvested[0] + ((4 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (4 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                    return (totalInvested[0] + ((4 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) / ext_call.return_data[0]))
                                                        else:
                                                            if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                if ext_call.return_data[0]:
                                                                    if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                        if not (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (3 * 0 / ext_call.return_data[0]):
                                                                            if ext_call.return_data[0]:
                                                                                if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                    return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                        else:
                                                                            if (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (3 * 10^18 * 0 / ext_call.return_data[0]) / (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (3 * 0 / ext_call.return_data[0]) == 10^18:
                                                                                if ext_call.return_data[0]:
                                                                                    if totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (3 * 10^18 * 0 / ext_call.return_data[0]) / ext_call.return_data[0]) >= (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (3 * 10^18 * 0 / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                        return (totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (3 * 10^18 * 0 / ext_call.return_data[0]) / ext_call.return_data[0]))
                            else:
                                if 10^ext_call.return_data[0] * totalInvested[3] / totalInvested[3] == 10^ext_call.return_data[0]:
                                    if ext_call.return_data[0]:
                                        if 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0] >= 0:
                                            require ext_code.size(priceUpdaterAddress)
                                            call priceUpdaterAddress.0x26a49e37 with:
                                                 gas gas_remaining wei
                                                args 4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not totalInvested[4]:
                                                if ext_call.return_data[0]:
                                                    if 0 / ext_call.return_data[0] >= 0:
                                                        require ext_code.size(priceUpdaterAddress)
                                                        call priceUpdaterAddress.0x26a49e37 with:
                                                             gas gas_remaining wei
                                                            args 5
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not totalInvested[5]:
                                                            if ext_call.return_data[0]:
                                                                if 0 / ext_call.return_data[0] >= 0:
                                                                    if not (4 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]):
                                                                        if ext_call.return_data[0]:
                                                                            if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                    else:
                                                                        if (4 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) / (4 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) == 10^18:
                                                                            if ext_call.return_data[0]:
                                                                                if totalInvested[0] + ((4 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (4 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                    return (totalInvested[0] + ((4 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) / ext_call.return_data[0]))
                                                        else:
                                                            if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                if ext_call.return_data[0]:
                                                                    if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                        if not (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]):
                                                                            if ext_call.return_data[0]:
                                                                                if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                    return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                        else:
                                                                            if (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) / (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) == 10^18:
                                                                                if ext_call.return_data[0]:
                                                                                    if totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                        return (totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) / ext_call.return_data[0]))
                                            else:
                                                if 10^ext_call.return_data[0] * totalInvested[4] / totalInvested[4] == 10^ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        if 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0] >= 0:
                                                            require ext_code.size(priceUpdaterAddress)
                                                            call priceUpdaterAddress.0x26a49e37 with:
                                                                 gas gas_remaining wei
                                                                args 5
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not totalInvested[5]:
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0] >= 0:
                                                                        if not (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]):
                                                                            if ext_call.return_data[0]:
                                                                                if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                    return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                        else:
                                                                            if (3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) / (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) == 10^18:
                                                                                if ext_call.return_data[0]:
                                                                                    if totalInvested[0] + ((3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                        return (totalInvested[0] + ((3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) / ext_call.return_data[0]))
                                                            else:
                                                                if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                    if ext_call.return_data[0]:
                                                                        if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                            if not (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (2 * 0 / ext_call.return_data[0]):
                                                                                if ext_call.return_data[0]:
                                                                                    if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                        return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                            else:
                                                                                if (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (2 * 10^18 * 0 / ext_call.return_data[0]) / (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (2 * 0 / ext_call.return_data[0]) == 10^18:
                                                                                    if ext_call.return_data[0]:
                                                                                        if totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (2 * 10^18 * 0 / ext_call.return_data[0]) / ext_call.return_data[0]) >= (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (2 * 10^18 * 0 / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                            return (totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (2 * 10^18 * 0 / ext_call.return_data[0]) / ext_call.return_data[0]))
                else:
                    if 10^ext_call.return_data[0] * totalInvested[2] / totalInvested[2] == 10^ext_call.return_data[0]:
                        if ext_call.return_data[0]:
                            if (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                require ext_code.size(priceUpdaterAddress)
                                call priceUpdaterAddress.0x26a49e37 with:
                                     gas gas_remaining wei
                                    args 3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not totalInvested[3]:
                                    if ext_call.return_data[0]:
                                        if 0 / ext_call.return_data[0] >= 0:
                                            require ext_code.size(priceUpdaterAddress)
                                            call priceUpdaterAddress.0x26a49e37 with:
                                                 gas gas_remaining wei
                                                args 4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not totalInvested[4]:
                                                if ext_call.return_data[0]:
                                                    if 0 / ext_call.return_data[0] >= 0:
                                                        require ext_code.size(priceUpdaterAddress)
                                                        call priceUpdaterAddress.0x26a49e37 with:
                                                             gas gas_remaining wei
                                                            args 5
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not totalInvested[5]:
                                                            if ext_call.return_data[0]:
                                                                if 0 / ext_call.return_data[0] >= 0:
                                                                    if not (4 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]):
                                                                        if ext_call.return_data[0]:
                                                                            if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                    else:
                                                                        if (4 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / (4 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) == 10^18:
                                                                            if ext_call.return_data[0]:
                                                                                if totalInvested[0] + ((4 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (4 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                    return (totalInvested[0] + ((4 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / ext_call.return_data[0]))
                                                        else:
                                                            if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                if ext_call.return_data[0]:
                                                                    if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                        if not (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]):
                                                                            if ext_call.return_data[0]:
                                                                                if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                    return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                        else:
                                                                            if (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) == 10^18:
                                                                                if ext_call.return_data[0]:
                                                                                    if totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                        return (totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / ext_call.return_data[0]))
                                            else:
                                                if 10^ext_call.return_data[0] * totalInvested[4] / totalInvested[4] == 10^ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        if 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0] >= 0:
                                                            require ext_code.size(priceUpdaterAddress)
                                                            call priceUpdaterAddress.0x26a49e37 with:
                                                                 gas gas_remaining wei
                                                                args 5
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not totalInvested[5]:
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0] >= 0:
                                                                        if not (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]):
                                                                            if ext_call.return_data[0]:
                                                                                if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                    return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                        else:
                                                                            if (3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) == 10^18:
                                                                                if ext_call.return_data[0]:
                                                                                    if totalInvested[0] + ((3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                        return (totalInvested[0] + ((3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / ext_call.return_data[0]))
                                                            else:
                                                                if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                    if ext_call.return_data[0]:
                                                                        if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                            if not (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]):
                                                                                if ext_call.return_data[0]:
                                                                                    if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                        return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                            else:
                                                                                if (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) == 10^18:
                                                                                    if ext_call.return_data[0]:
                                                                                        if totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                            return (totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / ext_call.return_data[0]))
                                else:
                                    if 10^ext_call.return_data[0] * totalInvested[3] / totalInvested[3] == 10^ext_call.return_data[0]:
                                        if ext_call.return_data[0]:
                                            if 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0] >= 0:
                                                require ext_code.size(priceUpdaterAddress)
                                                call priceUpdaterAddress.0x26a49e37 with:
                                                     gas gas_remaining wei
                                                    args 4
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not totalInvested[4]:
                                                    if ext_call.return_data[0]:
                                                        if 0 / ext_call.return_data[0] >= 0:
                                                            require ext_code.size(priceUpdaterAddress)
                                                            call priceUpdaterAddress.0x26a49e37 with:
                                                                 gas gas_remaining wei
                                                                args 5
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not totalInvested[5]:
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0] >= 0:
                                                                        if not (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]):
                                                                            if ext_call.return_data[0]:
                                                                                if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                    return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                        else:
                                                                            if (3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) == 10^18:
                                                                                if ext_call.return_data[0]:
                                                                                    if totalInvested[0] + ((3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                        return (totalInvested[0] + ((3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / ext_call.return_data[0]))
                                                            else:
                                                                if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                    if ext_call.return_data[0]:
                                                                        if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                            if not (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]):
                                                                                if ext_call.return_data[0]:
                                                                                    if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                        return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                            else:
                                                                                if (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) == 10^18:
                                                                                    if ext_call.return_data[0]:
                                                                                        if totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                            return (totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / ext_call.return_data[0]))
                                                else:
                                                    if 10^ext_call.return_data[0] * totalInvested[4] / totalInvested[4] == 10^ext_call.return_data[0]:
                                                        if ext_call.return_data[0]:
                                                            if 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0] >= 0:
                                                                require ext_code.size(priceUpdaterAddress)
                                                                call priceUpdaterAddress.0x26a49e37 with:
                                                                     gas gas_remaining wei
                                                                    args 5
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not totalInvested[5]:
                                                                    if ext_call.return_data[0]:
                                                                        if 0 / ext_call.return_data[0] >= 0:
                                                                            if not (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]):
                                                                                if ext_call.return_data[0]:
                                                                                    if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                        return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                            else:
                                                                                if (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) == 10^18:
                                                                                    if ext_call.return_data[0]:
                                                                                        if totalInvested[0] + ((2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                            return (totalInvested[0] + ((2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) / ext_call.return_data[0]))
                                                                else:
                                                                    if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                        if ext_call.return_data[0]:
                                                                            if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                                if not (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                                                                                    if ext_call.return_data[0]:
                                                                                        if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                            return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                                else:
                                                                                    if (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 0 / ext_call.return_data[0]) / (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) == 10^18:
                                                                                        if ext_call.return_data[0]:
                                                                                            if totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 0 / ext_call.return_data[0]) / ext_call.return_data[0]) >= (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 0 / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                                return (totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 0 / ext_call.return_data[0]) / ext_call.return_data[0]))
    else:
        if 10^ext_call.return_data[0] * totalInvested[1] / totalInvested[1] == 10^ext_call.return_data[0]:
            if ext_call.return_data[0]:
                if 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0] >= 0:
                    require ext_code.size(priceUpdaterAddress)
                    call priceUpdaterAddress.0x26a49e37 with:
                         gas gas_remaining wei
                        args 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not totalInvested[2]:
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) >= 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]:
                                require ext_code.size(priceUpdaterAddress)
                                call priceUpdaterAddress.0x26a49e37 with:
                                     gas gas_remaining wei
                                    args 3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not totalInvested[3]:
                                    if ext_call.return_data[0]:
                                        if 0 / ext_call.return_data[0] >= 0:
                                            require ext_code.size(priceUpdaterAddress)
                                            call priceUpdaterAddress.0x26a49e37 with:
                                                 gas gas_remaining wei
                                                args 4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not totalInvested[4]:
                                                if ext_call.return_data[0]:
                                                    if 0 / ext_call.return_data[0] >= 0:
                                                        require ext_code.size(priceUpdaterAddress)
                                                        call priceUpdaterAddress.0x26a49e37 with:
                                                             gas gas_remaining wei
                                                            args 5
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not totalInvested[5]:
                                                            if ext_call.return_data[0]:
                                                                if 0 / ext_call.return_data[0] >= 0:
                                                                    if not (4 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]):
                                                                        if ext_call.return_data[0]:
                                                                            if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                    else:
                                                                        if (4 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / (4 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) == 10^18:
                                                                            if ext_call.return_data[0]:
                                                                                if totalInvested[0] + ((4 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (4 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                    return (totalInvested[0] + ((4 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]))
                                                        else:
                                                            if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                if ext_call.return_data[0]:
                                                                    if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                        if not (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]):
                                                                            if ext_call.return_data[0]:
                                                                                if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                    return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                        else:
                                                                            if (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) == 10^18:
                                                                                if ext_call.return_data[0]:
                                                                                    if totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                        return (totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]))
                                            else:
                                                if 10^ext_call.return_data[0] * totalInvested[4] / totalInvested[4] == 10^ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        if 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0] >= 0:
                                                            require ext_code.size(priceUpdaterAddress)
                                                            call priceUpdaterAddress.0x26a49e37 with:
                                                                 gas gas_remaining wei
                                                                args 5
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not totalInvested[5]:
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0] >= 0:
                                                                        if not (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]):
                                                                            if ext_call.return_data[0]:
                                                                                if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                    return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                        else:
                                                                            if (3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) == 10^18:
                                                                                if ext_call.return_data[0]:
                                                                                    if totalInvested[0] + ((3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                        return (totalInvested[0] + ((3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]))
                                                            else:
                                                                if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                    if ext_call.return_data[0]:
                                                                        if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                            if not (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]):
                                                                                if ext_call.return_data[0]:
                                                                                    if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                        return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                            else:
                                                                                if (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) == 10^18:
                                                                                    if ext_call.return_data[0]:
                                                                                        if totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                            return (totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]))
                                else:
                                    if 10^ext_call.return_data[0] * totalInvested[3] / totalInvested[3] == 10^ext_call.return_data[0]:
                                        if ext_call.return_data[0]:
                                            if 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0] >= 0:
                                                require ext_code.size(priceUpdaterAddress)
                                                call priceUpdaterAddress.0x26a49e37 with:
                                                     gas gas_remaining wei
                                                    args 4
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not totalInvested[4]:
                                                    if ext_call.return_data[0]:
                                                        if 0 / ext_call.return_data[0] >= 0:
                                                            require ext_code.size(priceUpdaterAddress)
                                                            call priceUpdaterAddress.0x26a49e37 with:
                                                                 gas gas_remaining wei
                                                                args 5
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not totalInvested[5]:
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0] >= 0:
                                                                        if not (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]):
                                                                            if ext_call.return_data[0]:
                                                                                if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                    return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                        else:
                                                                            if (3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) == 10^18:
                                                                                if ext_call.return_data[0]:
                                                                                    if totalInvested[0] + ((3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                        return (totalInvested[0] + ((3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]))
                                                            else:
                                                                if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                    if ext_call.return_data[0]:
                                                                        if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                            if not (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]):
                                                                                if ext_call.return_data[0]:
                                                                                    if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                        return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                            else:
                                                                                if (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) == 10^18:
                                                                                    if ext_call.return_data[0]:
                                                                                        if totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                            return (totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]))
                                                else:
                                                    if 10^ext_call.return_data[0] * totalInvested[4] / totalInvested[4] == 10^ext_call.return_data[0]:
                                                        if ext_call.return_data[0]:
                                                            if 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0] >= 0:
                                                                require ext_code.size(priceUpdaterAddress)
                                                                call priceUpdaterAddress.0x26a49e37 with:
                                                                     gas gas_remaining wei
                                                                    args 5
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not totalInvested[5]:
                                                                    if ext_call.return_data[0]:
                                                                        if 0 / ext_call.return_data[0] >= 0:
                                                                            if not (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]):
                                                                                if ext_call.return_data[0]:
                                                                                    if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                        return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                            else:
                                                                                if (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) == 10^18:
                                                                                    if ext_call.return_data[0]:
                                                                                        if totalInvested[0] + ((2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                            return (totalInvested[0] + ((2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]))
                                                                else:
                                                                    if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                        if ext_call.return_data[0]:
                                                                            if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                                if not (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]):
                                                                                    if ext_call.return_data[0]:
                                                                                        if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                            return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                                else:
                                                                                    if (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) == 10^18:
                                                                                        if ext_call.return_data[0]:
                                                                                            if totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                                return (totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]))
                    else:
                        if 10^ext_call.return_data[0] * totalInvested[2] / totalInvested[2] == 10^ext_call.return_data[0]:
                            if ext_call.return_data[0]:
                                if (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) >= 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]:
                                    require ext_code.size(priceUpdaterAddress)
                                    call priceUpdaterAddress.0x26a49e37 with:
                                         gas gas_remaining wei
                                        args 3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not totalInvested[3]:
                                        if ext_call.return_data[0]:
                                            if 0 / ext_call.return_data[0] >= 0:
                                                require ext_code.size(priceUpdaterAddress)
                                                call priceUpdaterAddress.0x26a49e37 with:
                                                     gas gas_remaining wei
                                                    args 4
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not totalInvested[4]:
                                                    if ext_call.return_data[0]:
                                                        if 0 / ext_call.return_data[0] >= 0:
                                                            require ext_code.size(priceUpdaterAddress)
                                                            call priceUpdaterAddress.0x26a49e37 with:
                                                                 gas gas_remaining wei
                                                                args 5
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not totalInvested[5]:
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0] >= 0:
                                                                        if not (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]):
                                                                            if ext_call.return_data[0]:
                                                                                if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                    return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                        else:
                                                                            if (3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / (3 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) == 10^18:
                                                                                if ext_call.return_data[0]:
                                                                                    if totalInvested[0] + ((3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                        return (totalInvested[0] + ((3 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]))
                                                            else:
                                                                if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                    if ext_call.return_data[0]:
                                                                        if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                            if not (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]):
                                                                                if ext_call.return_data[0]:
                                                                                    if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                        return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                            else:
                                                                                if (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) == 10^18:
                                                                                    if ext_call.return_data[0]:
                                                                                        if totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                            return (totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]))
                                                else:
                                                    if 10^ext_call.return_data[0] * totalInvested[4] / totalInvested[4] == 10^ext_call.return_data[0]:
                                                        if ext_call.return_data[0]:
                                                            if 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0] >= 0:
                                                                require ext_code.size(priceUpdaterAddress)
                                                                call priceUpdaterAddress.0x26a49e37 with:
                                                                     gas gas_remaining wei
                                                                    args 5
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not totalInvested[5]:
                                                                    if ext_call.return_data[0]:
                                                                        if 0 / ext_call.return_data[0] >= 0:
                                                                            if not (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]):
                                                                                if ext_call.return_data[0]:
                                                                                    if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                        return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                            else:
                                                                                if (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) == 10^18:
                                                                                    if ext_call.return_data[0]:
                                                                                        if totalInvested[0] + ((2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                            return (totalInvested[0] + ((2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]))
                                                                else:
                                                                    if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                        if ext_call.return_data[0]:
                                                                            if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                                if not (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]):
                                                                                    if ext_call.return_data[0]:
                                                                                        if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                            return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                                else:
                                                                                    if (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) == 10^18:
                                                                                        if ext_call.return_data[0]:
                                                                                            if totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                                return (totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]))
                                    else:
                                        if 10^ext_call.return_data[0] * totalInvested[3] / totalInvested[3] == 10^ext_call.return_data[0]:
                                            if ext_call.return_data[0]:
                                                if 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0] >= 0:
                                                    require ext_code.size(priceUpdaterAddress)
                                                    call priceUpdaterAddress.0x26a49e37 with:
                                                         gas gas_remaining wei
                                                        args 4
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not totalInvested[4]:
                                                        if ext_call.return_data[0]:
                                                            if 0 / ext_call.return_data[0] >= 0:
                                                                require ext_code.size(priceUpdaterAddress)
                                                                call priceUpdaterAddress.0x26a49e37 with:
                                                                     gas gas_remaining wei
                                                                    args 5
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not totalInvested[5]:
                                                                    if ext_call.return_data[0]:
                                                                        if 0 / ext_call.return_data[0] >= 0:
                                                                            if not (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]):
                                                                                if ext_call.return_data[0]:
                                                                                    if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                        return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                            else:
                                                                                if (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / (2 * 0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) == 10^18:
                                                                                    if ext_call.return_data[0]:
                                                                                        if totalInvested[0] + ((2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                            return (totalInvested[0] + ((2 * 10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]))
                                                                else:
                                                                    if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                        if ext_call.return_data[0]:
                                                                            if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                                if not (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]):
                                                                                    if ext_call.return_data[0]:
                                                                                        if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                            return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                                else:
                                                                                    if (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) == 10^18:
                                                                                        if ext_call.return_data[0]:
                                                                                            if totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                                return (totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]))
                                                    else:
                                                        if 10^ext_call.return_data[0] * totalInvested[4] / totalInvested[4] == 10^ext_call.return_data[0]:
                                                            if ext_call.return_data[0]:
                                                                if 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0] >= 0:
                                                                    require ext_code.size(priceUpdaterAddress)
                                                                    call priceUpdaterAddress.0x26a49e37 with:
                                                                         gas gas_remaining wei
                                                                        args 5
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if not totalInvested[5]:
                                                                        if ext_call.return_data[0]:
                                                                            if 0 / ext_call.return_data[0] >= 0:
                                                                                if not (0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]):
                                                                                    if ext_call.return_data[0]:
                                                                                        if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                            return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                                else:
                                                                                    if (10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / (0 / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) == 10^18:
                                                                                        if ext_call.return_data[0]:
                                                                                            if totalInvested[0] + ((10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                                return (totalInvested[0] + ((10^18 * 0 / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]))
                                                                    else:
                                                                        if 10^ext_call.return_data[0] * totalInvested[5] / totalInvested[5] == 10^ext_call.return_data[0]:
                                                                            if ext_call.return_data[0]:
                                                                                if 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0] >= 0:
                                                                                    if not (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]):
                                                                                        if ext_call.return_data[0]:
                                                                                            if totalInvested[0] + (0 / ext_call.return_data[0]) >= 0 / ext_call.return_data[0]:
                                                                                                return (totalInvested[0] + (0 / ext_call.return_data[0]))
                                                                                    else:
                                                                                        if (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / (10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) == 10^18:
                                                                                            if ext_call.return_data[0]:
                                                                                                if totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]) >= (10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                                    return (totalInvested[0] + ((10^18 * 10^ext_call.return_data[0] * totalInvested[5] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[4] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[3] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[2] / ext_call.return_data[0]) + (10^18 * 10^ext_call.return_data[0] * totalInvested[1] / ext_call.return_data[0]) / ext_call.return_data[0]))
    revert
}



}

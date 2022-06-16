contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 tokenDecimal;
address stor3;
uint256 sub_a510c081;
uint256 sub_4dca2a10;
uint256 sub_b1ed56da;
uint256 sub_58b08324;
uint256 sub_f9450915;
uint256 sub_01949d5e;
uint256 softcap;
uint256 hardcap;
uint256 fundRaised;
uint256 exchangeRate;

function sub_01949d5e(?) {
    return sub_01949d5e
}

function exchangeRate() {
    return exchangeRate
}

function sub_4dca2a10(?) {
    return sub_4dca2a10
}

function sub_58b08324(?) {
    return sub_58b08324
}

function tokenDecimal() {
    return tokenDecimal
}

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function sub_a510c081(?) {
    return sub_a510c081
}

function hardcap() {
    return hardcap
}

function sub_b1ed56da(?) {
    return sub_b1ed56da
}

function fundRaised() {
    return fundRaised
}

function softcap() {
    return softcap
}

function sub_f9450915(?) {
    return sub_f9450915
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function updateToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Address is invalid'
    tokenAddress = arg1
    tokenDecimal = arg2
}

function manualWithdrawEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function manualWithdrawTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if fundRaised >= hardcap:
        revert with 0, 'hard cap is reached'
    else:
        if sub_a510c081 >= block.timestamp:
            if sub_b1ed56da >= block.timestamp:
                if sub_f9450915 >= block.timestamp:
                    fundRaised += msg.value
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                else:
                    if sub_01949d5e <= block.timestamp:
                        fundRaised += msg.value
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                    else:
                        if msg.value:
                            require msg.value
                            require msg.value * exchangeRate / msg.value == exchangeRate
                            if sub_a510c081 >= block.timestamp:
                                if sub_b1ed56da >= block.timestamp:
                                    require msg.value * exchangeRate >= msg.value * exchangeRate
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value * exchangeRate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        fundRaised += msg.value
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                else:
                                    if sub_58b08324 <= block.timestamp:
                                        require msg.value * exchangeRate >= msg.value * exchangeRate
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value * exchangeRate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        if msg.value * exchangeRate:
                                            require msg.value * exchangeRate
                                            require 20 * msg.value * exchangeRate / msg.value * exchangeRate == 20
                                            require (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100) >= msg.value * exchangeRate
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            require msg.value * exchangeRate >= msg.value * exchangeRate
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, msg.value * exchangeRate
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                            else:
                                if sub_4dca2a10 <= block.timestamp:
                                    if sub_b1ed56da >= block.timestamp:
                                        require msg.value * exchangeRate >= msg.value * exchangeRate
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value * exchangeRate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        if sub_58b08324 <= block.timestamp:
                                            require msg.value * exchangeRate >= msg.value * exchangeRate
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, msg.value * exchangeRate
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            if msg.value * exchangeRate:
                                                require msg.value * exchangeRate
                                                require 20 * msg.value * exchangeRate / msg.value * exchangeRate == 20
                                                require (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100) >= msg.value * exchangeRate
                                                require ext_code.size(stor3)
                                                call stor3.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    fundRaised += msg.value
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                require msg.value * exchangeRate >= msg.value * exchangeRate
                                                require ext_code.size(stor3)
                                                call stor3.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, msg.value * exchangeRate
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    fundRaised += msg.value
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                else:
                                    if msg.value * exchangeRate:
                                        require msg.value * exchangeRate
                                        require 30 * msg.value * exchangeRate / msg.value * exchangeRate == 30
                                        require (msg.value * exchangeRate) + (30 * msg.value * exchangeRate / 100) >= msg.value * exchangeRate
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (msg.value * exchangeRate) + (30 * msg.value * exchangeRate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        require msg.value * exchangeRate >= msg.value * exchangeRate
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value * exchangeRate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                        else:
                            if sub_a510c081 >= block.timestamp:
                                if sub_b1ed56da >= block.timestamp:
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        fundRaised += msg.value
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                else:
                                    if sub_58b08324 <= block.timestamp:
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                            else:
                                if sub_4dca2a10 <= block.timestamp:
                                    if sub_b1ed56da >= block.timestamp:
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        if sub_58b08324 <= block.timestamp:
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                else:
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        fundRaised += msg.value
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
            else:
                if sub_58b08324 > block.timestamp:
                    if msg.value:
                        require msg.value
                        require msg.value * exchangeRate / msg.value == exchangeRate
                        if sub_a510c081 >= block.timestamp:
                            if sub_b1ed56da >= block.timestamp:
                                require msg.value * exchangeRate >= msg.value * exchangeRate
                                require ext_code.size(stor3)
                                call stor3.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value * exchangeRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    fundRaised += msg.value
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                            else:
                                if sub_58b08324 <= block.timestamp:
                                    require msg.value * exchangeRate >= msg.value * exchangeRate
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value * exchangeRate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        fundRaised += msg.value
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                else:
                                    if msg.value * exchangeRate:
                                        require msg.value * exchangeRate
                                        require 20 * msg.value * exchangeRate / msg.value * exchangeRate == 20
                                        require (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100) >= msg.value * exchangeRate
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        require msg.value * exchangeRate >= msg.value * exchangeRate
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value * exchangeRate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                        else:
                            if sub_4dca2a10 <= block.timestamp:
                                if sub_b1ed56da >= block.timestamp:
                                    require msg.value * exchangeRate >= msg.value * exchangeRate
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value * exchangeRate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        fundRaised += msg.value
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                else:
                                    if sub_58b08324 <= block.timestamp:
                                        require msg.value * exchangeRate >= msg.value * exchangeRate
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value * exchangeRate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        if msg.value * exchangeRate:
                                            require msg.value * exchangeRate
                                            require 20 * msg.value * exchangeRate / msg.value * exchangeRate == 20
                                            require (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100) >= msg.value * exchangeRate
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            require msg.value * exchangeRate >= msg.value * exchangeRate
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, msg.value * exchangeRate
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                            else:
                                if msg.value * exchangeRate:
                                    require msg.value * exchangeRate
                                    require 30 * msg.value * exchangeRate / msg.value * exchangeRate == 30
                                    require (msg.value * exchangeRate) + (30 * msg.value * exchangeRate / 100) >= msg.value * exchangeRate
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (msg.value * exchangeRate) + (30 * msg.value * exchangeRate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        fundRaised += msg.value
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                else:
                                    require msg.value * exchangeRate >= msg.value * exchangeRate
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value * exchangeRate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        fundRaised += msg.value
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                    else:
                        if sub_a510c081 >= block.timestamp:
                            if sub_b1ed56da >= block.timestamp:
                                require ext_code.size(stor3)
                                call stor3.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    fundRaised += msg.value
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                            else:
                                if sub_58b08324 <= block.timestamp:
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        fundRaised += msg.value
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                else:
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        fundRaised += msg.value
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                        else:
                            if sub_4dca2a10 <= block.timestamp:
                                if sub_b1ed56da >= block.timestamp:
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        fundRaised += msg.value
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                else:
                                    if sub_58b08324 <= block.timestamp:
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                            else:
                                require ext_code.size(stor3)
                                call stor3.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    fundRaised += msg.value
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                else:
                    if sub_f9450915 >= block.timestamp:
                        fundRaised += msg.value
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                    else:
                        if sub_01949d5e <= block.timestamp:
                            fundRaised += msg.value
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                        else:
                            if msg.value:
                                require msg.value
                                require msg.value * exchangeRate / msg.value == exchangeRate
                                if sub_a510c081 >= block.timestamp:
                                    if sub_b1ed56da >= block.timestamp:
                                        require msg.value * exchangeRate >= msg.value * exchangeRate
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value * exchangeRate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        if sub_58b08324 <= block.timestamp:
                                            require msg.value * exchangeRate >= msg.value * exchangeRate
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, msg.value * exchangeRate
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            if msg.value * exchangeRate:
                                                require msg.value * exchangeRate
                                                require 20 * msg.value * exchangeRate / msg.value * exchangeRate == 20
                                                require (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100) >= msg.value * exchangeRate
                                                require ext_code.size(stor3)
                                                call stor3.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    fundRaised += msg.value
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                require msg.value * exchangeRate >= msg.value * exchangeRate
                                                require ext_code.size(stor3)
                                                call stor3.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, msg.value * exchangeRate
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    fundRaised += msg.value
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                else:
                                    if sub_4dca2a10 <= block.timestamp:
                                        if sub_b1ed56da >= block.timestamp:
                                            require msg.value * exchangeRate >= msg.value * exchangeRate
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, msg.value * exchangeRate
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            if sub_58b08324 <= block.timestamp:
                                                require msg.value * exchangeRate >= msg.value * exchangeRate
                                                require ext_code.size(stor3)
                                                call stor3.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, msg.value * exchangeRate
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    fundRaised += msg.value
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                if msg.value * exchangeRate:
                                                    require msg.value * exchangeRate
                                                    require 20 * msg.value * exchangeRate / msg.value * exchangeRate == 20
                                                    require (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100) >= msg.value * exchangeRate
                                                    require ext_code.size(stor3)
                                                    call stor3.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        fundRaised += msg.value
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                else:
                                                    require msg.value * exchangeRate >= msg.value * exchangeRate
                                                    require ext_code.size(stor3)
                                                    call stor3.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, msg.value * exchangeRate
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        fundRaised += msg.value
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                    else:
                                        if msg.value * exchangeRate:
                                            require msg.value * exchangeRate
                                            require 30 * msg.value * exchangeRate / msg.value * exchangeRate == 30
                                            require (msg.value * exchangeRate) + (30 * msg.value * exchangeRate / 100) >= msg.value * exchangeRate
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (msg.value * exchangeRate) + (30 * msg.value * exchangeRate / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            require msg.value * exchangeRate >= msg.value * exchangeRate
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, msg.value * exchangeRate
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                            else:
                                if sub_a510c081 >= block.timestamp:
                                    if sub_b1ed56da >= block.timestamp:
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        if sub_58b08324 <= block.timestamp:
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                else:
                                    if sub_4dca2a10 <= block.timestamp:
                                        if sub_b1ed56da >= block.timestamp:
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            if sub_58b08324 <= block.timestamp:
                                                require ext_code.size(stor3)
                                                call stor3.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    fundRaised += msg.value
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                require ext_code.size(stor3)
                                                call stor3.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    fundRaised += msg.value
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                    else:
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
        else:
            if sub_4dca2a10 > block.timestamp:
                if msg.value:
                    require msg.value
                    require msg.value * exchangeRate / msg.value == exchangeRate
                    if sub_a510c081 >= block.timestamp:
                        if sub_b1ed56da >= block.timestamp:
                            require msg.value * exchangeRate >= msg.value * exchangeRate
                            require ext_code.size(stor3)
                            call stor3.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, msg.value * exchangeRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                fundRaised += msg.value
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            if sub_58b08324 <= block.timestamp:
                                require msg.value * exchangeRate >= msg.value * exchangeRate
                                require ext_code.size(stor3)
                                call stor3.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value * exchangeRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    fundRaised += msg.value
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                            else:
                                if msg.value * exchangeRate:
                                    require msg.value * exchangeRate
                                    require 20 * msg.value * exchangeRate / msg.value * exchangeRate == 20
                                    require (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100) >= msg.value * exchangeRate
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        fundRaised += msg.value
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                else:
                                    require msg.value * exchangeRate >= msg.value * exchangeRate
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value * exchangeRate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        fundRaised += msg.value
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                    else:
                        if sub_4dca2a10 <= block.timestamp:
                            if sub_b1ed56da >= block.timestamp:
                                require msg.value * exchangeRate >= msg.value * exchangeRate
                                require ext_code.size(stor3)
                                call stor3.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value * exchangeRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    fundRaised += msg.value
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                            else:
                                if sub_58b08324 <= block.timestamp:
                                    require msg.value * exchangeRate >= msg.value * exchangeRate
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value * exchangeRate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        fundRaised += msg.value
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                else:
                                    if msg.value * exchangeRate:
                                        require msg.value * exchangeRate
                                        require 20 * msg.value * exchangeRate / msg.value * exchangeRate == 20
                                        require (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100) >= msg.value * exchangeRate
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        require msg.value * exchangeRate >= msg.value * exchangeRate
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value * exchangeRate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                        else:
                            if msg.value * exchangeRate:
                                require msg.value * exchangeRate
                                require 30 * msg.value * exchangeRate / msg.value * exchangeRate == 30
                                require (msg.value * exchangeRate) + (30 * msg.value * exchangeRate / 100) >= msg.value * exchangeRate
                                require ext_code.size(stor3)
                                call stor3.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (msg.value * exchangeRate) + (30 * msg.value * exchangeRate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    fundRaised += msg.value
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                            else:
                                require msg.value * exchangeRate >= msg.value * exchangeRate
                                require ext_code.size(stor3)
                                call stor3.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value * exchangeRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    fundRaised += msg.value
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                else:
                    if sub_a510c081 >= block.timestamp:
                        if sub_b1ed56da >= block.timestamp:
                            require ext_code.size(stor3)
                            call stor3.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                fundRaised += msg.value
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            if sub_58b08324 <= block.timestamp:
                                require ext_code.size(stor3)
                                call stor3.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    fundRaised += msg.value
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                            else:
                                require ext_code.size(stor3)
                                call stor3.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    fundRaised += msg.value
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                    else:
                        if sub_4dca2a10 <= block.timestamp:
                            if sub_b1ed56da >= block.timestamp:
                                require ext_code.size(stor3)
                                call stor3.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    fundRaised += msg.value
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                            else:
                                if sub_58b08324 <= block.timestamp:
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        fundRaised += msg.value
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                else:
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        fundRaised += msg.value
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                        else:
                            require ext_code.size(stor3)
                            call stor3.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                fundRaised += msg.value
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
            else:
                if sub_b1ed56da >= block.timestamp:
                    if sub_f9450915 >= block.timestamp:
                        fundRaised += msg.value
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                    else:
                        if sub_01949d5e <= block.timestamp:
                            fundRaised += msg.value
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                        else:
                            if msg.value:
                                require msg.value
                                require msg.value * exchangeRate / msg.value == exchangeRate
                                if sub_a510c081 >= block.timestamp:
                                    if sub_b1ed56da >= block.timestamp:
                                        require msg.value * exchangeRate >= msg.value * exchangeRate
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value * exchangeRate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        if sub_58b08324 <= block.timestamp:
                                            require msg.value * exchangeRate >= msg.value * exchangeRate
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, msg.value * exchangeRate
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            if msg.value * exchangeRate:
                                                require msg.value * exchangeRate
                                                require 20 * msg.value * exchangeRate / msg.value * exchangeRate == 20
                                                require (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100) >= msg.value * exchangeRate
                                                require ext_code.size(stor3)
                                                call stor3.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    fundRaised += msg.value
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                require msg.value * exchangeRate >= msg.value * exchangeRate
                                                require ext_code.size(stor3)
                                                call stor3.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, msg.value * exchangeRate
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    fundRaised += msg.value
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                else:
                                    if sub_4dca2a10 <= block.timestamp:
                                        if sub_b1ed56da >= block.timestamp:
                                            require msg.value * exchangeRate >= msg.value * exchangeRate
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, msg.value * exchangeRate
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            if sub_58b08324 <= block.timestamp:
                                                require msg.value * exchangeRate >= msg.value * exchangeRate
                                                require ext_code.size(stor3)
                                                call stor3.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, msg.value * exchangeRate
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    fundRaised += msg.value
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                if msg.value * exchangeRate:
                                                    require msg.value * exchangeRate
                                                    require 20 * msg.value * exchangeRate / msg.value * exchangeRate == 20
                                                    require (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100) >= msg.value * exchangeRate
                                                    require ext_code.size(stor3)
                                                    call stor3.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        fundRaised += msg.value
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                else:
                                                    require msg.value * exchangeRate >= msg.value * exchangeRate
                                                    require ext_code.size(stor3)
                                                    call stor3.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, msg.value * exchangeRate
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        fundRaised += msg.value
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                    else:
                                        if msg.value * exchangeRate:
                                            require msg.value * exchangeRate
                                            require 30 * msg.value * exchangeRate / msg.value * exchangeRate == 30
                                            require (msg.value * exchangeRate) + (30 * msg.value * exchangeRate / 100) >= msg.value * exchangeRate
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (msg.value * exchangeRate) + (30 * msg.value * exchangeRate / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            require msg.value * exchangeRate >= msg.value * exchangeRate
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, msg.value * exchangeRate
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                            else:
                                if sub_a510c081 >= block.timestamp:
                                    if sub_b1ed56da >= block.timestamp:
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        if sub_58b08324 <= block.timestamp:
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                else:
                                    if sub_4dca2a10 <= block.timestamp:
                                        if sub_b1ed56da >= block.timestamp:
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            if sub_58b08324 <= block.timestamp:
                                                require ext_code.size(stor3)
                                                call stor3.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    fundRaised += msg.value
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                require ext_code.size(stor3)
                                                call stor3.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    fundRaised += msg.value
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                    else:
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                else:
                    if sub_58b08324 > block.timestamp:
                        if msg.value:
                            require msg.value
                            require msg.value * exchangeRate / msg.value == exchangeRate
                            if sub_a510c081 >= block.timestamp:
                                if sub_b1ed56da >= block.timestamp:
                                    require msg.value * exchangeRate >= msg.value * exchangeRate
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value * exchangeRate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        fundRaised += msg.value
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                else:
                                    if sub_58b08324 <= block.timestamp:
                                        require msg.value * exchangeRate >= msg.value * exchangeRate
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value * exchangeRate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        if msg.value * exchangeRate:
                                            require msg.value * exchangeRate
                                            require 20 * msg.value * exchangeRate / msg.value * exchangeRate == 20
                                            require (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100) >= msg.value * exchangeRate
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            require msg.value * exchangeRate >= msg.value * exchangeRate
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, msg.value * exchangeRate
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                            else:
                                if sub_4dca2a10 <= block.timestamp:
                                    if sub_b1ed56da >= block.timestamp:
                                        require msg.value * exchangeRate >= msg.value * exchangeRate
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value * exchangeRate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        if sub_58b08324 <= block.timestamp:
                                            require msg.value * exchangeRate >= msg.value * exchangeRate
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, msg.value * exchangeRate
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            if msg.value * exchangeRate:
                                                require msg.value * exchangeRate
                                                require 20 * msg.value * exchangeRate / msg.value * exchangeRate == 20
                                                require (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100) >= msg.value * exchangeRate
                                                require ext_code.size(stor3)
                                                call stor3.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    fundRaised += msg.value
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                require msg.value * exchangeRate >= msg.value * exchangeRate
                                                require ext_code.size(stor3)
                                                call stor3.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, msg.value * exchangeRate
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    fundRaised += msg.value
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                else:
                                    if msg.value * exchangeRate:
                                        require msg.value * exchangeRate
                                        require 30 * msg.value * exchangeRate / msg.value * exchangeRate == 30
                                        require (msg.value * exchangeRate) + (30 * msg.value * exchangeRate / 100) >= msg.value * exchangeRate
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (msg.value * exchangeRate) + (30 * msg.value * exchangeRate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        require msg.value * exchangeRate >= msg.value * exchangeRate
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value * exchangeRate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                        else:
                            if sub_a510c081 >= block.timestamp:
                                if sub_b1ed56da >= block.timestamp:
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        fundRaised += msg.value
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                else:
                                    if sub_58b08324 <= block.timestamp:
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                            else:
                                if sub_4dca2a10 <= block.timestamp:
                                    if sub_b1ed56da >= block.timestamp:
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            fundRaised += msg.value
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                    else:
                                        if sub_58b08324 <= block.timestamp:
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                else:
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        fundRaised += msg.value
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                    else:
                        if sub_f9450915 >= block.timestamp:
                            fundRaised += msg.value
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                        else:
                            if sub_01949d5e <= block.timestamp:
                                fundRaised += msg.value
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                            else:
                                if msg.value:
                                    require msg.value
                                    require msg.value * exchangeRate / msg.value == exchangeRate
                                    if sub_a510c081 >= block.timestamp:
                                        if sub_b1ed56da >= block.timestamp:
                                            require msg.value * exchangeRate >= msg.value * exchangeRate
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, msg.value * exchangeRate
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            if sub_58b08324 <= block.timestamp:
                                                require msg.value * exchangeRate >= msg.value * exchangeRate
                                                require ext_code.size(stor3)
                                                call stor3.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, msg.value * exchangeRate
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    fundRaised += msg.value
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                if msg.value * exchangeRate:
                                                    require msg.value * exchangeRate
                                                    require 20 * msg.value * exchangeRate / msg.value * exchangeRate == 20
                                                    require (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100) >= msg.value * exchangeRate
                                                    require ext_code.size(stor3)
                                                    call stor3.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        fundRaised += msg.value
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                else:
                                                    require msg.value * exchangeRate >= msg.value * exchangeRate
                                                    require ext_code.size(stor3)
                                                    call stor3.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, msg.value * exchangeRate
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        fundRaised += msg.value
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                    else:
                                        if sub_4dca2a10 <= block.timestamp:
                                            if sub_b1ed56da >= block.timestamp:
                                                require msg.value * exchangeRate >= msg.value * exchangeRate
                                                require ext_code.size(stor3)
                                                call stor3.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, msg.value * exchangeRate
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    fundRaised += msg.value
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                if sub_58b08324 <= block.timestamp:
                                                    require msg.value * exchangeRate >= msg.value * exchangeRate
                                                    require ext_code.size(stor3)
                                                    call stor3.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, msg.value * exchangeRate
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        fundRaised += msg.value
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                else:
                                                    if msg.value * exchangeRate:
                                                        require msg.value * exchangeRate
                                                        require 20 * msg.value * exchangeRate / msg.value * exchangeRate == 20
                                                        require (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100) >= msg.value * exchangeRate
                                                        require ext_code.size(stor3)
                                                        call stor3.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (msg.value * exchangeRate) + (20 * msg.value * exchangeRate / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            fundRaised += msg.value
                                                            call owner with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                    else:
                                                        require msg.value * exchangeRate >= msg.value * exchangeRate
                                                        require ext_code.size(stor3)
                                                        call stor3.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, msg.value * exchangeRate
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            fundRaised += msg.value
                                                            call owner with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                        else:
                                            if msg.value * exchangeRate:
                                                require msg.value * exchangeRate
                                                require 30 * msg.value * exchangeRate / msg.value * exchangeRate == 30
                                                require (msg.value * exchangeRate) + (30 * msg.value * exchangeRate / 100) >= msg.value * exchangeRate
                                                require ext_code.size(stor3)
                                                call stor3.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (msg.value * exchangeRate) + (30 * msg.value * exchangeRate / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    fundRaised += msg.value
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                require msg.value * exchangeRate >= msg.value * exchangeRate
                                                require ext_code.size(stor3)
                                                call stor3.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, msg.value * exchangeRate
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    fundRaised += msg.value
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                else:
                                    if sub_a510c081 >= block.timestamp:
                                        if sub_b1ed56da >= block.timestamp:
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                        else:
                                            if sub_58b08324 <= block.timestamp:
                                                require ext_code.size(stor3)
                                                call stor3.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    fundRaised += msg.value
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                require ext_code.size(stor3)
                                                call stor3.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    fundRaised += msg.value
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                    else:
                                        if sub_4dca2a10 <= block.timestamp:
                                            if sub_b1ed56da >= block.timestamp:
                                                require ext_code.size(stor3)
                                                call stor3.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    fundRaised += msg.value
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                            else:
                                                if sub_58b08324 <= block.timestamp:
                                                    require ext_code.size(stor3)
                                                    call stor3.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        fundRaised += msg.value
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                else:
                                                    require ext_code.size(stor3)
                                                    call stor3.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        fundRaised += msg.value
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                        else:
                                            require ext_code.size(stor3)
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                fundRaised += msg.value
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
}



}

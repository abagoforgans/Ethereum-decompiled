contract main {




// =====================  Runtime code  =====================


address owner;
address multisigAddress;
address tokenAddress;
uint256 icoStartP1;
uint256 icoStartP2;
uint256 icoStartP3;
uint256 icoStartP4;
uint256 icoStartP5;
uint256 icoStartP6;
uint256 icoEnd;
uint256 icoSoftcap;
uint256 icoHardcap;
uint256 tokensFor1EthP6;
uint256 tokensFor1EthP1;
uint256 tokensFor1EthP2;
uint256 tokensFor1EthP3;
uint256 tokensFor1EthP4;
uint256 tokensFor1EthP5;
mapping of uint256 balances;

function icoEnd() {
    return icoEnd
}

function balances(address arg1) {
    return balances[arg1]
}

function tokensFor1EthP2() {
    return tokensFor1EthP2
}

function icoStartP6() {
    return icoStartP6
}

function multisig() {
    return multisigAddress
}

function tokensFor1EthP6() {
    return tokensFor1EthP6
}

function icoSoftcap() {
    return icoSoftcap
}

function icoStartP2() {
    return icoStartP2
}

function icoStartP4() {
    return icoStartP4
}

function tokensFor1EthP4() {
    return tokensFor1EthP4
}

function icoStartP3() {
    return icoStartP3
}

function owner() {
    return owner
}

function tokensFor1EthP5() {
    return tokensFor1EthP5
}

function tokensFor1EthP1() {
    return tokensFor1EthP1
}

function icoHardcap() {
    return icoHardcap
}

function tokensFor1EthP3() {
    return tokensFor1EthP3
}

function icoStartP5() {
    return icoStartP5
}

function icoStartP1() {
    return icoStartP1
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function withdraw() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= icoSoftcap
    call multisigAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function refund() {
    require block.timestamp > icoEnd
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < icoSoftcap
    balances[msg.sender] = 0
    call msg.sender with:
       value balances[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function refundToWallet(address arg1) {
    require block.timestamp > icoEnd
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < icoSoftcap
    balances[address(arg1)] = 0
    call arg1 with:
       value balances[address(arg1)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function finishMinting() {
    require msg.sender == owner
    if block.timestamp > icoEnd:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x7d64bcb4 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.0xf2fde38b with:
             gas gas_remaining wei
            args multisigAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require block.timestamp >= icoStartP1
    require block.timestamp < icoEnd
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < icoHardcap
    if block.timestamp < icoStartP2:
        if msg.value:
            require msg.value
            require tokensFor1EthP1 * msg.value / msg.value == tokensFor1EthP1
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require (tokensFor1EthP1 * msg.value / 10^18) + ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        if (tokensFor1EthP1 * msg.value / 10^18) + ext_call.return_data[0] <= icoHardcap:
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, tokensFor1EthP1 * msg.value / 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 <= msg.value
            require msg.value + balances[msg.sender] >= balances[msg.sender]
            balances[msg.sender] += msg.value
        else:
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] <= icoHardcap
            if icoHardcap - ext_call.return_data[0]:
                require icoHardcap - ext_call.return_data[0]
                require (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / icoHardcap - ext_call.return_data[0] == 10^18
            require tokensFor1EthP1
            require (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP1 <= msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, icoHardcap - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP1):
                call msg.sender with:
                   value msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP1) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP1) <= msg.value
            require ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP1) + balances[msg.sender] >= balances[msg.sender]
            balances[msg.sender] += (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP1
    else:
        if block.timestamp < icoStartP3:
            if msg.value:
                require msg.value
                require tokensFor1EthP2 * msg.value / msg.value == tokensFor1EthP2
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (tokensFor1EthP2 * msg.value / 10^18) + ext_call.return_data[0] >= ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            if (tokensFor1EthP2 * msg.value / 10^18) + ext_call.return_data[0] <= icoHardcap:
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, tokensFor1EthP2 * msg.value / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 <= msg.value
                require msg.value + balances[msg.sender] >= balances[msg.sender]
                balances[msg.sender] += msg.value
            else:
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= icoHardcap
                if icoHardcap - ext_call.return_data[0]:
                    require icoHardcap - ext_call.return_data[0]
                    require (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / icoHardcap - ext_call.return_data[0] == 10^18
                require tokensFor1EthP2
                require (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP2 <= msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, icoHardcap - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP2):
                    call msg.sender with:
                       value msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP2) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP2) <= msg.value
                require ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP2) + balances[msg.sender] >= balances[msg.sender]
                balances[msg.sender] += (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP2
        else:
            if block.timestamp < icoStartP4:
                if msg.value:
                    require msg.value
                    require tokensFor1EthP3 * msg.value / msg.value == tokensFor1EthP3
                require ext_code.size(tokenAddress)
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (tokensFor1EthP3 * msg.value / 10^18) + ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                if (tokensFor1EthP3 * msg.value / 10^18) + ext_call.return_data[0] <= icoHardcap:
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, tokensFor1EthP3 * msg.value / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 <= msg.value
                    require msg.value + balances[msg.sender] >= balances[msg.sender]
                    balances[msg.sender] += msg.value
                else:
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= icoHardcap
                    if icoHardcap - ext_call.return_data[0]:
                        require icoHardcap - ext_call.return_data[0]
                        require (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / icoHardcap - ext_call.return_data[0] == 10^18
                    require tokensFor1EthP3
                    require (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP3 <= msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, icoHardcap - ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP3):
                        call msg.sender with:
                           value msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP3) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP3) <= msg.value
                    require ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP3) + balances[msg.sender] >= balances[msg.sender]
                    balances[msg.sender] += (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP3
            else:
                if block.timestamp < icoStartP5:
                    if msg.value:
                        require msg.value
                        require tokensFor1EthP4 * msg.value / msg.value == tokensFor1EthP4
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (tokensFor1EthP4 * msg.value / 10^18) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    if (tokensFor1EthP4 * msg.value / 10^18) + ext_call.return_data[0] <= icoHardcap:
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, tokensFor1EthP4 * msg.value / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= msg.value
                        require msg.value + balances[msg.sender] >= balances[msg.sender]
                        balances[msg.sender] += msg.value
                    else:
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= icoHardcap
                        if icoHardcap - ext_call.return_data[0]:
                            require icoHardcap - ext_call.return_data[0]
                            require (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / icoHardcap - ext_call.return_data[0] == 10^18
                        require tokensFor1EthP4
                        require (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP4 <= msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, icoHardcap - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP4):
                            call msg.sender with:
                               value msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP4) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP4) <= msg.value
                        require ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP4) + balances[msg.sender] >= balances[msg.sender]
                        balances[msg.sender] += (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP4
                else:
                    if block.timestamp >= icoStartP6:
                        if msg.value:
                            require msg.value
                            require tokensFor1EthP6 * msg.value / msg.value == tokensFor1EthP6
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (tokensFor1EthP6 * msg.value / 10^18) + ext_call.return_data[0] >= ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        if (tokensFor1EthP6 * msg.value / 10^18) + ext_call.return_data[0] <= icoHardcap:
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, tokensFor1EthP6 * msg.value / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= msg.value
                            require msg.value + balances[msg.sender] >= balances[msg.sender]
                            balances[msg.sender] += msg.value
                        else:
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= icoHardcap
                            if icoHardcap - ext_call.return_data[0]:
                                require icoHardcap - ext_call.return_data[0]
                                require (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / icoHardcap - ext_call.return_data[0] == 10^18
                            require tokensFor1EthP6
                            require (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP6 <= msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, icoHardcap - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP6):
                                call msg.sender with:
                                   value msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP6) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP6) <= msg.value
                            require ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP6) + balances[msg.sender] >= balances[msg.sender]
                            balances[msg.sender] += (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP6
                    else:
                        if msg.value:
                            require msg.value
                            require tokensFor1EthP5 * msg.value / msg.value == tokensFor1EthP5
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (tokensFor1EthP5 * msg.value / 10^18) + ext_call.return_data[0] >= ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        if (tokensFor1EthP5 * msg.value / 10^18) + ext_call.return_data[0] <= icoHardcap:
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, tokensFor1EthP5 * msg.value / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= msg.value
                            require msg.value + balances[msg.sender] >= balances[msg.sender]
                            balances[msg.sender] += msg.value
                        else:
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= icoHardcap
                            if icoHardcap - ext_call.return_data[0]:
                                require icoHardcap - ext_call.return_data[0]
                                require (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / icoHardcap - ext_call.return_data[0] == 10^18
                            require tokensFor1EthP5
                            require (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP5 <= msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, icoHardcap - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP5):
                                call msg.sender with:
                                   value msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP5) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP5) <= msg.value
                            require ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP5) + balances[msg.sender] >= balances[msg.sender]
                            balances[msg.sender] += (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP5
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= icoSoftcap:
        call multisigAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function createTokens() payable {
    require block.timestamp >= icoStartP1
    require block.timestamp < icoEnd
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < icoHardcap
    if block.timestamp < icoStartP2:
        if msg.value:
            require msg.value
            require tokensFor1EthP1 * msg.value / msg.value == tokensFor1EthP1
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require (tokensFor1EthP1 * msg.value / 10^18) + ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        if (tokensFor1EthP1 * msg.value / 10^18) + ext_call.return_data[0] <= icoHardcap:
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, tokensFor1EthP1 * msg.value / 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 <= msg.value
            require msg.value + balances[msg.sender] >= balances[msg.sender]
            balances[msg.sender] += msg.value
        else:
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] <= icoHardcap
            if icoHardcap - ext_call.return_data[0]:
                require icoHardcap - ext_call.return_data[0]
                require (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / icoHardcap - ext_call.return_data[0] == 10^18
            require tokensFor1EthP1
            require (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP1 <= msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, icoHardcap - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP1):
                call msg.sender with:
                   value msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP1) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP1) <= msg.value
            require ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP1) + balances[msg.sender] >= balances[msg.sender]
            balances[msg.sender] += (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP1
    else:
        if block.timestamp < icoStartP3:
            if msg.value:
                require msg.value
                require tokensFor1EthP2 * msg.value / msg.value == tokensFor1EthP2
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (tokensFor1EthP2 * msg.value / 10^18) + ext_call.return_data[0] >= ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            if (tokensFor1EthP2 * msg.value / 10^18) + ext_call.return_data[0] <= icoHardcap:
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, tokensFor1EthP2 * msg.value / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 <= msg.value
                require msg.value + balances[msg.sender] >= balances[msg.sender]
                balances[msg.sender] += msg.value
            else:
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= icoHardcap
                if icoHardcap - ext_call.return_data[0]:
                    require icoHardcap - ext_call.return_data[0]
                    require (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / icoHardcap - ext_call.return_data[0] == 10^18
                require tokensFor1EthP2
                require (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP2 <= msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, icoHardcap - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP2):
                    call msg.sender with:
                       value msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP2) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP2) <= msg.value
                require ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP2) + balances[msg.sender] >= balances[msg.sender]
                balances[msg.sender] += (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP2
        else:
            if block.timestamp < icoStartP4:
                if msg.value:
                    require msg.value
                    require tokensFor1EthP3 * msg.value / msg.value == tokensFor1EthP3
                require ext_code.size(tokenAddress)
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (tokensFor1EthP3 * msg.value / 10^18) + ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                if (tokensFor1EthP3 * msg.value / 10^18) + ext_call.return_data[0] <= icoHardcap:
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, tokensFor1EthP3 * msg.value / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 <= msg.value
                    require msg.value + balances[msg.sender] >= balances[msg.sender]
                    balances[msg.sender] += msg.value
                else:
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= icoHardcap
                    if icoHardcap - ext_call.return_data[0]:
                        require icoHardcap - ext_call.return_data[0]
                        require (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / icoHardcap - ext_call.return_data[0] == 10^18
                    require tokensFor1EthP3
                    require (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP3 <= msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, icoHardcap - ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP3):
                        call msg.sender with:
                           value msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP3) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP3) <= msg.value
                    require ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP3) + balances[msg.sender] >= balances[msg.sender]
                    balances[msg.sender] += (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP3
            else:
                if block.timestamp < icoStartP5:
                    if msg.value:
                        require msg.value
                        require tokensFor1EthP4 * msg.value / msg.value == tokensFor1EthP4
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (tokensFor1EthP4 * msg.value / 10^18) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    if (tokensFor1EthP4 * msg.value / 10^18) + ext_call.return_data[0] <= icoHardcap:
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, tokensFor1EthP4 * msg.value / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= msg.value
                        require msg.value + balances[msg.sender] >= balances[msg.sender]
                        balances[msg.sender] += msg.value
                    else:
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= icoHardcap
                        if icoHardcap - ext_call.return_data[0]:
                            require icoHardcap - ext_call.return_data[0]
                            require (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / icoHardcap - ext_call.return_data[0] == 10^18
                        require tokensFor1EthP4
                        require (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP4 <= msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, icoHardcap - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP4):
                            call msg.sender with:
                               value msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP4) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP4) <= msg.value
                        require ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP4) + balances[msg.sender] >= balances[msg.sender]
                        balances[msg.sender] += (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP4
                else:
                    if block.timestamp >= icoStartP6:
                        if msg.value:
                            require msg.value
                            require tokensFor1EthP6 * msg.value / msg.value == tokensFor1EthP6
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (tokensFor1EthP6 * msg.value / 10^18) + ext_call.return_data[0] >= ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        if (tokensFor1EthP6 * msg.value / 10^18) + ext_call.return_data[0] <= icoHardcap:
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, tokensFor1EthP6 * msg.value / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= msg.value
                            require msg.value + balances[msg.sender] >= balances[msg.sender]
                            balances[msg.sender] += msg.value
                        else:
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= icoHardcap
                            if icoHardcap - ext_call.return_data[0]:
                                require icoHardcap - ext_call.return_data[0]
                                require (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / icoHardcap - ext_call.return_data[0] == 10^18
                            require tokensFor1EthP6
                            require (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP6 <= msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, icoHardcap - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP6):
                                call msg.sender with:
                                   value msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP6) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP6) <= msg.value
                            require ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP6) + balances[msg.sender] >= balances[msg.sender]
                            balances[msg.sender] += (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP6
                    else:
                        if msg.value:
                            require msg.value
                            require tokensFor1EthP5 * msg.value / msg.value == tokensFor1EthP5
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (tokensFor1EthP5 * msg.value / 10^18) + ext_call.return_data[0] >= ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        if (tokensFor1EthP5 * msg.value / 10^18) + ext_call.return_data[0] <= icoHardcap:
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, tokensFor1EthP5 * msg.value / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= msg.value
                            require msg.value + balances[msg.sender] >= balances[msg.sender]
                            balances[msg.sender] += msg.value
                        else:
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= icoHardcap
                            if icoHardcap - ext_call.return_data[0]:
                                require icoHardcap - ext_call.return_data[0]
                                require (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / icoHardcap - ext_call.return_data[0] == 10^18
                            require tokensFor1EthP5
                            require (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP5 <= msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, icoHardcap - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP5):
                                call msg.sender with:
                                   value msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP5) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require msg.value - ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP5) <= msg.value
                            require ((10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP5) + balances[msg.sender] >= balances[msg.sender]
                            balances[msg.sender] += (10^18 * icoHardcap) - (10^18 * ext_call.return_data[0]) / tokensFor1EthP5
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= icoSoftcap:
        call multisigAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}

contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint8 stor8;
uint256 stor10;

function _fallback() payable {
    stor3 = 1516579201
    stor4 = 1518998399
    stor5 = 1513123201
    stor6 = 1516579199
    stor8 = 0
    require not msg.value
    stor1 = code.data[2804 len 20]
    stor2 = code.data[2772 len 20]
    stor10 = code.data[2824 len 32]
    return code.data[167 len 2593]
}



// =====================  Runtime code  =====================


address tokenAddress;
address beneficiaryAddress;
address founderAddress;
uint256 crowdfundStartTime;
uint256 crowdfundEndTime;
uint256 presaleStartTime;
uint256 presaleEndTime;
uint256 ethRaised;
uint8 stor8;
uint256 tokenSold;
uint256 stor10;

function crowdfundEndTime() {
    return crowdfundEndTime
}

function presaleEndTime() {
    return presaleEndTime
}

function founderAddress() {
    return founderAddress
}

function tokenSold() {
    return tokenSold
}

function presaleStartTime() {
    return presaleStartTime
}

function crowdfundStartTime() {
    return crowdfundStartTime
}

function beneficiaryAddress() {
    return beneficiaryAddress
}

function token() {
    return tokenAddress
}

function ethRaised() {
    return ethRaised
}

function setEthRate(uint256 arg1) {
    require founderAddress == msg.sender
    require arg1 > 0
    stor10 = arg1
    return 1
}

function setToken(address arg1) {
    require arg1
    require founderAddress == msg.sender
    require not stor8
    tokenAddress = arg1
    stor8 = 1
}

function changeFounderWalletAddress(address arg1) {
    require founderAddress == msg.sender
    require arg1
    founderAddress = arg1
    emit ChangeFounderAddress(block.timestamp, arg1);
}

function endCrowdFund() {
    require founderAddress == msg.sender
    require block.timestamp > crowdfundEndTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if not ext_call.return_data[0]:
        emit CrowdFundClosed(block.timestamp);
        return 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args founderAddress, ext_call.return_data[0]
    require ext_call.success
    emit CrowdFundClosed(block.timestamp);
    return 1
}

function _fallback() payable {
    require block.timestamp >= presaleStartTime
    require block.timestamp <= crowdfundEndTime
    require founderAddress != msg.sender
    require msg.sender
    require msg.value
    require 1 == bool(stor8)
    if block.timestamp < crowdfundStartTime:
        if block.timestamp < presaleStartTime:
            if block.timestamp < crowdfundStartTime:
                if block.timestamp < presaleStartTime:
                    require stor10
                    require stor10
                    require 100 * stor10 / stor10 == 100
                    revert
                else:
                    if block.timestamp > presaleEndTime:
                        require stor10
                        require stor10
                        require 100 * stor10 / stor10 == 100
                        revert
                    else:
                        require stor10
                        require stor10
                        require 100 * stor10 / stor10 == 100
                        revert
            else:
                if block.timestamp > crowdfundEndTime:
                    if block.timestamp < presaleStartTime:
                        require stor10
                        require stor10
                        require 100 * stor10 / stor10 == 100
                        revert
                    else:
                        if block.timestamp > presaleEndTime:
                            require stor10
                            require stor10
                            require 100 * stor10 / stor10 == 100
                            revert
                        else:
                            require stor10
                            require stor10
                            require 100 * stor10 / stor10 == 100
                            revert
                else:
                    if block.timestamp < crowdfundStartTime + (504 * 24 * 3600):
                        if block.timestamp < crowdfundStartTime + (336 * 24 * 3600):
                            if block.timestamp < crowdfundStartTime + (168 * 24 * 3600):
                                if block.timestamp < crowdfundStartTime:
                                    require stor10
                                    require stor10
                                    require 100 * stor10 / stor10 == 100
                                    revert
                                else:
                                    if not stor10:
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 15 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 15 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 15 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 15 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 15 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 15 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                    else:
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 15 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 15 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 15 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 15 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 15 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 15 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                            else:
                                if not stor10:
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 20 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 20 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 20 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 20 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 20 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 20 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                else:
                                    require stor10
                                    require 100 * stor10 / stor10 == 100
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 20 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 20 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 20 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 20 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 20 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 20 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                        else:
                            if not stor10:
                                if not msg.value:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 100 * stor10 / 25 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 25 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 25 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                else:
                                    require msg.value
                                    require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 100 * stor10 / 25 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 25 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 25 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                            else:
                                require stor10
                                require 100 * stor10 / stor10 == 100
                                if not msg.value:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 100 * stor10 / 25 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 25 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 25 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                else:
                                    require msg.value
                                    require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 100 * stor10 / 25 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 25 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 25 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                    else:
                        if block.timestamp > crowdfundEndTime:
                            if block.timestamp < crowdfundStartTime + (336 * 24 * 3600):
                                if block.timestamp < crowdfundStartTime + (168 * 24 * 3600):
                                    if block.timestamp < crowdfundStartTime:
                                        require stor10
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        revert
                                    else:
                                        if not stor10:
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                        else:
                                            require stor10
                                            require 100 * stor10 / stor10 == 100
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                else:
                                    if not stor10:
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                    else:
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                            else:
                                if not stor10:
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                else:
                                    require stor10
                                    require 100 * stor10 / stor10 == 100
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                        else:
                            if not stor10:
                                if not msg.value:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 100 * stor10 / 30 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 30 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 30 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, msg.sender);
                                else:
                                    require msg.value
                                    require 100 * stor10 / 30 * msg.value / msg.value == 100 * stor10 / 30
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 100 * stor10 / 30 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 30 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 30 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, msg.sender);
                            else:
                                require stor10
                                require 100 * stor10 / stor10 == 100
                                if not msg.value:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 100 * stor10 / 30 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 30 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 30 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, msg.sender);
                                else:
                                    require msg.value
                                    require 100 * stor10 / 30 * msg.value / msg.value == 100 * stor10 / 30
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 100 * stor10 / 30 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 30 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 30 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, msg.sender);
        else:
            if block.timestamp > presaleEndTime:
                if block.timestamp < crowdfundStartTime:
                    if block.timestamp < presaleStartTime:
                        require stor10
                        require stor10
                        require 100 * stor10 / stor10 == 100
                        revert
                    else:
                        if block.timestamp > presaleEndTime:
                            require stor10
                            require stor10
                            require 100 * stor10 / stor10 == 100
                            revert
                        else:
                            require stor10
                            require stor10
                            require 100 * stor10 / stor10 == 100
                            revert
                else:
                    if block.timestamp > crowdfundEndTime:
                        if block.timestamp < presaleStartTime:
                            require stor10
                            require stor10
                            require 100 * stor10 / stor10 == 100
                            revert
                        else:
                            if block.timestamp > presaleEndTime:
                                require stor10
                                require stor10
                                require 100 * stor10 / stor10 == 100
                                revert
                            else:
                                require stor10
                                require stor10
                                require 100 * stor10 / stor10 == 100
                                revert
                    else:
                        if block.timestamp < crowdfundStartTime + (504 * 24 * 3600):
                            if block.timestamp < crowdfundStartTime + (336 * 24 * 3600):
                                if block.timestamp < crowdfundStartTime + (168 * 24 * 3600):
                                    if block.timestamp < crowdfundStartTime:
                                        require stor10
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        revert
                                    else:
                                        if not stor10:
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                        else:
                                            require stor10
                                            require 100 * stor10 / stor10 == 100
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                else:
                                    if not stor10:
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                    else:
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                            else:
                                if not stor10:
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                else:
                                    require stor10
                                    require 100 * stor10 / stor10 == 100
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                        else:
                            if block.timestamp > crowdfundEndTime:
                                if block.timestamp < crowdfundStartTime + (336 * 24 * 3600):
                                    if block.timestamp < crowdfundStartTime + (168 * 24 * 3600):
                                        if block.timestamp < crowdfundStartTime:
                                            require stor10
                                            require stor10
                                            require 100 * stor10 / stor10 == 100
                                            revert
                                        else:
                                            if not stor10:
                                                if not msg.value:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 100 * stor10 / 15 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 15 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 15 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                                else:
                                                    require msg.value
                                                    require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 100 * stor10 / 15 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 15 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 15 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                            else:
                                                require stor10
                                                require 100 * stor10 / stor10 == 100
                                                if not msg.value:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 100 * stor10 / 15 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 15 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 15 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                                else:
                                                    require msg.value
                                                    require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 100 * stor10 / 15 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 15 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 15 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                    else:
                                        if not stor10:
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 20 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 20 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 20 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 20 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 20 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 20 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                        else:
                                            require stor10
                                            require 100 * stor10 / stor10 == 100
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 20 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 20 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 20 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 20 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 20 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 20 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                else:
                                    if not stor10:
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 25 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 25 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 25 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 25 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 25 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 25 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                    else:
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 25 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 25 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 25 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 25 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 25 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 25 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                            else:
                                if not stor10:
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 30 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 30 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 30 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, msg.sender);
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 30 * msg.value / msg.value == 100 * stor10 / 30
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 30 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 30 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 30 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, msg.sender);
                                else:
                                    require stor10
                                    require 100 * stor10 / stor10 == 100
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 30 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 30 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 30 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, msg.sender);
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 30 * msg.value / msg.value == 100 * stor10 / 30
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 30 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 30 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 30 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, msg.sender);
            else:
                if not stor10:
                    if not msg.value:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 100 * stor10 / 10 * msg.value
                        require ext_call.success
                        if not ext_call.return_data[0]:
                        else:
                            call beneficiaryAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require msg.value + ethRaised >= ethRaised
                            ethRaised += msg.value
                            require (100 * stor10 / 10 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 100 * stor10 / 10 * msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args (100 * stor10 / 10 * msg.value)
                            require ext_call.success
                            emit TokenPurchase(msg.value, 100 * stor10 / 10 * msg.value, msg.sender);
                    else:
                        require msg.value
                        require 100 * stor10 / 10 * msg.value / msg.value == 100 * stor10 / 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 100 * stor10 / 10 * msg.value
                        require ext_call.success
                        if not ext_call.return_data[0]:
                        else:
                            call beneficiaryAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require msg.value + ethRaised >= ethRaised
                            ethRaised += msg.value
                            require (100 * stor10 / 10 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 100 * stor10 / 10 * msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args (100 * stor10 / 10 * msg.value)
                            require ext_call.success
                            emit TokenPurchase(msg.value, 100 * stor10 / 10 * msg.value, msg.sender);
                else:
                    require stor10
                    require 100 * stor10 / stor10 == 100
                    if not msg.value:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 100 * stor10 / 10 * msg.value
                        require ext_call.success
                        if not ext_call.return_data[0]:
                        else:
                            call beneficiaryAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require msg.value + ethRaised >= ethRaised
                            ethRaised += msg.value
                            require (100 * stor10 / 10 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 100 * stor10 / 10 * msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args (100 * stor10 / 10 * msg.value)
                            require ext_call.success
                            emit TokenPurchase(msg.value, 100 * stor10 / 10 * msg.value, msg.sender);
                    else:
                        require msg.value
                        require 100 * stor10 / 10 * msg.value / msg.value == 100 * stor10 / 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 100 * stor10 / 10 * msg.value
                        require ext_call.success
                        if not ext_call.return_data[0]:
                        else:
                            call beneficiaryAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require msg.value + ethRaised >= ethRaised
                            ethRaised += msg.value
                            require (100 * stor10 / 10 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 100 * stor10 / 10 * msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args (100 * stor10 / 10 * msg.value)
                            require ext_call.success
                            emit TokenPurchase(msg.value, 100 * stor10 / 10 * msg.value, msg.sender);
    else:
        if block.timestamp > crowdfundEndTime:
            if block.timestamp < presaleStartTime:
                if block.timestamp < crowdfundStartTime:
                    if block.timestamp < presaleStartTime:
                        require stor10
                        require stor10
                        require 100 * stor10 / stor10 == 100
                        revert
                    else:
                        if block.timestamp > presaleEndTime:
                            require stor10
                            require stor10
                            require 100 * stor10 / stor10 == 100
                            revert
                        else:
                            require stor10
                            require stor10
                            require 100 * stor10 / stor10 == 100
                            revert
                else:
                    if block.timestamp > crowdfundEndTime:
                        if block.timestamp < presaleStartTime:
                            require stor10
                            require stor10
                            require 100 * stor10 / stor10 == 100
                            revert
                        else:
                            if block.timestamp > presaleEndTime:
                                require stor10
                                require stor10
                                require 100 * stor10 / stor10 == 100
                                revert
                            else:
                                require stor10
                                require stor10
                                require 100 * stor10 / stor10 == 100
                                revert
                    else:
                        if block.timestamp < crowdfundStartTime + (504 * 24 * 3600):
                            if block.timestamp < crowdfundStartTime + (336 * 24 * 3600):
                                if block.timestamp < crowdfundStartTime + (168 * 24 * 3600):
                                    if block.timestamp < crowdfundStartTime:
                                        require stor10
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        revert
                                    else:
                                        if not stor10:
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                        else:
                                            require stor10
                                            require 100 * stor10 / stor10 == 100
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                else:
                                    if not stor10:
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                    else:
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                            else:
                                if not stor10:
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                else:
                                    require stor10
                                    require 100 * stor10 / stor10 == 100
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                        else:
                            if block.timestamp > crowdfundEndTime:
                                if block.timestamp < crowdfundStartTime + (336 * 24 * 3600):
                                    if block.timestamp < crowdfundStartTime + (168 * 24 * 3600):
                                        if block.timestamp < crowdfundStartTime:
                                            require stor10
                                            require stor10
                                            require 100 * stor10 / stor10 == 100
                                            revert
                                        else:
                                            if not stor10:
                                                if not msg.value:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 100 * stor10 / 15 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 15 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 15 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                                else:
                                                    require msg.value
                                                    require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 100 * stor10 / 15 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 15 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 15 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                            else:
                                                require stor10
                                                require 100 * stor10 / stor10 == 100
                                                if not msg.value:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 100 * stor10 / 15 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 15 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 15 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                                else:
                                                    require msg.value
                                                    require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 100 * stor10 / 15 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 15 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 15 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                    else:
                                        if not stor10:
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 20 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 20 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 20 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 20 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 20 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 20 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                        else:
                                            require stor10
                                            require 100 * stor10 / stor10 == 100
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 20 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 20 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 20 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 20 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 20 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 20 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                else:
                                    if not stor10:
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 25 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 25 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 25 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 25 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 25 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 25 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                    else:
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 25 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 25 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 25 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 25 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 25 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 25 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                            else:
                                if not stor10:
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 30 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 30 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 30 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, msg.sender);
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 30 * msg.value / msg.value == 100 * stor10 / 30
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 30 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 30 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 30 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, msg.sender);
                                else:
                                    require stor10
                                    require 100 * stor10 / stor10 == 100
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 30 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 30 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 30 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, msg.sender);
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 30 * msg.value / msg.value == 100 * stor10 / 30
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 30 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 30 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 30 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, msg.sender);
            else:
                if block.timestamp > presaleEndTime:
                    if block.timestamp < crowdfundStartTime:
                        if block.timestamp < presaleStartTime:
                            require stor10
                            require stor10
                            require 100 * stor10 / stor10 == 100
                            revert
                        else:
                            if block.timestamp > presaleEndTime:
                                require stor10
                                require stor10
                                require 100 * stor10 / stor10 == 100
                                revert
                            else:
                                require stor10
                                require stor10
                                require 100 * stor10 / stor10 == 100
                                revert
                    else:
                        if block.timestamp > crowdfundEndTime:
                            if block.timestamp < presaleStartTime:
                                require stor10
                                require stor10
                                require 100 * stor10 / stor10 == 100
                                revert
                            else:
                                if block.timestamp > presaleEndTime:
                                    require stor10
                                    require stor10
                                    require 100 * stor10 / stor10 == 100
                                    revert
                                else:
                                    require stor10
                                    require stor10
                                    require 100 * stor10 / stor10 == 100
                                    revert
                        else:
                            if block.timestamp < crowdfundStartTime + (504 * 24 * 3600):
                                if block.timestamp < crowdfundStartTime + (336 * 24 * 3600):
                                    if block.timestamp < crowdfundStartTime + (168 * 24 * 3600):
                                        if block.timestamp < crowdfundStartTime:
                                            require stor10
                                            require stor10
                                            require 100 * stor10 / stor10 == 100
                                            revert
                                        else:
                                            if not stor10:
                                                if not msg.value:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 100 * stor10 / 15 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 15 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 15 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                                else:
                                                    require msg.value
                                                    require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 100 * stor10 / 15 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 15 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 15 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                            else:
                                                require stor10
                                                require 100 * stor10 / stor10 == 100
                                                if not msg.value:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 100 * stor10 / 15 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 15 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 15 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                                else:
                                                    require msg.value
                                                    require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 100 * stor10 / 15 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 15 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 15 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                    else:
                                        if not stor10:
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 20 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 20 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 20 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 20 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 20 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 20 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                        else:
                                            require stor10
                                            require 100 * stor10 / stor10 == 100
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 20 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 20 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 20 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 20 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 20 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 20 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                else:
                                    if not stor10:
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 25 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 25 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 25 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 25 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 25 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 25 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                    else:
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 25 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 25 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 25 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 25 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 25 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 25 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                            else:
                                if block.timestamp > crowdfundEndTime:
                                    if block.timestamp < crowdfundStartTime + (336 * 24 * 3600):
                                        if block.timestamp < crowdfundStartTime + (168 * 24 * 3600):
                                            if block.timestamp < crowdfundStartTime:
                                                require stor10
                                                require stor10
                                                require 100 * stor10 / stor10 == 100
                                                revert
                                            else:
                                                if not stor10:
                                                    if not msg.value:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, 100 * stor10 / 15 * msg.value
                                                        require ext_call.success
                                                        if not ext_call.return_data[0]:
                                                        else:
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            require msg.value + ethRaised >= ethRaised
                                                            ethRaised += msg.value
                                                            require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                            tokenSold += 100 * stor10 / 15 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                                 gas gas_remaining - 710 wei
                                                                args (100 * stor10 / 15 * msg.value)
                                                            require ext_call.success
                                                            emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                                    else:
                                                        require msg.value
                                                        require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, 100 * stor10 / 15 * msg.value
                                                        require ext_call.success
                                                        if not ext_call.return_data[0]:
                                                        else:
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            require msg.value + ethRaised >= ethRaised
                                                            ethRaised += msg.value
                                                            require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                            tokenSold += 100 * stor10 / 15 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                                 gas gas_remaining - 710 wei
                                                                args (100 * stor10 / 15 * msg.value)
                                                            require ext_call.success
                                                            emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                                else:
                                                    require stor10
                                                    require 100 * stor10 / stor10 == 100
                                                    if not msg.value:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, 100 * stor10 / 15 * msg.value
                                                        require ext_call.success
                                                        if not ext_call.return_data[0]:
                                                        else:
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            require msg.value + ethRaised >= ethRaised
                                                            ethRaised += msg.value
                                                            require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                            tokenSold += 100 * stor10 / 15 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                                 gas gas_remaining - 710 wei
                                                                args (100 * stor10 / 15 * msg.value)
                                                            require ext_call.success
                                                            emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                                    else:
                                                        require msg.value
                                                        require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, 100 * stor10 / 15 * msg.value
                                                        require ext_call.success
                                                        if not ext_call.return_data[0]:
                                                        else:
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            require msg.value + ethRaised >= ethRaised
                                                            ethRaised += msg.value
                                                            require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                            tokenSold += 100 * stor10 / 15 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                                 gas gas_remaining - 710 wei
                                                                args (100 * stor10 / 15 * msg.value)
                                                            require ext_call.success
                                                            emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                        else:
                                            if not stor10:
                                                if not msg.value:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 100 * stor10 / 20 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 20 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 20 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                                else:
                                                    require msg.value
                                                    require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 100 * stor10 / 20 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 20 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 20 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                            else:
                                                require stor10
                                                require 100 * stor10 / stor10 == 100
                                                if not msg.value:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 100 * stor10 / 20 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 20 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 20 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                                else:
                                                    require msg.value
                                                    require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 100 * stor10 / 20 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 20 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 20 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                    else:
                                        if not stor10:
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 25 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 25 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 25 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 25 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 25 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 25 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                        else:
                                            require stor10
                                            require 100 * stor10 / stor10 == 100
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 25 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 25 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 25 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 25 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 25 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 25 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                else:
                                    if not stor10:
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 30 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 30 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 30 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, msg.sender);
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 30 * msg.value / msg.value == 100 * stor10 / 30
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 30 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 30 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 30 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, msg.sender);
                                    else:
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 30 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 30 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 30 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, msg.sender);
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 30 * msg.value / msg.value == 100 * stor10 / 30
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 30 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 30 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 30 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, msg.sender);
                else:
                    if not stor10:
                        if not msg.value:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 100 * stor10 / 10 * msg.value
                            require ext_call.success
                            if not ext_call.return_data[0]:
                            else:
                                call beneficiaryAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require msg.value + ethRaised >= ethRaised
                                ethRaised += msg.value
                                require (100 * stor10 / 10 * msg.value) + tokenSold >= tokenSold
                                tokenSold += 100 * stor10 / 10 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                     gas gas_remaining - 710 wei
                                    args (100 * stor10 / 10 * msg.value)
                                require ext_call.success
                                emit TokenPurchase(msg.value, 100 * stor10 / 10 * msg.value, msg.sender);
                        else:
                            require msg.value
                            require 100 * stor10 / 10 * msg.value / msg.value == 100 * stor10 / 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 100 * stor10 / 10 * msg.value
                            require ext_call.success
                            if not ext_call.return_data[0]:
                            else:
                                call beneficiaryAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require msg.value + ethRaised >= ethRaised
                                ethRaised += msg.value
                                require (100 * stor10 / 10 * msg.value) + tokenSold >= tokenSold
                                tokenSold += 100 * stor10 / 10 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                     gas gas_remaining - 710 wei
                                    args (100 * stor10 / 10 * msg.value)
                                require ext_call.success
                                emit TokenPurchase(msg.value, 100 * stor10 / 10 * msg.value, msg.sender);
                    else:
                        require stor10
                        require 100 * stor10 / stor10 == 100
                        if not msg.value:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 100 * stor10 / 10 * msg.value
                            require ext_call.success
                            if not ext_call.return_data[0]:
                            else:
                                call beneficiaryAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require msg.value + ethRaised >= ethRaised
                                ethRaised += msg.value
                                require (100 * stor10 / 10 * msg.value) + tokenSold >= tokenSold
                                tokenSold += 100 * stor10 / 10 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                     gas gas_remaining - 710 wei
                                    args (100 * stor10 / 10 * msg.value)
                                require ext_call.success
                                emit TokenPurchase(msg.value, 100 * stor10 / 10 * msg.value, msg.sender);
                        else:
                            require msg.value
                            require 100 * stor10 / 10 * msg.value / msg.value == 100 * stor10 / 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 100 * stor10 / 10 * msg.value
                            require ext_call.success
                            if not ext_call.return_data[0]:
                            else:
                                call beneficiaryAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require msg.value + ethRaised >= ethRaised
                                ethRaised += msg.value
                                require (100 * stor10 / 10 * msg.value) + tokenSold >= tokenSold
                                tokenSold += 100 * stor10 / 10 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                     gas gas_remaining - 710 wei
                                    args (100 * stor10 / 10 * msg.value)
                                require ext_call.success
                                emit TokenPurchase(msg.value, 100 * stor10 / 10 * msg.value, msg.sender);
        else:
            if block.timestamp < crowdfundStartTime:
                if block.timestamp < presaleStartTime:
                    require stor10
                    require stor10
                    require 100 * stor10 / stor10 == 100
                    revert
                else:
                    if block.timestamp > presaleEndTime:
                        require stor10
                        require stor10
                        require 100 * stor10 / stor10 == 100
                        revert
                    else:
                        require stor10
                        require stor10
                        require 100 * stor10 / stor10 == 100
                        revert
            else:
                if block.timestamp > crowdfundEndTime:
                    if block.timestamp < presaleStartTime:
                        require stor10
                        require stor10
                        require 100 * stor10 / stor10 == 100
                        revert
                    else:
                        if block.timestamp > presaleEndTime:
                            require stor10
                            require stor10
                            require 100 * stor10 / stor10 == 100
                            revert
                        else:
                            require stor10
                            require stor10
                            require 100 * stor10 / stor10 == 100
                            revert
                else:
                    if block.timestamp < crowdfundStartTime + (504 * 24 * 3600):
                        if block.timestamp < crowdfundStartTime + (336 * 24 * 3600):
                            if block.timestamp < crowdfundStartTime + (168 * 24 * 3600):
                                if block.timestamp < crowdfundStartTime:
                                    require stor10
                                    require stor10
                                    require 100 * stor10 / stor10 == 100
                                    revert
                                else:
                                    if not stor10:
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 15 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 15 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 15 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 15 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 15 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 15 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                    else:
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 15 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 15 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 15 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 15 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 15 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 15 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                            else:
                                if not stor10:
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 20 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 20 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 20 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 20 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 20 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 20 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                else:
                                    require stor10
                                    require 100 * stor10 / stor10 == 100
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 20 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 20 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 20 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 20 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 20 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 20 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                        else:
                            if not stor10:
                                if not msg.value:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 100 * stor10 / 25 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 25 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 25 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                else:
                                    require msg.value
                                    require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 100 * stor10 / 25 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 25 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 25 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                            else:
                                require stor10
                                require 100 * stor10 / stor10 == 100
                                if not msg.value:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 100 * stor10 / 25 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 25 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 25 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                else:
                                    require msg.value
                                    require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 100 * stor10 / 25 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 25 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 25 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                    else:
                        if block.timestamp > crowdfundEndTime:
                            if block.timestamp < crowdfundStartTime + (336 * 24 * 3600):
                                if block.timestamp < crowdfundStartTime + (168 * 24 * 3600):
                                    if block.timestamp < crowdfundStartTime:
                                        require stor10
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        revert
                                    else:
                                        if not stor10:
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                        else:
                                            require stor10
                                            require 100 * stor10 / stor10 == 100
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, msg.sender);
                                else:
                                    if not stor10:
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                    else:
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, msg.sender);
                            else:
                                if not stor10:
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                else:
                                    require stor10
                                    require 100 * stor10 / stor10 == 100
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, msg.sender);
                        else:
                            if not stor10:
                                if not msg.value:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 100 * stor10 / 30 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 30 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 30 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, msg.sender);
                                else:
                                    require msg.value
                                    require 100 * stor10 / 30 * msg.value / msg.value == 100 * stor10 / 30
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 100 * stor10 / 30 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 30 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 30 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, msg.sender);
                            else:
                                require stor10
                                require 100 * stor10 / stor10 == 100
                                if not msg.value:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 100 * stor10 / 30 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 30 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 30 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, msg.sender);
                                else:
                                    require msg.value
                                    require 100 * stor10 / 30 * msg.value / msg.value == 100 * stor10 / 30
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 100 * stor10 / 30 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 30 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 30 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, msg.sender);
}

function buyTokens(address arg1) payable {
    require block.timestamp >= presaleStartTime
    require block.timestamp <= crowdfundEndTime
    require founderAddress != msg.sender
    require arg1
    require msg.value
    require 1 == bool(stor8)
    if block.timestamp < crowdfundStartTime:
        if block.timestamp < presaleStartTime:
            if block.timestamp < crowdfundStartTime:
                if block.timestamp < presaleStartTime:
                    require stor10
                    require stor10
                    require 100 * stor10 / stor10 == 100
                    revert
                else:
                    if block.timestamp > presaleEndTime:
                        require stor10
                        require stor10
                        require 100 * stor10 / stor10 == 100
                        revert
                    else:
                        require stor10
                        require stor10
                        require 100 * stor10 / stor10 == 100
                        revert
            else:
                if block.timestamp > crowdfundEndTime:
                    if block.timestamp < presaleStartTime:
                        require stor10
                        require stor10
                        require 100 * stor10 / stor10 == 100
                        revert
                    else:
                        if block.timestamp > presaleEndTime:
                            require stor10
                            require stor10
                            require 100 * stor10 / stor10 == 100
                            revert
                        else:
                            require stor10
                            require stor10
                            require 100 * stor10 / stor10 == 100
                            revert
                else:
                    if block.timestamp < crowdfundStartTime + (504 * 24 * 3600):
                        if block.timestamp < crowdfundStartTime + (336 * 24 * 3600):
                            if block.timestamp < crowdfundStartTime + (168 * 24 * 3600):
                                if block.timestamp < crowdfundStartTime:
                                    require stor10
                                    require stor10
                                    require 100 * stor10 / stor10 == 100
                                    revert
                                else:
                                    if not stor10:
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 15 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 15 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 15 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                return 1
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 15 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 15 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 15 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                return 1
                                    else:
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 15 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 15 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 15 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                return 1
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 15 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 15 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 15 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                return 1
                            else:
                                if not stor10:
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 20 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 20 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 20 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                            return 1
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 20 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 20 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 20 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                            return 1
                                else:
                                    require stor10
                                    require 100 * stor10 / stor10 == 100
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 20 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 20 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 20 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                            return 1
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 20 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 20 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 20 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                            return 1
                        else:
                            if not stor10:
                                if not msg.value:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 100 * stor10 / 25 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                        return 0
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 25 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 25 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                        return 1
                                else:
                                    require msg.value
                                    require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 100 * stor10 / 25 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                        return 0
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 25 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 25 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                        return 1
                            else:
                                require stor10
                                require 100 * stor10 / stor10 == 100
                                if not msg.value:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 100 * stor10 / 25 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                        return 0
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 25 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 25 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                        return 1
                                else:
                                    require msg.value
                                    require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 100 * stor10 / 25 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                        return 0
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 25 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 25 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                        return 1
                    else:
                        if block.timestamp > crowdfundEndTime:
                            if block.timestamp < crowdfundStartTime + (336 * 24 * 3600):
                                if block.timestamp < crowdfundStartTime + (168 * 24 * 3600):
                                    if block.timestamp < crowdfundStartTime:
                                        require stor10
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        revert
                                    else:
                                        if not stor10:
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                    return 1
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                    return 1
                                        else:
                                            require stor10
                                            require 100 * stor10 / stor10 == 100
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                    return 1
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                    return 1
                                else:
                                    if not stor10:
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                return 1
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                return 1
                                    else:
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                return 1
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                return 1
                            else:
                                if not stor10:
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                            return 1
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                            return 1
                                else:
                                    require stor10
                                    require 100 * stor10 / stor10 == 100
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                            return 1
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                            return 1
                        else:
                            if not stor10:
                                if not msg.value:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 100 * stor10 / 30 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                        return 0
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 30 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 30 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, arg1);
                                        return 1
                                else:
                                    require msg.value
                                    require 100 * stor10 / 30 * msg.value / msg.value == 100 * stor10 / 30
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 100 * stor10 / 30 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                        return 0
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 30 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 30 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, arg1);
                                        return 1
                            else:
                                require stor10
                                require 100 * stor10 / stor10 == 100
                                if not msg.value:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 100 * stor10 / 30 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                        return 0
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 30 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 30 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, arg1);
                                        return 1
                                else:
                                    require msg.value
                                    require 100 * stor10 / 30 * msg.value / msg.value == 100 * stor10 / 30
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 100 * stor10 / 30 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                        return 0
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 30 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 30 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, arg1);
                                        return 1
        else:
            if block.timestamp > presaleEndTime:
                if block.timestamp < crowdfundStartTime:
                    if block.timestamp < presaleStartTime:
                        require stor10
                        require stor10
                        require 100 * stor10 / stor10 == 100
                        revert
                    else:
                        if block.timestamp > presaleEndTime:
                            require stor10
                            require stor10
                            require 100 * stor10 / stor10 == 100
                            revert
                        else:
                            require stor10
                            require stor10
                            require 100 * stor10 / stor10 == 100
                            revert
                else:
                    if block.timestamp > crowdfundEndTime:
                        if block.timestamp < presaleStartTime:
                            require stor10
                            require stor10
                            require 100 * stor10 / stor10 == 100
                            revert
                        else:
                            if block.timestamp > presaleEndTime:
                                require stor10
                                require stor10
                                require 100 * stor10 / stor10 == 100
                                revert
                            else:
                                require stor10
                                require stor10
                                require 100 * stor10 / stor10 == 100
                                revert
                    else:
                        if block.timestamp < crowdfundStartTime + (504 * 24 * 3600):
                            if block.timestamp < crowdfundStartTime + (336 * 24 * 3600):
                                if block.timestamp < crowdfundStartTime + (168 * 24 * 3600):
                                    if block.timestamp < crowdfundStartTime:
                                        require stor10
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        revert
                                    else:
                                        if not stor10:
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                    return 1
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                    return 1
                                        else:
                                            require stor10
                                            require 100 * stor10 / stor10 == 100
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                    return 1
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                    return 1
                                else:
                                    if not stor10:
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                return 1
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                return 1
                                    else:
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                return 1
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                return 1
                            else:
                                if not stor10:
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                            return 1
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                            return 1
                                else:
                                    require stor10
                                    require 100 * stor10 / stor10 == 100
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                            return 1
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                            return 1
                        else:
                            if block.timestamp > crowdfundEndTime:
                                if block.timestamp < crowdfundStartTime + (336 * 24 * 3600):
                                    if block.timestamp < crowdfundStartTime + (168 * 24 * 3600):
                                        if block.timestamp < crowdfundStartTime:
                                            require stor10
                                            require stor10
                                            require 100 * stor10 / stor10 == 100
                                            revert
                                        else:
                                            if not stor10:
                                                if not msg.value:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), 100 * stor10 / 15 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 15 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 15 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                        return 1
                                                else:
                                                    require msg.value
                                                    require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), 100 * stor10 / 15 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 15 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 15 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                        return 1
                                            else:
                                                require stor10
                                                require 100 * stor10 / stor10 == 100
                                                if not msg.value:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), 100 * stor10 / 15 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 15 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 15 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                        return 1
                                                else:
                                                    require msg.value
                                                    require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), 100 * stor10 / 15 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 15 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 15 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                        return 1
                                    else:
                                        if not stor10:
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 20 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 20 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 20 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                    return 1
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 20 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 20 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 20 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                    return 1
                                        else:
                                            require stor10
                                            require 100 * stor10 / stor10 == 100
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 20 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 20 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 20 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                    return 1
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 20 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 20 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 20 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                    return 1
                                else:
                                    if not stor10:
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 25 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 25 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 25 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                                return 1
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 25 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 25 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 25 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                                return 1
                                    else:
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 25 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 25 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 25 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                                return 1
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 25 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 25 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 25 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                                return 1
                            else:
                                if not stor10:
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 30 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 30 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 30 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, arg1);
                                            return 1
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 30 * msg.value / msg.value == 100 * stor10 / 30
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 30 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 30 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 30 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, arg1);
                                            return 1
                                else:
                                    require stor10
                                    require 100 * stor10 / stor10 == 100
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 30 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 30 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 30 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, arg1);
                                            return 1
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 30 * msg.value / msg.value == 100 * stor10 / 30
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 30 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 30 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 30 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, arg1);
                                            return 1
            else:
                if not stor10:
                    if not msg.value:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 100 * stor10 / 10 * msg.value
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            return 0
                        else:
                            call beneficiaryAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require msg.value + ethRaised >= ethRaised
                            ethRaised += msg.value
                            require (100 * stor10 / 10 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 100 * stor10 / 10 * msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args (100 * stor10 / 10 * msg.value)
                            require ext_call.success
                            emit TokenPurchase(msg.value, 100 * stor10 / 10 * msg.value, arg1);
                            return 1
                    else:
                        require msg.value
                        require 100 * stor10 / 10 * msg.value / msg.value == 100 * stor10 / 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 100 * stor10 / 10 * msg.value
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            return 0
                        else:
                            call beneficiaryAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require msg.value + ethRaised >= ethRaised
                            ethRaised += msg.value
                            require (100 * stor10 / 10 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 100 * stor10 / 10 * msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args (100 * stor10 / 10 * msg.value)
                            require ext_call.success
                            emit TokenPurchase(msg.value, 100 * stor10 / 10 * msg.value, arg1);
                            return 1
                else:
                    require stor10
                    require 100 * stor10 / stor10 == 100
                    if not msg.value:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 100 * stor10 / 10 * msg.value
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            return 0
                        else:
                            call beneficiaryAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require msg.value + ethRaised >= ethRaised
                            ethRaised += msg.value
                            require (100 * stor10 / 10 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 100 * stor10 / 10 * msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args (100 * stor10 / 10 * msg.value)
                            require ext_call.success
                            emit TokenPurchase(msg.value, 100 * stor10 / 10 * msg.value, arg1);
                            return 1
                    else:
                        require msg.value
                        require 100 * stor10 / 10 * msg.value / msg.value == 100 * stor10 / 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 100 * stor10 / 10 * msg.value
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            return 0
                        else:
                            call beneficiaryAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require msg.value + ethRaised >= ethRaised
                            ethRaised += msg.value
                            require (100 * stor10 / 10 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 100 * stor10 / 10 * msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args (100 * stor10 / 10 * msg.value)
                            require ext_call.success
                            emit TokenPurchase(msg.value, 100 * stor10 / 10 * msg.value, arg1);
                            return 1
    else:
        if block.timestamp > crowdfundEndTime:
            if block.timestamp < presaleStartTime:
                if block.timestamp < crowdfundStartTime:
                    if block.timestamp < presaleStartTime:
                        require stor10
                        require stor10
                        require 100 * stor10 / stor10 == 100
                        revert
                    else:
                        if block.timestamp > presaleEndTime:
                            require stor10
                            require stor10
                            require 100 * stor10 / stor10 == 100
                            revert
                        else:
                            require stor10
                            require stor10
                            require 100 * stor10 / stor10 == 100
                            revert
                else:
                    if block.timestamp > crowdfundEndTime:
                        if block.timestamp < presaleStartTime:
                            require stor10
                            require stor10
                            require 100 * stor10 / stor10 == 100
                            revert
                        else:
                            if block.timestamp > presaleEndTime:
                                require stor10
                                require stor10
                                require 100 * stor10 / stor10 == 100
                                revert
                            else:
                                require stor10
                                require stor10
                                require 100 * stor10 / stor10 == 100
                                revert
                    else:
                        if block.timestamp < crowdfundStartTime + (504 * 24 * 3600):
                            if block.timestamp < crowdfundStartTime + (336 * 24 * 3600):
                                if block.timestamp < crowdfundStartTime + (168 * 24 * 3600):
                                    if block.timestamp < crowdfundStartTime:
                                        require stor10
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        revert
                                    else:
                                        if not stor10:
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                    return 1
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                    return 1
                                        else:
                                            require stor10
                                            require 100 * stor10 / stor10 == 100
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                    return 1
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                    return 1
                                else:
                                    if not stor10:
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                return 1
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                return 1
                                    else:
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                return 1
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                return 1
                            else:
                                if not stor10:
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                            return 1
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                            return 1
                                else:
                                    require stor10
                                    require 100 * stor10 / stor10 == 100
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                            return 1
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                            return 1
                        else:
                            if block.timestamp > crowdfundEndTime:
                                if block.timestamp < crowdfundStartTime + (336 * 24 * 3600):
                                    if block.timestamp < crowdfundStartTime + (168 * 24 * 3600):
                                        if block.timestamp < crowdfundStartTime:
                                            require stor10
                                            require stor10
                                            require 100 * stor10 / stor10 == 100
                                            revert
                                        else:
                                            if not stor10:
                                                if not msg.value:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), 100 * stor10 / 15 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 15 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 15 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                        return 1
                                                else:
                                                    require msg.value
                                                    require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), 100 * stor10 / 15 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 15 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 15 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                        return 1
                                            else:
                                                require stor10
                                                require 100 * stor10 / stor10 == 100
                                                if not msg.value:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), 100 * stor10 / 15 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 15 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 15 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                        return 1
                                                else:
                                                    require msg.value
                                                    require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), 100 * stor10 / 15 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 15 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 15 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                        return 1
                                    else:
                                        if not stor10:
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 20 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 20 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 20 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                    return 1
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 20 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 20 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 20 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                    return 1
                                        else:
                                            require stor10
                                            require 100 * stor10 / stor10 == 100
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 20 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 20 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 20 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                    return 1
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 20 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 20 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 20 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                    return 1
                                else:
                                    if not stor10:
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 25 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 25 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 25 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                                return 1
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 25 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 25 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 25 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                                return 1
                                    else:
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 25 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 25 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 25 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                                return 1
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 25 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 25 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 25 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                                return 1
                            else:
                                if not stor10:
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 30 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 30 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 30 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, arg1);
                                            return 1
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 30 * msg.value / msg.value == 100 * stor10 / 30
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 30 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 30 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 30 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, arg1);
                                            return 1
                                else:
                                    require stor10
                                    require 100 * stor10 / stor10 == 100
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 30 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 30 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 30 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, arg1);
                                            return 1
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 30 * msg.value / msg.value == 100 * stor10 / 30
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 30 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 30 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 30 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, arg1);
                                            return 1
            else:
                if block.timestamp > presaleEndTime:
                    if block.timestamp < crowdfundStartTime:
                        if block.timestamp < presaleStartTime:
                            require stor10
                            require stor10
                            require 100 * stor10 / stor10 == 100
                            revert
                        else:
                            if block.timestamp > presaleEndTime:
                                require stor10
                                require stor10
                                require 100 * stor10 / stor10 == 100
                                revert
                            else:
                                require stor10
                                require stor10
                                require 100 * stor10 / stor10 == 100
                                revert
                    else:
                        if block.timestamp > crowdfundEndTime:
                            if block.timestamp < presaleStartTime:
                                require stor10
                                require stor10
                                require 100 * stor10 / stor10 == 100
                                revert
                            else:
                                if block.timestamp > presaleEndTime:
                                    require stor10
                                    require stor10
                                    require 100 * stor10 / stor10 == 100
                                    revert
                                else:
                                    require stor10
                                    require stor10
                                    require 100 * stor10 / stor10 == 100
                                    revert
                        else:
                            if block.timestamp < crowdfundStartTime + (504 * 24 * 3600):
                                if block.timestamp < crowdfundStartTime + (336 * 24 * 3600):
                                    if block.timestamp < crowdfundStartTime + (168 * 24 * 3600):
                                        if block.timestamp < crowdfundStartTime:
                                            require stor10
                                            require stor10
                                            require 100 * stor10 / stor10 == 100
                                            revert
                                        else:
                                            if not stor10:
                                                if not msg.value:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), 100 * stor10 / 15 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 15 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 15 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                        return 1
                                                else:
                                                    require msg.value
                                                    require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), 100 * stor10 / 15 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 15 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 15 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                        return 1
                                            else:
                                                require stor10
                                                require 100 * stor10 / stor10 == 100
                                                if not msg.value:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), 100 * stor10 / 15 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 15 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 15 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                        return 1
                                                else:
                                                    require msg.value
                                                    require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), 100 * stor10 / 15 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 15 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 15 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                        return 1
                                    else:
                                        if not stor10:
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 20 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 20 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 20 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                    return 1
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 20 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 20 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 20 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                    return 1
                                        else:
                                            require stor10
                                            require 100 * stor10 / stor10 == 100
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 20 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 20 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 20 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                    return 1
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 20 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 20 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 20 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                    return 1
                                else:
                                    if not stor10:
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 25 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 25 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 25 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                                return 1
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 25 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 25 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 25 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                                return 1
                                    else:
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 25 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 25 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 25 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                                return 1
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 25 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 25 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 25 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                                return 1
                            else:
                                if block.timestamp > crowdfundEndTime:
                                    if block.timestamp < crowdfundStartTime + (336 * 24 * 3600):
                                        if block.timestamp < crowdfundStartTime + (168 * 24 * 3600):
                                            if block.timestamp < crowdfundStartTime:
                                                require stor10
                                                require stor10
                                                require 100 * stor10 / stor10 == 100
                                                revert
                                            else:
                                                if not stor10:
                                                    if not msg.value:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), 100 * stor10 / 15 * msg.value
                                                        require ext_call.success
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        else:
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            require msg.value + ethRaised >= ethRaised
                                                            ethRaised += msg.value
                                                            require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                            tokenSold += 100 * stor10 / 15 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                                 gas gas_remaining - 710 wei
                                                                args (100 * stor10 / 15 * msg.value)
                                                            require ext_call.success
                                                            emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                            return 1
                                                    else:
                                                        require msg.value
                                                        require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), 100 * stor10 / 15 * msg.value
                                                        require ext_call.success
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        else:
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            require msg.value + ethRaised >= ethRaised
                                                            ethRaised += msg.value
                                                            require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                            tokenSold += 100 * stor10 / 15 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                                 gas gas_remaining - 710 wei
                                                                args (100 * stor10 / 15 * msg.value)
                                                            require ext_call.success
                                                            emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                            return 1
                                                else:
                                                    require stor10
                                                    require 100 * stor10 / stor10 == 100
                                                    if not msg.value:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), 100 * stor10 / 15 * msg.value
                                                        require ext_call.success
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        else:
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            require msg.value + ethRaised >= ethRaised
                                                            ethRaised += msg.value
                                                            require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                            tokenSold += 100 * stor10 / 15 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                                 gas gas_remaining - 710 wei
                                                                args (100 * stor10 / 15 * msg.value)
                                                            require ext_call.success
                                                            emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                            return 1
                                                    else:
                                                        require msg.value
                                                        require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), 100 * stor10 / 15 * msg.value
                                                        require ext_call.success
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        else:
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            require msg.value + ethRaised >= ethRaised
                                                            ethRaised += msg.value
                                                            require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                            tokenSold += 100 * stor10 / 15 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                                 gas gas_remaining - 710 wei
                                                                args (100 * stor10 / 15 * msg.value)
                                                            require ext_call.success
                                                            emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                            return 1
                                        else:
                                            if not stor10:
                                                if not msg.value:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), 100 * stor10 / 20 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 20 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 20 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                        return 1
                                                else:
                                                    require msg.value
                                                    require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), 100 * stor10 / 20 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 20 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 20 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                        return 1
                                            else:
                                                require stor10
                                                require 100 * stor10 / stor10 == 100
                                                if not msg.value:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), 100 * stor10 / 20 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 20 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 20 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                        return 1
                                                else:
                                                    require msg.value
                                                    require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), 100 * stor10 / 20 * msg.value
                                                    require ext_call.success
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        require msg.value + ethRaised >= ethRaised
                                                        ethRaised += msg.value
                                                        require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                        tokenSold += 100 * stor10 / 20 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args (100 * stor10 / 20 * msg.value)
                                                        require ext_call.success
                                                        emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                        return 1
                                    else:
                                        if not stor10:
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 25 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 25 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 25 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                                    return 1
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 25 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 25 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 25 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                                    return 1
                                        else:
                                            require stor10
                                            require 100 * stor10 / stor10 == 100
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 25 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 25 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 25 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                                    return 1
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 25 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 25 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 25 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                                    return 1
                                else:
                                    if not stor10:
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 30 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 30 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 30 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, arg1);
                                                return 1
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 30 * msg.value / msg.value == 100 * stor10 / 30
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 30 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 30 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 30 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, arg1);
                                                return 1
                                    else:
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 30 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 30 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 30 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, arg1);
                                                return 1
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 30 * msg.value / msg.value == 100 * stor10 / 30
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 30 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 30 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 30 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, arg1);
                                                return 1
                else:
                    if not stor10:
                        if not msg.value:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 100 * stor10 / 10 * msg.value
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                return 0
                            else:
                                call beneficiaryAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require msg.value + ethRaised >= ethRaised
                                ethRaised += msg.value
                                require (100 * stor10 / 10 * msg.value) + tokenSold >= tokenSold
                                tokenSold += 100 * stor10 / 10 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                     gas gas_remaining - 710 wei
                                    args (100 * stor10 / 10 * msg.value)
                                require ext_call.success
                                emit TokenPurchase(msg.value, 100 * stor10 / 10 * msg.value, arg1);
                                return 1
                        else:
                            require msg.value
                            require 100 * stor10 / 10 * msg.value / msg.value == 100 * stor10 / 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 100 * stor10 / 10 * msg.value
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                return 0
                            else:
                                call beneficiaryAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require msg.value + ethRaised >= ethRaised
                                ethRaised += msg.value
                                require (100 * stor10 / 10 * msg.value) + tokenSold >= tokenSold
                                tokenSold += 100 * stor10 / 10 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                     gas gas_remaining - 710 wei
                                    args (100 * stor10 / 10 * msg.value)
                                require ext_call.success
                                emit TokenPurchase(msg.value, 100 * stor10 / 10 * msg.value, arg1);
                                return 1
                    else:
                        require stor10
                        require 100 * stor10 / stor10 == 100
                        if not msg.value:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 100 * stor10 / 10 * msg.value
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                return 0
                            else:
                                call beneficiaryAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require msg.value + ethRaised >= ethRaised
                                ethRaised += msg.value
                                require (100 * stor10 / 10 * msg.value) + tokenSold >= tokenSold
                                tokenSold += 100 * stor10 / 10 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                     gas gas_remaining - 710 wei
                                    args (100 * stor10 / 10 * msg.value)
                                require ext_call.success
                                emit TokenPurchase(msg.value, 100 * stor10 / 10 * msg.value, arg1);
                                return 1
                        else:
                            require msg.value
                            require 100 * stor10 / 10 * msg.value / msg.value == 100 * stor10 / 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 100 * stor10 / 10 * msg.value
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                return 0
                            else:
                                call beneficiaryAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require msg.value + ethRaised >= ethRaised
                                ethRaised += msg.value
                                require (100 * stor10 / 10 * msg.value) + tokenSold >= tokenSold
                                tokenSold += 100 * stor10 / 10 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                     gas gas_remaining - 710 wei
                                    args (100 * stor10 / 10 * msg.value)
                                require ext_call.success
                                emit TokenPurchase(msg.value, 100 * stor10 / 10 * msg.value, arg1);
                                return 1
        else:
            if block.timestamp < crowdfundStartTime:
                if block.timestamp < presaleStartTime:
                    require stor10
                    require stor10
                    require 100 * stor10 / stor10 == 100
                    revert
                else:
                    if block.timestamp > presaleEndTime:
                        require stor10
                        require stor10
                        require 100 * stor10 / stor10 == 100
                        revert
                    else:
                        require stor10
                        require stor10
                        require 100 * stor10 / stor10 == 100
                        revert
            else:
                if block.timestamp > crowdfundEndTime:
                    if block.timestamp < presaleStartTime:
                        require stor10
                        require stor10
                        require 100 * stor10 / stor10 == 100
                        revert
                    else:
                        if block.timestamp > presaleEndTime:
                            require stor10
                            require stor10
                            require 100 * stor10 / stor10 == 100
                            revert
                        else:
                            require stor10
                            require stor10
                            require 100 * stor10 / stor10 == 100
                            revert
                else:
                    if block.timestamp < crowdfundStartTime + (504 * 24 * 3600):
                        if block.timestamp < crowdfundStartTime + (336 * 24 * 3600):
                            if block.timestamp < crowdfundStartTime + (168 * 24 * 3600):
                                if block.timestamp < crowdfundStartTime:
                                    require stor10
                                    require stor10
                                    require 100 * stor10 / stor10 == 100
                                    revert
                                else:
                                    if not stor10:
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 15 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 15 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 15 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                return 1
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 15 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 15 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 15 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                return 1
                                    else:
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 15 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 15 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 15 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                return 1
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 15 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 15 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 15 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                return 1
                            else:
                                if not stor10:
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 20 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 20 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 20 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                            return 1
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 20 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 20 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 20 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                            return 1
                                else:
                                    require stor10
                                    require 100 * stor10 / stor10 == 100
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 20 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 20 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 20 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                            return 1
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 20 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 20 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 20 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                            return 1
                        else:
                            if not stor10:
                                if not msg.value:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 100 * stor10 / 25 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                        return 0
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 25 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 25 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                        return 1
                                else:
                                    require msg.value
                                    require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 100 * stor10 / 25 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                        return 0
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 25 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 25 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                        return 1
                            else:
                                require stor10
                                require 100 * stor10 / stor10 == 100
                                if not msg.value:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 100 * stor10 / 25 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                        return 0
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 25 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 25 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                        return 1
                                else:
                                    require msg.value
                                    require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 100 * stor10 / 25 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                        return 0
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 25 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 25 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                        return 1
                    else:
                        if block.timestamp > crowdfundEndTime:
                            if block.timestamp < crowdfundStartTime + (336 * 24 * 3600):
                                if block.timestamp < crowdfundStartTime + (168 * 24 * 3600):
                                    if block.timestamp < crowdfundStartTime:
                                        require stor10
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        revert
                                    else:
                                        if not stor10:
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                    return 1
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                    return 1
                                        else:
                                            require stor10
                                            require 100 * stor10 / stor10 == 100
                                            if not msg.value:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                    return 1
                                            else:
                                                require msg.value
                                                require 100 * stor10 / 15 * msg.value / msg.value == 100 * stor10 / 15
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), 100 * stor10 / 15 * msg.value
                                                require ext_call.success
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    require msg.value + ethRaised >= ethRaised
                                                    ethRaised += msg.value
                                                    require (100 * stor10 / 15 * msg.value) + tokenSold >= tokenSold
                                                    tokenSold += 100 * stor10 / 15 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args (100 * stor10 / 15 * msg.value)
                                                    require ext_call.success
                                                    emit TokenPurchase(msg.value, 100 * stor10 / 15 * msg.value, arg1);
                                                    return 1
                                else:
                                    if not stor10:
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                return 1
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                return 1
                                    else:
                                        require stor10
                                        require 100 * stor10 / stor10 == 100
                                        if not msg.value:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                return 1
                                        else:
                                            require msg.value
                                            require 100 * stor10 / 20 * msg.value / msg.value == 100 * stor10 / 20
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 100 * stor10 / 20 * msg.value
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                return 0
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                require msg.value + ethRaised >= ethRaised
                                                ethRaised += msg.value
                                                require (100 * stor10 / 20 * msg.value) + tokenSold >= tokenSold
                                                tokenSold += 100 * stor10 / 20 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args (100 * stor10 / 20 * msg.value)
                                                require ext_call.success
                                                emit TokenPurchase(msg.value, 100 * stor10 / 20 * msg.value, arg1);
                                                return 1
                            else:
                                if not stor10:
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                            return 1
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                            return 1
                                else:
                                    require stor10
                                    require 100 * stor10 / stor10 == 100
                                    if not msg.value:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                            return 1
                                    else:
                                        require msg.value
                                        require 100 * stor10 / 25 * msg.value / msg.value == 100 * stor10 / 25
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), 100 * stor10 / 25 * msg.value
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            return 0
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            require msg.value + ethRaised >= ethRaised
                                            ethRaised += msg.value
                                            require (100 * stor10 / 25 * msg.value) + tokenSold >= tokenSold
                                            tokenSold += 100 * stor10 / 25 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (100 * stor10 / 25 * msg.value)
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 100 * stor10 / 25 * msg.value, arg1);
                                            return 1
                        else:
                            if not stor10:
                                if not msg.value:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 100 * stor10 / 30 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                        return 0
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 30 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 30 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, arg1);
                                        return 1
                                else:
                                    require msg.value
                                    require 100 * stor10 / 30 * msg.value / msg.value == 100 * stor10 / 30
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 100 * stor10 / 30 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                        return 0
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 30 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 30 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, arg1);
                                        return 1
                            else:
                                require stor10
                                require 100 * stor10 / stor10 == 100
                                if not msg.value:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 100 * stor10 / 30 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                        return 0
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 30 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 30 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, arg1);
                                        return 1
                                else:
                                    require msg.value
                                    require 100 * stor10 / 30 * msg.value / msg.value == 100 * stor10 / 30
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 100 * stor10 / 30 * msg.value
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                        return 0
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        require msg.value + ethRaised >= ethRaised
                                        ethRaised += msg.value
                                        require (100 * stor10 / 30 * msg.value) + tokenSold >= tokenSold
                                        tokenSold += 100 * stor10 / 30 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.changeTotalSupply(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args (100 * stor10 / 30 * msg.value)
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 100 * stor10 / 30 * msg.value, arg1);
                                        return 1
}



}

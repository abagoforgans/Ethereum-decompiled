contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint8 stage; offset 160
address owner;
uint256 maxTokens;
uint256 tokensForEcosystem;
uint256 tokensForTeam;
uint256 tokensForBounty;
uint256 tokensForMarketing;
uint256 tokensForOperations;
uint256 totalTokensForSale;
uint256 investorMinCap;
uint256 investorHardCap;
mapping of uint256 contributions;
mapping of struct customBonuses;
uint8 hasEnded;

function customBonuses(address arg1) {
    return bool(customBonuses[arg1].field_0), bool(customBonuses[arg1].field_8), customBonuses[arg1].field_16
}

function tokensForMarketing() {
    return tokensForMarketing
}

function rate() {
    return rate
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function contributions(address arg1) {
    return contributions[arg1]
}

function tokensForEcosystem() {
    return tokensForEcosystem
}

function wallet() {
    return walletAddress
}

function totalTokensForSale() {
    return totalTokensForSale
}

function tokensForBounty() {
    return tokensForBounty
}

function owner() {
    return owner
}

function investorMinCap() {
    return investorMinCap
}

function stage() {
    require stage <= 2
    return stage
}

function maxTokens() {
    return maxTokens
}

function hasEnded() {
    return bool(hasEnded)
}

function investorHardCap() {
    return investorHardCap
}

function tokensForOperations() {
    return tokensForOperations
}

function token() {
    return tokenAddress
}

function tokensForTeam() {
    return tokensForTeam
}

function capReached() {
    return weiRaised >= cap
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getBaseAmount(uint256 arg1) {
    if not arg1:
        return 0
    require arg1
    require arg1 * rate / arg1 == rate
    return (arg1 * rate)
}

function setCrowdsaleStage(uint256 arg1) {
    require msg.sender == owner
    if 0 == arg1:
        stage = 0
    else:
        if 1 == arg1:
            stage = 1
        else:
            if arg1 != 2:
                stage = 0
            else:
                stage = 2
}

function setCustomBonus(address arg1, bool arg2, bool arg3, address arg4) {
    require msg.sender == owner
    require arg1
    customBonuses[address(arg1)].field_0 = uint8(arg2)
    customBonuses[address(arg1)].field_8 = Mask(248, 0, arg3)
    customBonuses[address(arg1)].field_16 = arg4
}

function finish(address arg1, address arg2, address arg3, address arg4) {
    require msg.sender == owner
    require not hasEnded
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < maxTokens
    require totalTokensForSale + tokensForMarketing >= totalTokensForSale
    require ext_call.return_data[0] <= totalTokensForSale + tokensForMarketing
    if totalTokensForSale + tokensForMarketing - ext_call.return_data[0] > 0:
        require tokensForEcosystem + totalTokensForSale + tokensForMarketing - ext_call.return_data[0] >= tokensForEcosystem
        tokensForEcosystem = tokensForEcosystem + totalTokensForSale + tokensForMarketing - ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), tokensForTeam
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg2), tokensForEcosystem
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg3), tokensForBounty
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg4), tokensForOperations
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == owner
    hasEnded = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyTokens(address arg1) payable {
    require not hasEnded
    require arg1
    require msg.value
    require weiRaised + msg.value >= weiRaised
    require weiRaised + msg.value <= cap
    require contributions[address(arg1)] + msg.value >= contributions[address(arg1)]
    require msg.value >= investorMinCap
    require msg.value <= investorHardCap
    contributions[address(arg1)] += msg.value
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
        if bool(customBonuses[address(msg.sender)].field_8) != 1:
            require stage <= 2
            if stage:
                require stage <= 2
                if stage != 1:
                    require stage <= 2
                    if stage != 2:
                        if msg.value * rate:
                            require msg.value * rate
                            require not 0 / msg.value * rate
                            require msg.value * rate > 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), msg.value * rate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                        else:
                            require msg.value * rate > 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), msg.value * rate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                    else:
                        if msg.value < 100 * 10^18:
                            if msg.value < 50 * 10^18:
                                if msg.value < 10 * 10^18:
                                    if msg.value * rate:
                                        require msg.value * rate
                                        require not 0 / msg.value * rate
                                        require msg.value * rate > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), msg.value * rate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                    else:
                                        require msg.value * rate > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), msg.value * rate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                else:
                                    if msg.value * rate:
                                        require msg.value * rate
                                        require 5 * msg.value * rate / msg.value * rate == 5
                                        require (msg.value * rate) + (5 * msg.value * rate / 100) > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), (msg.value * rate) + (5 * msg.value * rate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokenPurchase(msg.value, (msg.value * rate) + (5 * msg.value * rate / 100), msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                    else:
                                        require msg.value * rate > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), msg.value * rate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                            else:
                                if msg.value * rate:
                                    require msg.value * rate
                                    require 10 * msg.value * rate / msg.value * rate == 10
                                    require (msg.value * rate) + (10 * msg.value * rate / 100) > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), (msg.value * rate) + (10 * msg.value * rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(msg.value, (msg.value * rate) + (10 * msg.value * rate / 100), msg.sender, arg1);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                else:
                                    require msg.value * rate > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), msg.value * rate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                        else:
                            if msg.value * rate:
                                require msg.value * rate
                                require 20 * msg.value * rate / msg.value * rate == 20
                                require (msg.value * rate) + (20 * msg.value * rate / 100) > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), (msg.value * rate) + (20 * msg.value * rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(msg.value, (msg.value * rate) + (20 * msg.value * rate / 100), msg.sender, arg1);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                            else:
                                require msg.value * rate > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                else:
                    if msg.value * rate:
                        require msg.value * rate
                        require 20 * msg.value * rate / msg.value * rate == 20
                        require (msg.value * rate) + (20 * msg.value * rate / 100) > 0
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), (msg.value * rate) + (20 * msg.value * rate / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (msg.value * rate) + (20 * msg.value * rate / 100), msg.sender, arg1);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                    else:
                        require msg.value * rate > 0
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), msg.value * rate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
            else:
                if msg.value * rate:
                    require msg.value * rate
                    require 40 * msg.value * rate / msg.value * rate == 40
                    require (msg.value * rate) + (40 * msg.value * rate / 100) > 0
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), (msg.value * rate) + (40 * msg.value * rate / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, (msg.value * rate) + (40 * msg.value * rate / 100), msg.sender, arg1);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                else:
                    require msg.value * rate > 0
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), msg.value * rate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
        else:
            if msg.value * rate:
                require msg.value * rate
                require 40 * msg.value * rate / msg.value * rate == 40
                require (msg.value * rate) + (40 * msg.value * rate / 100) > 0
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(arg1), (msg.value * rate) + (40 * msg.value * rate / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, (msg.value * rate) + (40 * msg.value * rate / 100), msg.sender, arg1);
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
            else:
                require msg.value * rate > 0
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(arg1), msg.value * rate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
    else:
        require bool(customBonuses[address(msg.sender)].field_8) != 1
        require stage <= 2
        require stage
        require stage <= 2
        require stage != 1
        require stage <= 2
        require stage == 2
        require msg.value < 100 * 10^18
        require msg.value < 50 * 10^18
        require msg.value < 10 * 10^18
        revert
}

function _fallback() payable {
    require not hasEnded
    require msg.sender
    require msg.value
    require weiRaised + msg.value >= weiRaised
    require weiRaised + msg.value <= cap
    require contributions[address(msg.sender)] + msg.value >= contributions[address(msg.sender)]
    require msg.value >= investorMinCap
    require msg.value <= investorHardCap
    contributions[address(msg.sender)] += msg.value
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
        if bool(customBonuses[address(msg.sender)].field_8) != 1:
            require stage <= 2
            if stage:
                require stage <= 2
                if stage != 1:
                    require stage <= 2
                    if stage != 2:
                        if msg.value * rate:
                            require msg.value * rate
                            require not 0 / msg.value * rate
                            require msg.value * rate > 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, msg.value * rate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                        else:
                            require msg.value * rate > 0
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, msg.value * rate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                    else:
                        if msg.value < 100 * 10^18:
                            if msg.value < 50 * 10^18:
                                if msg.value < 10 * 10^18:
                                    if msg.value * rate:
                                        require msg.value * rate
                                        require not 0 / msg.value * rate
                                        require msg.value * rate > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value * rate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                    else:
                                        require msg.value * rate > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value * rate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                else:
                                    if msg.value * rate:
                                        require msg.value * rate
                                        require 5 * msg.value * rate / msg.value * rate == 5
                                        require (msg.value * rate) + (5 * msg.value * rate / 100) > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, (msg.value * rate) + (5 * msg.value * rate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokenPurchase(msg.value, (msg.value * rate) + (5 * msg.value * rate / 100), msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                    else:
                                        require msg.value * rate > 0
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value * rate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                            else:
                                if msg.value * rate:
                                    require msg.value * rate
                                    require 10 * msg.value * rate / msg.value * rate == 10
                                    require (msg.value * rate) + (10 * msg.value * rate / 100) > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, (msg.value * rate) + (10 * msg.value * rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(msg.value, (msg.value * rate) + (10 * msg.value * rate / 100), msg.sender, msg.sender);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                else:
                                    require msg.value * rate > 0
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value * rate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                        else:
                            if msg.value * rate:
                                require msg.value * rate
                                require 20 * msg.value * rate / msg.value * rate == 20
                                require (msg.value * rate) + (20 * msg.value * rate / 100) > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, (msg.value * rate) + (20 * msg.value * rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(msg.value, (msg.value * rate) + (20 * msg.value * rate / 100), msg.sender, msg.sender);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                            else:
                                require msg.value * rate > 0
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                else:
                    if msg.value * rate:
                        require msg.value * rate
                        require 20 * msg.value * rate / msg.value * rate == 20
                        require (msg.value * rate) + (20 * msg.value * rate / 100) > 0
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, (msg.value * rate) + (20 * msg.value * rate / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (msg.value * rate) + (20 * msg.value * rate / 100), msg.sender, msg.sender);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                    else:
                        require msg.value * rate > 0
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, msg.value * rate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
            else:
                if msg.value * rate:
                    require msg.value * rate
                    require 40 * msg.value * rate / msg.value * rate == 40
                    require (msg.value * rate) + (40 * msg.value * rate / 100) > 0
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, (msg.value * rate) + (40 * msg.value * rate / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, (msg.value * rate) + (40 * msg.value * rate / 100), msg.sender, msg.sender);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                else:
                    require msg.value * rate > 0
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, msg.value * rate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
        else:
            if msg.value * rate:
                require msg.value * rate
                require 40 * msg.value * rate / msg.value * rate == 40
                require (msg.value * rate) + (40 * msg.value * rate / 100) > 0
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, (msg.value * rate) + (40 * msg.value * rate / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, (msg.value * rate) + (40 * msg.value * rate / 100), msg.sender, msg.sender);
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
            else:
                require msg.value * rate > 0
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, msg.value * rate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
    else:
        require bool(customBonuses[address(msg.sender)].field_8) != 1
        require stage <= 2
        require stage
        require stage <= 2
        require stage != 1
        require stage <= 2
        require stage == 2
        require msg.value < 100 * 10^18
        require msg.value < 50 * 10^18
        require msg.value < 10 * 10^18
        revert
}



}

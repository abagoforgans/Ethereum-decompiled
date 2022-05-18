contract main {




// =====================  Runtime code  =====================


const tokensForSale = 28500000 * 10^18

const tokensForAdvisors = 3000000 * 10^18

const tokensForBounty = 1500000 * 10^18

const maxTokens = 50000000 * 10^18

const tokensForTeam = (2500 * 10^18 * 3600)


uint8 stage; offset 160
address owner;
uint256 tokensForEcosystem;
uint256 stor2;
uint256 stor3;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
mapping of uint8 stor9;

function rate() {
    return rate
}

function cap() {
    return cap
}

function isWhitelisted(address arg1) {
    return bool(stor9[address(arg1)])
}

function weiRaised() {
    return weiRaised
}

function tokensForEcosystem() {
    return tokensForEcosystem
}

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor9[arg1])
}

function stage() {
    require stage <= 1
    return stage
}

function token() {
    return tokenAddress
}

function setHardCap(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    cap = arg1
}

function setNewRate(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    rate = arg1
}

function changeWallet(address arg1) {
    require msg.sender == owner
    require arg1
    walletAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setCrowdsaleStage(uint256 arg1) {
    require msg.sender == owner
    if 0 == arg1:
        stage = 0
    else:
        if arg1 != 1:
            stage = 0
        else:
            stage = 1
}

function returnOwnership() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function updateWhitelist(address[] arg1, bool arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _10 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        stor9[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        mem[(32 * arg1.length) + 128] = arg2
        emit WhitelistUpdate(arg2, address(_10));
        s = _10
        idx = idx + 1
        continue 
}

function finish(address arg1, address arg2, address arg3, address arg4) {
    require msg.sender == owner
    require arg1
    require arg2
    require arg3
    require arg4
    emit Finalized()
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if -ext_call.return_data[0] + 28500000 * 10^18 > 0:
        tokensForEcosystem = tokensForEcosystem + -ext_call.return_data[0] + 28500000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), 1500000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg2), 3000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg3), tokensForEcosystem
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg4), 2500 * 10^18 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x6690864e with:
         gas gas_remaining wei
        args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyTokens(address arg1) payable {
    require block.timestamp > stor2
    require block.timestamp < stor3
    require arg1
    require msg.value
    require weiRaised + msg.value >= weiRaised
    require weiRaised + msg.value <= cap
    require stage <= 1
    if not stage:
        if msg.value:
            require msg.value
            require msg.value * rate / msg.value == rate
            require stage <= 1
            if stage:
                require stage <= 1
                if stage != 1:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                else:
                    if block.timestamp < 425413 * 3600:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                    else:
                        if block.timestamp >= 425749 * 3600:
                            if block.timestamp >= 426085 * 3600:
                                if block.timestamp >= 426421 * 3600:
                                    if block.timestamp >= 426757 * 3600:
                                        if block.timestamp >= 427093 * 3600:
                                            if block.timestamp >= stor3:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x18160ddd with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                                    require 3 * msg.value * rate / msg.value * rate == 3
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x18160ddd with:
                                                         gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (3 * msg.value * rate / 100)
                                                        require weiRaised + msg.value >= weiRaised
                                                        weiRaised += msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args address(arg1), (msg.value * rate) + (3 * msg.value * rate / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            emit TokenPurchase(msg.value, (msg.value * rate) + (3 * msg.value * rate / 100), msg.sender, arg1);
                                                            call walletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x18160ddd with:
                                                         gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                                require 6 * msg.value * rate / msg.value * rate == 6
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x18160ddd with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (6 * msg.value * rate / 100)
                                                    require weiRaised + msg.value >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args address(arg1), (msg.value * rate) + (6 * msg.value * rate / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        emit TokenPurchase(msg.value, (msg.value * rate) + (6 * msg.value * rate / 100), msg.sender, arg1);
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x18160ddd with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                            require 9 * msg.value * rate / msg.value * rate == 9
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x18160ddd with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (9 * msg.value * rate / 100)
                                                require weiRaised + msg.value >= weiRaised
                                                weiRaised += msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (msg.value * rate) + (9 * msg.value * rate / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    emit TokenPurchase(msg.value, (msg.value * rate) + (9 * msg.value * rate / 100), msg.sender, arg1);
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x18160ddd with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                        require 12 * msg.value * rate / msg.value * rate == 12
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (12 * msg.value * rate / 100)
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), (msg.value * rate) + (12 * msg.value * rate / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                emit TokenPurchase(msg.value, (msg.value * rate) + (12 * msg.value * rate / 100), msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                    require 15 * msg.value * rate / msg.value * rate == 15
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (15 * msg.value * rate / 100)
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), (msg.value * rate) + (15 * msg.value * rate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, (msg.value * rate) + (15 * msg.value * rate / 100), msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                require 18 * msg.value * rate / msg.value * rate == 18
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (18 * msg.value * rate / 100)
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), (msg.value * rate) + (18 * msg.value * rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, (msg.value * rate) + (18 * msg.value * rate / 100), msg.sender, arg1);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
            else:
                if msg.value * rate < 50 * 10^18:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                else:
                    if msg.value * rate >= 3000 * 10^18:
                        if msg.value * rate >= 15000 * 10^18:
                            if msg.value * rate >= 30000 * 10^18:
                                if msg.value * rate:
                                    require msg.value * rate
                                    require 35 * msg.value * rate / msg.value * rate == 35
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (35 * msg.value * rate / 100)
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), (msg.value * rate) + (35 * msg.value * rate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, (msg.value * rate) + (35 * msg.value * rate / 100), msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                    require 30 * msg.value * rate / msg.value * rate == 30
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (30 * msg.value * rate / 100)
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), (msg.value * rate) + (30 * msg.value * rate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, (msg.value * rate) + (30 * msg.value * rate / 100), msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                require 27 * msg.value * rate / msg.value * rate == 27
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (27 * msg.value * rate / 100)
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), (msg.value * rate) + (27 * msg.value * rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, (msg.value * rate) + (27 * msg.value * rate / 100), msg.sender, arg1);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                            require 23 * msg.value * rate / msg.value * rate == 23
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (23 * msg.value * rate / 100)
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), (msg.value * rate) + (23 * msg.value * rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, (msg.value * rate) + (23 * msg.value * rate / 100), msg.sender, arg1);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
        else:
            require stage <= 1
            if stage:
                require stage <= 1
                if stage != 1:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require 28500000 * 10^18 >= ext_call.return_data[0]
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                else:
                    if block.timestamp < 425413 * 3600:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require 28500000 * 10^18 >= ext_call.return_data[0]
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                    else:
                        if block.timestamp >= 425749 * 3600:
                            if block.timestamp >= 426085 * 3600:
                                if block.timestamp >= 426421 * 3600:
                                    if block.timestamp >= 426757 * 3600:
                                        if block.timestamp >= 427093 * 3600:
                                            if block.timestamp >= stor3:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x18160ddd with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require 28500000 * 10^18 >= ext_call.return_data[0]
                                                    require weiRaised + msg.value >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args address(arg1), 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x18160ddd with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require 28500000 * 10^18 >= ext_call.return_data[0]
                                                    require weiRaised + msg.value >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args address(arg1), 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x18160ddd with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require 28500000 * 10^18 >= ext_call.return_data[0]
                                                require weiRaised + msg.value >= weiRaised
                                                weiRaised += msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(arg1), 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require 28500000 * 10^18 >= ext_call.return_data[0]
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0]
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 28500000 * 10^18 >= ext_call.return_data[0]
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require 28500000 * 10^18 >= ext_call.return_data[0]
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require 28500000 * 10^18 >= ext_call.return_data[0]
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
    else:
        require stage <= 1
        require stage == 1
        require stor9[address(arg1)]
        if msg.value:
            require msg.value
            require msg.value * rate / msg.value == rate
            require stage <= 1
            if stage:
                require stage <= 1
                if stage != 1:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                else:
                    if block.timestamp < 425413 * 3600:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                    else:
                        if block.timestamp >= 425749 * 3600:
                            if block.timestamp >= 426085 * 3600:
                                if block.timestamp >= 426421 * 3600:
                                    if block.timestamp >= 426757 * 3600:
                                        if block.timestamp >= 427093 * 3600:
                                            if block.timestamp >= stor3:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x18160ddd with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                                    require 3 * msg.value * rate / msg.value * rate == 3
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x18160ddd with:
                                                         gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (3 * msg.value * rate / 100)
                                                        require weiRaised + msg.value >= weiRaised
                                                        weiRaised += msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args address(arg1), (msg.value * rate) + (3 * msg.value * rate / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            emit TokenPurchase(msg.value, (msg.value * rate) + (3 * msg.value * rate / 100), msg.sender, arg1);
                                                            call walletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x18160ddd with:
                                                         gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                                require 6 * msg.value * rate / msg.value * rate == 6
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x18160ddd with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (6 * msg.value * rate / 100)
                                                    require weiRaised + msg.value >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args address(arg1), (msg.value * rate) + (6 * msg.value * rate / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        emit TokenPurchase(msg.value, (msg.value * rate) + (6 * msg.value * rate / 100), msg.sender, arg1);
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x18160ddd with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                            require 9 * msg.value * rate / msg.value * rate == 9
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x18160ddd with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (9 * msg.value * rate / 100)
                                                require weiRaised + msg.value >= weiRaised
                                                weiRaised += msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (msg.value * rate) + (9 * msg.value * rate / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    emit TokenPurchase(msg.value, (msg.value * rate) + (9 * msg.value * rate / 100), msg.sender, arg1);
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x18160ddd with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                        require 12 * msg.value * rate / msg.value * rate == 12
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (12 * msg.value * rate / 100)
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), (msg.value * rate) + (12 * msg.value * rate / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                emit TokenPurchase(msg.value, (msg.value * rate) + (12 * msg.value * rate / 100), msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                    require 15 * msg.value * rate / msg.value * rate == 15
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (15 * msg.value * rate / 100)
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), (msg.value * rate) + (15 * msg.value * rate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, (msg.value * rate) + (15 * msg.value * rate / 100), msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                require 18 * msg.value * rate / msg.value * rate == 18
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (18 * msg.value * rate / 100)
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), (msg.value * rate) + (18 * msg.value * rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, (msg.value * rate) + (18 * msg.value * rate / 100), msg.sender, arg1);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
            else:
                if msg.value * rate < 50 * 10^18:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                else:
                    if msg.value * rate >= 3000 * 10^18:
                        if msg.value * rate >= 15000 * 10^18:
                            if msg.value * rate >= 30000 * 10^18:
                                if msg.value * rate:
                                    require msg.value * rate
                                    require 35 * msg.value * rate / msg.value * rate == 35
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (35 * msg.value * rate / 100)
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), (msg.value * rate) + (35 * msg.value * rate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, (msg.value * rate) + (35 * msg.value * rate / 100), msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                    require 30 * msg.value * rate / msg.value * rate == 30
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (30 * msg.value * rate / 100)
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), (msg.value * rate) + (30 * msg.value * rate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, (msg.value * rate) + (30 * msg.value * rate / 100), msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                require 27 * msg.value * rate / msg.value * rate == 27
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (27 * msg.value * rate / 100)
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), (msg.value * rate) + (27 * msg.value * rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, (msg.value * rate) + (27 * msg.value * rate / 100), msg.sender, arg1);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                            require 23 * msg.value * rate / msg.value * rate == 23
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (23 * msg.value * rate / 100)
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), (msg.value * rate) + (23 * msg.value * rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, (msg.value * rate) + (23 * msg.value * rate / 100), msg.sender, arg1);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
        else:
            require stage <= 1
            if stage:
                require stage <= 1
                if stage != 1:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require 28500000 * 10^18 >= ext_call.return_data[0]
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                else:
                    if block.timestamp < 425413 * 3600:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require 28500000 * 10^18 >= ext_call.return_data[0]
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                    else:
                        if block.timestamp >= 425749 * 3600:
                            if block.timestamp >= 426085 * 3600:
                                if block.timestamp >= 426421 * 3600:
                                    if block.timestamp >= 426757 * 3600:
                                        if block.timestamp >= 427093 * 3600:
                                            if block.timestamp >= stor3:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x18160ddd with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require 28500000 * 10^18 >= ext_call.return_data[0]
                                                    require weiRaised + msg.value >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args address(arg1), 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x18160ddd with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require 28500000 * 10^18 >= ext_call.return_data[0]
                                                    require weiRaised + msg.value >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args address(arg1), 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x18160ddd with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require 28500000 * 10^18 >= ext_call.return_data[0]
                                                require weiRaised + msg.value >= weiRaised
                                                weiRaised += msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(arg1), 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require 28500000 * 10^18 >= ext_call.return_data[0]
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0]
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 28500000 * 10^18 >= ext_call.return_data[0]
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require 28500000 * 10^18 >= ext_call.return_data[0]
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require 28500000 * 10^18 >= ext_call.return_data[0]
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
}

function _fallback() payable {
    require block.timestamp > stor2
    require block.timestamp < stor3
    require msg.sender
    require msg.value
    require weiRaised + msg.value >= weiRaised
    require weiRaised + msg.value <= cap
    require stage <= 1
    if not stage:
        if msg.value:
            require msg.value
            require msg.value * rate / msg.value == rate
            require stage <= 1
            if stage:
                require stage <= 1
                if stage != 1:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                else:
                    if block.timestamp < 425413 * 3600:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                    else:
                        if block.timestamp >= 425749 * 3600:
                            if block.timestamp >= 426085 * 3600:
                                if block.timestamp >= 426421 * 3600:
                                    if block.timestamp >= 426757 * 3600:
                                        if block.timestamp >= 427093 * 3600:
                                            if block.timestamp >= stor3:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x18160ddd with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                                    require 3 * msg.value * rate / msg.value * rate == 3
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x18160ddd with:
                                                         gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (3 * msg.value * rate / 100)
                                                        require weiRaised + msg.value >= weiRaised
                                                        weiRaised += msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (msg.value * rate) + (3 * msg.value * rate / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            emit TokenPurchase(msg.value, (msg.value * rate) + (3 * msg.value * rate / 100), msg.sender, msg.sender);
                                                            call walletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x18160ddd with:
                                                         gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                                require 6 * msg.value * rate / msg.value * rate == 6
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x18160ddd with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (6 * msg.value * rate / 100)
                                                    require weiRaised + msg.value >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (msg.value * rate) + (6 * msg.value * rate / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        emit TokenPurchase(msg.value, (msg.value * rate) + (6 * msg.value * rate / 100), msg.sender, msg.sender);
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x18160ddd with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                            require 9 * msg.value * rate / msg.value * rate == 9
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x18160ddd with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (9 * msg.value * rate / 100)
                                                require weiRaised + msg.value >= weiRaised
                                                weiRaised += msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (msg.value * rate) + (9 * msg.value * rate / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    emit TokenPurchase(msg.value, (msg.value * rate) + (9 * msg.value * rate / 100), msg.sender, msg.sender);
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x18160ddd with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                        require 12 * msg.value * rate / msg.value * rate == 12
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (12 * msg.value * rate / 100)
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, (msg.value * rate) + (12 * msg.value * rate / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                emit TokenPurchase(msg.value, (msg.value * rate) + (12 * msg.value * rate / 100), msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                    require 15 * msg.value * rate / msg.value * rate == 15
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (15 * msg.value * rate / 100)
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, (msg.value * rate) + (15 * msg.value * rate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, (msg.value * rate) + (15 * msg.value * rate / 100), msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                require 18 * msg.value * rate / msg.value * rate == 18
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (18 * msg.value * rate / 100)
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, (msg.value * rate) + (18 * msg.value * rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, (msg.value * rate) + (18 * msg.value * rate / 100), msg.sender, msg.sender);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
            else:
                if msg.value * rate < 50 * 10^18:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                else:
                    if msg.value * rate >= 3000 * 10^18:
                        if msg.value * rate >= 15000 * 10^18:
                            if msg.value * rate >= 30000 * 10^18:
                                if msg.value * rate:
                                    require msg.value * rate
                                    require 35 * msg.value * rate / msg.value * rate == 35
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (35 * msg.value * rate / 100)
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, (msg.value * rate) + (35 * msg.value * rate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, (msg.value * rate) + (35 * msg.value * rate / 100), msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                    require 30 * msg.value * rate / msg.value * rate == 30
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (30 * msg.value * rate / 100)
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, (msg.value * rate) + (30 * msg.value * rate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, (msg.value * rate) + (30 * msg.value * rate / 100), msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                require 27 * msg.value * rate / msg.value * rate == 27
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (27 * msg.value * rate / 100)
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, (msg.value * rate) + (27 * msg.value * rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, (msg.value * rate) + (27 * msg.value * rate / 100), msg.sender, msg.sender);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                            require 23 * msg.value * rate / msg.value * rate == 23
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (23 * msg.value * rate / 100)
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, (msg.value * rate) + (23 * msg.value * rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, (msg.value * rate) + (23 * msg.value * rate / 100), msg.sender, msg.sender);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
        else:
            require stage <= 1
            if stage:
                require stage <= 1
                if stage != 1:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require 28500000 * 10^18 >= ext_call.return_data[0]
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                else:
                    if block.timestamp < 425413 * 3600:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require 28500000 * 10^18 >= ext_call.return_data[0]
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                    else:
                        if block.timestamp >= 425749 * 3600:
                            if block.timestamp >= 426085 * 3600:
                                if block.timestamp >= 426421 * 3600:
                                    if block.timestamp >= 426757 * 3600:
                                        if block.timestamp >= 427093 * 3600:
                                            if block.timestamp >= stor3:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x18160ddd with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require 28500000 * 10^18 >= ext_call.return_data[0]
                                                    require weiRaised + msg.value >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x18160ddd with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require 28500000 * 10^18 >= ext_call.return_data[0]
                                                    require weiRaised + msg.value >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x18160ddd with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require 28500000 * 10^18 >= ext_call.return_data[0]
                                                require weiRaised + msg.value >= weiRaised
                                                weiRaised += msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require 28500000 * 10^18 >= ext_call.return_data[0]
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0]
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 28500000 * 10^18 >= ext_call.return_data[0]
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require 28500000 * 10^18 >= ext_call.return_data[0]
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require 28500000 * 10^18 >= ext_call.return_data[0]
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
    else:
        require stage <= 1
        require stage == 1
        require stor9[address(msg.sender)]
        if msg.value:
            require msg.value
            require msg.value * rate / msg.value == rate
            require stage <= 1
            if stage:
                require stage <= 1
                if stage != 1:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                else:
                    if block.timestamp < 425413 * 3600:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                    else:
                        if block.timestamp >= 425749 * 3600:
                            if block.timestamp >= 426085 * 3600:
                                if block.timestamp >= 426421 * 3600:
                                    if block.timestamp >= 426757 * 3600:
                                        if block.timestamp >= 427093 * 3600:
                                            if block.timestamp >= stor3:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x18160ddd with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                                    require 3 * msg.value * rate / msg.value * rate == 3
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x18160ddd with:
                                                         gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (3 * msg.value * rate / 100)
                                                        require weiRaised + msg.value >= weiRaised
                                                        weiRaised += msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (msg.value * rate) + (3 * msg.value * rate / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            emit TokenPurchase(msg.value, (msg.value * rate) + (3 * msg.value * rate / 100), msg.sender, msg.sender);
                                                            call walletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x18160ddd with:
                                                         gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                                require 6 * msg.value * rate / msg.value * rate == 6
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x18160ddd with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (6 * msg.value * rate / 100)
                                                    require weiRaised + msg.value >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (msg.value * rate) + (6 * msg.value * rate / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        emit TokenPurchase(msg.value, (msg.value * rate) + (6 * msg.value * rate / 100), msg.sender, msg.sender);
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x18160ddd with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                            require 9 * msg.value * rate / msg.value * rate == 9
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x18160ddd with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (9 * msg.value * rate / 100)
                                                require weiRaised + msg.value >= weiRaised
                                                weiRaised += msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (msg.value * rate) + (9 * msg.value * rate / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    emit TokenPurchase(msg.value, (msg.value * rate) + (9 * msg.value * rate / 100), msg.sender, msg.sender);
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x18160ddd with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                        require 12 * msg.value * rate / msg.value * rate == 12
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (12 * msg.value * rate / 100)
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, (msg.value * rate) + (12 * msg.value * rate / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                emit TokenPurchase(msg.value, (msg.value * rate) + (12 * msg.value * rate / 100), msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                    require 15 * msg.value * rate / msg.value * rate == 15
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (15 * msg.value * rate / 100)
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, (msg.value * rate) + (15 * msg.value * rate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, (msg.value * rate) + (15 * msg.value * rate / 100), msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                require 18 * msg.value * rate / msg.value * rate == 18
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (18 * msg.value * rate / 100)
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, (msg.value * rate) + (18 * msg.value * rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, (msg.value * rate) + (18 * msg.value * rate / 100), msg.sender, msg.sender);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
            else:
                if msg.value * rate < 50 * 10^18:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                else:
                    if msg.value * rate >= 3000 * 10^18:
                        if msg.value * rate >= 15000 * 10^18:
                            if msg.value * rate >= 30000 * 10^18:
                                if msg.value * rate:
                                    require msg.value * rate
                                    require 35 * msg.value * rate / msg.value * rate == 35
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (35 * msg.value * rate / 100)
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, (msg.value * rate) + (35 * msg.value * rate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, (msg.value * rate) + (35 * msg.value * rate / 100), msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                    require 30 * msg.value * rate / msg.value * rate == 30
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (30 * msg.value * rate / 100)
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, (msg.value * rate) + (30 * msg.value * rate / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, (msg.value * rate) + (30 * msg.value * rate / 100), msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                require 27 * msg.value * rate / msg.value * rate == 27
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (27 * msg.value * rate / 100)
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, (msg.value * rate) + (27 * msg.value * rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, (msg.value * rate) + (27 * msg.value * rate / 100), msg.sender, msg.sender);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                            require 23 * msg.value * rate / msg.value * rate == 23
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate) + (23 * msg.value * rate / 100)
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, (msg.value * rate) + (23 * msg.value * rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, (msg.value * rate) + (23 * msg.value * rate / 100), msg.sender, msg.sender);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require 28500000 * 10^18 >= ext_call.return_data[0] + (msg.value * rate)
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
                                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
        else:
            require stage <= 1
            if stage:
                require stage <= 1
                if stage != 1:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require 28500000 * 10^18 >= ext_call.return_data[0]
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                else:
                    if block.timestamp < 425413 * 3600:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require 28500000 * 10^18 >= ext_call.return_data[0]
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                    else:
                        if block.timestamp >= 425749 * 3600:
                            if block.timestamp >= 426085 * 3600:
                                if block.timestamp >= 426421 * 3600:
                                    if block.timestamp >= 426757 * 3600:
                                        if block.timestamp >= 427093 * 3600:
                                            if block.timestamp >= stor3:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x18160ddd with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require 28500000 * 10^18 >= ext_call.return_data[0]
                                                    require weiRaised + msg.value >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x18160ddd with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require 28500000 * 10^18 >= ext_call.return_data[0]
                                                    require weiRaised + msg.value >= weiRaised
                                                    weiRaised += msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x18160ddd with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require 28500000 * 10^18 >= ext_call.return_data[0]
                                                require weiRaised + msg.value >= weiRaised
                                                weiRaised += msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x18160ddd with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require 28500000 * 10^18 >= ext_call.return_data[0]
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x18160ddd with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 28500000 * 10^18 >= ext_call.return_data[0]
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 28500000 * 10^18 >= ext_call.return_data[0]
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require 28500000 * 10^18 >= ext_call.return_data[0]
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require 28500000 * 10^18 >= ext_call.return_data[0]
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
}



}

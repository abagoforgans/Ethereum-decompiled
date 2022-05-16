contract main {




// =====================  Runtime code  =====================


const version = '1.0'

const intervalTime = (24 * 3600)

const AIRDROP_WALLET = 0x72786b83e7c1f90ee5060d2f772d7f2bbbdb1bd9

const CROWDSALE_TOKENS_NUMS = (18750 * 10^18 * 24 * 3600)

const EQUIPMENT_REWARD_TOKENS_NUMS = 30000000 * 10^18

const CROWDSALE_ETH_WALLET = 0x629856b6b5b64440a6691cad3352d65a00383c56

const CROWDSALE_REWARD_TOKENS_NUMS = (18750 * 10^18 * 24 * 3600)

const FOUNDER_WALET = 0x70beb827621f7e14e85f5b1f6dff97c2a7eb4e21

const TEC_TEAM_WALLET = 0xa6567dff7a196eefac0ff8f0adeb033035231deb

const CROWDSALE_REWARD_WALLET = 0x7de0a5988865b4d3c25bd37a9b04d53f37eb658

const TEC_TOKENS_NUMS = 5000000 * 10^18

const TOKEN_UNIT = 10^18

const EQUIPMENT_REWARD_WALLET = 0x4dbe2b95f9080c530a750e519d7a0614c588df36

const AIRDROP_TOKENS_NUMS = 30000000 * 10^18

const MAX_TOKENS = 1200000000 * 10^18


address tokenAddress;
address walletAddress;
address techWalletAddress;
uint256 startRate;
uint256 weiRaised;
uint256 openingTime;
uint256 closingTime;
uint8 stor7; offset 160
uint128 stor7; offset 160
address owner;
mapping of uint8 stor8;

function startRate() {
    return startRate
}

function weiRaised() {
    return weiRaised
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function isFinalized() {
    return bool(uint8(stor7.field_160))
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor8[arg1])
}

function openingTime() {
    return openingTime
}

function techWallet() {
    return techWalletAddress
}

function token() {
    return tokenAddress
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function addToWhitelist(address arg1) {
    require msg.sender == owner
    stor8[address(arg1)] = 1
}

function removeFromWhitelist(address arg1) {
    require msg.sender == owner
    stor8[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addManyToWhitelist(address[] arg1) {
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 8
        stor8[address(cd[((32 * idx) + arg1 + 36)])] = 1
        idx = idx + 1
        continue 
}

function getRate() {
    require openingTime <= block.timestamp
    if block.timestamp - openingTime < 24 * 3600:
        require block.timestamp <= closingTime
        if closingTime - block.timestamp >= 24 * 3600:
            return startRate
    else:
        if not block.timestamp - openingTime / 24 * 3600:
            require block.timestamp <= closingTime
            if closingTime - block.timestamp >= 24 * 3600:
                return startRate
        else:
            require block.timestamp - openingTime / 24 * 3600
            require 111 * block.timestamp - openingTime / 24 * 3600 / block.timestamp - openingTime / 24 * 3600 == 111
            require block.timestamp <= closingTime
            if closingTime - block.timestamp >= 24 * 3600:
                return (startRate - (111 * block.timestamp - openingTime / 24 * 3600))
    ('lt', ('add', ('stor', ('name', 'closingTime', 6)), ('mul', -1, 'timestamp')), 86400)
    return 10000
}

function finalize() {
    require msg.sender == owner
    require not uint8(stor7.field_160)
    require block.timestamp > closingTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x4c5d6d93 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args 0x70beb827621f7e14e85f5b1f6dff97c2a7eb4e21, -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Finalized()
    Mask(96, 0, stor7.field_160) = 1
}

function computeTokens(uint256 arg1) {
    require openingTime <= block.timestamp
    if block.timestamp - openingTime < 24 * 3600:
        require block.timestamp <= closingTime
        if closingTime - block.timestamp >= 24 * 3600:
            if not arg1:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x4c5d6d93 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= 0
                return 0
            require arg1
            require arg1 * startRate / arg1 == startRate
            require ext_code.size(tokenAddress)
            call tokenAddress.0x4c5d6d93 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
            require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= arg1 * startRate
            return (arg1 * startRate)
    else:
        if not block.timestamp - openingTime / 24 * 3600:
            require block.timestamp <= closingTime
            if closingTime - block.timestamp >= 24 * 3600:
                if not arg1:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x4c5d6d93 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                    require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= 0
                    return 0
                require arg1
                require arg1 * startRate / arg1 == startRate
                require ext_code.size(tokenAddress)
                call tokenAddress.0x4c5d6d93 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= arg1 * startRate
                return (arg1 * startRate)
        else:
            require block.timestamp - openingTime / 24 * 3600
            require 111 * block.timestamp - openingTime / 24 * 3600 / block.timestamp - openingTime / 24 * 3600 == 111
            require block.timestamp <= closingTime
            if closingTime - block.timestamp >= 24 * 3600:
                if not arg1:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x4c5d6d93 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                    require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= 0
                    return 0
                require arg1
                require (startRate * arg1) - (111 * block.timestamp - openingTime / 24 * 3600 * arg1) / arg1 == startRate - (111 * block.timestamp - openingTime / 24 * 3600)
                require ext_code.size(tokenAddress)
                call tokenAddress.0x4c5d6d93 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= (startRate * arg1) - (111 * block.timestamp - openingTime / 24 * 3600 * arg1)
                return ((startRate * arg1) - (111 * block.timestamp - openingTime / 24 * 3600 * arg1))
    ('lt', ('add', ('stor', ('name', 'closingTime', 6)), ('mul', -1, 'timestamp')), 86400)
    if not arg1:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x4c5d6d93 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
        require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= 0
        return 0
    require arg1
    require 10000 * arg1 / arg1 == 10000
    require ext_code.size(tokenAddress)
    call tokenAddress.0x4c5d6d93 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
    require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= 10000 * arg1
    return (10000 * arg1)
}

function buyTokens(address arg1) payable {
    require stor8[address(arg1)]
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value
    require openingTime <= block.timestamp
    if block.timestamp - openingTime < 24 * 3600:
        require block.timestamp <= closingTime
        if closingTime - block.timestamp >= 24 * 3600:
            if not msg.value:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x4c5d6d93 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= 0
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0x9b5b969f with:
                     gas gas_remaining wei
                    args techWalletAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xd47d996e with:
                     gas gas_remaining wei
                    args 0
            else:
                require msg.value
                require msg.value * startRate / msg.value == startRate
                require ext_code.size(tokenAddress)
                call tokenAddress.0x4c5d6d93 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= msg.value * startRate
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                emit TokenPurchase(msg.value, msg.value * startRate, msg.sender, arg1);
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), msg.value * startRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not msg.value * startRate:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x9b5b969f with:
                         gas gas_remaining wei
                        args techWalletAddress, 0
                else:
                    require msg.value * startRate
                    require 69 * msg.value * startRate / msg.value * startRate == 69
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x9b5b969f with:
                         gas gas_remaining wei
                        args techWalletAddress, 69 * msg.value * startRate / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xd47d996e with:
                     gas gas_remaining wei
                    args (msg.value * startRate)
        else:
            if not msg.value:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x4c5d6d93 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= 0
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0x9b5b969f with:
                     gas gas_remaining wei
                    args techWalletAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xd47d996e with:
                     gas gas_remaining wei
                    args 0
            else:
                require msg.value
                require 10000 * msg.value / msg.value == 10000
                require ext_code.size(tokenAddress)
                call tokenAddress.0x4c5d6d93 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= 10000 * msg.value
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                emit TokenPurchase(msg.value, 10000 * msg.value, msg.sender, arg1);
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), 10000 * msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 10000 * msg.value:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x9b5b969f with:
                         gas gas_remaining wei
                        args techWalletAddress, 0
                else:
                    require 10000 * msg.value
                    require 690000 * msg.value / 10000 * msg.value == 69
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x9b5b969f with:
                         gas gas_remaining wei
                        args techWalletAddress, 690000 * msg.value / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xd47d996e with:
                     gas gas_remaining wei
                    args (10000 * msg.value)
    else:
        if not block.timestamp - openingTime / 24 * 3600:
            require block.timestamp <= closingTime
            if closingTime - block.timestamp >= 24 * 3600:
                if not msg.value:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x4c5d6d93 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                    require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= 0
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x9b5b969f with:
                         gas gas_remaining wei
                        args techWalletAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xd47d996e with:
                         gas gas_remaining wei
                        args 0
                else:
                    require msg.value
                    require msg.value * startRate / msg.value == startRate
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x4c5d6d93 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                    require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= msg.value * startRate
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    emit TokenPurchase(msg.value, msg.value * startRate, msg.sender, arg1);
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), msg.value * startRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not msg.value * startRate:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9b5b969f with:
                             gas gas_remaining wei
                            args techWalletAddress, 0
                    else:
                        require msg.value * startRate
                        require 69 * msg.value * startRate / msg.value * startRate == 69
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9b5b969f with:
                             gas gas_remaining wei
                            args techWalletAddress, 69 * msg.value * startRate / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xd47d996e with:
                         gas gas_remaining wei
                        args (msg.value * startRate)
            else:
                if not msg.value:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x4c5d6d93 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                    require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= 0
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x9b5b969f with:
                         gas gas_remaining wei
                        args techWalletAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xd47d996e with:
                         gas gas_remaining wei
                        args 0
                else:
                    require msg.value
                    require 10000 * msg.value / msg.value == 10000
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x4c5d6d93 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                    require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= 10000 * msg.value
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    emit TokenPurchase(msg.value, 10000 * msg.value, msg.sender, arg1);
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), 10000 * msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 10000 * msg.value:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9b5b969f with:
                             gas gas_remaining wei
                            args techWalletAddress, 0
                    else:
                        require 10000 * msg.value
                        require 690000 * msg.value / 10000 * msg.value == 69
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9b5b969f with:
                             gas gas_remaining wei
                            args techWalletAddress, 690000 * msg.value / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xd47d996e with:
                         gas gas_remaining wei
                        args (10000 * msg.value)
        else:
            require block.timestamp - openingTime / 24 * 3600
            require 111 * block.timestamp - openingTime / 24 * 3600 / block.timestamp - openingTime / 24 * 3600 == 111
            require block.timestamp <= closingTime
            if closingTime - block.timestamp >= 24 * 3600:
                if not msg.value:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x4c5d6d93 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                    require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= 0
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x9b5b969f with:
                         gas gas_remaining wei
                        args techWalletAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xd47d996e with:
                         gas gas_remaining wei
                        args 0
                else:
                    require msg.value
                    require (startRate * msg.value) - (111 * block.timestamp - openingTime / 24 * 3600 * msg.value) / msg.value == startRate - (111 * block.timestamp - openingTime / 24 * 3600)
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x4c5d6d93 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                    require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= (startRate * msg.value) - (111 * block.timestamp - openingTime / 24 * 3600 * msg.value)
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    emit TokenPurchase(msg.value, (startRate * msg.value) - (111 * block.timestamp - openingTime / 24 * 3600 * msg.value), msg.sender, arg1);
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), (startRate * msg.value) - (111 * block.timestamp - openingTime / 24 * 3600 * msg.value)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (startRate * msg.value) - (111 * block.timestamp - openingTime / 24 * 3600 * msg.value):
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9b5b969f with:
                             gas gas_remaining wei
                            args techWalletAddress, 0
                    else:
                        require (startRate * msg.value) - (111 * block.timestamp - openingTime / 24 * 3600 * msg.value)
                        require (69 * startRate * msg.value) - (7659 * block.timestamp - openingTime / 24 * 3600 * msg.value) / (startRate * msg.value) - (111 * block.timestamp - openingTime / 24 * 3600 * msg.value) == 69
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9b5b969f with:
                             gas gas_remaining wei
                            args techWalletAddress, (69 * startRate * msg.value) - (7659 * block.timestamp - openingTime / 24 * 3600 * msg.value) / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xd47d996e with:
                         gas gas_remaining wei
                        args ((startRate * msg.value) - (111 * block.timestamp - openingTime / 24 * 3600 * msg.value))
            else:
                if not msg.value:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x4c5d6d93 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                    require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= 0
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x9b5b969f with:
                         gas gas_remaining wei
                        args techWalletAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xd47d996e with:
                         gas gas_remaining wei
                        args 0
                else:
                    require msg.value
                    require 10000 * msg.value / msg.value == 10000
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x4c5d6d93 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                    require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= 10000 * msg.value
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    emit TokenPurchase(msg.value, 10000 * msg.value, msg.sender, arg1);
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), 10000 * msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 10000 * msg.value:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9b5b969f with:
                             gas gas_remaining wei
                            args techWalletAddress, 0
                    else:
                        require 10000 * msg.value
                        require 690000 * msg.value / 10000 * msg.value == 69
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9b5b969f with:
                             gas gas_remaining wei
                            args techWalletAddress, 690000 * msg.value / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xd47d996e with:
                         gas gas_remaining wei
                        args (10000 * msg.value)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.value:
        require 0 <= msg.value
        call techWalletAddress with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        emit TokenAmount(string arg1, uint256 arg2):
                         0xd47d996e00000000000000000000000000000000000000000000000000000000,
                         msg.value,
                         14,
                         '_forwardFunds ',
        emit TokenAmount(string arg1, uint256 arg2):
                         0xd47d996e00000000000000000000000000000000000000000000000000000000,
                         0,
                         14,
                         '_forwardFunds ',
        emit TokenAmount(string arg1, uint256 arg2):
                         0xd47d996e00000000000000000000000000000000000000000000000000000000,
                         msg.value,
                         14,
                         '_forwardFunds ',
    else:
        require msg.value
        require 69 * msg.value / msg.value == 69
        require 69 * msg.value / 1000 <= msg.value
        call techWalletAddress with:
           value 69 * msg.value / 1000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call walletAddress with:
           value msg.value - (69 * msg.value / 1000) wei
             gas 2300 * is_zero(value) wei
        emit TokenAmount(string arg1, uint256 arg2):
                         0xd47d996e00000000000000000000000000000000000000000000000000000000,
                         msg.value,
                         14,
                         '_forwardFunds ',
        emit TokenAmount(string arg1, uint256 arg2):
                         0xd47d996e00000000000000000000000000000000000000000000000000000000,
                         69 * msg.value / 1000,
                         14,
                         '_forwardFunds ',
        emit TokenAmount(string arg1, uint256 arg2):
                         0xd47d996e00000000000000000000000000000000000000000000000000000000,
                         msg.value - (69 * msg.value / 1000),
                         14,
                         '_forwardFunds ',
}

function _fallback() payable {
    require stor8[address(msg.sender)]
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require msg.value
    require openingTime <= block.timestamp
    if block.timestamp - openingTime < 24 * 3600:
        require block.timestamp <= closingTime
        if closingTime - block.timestamp >= 24 * 3600:
            if not msg.value:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x4c5d6d93 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= 0
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0x9b5b969f with:
                     gas gas_remaining wei
                    args techWalletAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xd47d996e with:
                     gas gas_remaining wei
                    args 0
            else:
                require msg.value
                require msg.value * startRate / msg.value == startRate
                require ext_code.size(tokenAddress)
                call tokenAddress.0x4c5d6d93 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= msg.value * startRate
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                emit TokenPurchase(msg.value, msg.value * startRate, msg.sender, msg.sender);
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, msg.value * startRate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not msg.value * startRate:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x9b5b969f with:
                         gas gas_remaining wei
                        args techWalletAddress, 0
                else:
                    require msg.value * startRate
                    require 69 * msg.value * startRate / msg.value * startRate == 69
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x9b5b969f with:
                         gas gas_remaining wei
                        args techWalletAddress, 69 * msg.value * startRate / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xd47d996e with:
                     gas gas_remaining wei
                    args (msg.value * startRate)
        else:
            if not msg.value:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x4c5d6d93 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= 0
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0x9b5b969f with:
                     gas gas_remaining wei
                    args techWalletAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xd47d996e with:
                     gas gas_remaining wei
                    args 0
            else:
                require msg.value
                require 10000 * msg.value / msg.value == 10000
                require ext_code.size(tokenAddress)
                call tokenAddress.0x4c5d6d93 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= 10000 * msg.value
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                emit TokenPurchase(msg.value, 10000 * msg.value, msg.sender, msg.sender);
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 10000 * msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 10000 * msg.value:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x9b5b969f with:
                         gas gas_remaining wei
                        args techWalletAddress, 0
                else:
                    require 10000 * msg.value
                    require 690000 * msg.value / 10000 * msg.value == 69
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x9b5b969f with:
                         gas gas_remaining wei
                        args techWalletAddress, 690000 * msg.value / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xd47d996e with:
                     gas gas_remaining wei
                    args (10000 * msg.value)
    else:
        if not block.timestamp - openingTime / 24 * 3600:
            require block.timestamp <= closingTime
            if closingTime - block.timestamp >= 24 * 3600:
                if not msg.value:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x4c5d6d93 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                    require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= 0
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x9b5b969f with:
                         gas gas_remaining wei
                        args techWalletAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xd47d996e with:
                         gas gas_remaining wei
                        args 0
                else:
                    require msg.value
                    require msg.value * startRate / msg.value == startRate
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x4c5d6d93 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                    require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= msg.value * startRate
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    emit TokenPurchase(msg.value, msg.value * startRate, msg.sender, msg.sender);
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, msg.value * startRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not msg.value * startRate:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9b5b969f with:
                             gas gas_remaining wei
                            args techWalletAddress, 0
                    else:
                        require msg.value * startRate
                        require 69 * msg.value * startRate / msg.value * startRate == 69
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9b5b969f with:
                             gas gas_remaining wei
                            args techWalletAddress, 69 * msg.value * startRate / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xd47d996e with:
                         gas gas_remaining wei
                        args (msg.value * startRate)
            else:
                if not msg.value:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x4c5d6d93 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                    require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= 0
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x9b5b969f with:
                         gas gas_remaining wei
                        args techWalletAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xd47d996e with:
                         gas gas_remaining wei
                        args 0
                else:
                    require msg.value
                    require 10000 * msg.value / msg.value == 10000
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x4c5d6d93 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                    require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= 10000 * msg.value
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    emit TokenPurchase(msg.value, 10000 * msg.value, msg.sender, msg.sender);
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 10000 * msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 10000 * msg.value:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9b5b969f with:
                             gas gas_remaining wei
                            args techWalletAddress, 0
                    else:
                        require 10000 * msg.value
                        require 690000 * msg.value / 10000 * msg.value == 69
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9b5b969f with:
                             gas gas_remaining wei
                            args techWalletAddress, 690000 * msg.value / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xd47d996e with:
                         gas gas_remaining wei
                        args (10000 * msg.value)
        else:
            require block.timestamp - openingTime / 24 * 3600
            require 111 * block.timestamp - openingTime / 24 * 3600 / block.timestamp - openingTime / 24 * 3600 == 111
            require block.timestamp <= closingTime
            if closingTime - block.timestamp >= 24 * 3600:
                if not msg.value:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x4c5d6d93 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                    require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= 0
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x9b5b969f with:
                         gas gas_remaining wei
                        args techWalletAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xd47d996e with:
                         gas gas_remaining wei
                        args 0
                else:
                    require msg.value
                    require (startRate * msg.value) - (111 * block.timestamp - openingTime / 24 * 3600 * msg.value) / msg.value == startRate - (111 * block.timestamp - openingTime / 24 * 3600)
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x4c5d6d93 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                    require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= (startRate * msg.value) - (111 * block.timestamp - openingTime / 24 * 3600 * msg.value)
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    emit TokenPurchase(msg.value, (startRate * msg.value) - (111 * block.timestamp - openingTime / 24 * 3600 * msg.value), msg.sender, msg.sender);
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (startRate * msg.value) - (111 * block.timestamp - openingTime / 24 * 3600 * msg.value)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (startRate * msg.value) - (111 * block.timestamp - openingTime / 24 * 3600 * msg.value):
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9b5b969f with:
                             gas gas_remaining wei
                            args techWalletAddress, 0
                    else:
                        require (startRate * msg.value) - (111 * block.timestamp - openingTime / 24 * 3600 * msg.value)
                        require (69 * startRate * msg.value) - (7659 * block.timestamp - openingTime / 24 * 3600 * msg.value) / (startRate * msg.value) - (111 * block.timestamp - openingTime / 24 * 3600 * msg.value) == 69
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9b5b969f with:
                             gas gas_remaining wei
                            args techWalletAddress, (69 * startRate * msg.value) - (7659 * block.timestamp - openingTime / 24 * 3600 * msg.value) / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xd47d996e with:
                         gas gas_remaining wei
                        args ((startRate * msg.value) - (111 * block.timestamp - openingTime / 24 * 3600 * msg.value))
            else:
                if not msg.value:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x4c5d6d93 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                    require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= 0
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x9b5b969f with:
                         gas gas_remaining wei
                        args techWalletAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xd47d996e with:
                         gas gas_remaining wei
                        args 0
                else:
                    require msg.value
                    require 10000 * msg.value / msg.value == 10000
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x4c5d6d93 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 18750 * 10^18 * 24 * 3600
                    require -ext_call.return_data[0] + (18750 * 10^18 * 24 * 3600) >= 10000 * msg.value
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    emit TokenPurchase(msg.value, 10000 * msg.value, msg.sender, msg.sender);
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 10000 * msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 10000 * msg.value:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9b5b969f with:
                             gas gas_remaining wei
                            args techWalletAddress, 0
                    else:
                        require 10000 * msg.value
                        require 690000 * msg.value / 10000 * msg.value == 69
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x9b5b969f with:
                             gas gas_remaining wei
                            args techWalletAddress, 690000 * msg.value / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xd47d996e with:
                         gas gas_remaining wei
                        args (10000 * msg.value)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.value:
        require 0 <= msg.value
        call techWalletAddress with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        emit TokenAmount(string arg1, uint256 arg2):
                         0xd47d996e00000000000000000000000000000000000000000000000000000000,
                         msg.value,
                         14,
                         '_forwardFunds ',
        emit TokenAmount(string arg1, uint256 arg2):
                         0xd47d996e00000000000000000000000000000000000000000000000000000000,
                         0,
                         14,
                         '_forwardFunds ',
        emit TokenAmount(string arg1, uint256 arg2):
                         0xd47d996e00000000000000000000000000000000000000000000000000000000,
                         msg.value,
                         14,
                         '_forwardFunds ',
    else:
        require msg.value
        require 69 * msg.value / msg.value == 69
        require 69 * msg.value / 1000 <= msg.value
        call techWalletAddress with:
           value 69 * msg.value / 1000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call walletAddress with:
           value msg.value - (69 * msg.value / 1000) wei
             gas 2300 * is_zero(value) wei
        emit TokenAmount(string arg1, uint256 arg2):
                         0xd47d996e00000000000000000000000000000000000000000000000000000000,
                         msg.value,
                         14,
                         '_forwardFunds ',
        emit TokenAmount(string arg1, uint256 arg2):
                         0xd47d996e00000000000000000000000000000000000000000000000000000000,
                         69 * msg.value / 1000,
                         14,
                         '_forwardFunds ',
        emit TokenAmount(string arg1, uint256 arg2):
                         0xd47d996e00000000000000000000000000000000000000000000000000000000,
                         msg.value - (69 * msg.value / 1000),
                         14,
                         '_forwardFunds ',
}



}

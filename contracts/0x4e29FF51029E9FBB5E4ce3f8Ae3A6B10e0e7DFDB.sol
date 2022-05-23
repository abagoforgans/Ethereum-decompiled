contract main {




// =====================  Runtime code  =====================


const SALE_CAP = 500000000 * 10^18

const SALE_START = (426997 * 3600)

const DECIMALS = 18

const MIN_CONTRIBUTION = 10^17

const SALE0_RATE = 24000

const SALE2_CAP = 500000000 * 10^18

const SALE2_RATE = 20000

const SALE2_END = (428053 * 3600)

const SALE1_RATE = 22000

const SALE1_CAP = 500000000 * 10^18

const DECIMALSFACTOR = 10^18

const TOTALSUPPLY = 1000000000 * 10^18

const SALE_END = (428053 * 3600)

const MULTISIG_TKN = 0x25c7a30f23a107ebf430fdfd582afe1245b690af

const NAME = 'Real Estate Doc Token'

const SALE0_CAP = 400000000 * 10^18

const RESERVE_AMOUNT = 500000000 * 10^18

const SALE1_END = (427333 * 3600)

const MULTISIG_ETH = 0x25c7a30f23a107ebf430fdfd582afe1245b690af

const SALE0_END = (427165 * 3600)

const SYMBOL = 'REDT'


address owner;
uint8 stor1; offset 160
address pendingOwner;
address minterAddress;
address whiteListerAddress;
uint8 stor4; offset 160
address launcherAddress;
address tokenAddress;
uint256 tokensRaised;
uint256 weiRaised;
address whiteListedAddress;
uint256 numContributors;
mapping of uint256 contributions;
array of struct capz;
uint256 capDefault;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884729;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884730;

function minter() {
    return minterAddress
}

function launcher() {
    return launcherAddress
}

function weiRaised() {
    return weiRaised
}

function contributions(address arg1) {
    return contributions[arg1]
}

function whiteListed() {
    return whiteListedAddress
}

function capDefault() {
    return capDefault
}

function paused() {
    return bool(stor1)
}

function tokensRaised() {
    return tokensRaised
}

function capz(uint256 arg1) {
    require arg1 < capz.length
    return capz[arg1].field_0, capz[arg1].field_256
}

function isFinalized() {
    return bool(stor4)
}

function owner() {
    return owner
}

function numContributors() {
    return numContributors
}

function pendingOwner() {
    return pendingOwner
}

function whiteLister() {
    return whiteListerAddress
}

function token() {
    return tokenAddress
}

function setMinter(address arg1) {
    require msg.sender == owner
    minterAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    pendingOwner = arg1
}

function setWhiteLister(address arg1) {
    require msg.sender == owner
    whiteListerAddress = arg1
}

function unpause() {
    require msg.sender == owner
    require stor1
    stor1 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor1
    stor1 = 1
    emit Pause()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function hasEnded() {
    if block.timestamp > 428053 * 3600:
        return (block.timestamp > 428053 * 3600)
    return 500000000 * 10^18 <= tokensRaised
}

function claimOwnership() {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function currentCap() {
    idx = 0
    while idx < capz.length:
        mem[0] = 11
        if block.timestamp >= (3600 * capz[idx].field_0) + (426997 * 3600):
            idx = idx + 1
            continue 
        require idx < capz.length
        return (10^18 * capz[idx].field_256)
    return capDefault
}

function getRateAndCheckCap() {
    require block.timestamp > 426997 * 3600
    if block.timestamp < 427165 * 3600:
        if 400000000 * 10^18 > tokensRaised:
            return 24000
    if block.timestamp < 427333 * 3600:
        if 500000000 * 10^18 > tokensRaised:
            return 22000
    require block.timestamp < 428053 * 3600
    require 500000000 * 10^18 > tokensRaised
    return 20000
}

function initCaps() {
    mem[416] = 10
    mem[448] = 20
    mem[480] = 30
    mem[512] = 40
    mem[544] = 1
    mem[576] = 4
    mem[608] = 12
    mem[640] = 24
    idx = 0
    while idx < 4:
        mem[352] = mem[(32 * idx) + 544]
        mem[384] = mem[(32 * idx) + 416]
        capz.length++
        mem[0] = 11
        stor175B[stor11.length] = mem[(32 * idx) + 544]
        stor175B[stor11.length] = mem[(32 * idx) + 416]
        idx = idx + 1
        continue 
    capDefault = 100
}

function placeTokens(address arg1, uint256 arg2) {
    if minterAddress != msg.sender:
        require msg.sender == owner
    require block.timestamp < 426997 * 3600
    require arg2 + tokensRaised >= tokensRaised
    tokensRaised += arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function tokensUnsold() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x94a08c69 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= ext_call.return_data[0]
    return 0
}

function emergencyERC20Drain(address arg1, uint256 arg2) {
    require msg.sender == minterAddress
    if not arg1:
        call launcherAddress with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args launcherAddress, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function finalize() {
    require msg.sender == owner
    require not stor4
    if block.timestamp <= 428053 * 3600:
        require 500000000 * 10^18 <= tokensRaised
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Finalized()
    stor4 = 1
}

function setCapRec(uint256[] arg1, uint256[] arg2, uint256 arg3) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0
    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = 0
    require msg.sender == owner
    require arg1.length == arg2.length
    capz.length = 0
    if capz.length > 0:
        idx = 0
        while 2 * capz.length > idx:
            capz[idx].field_0 = 0
            capz[idx].field_256 = 0
            idx = idx + 2
            continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * arg1.length) + (32 * idx) + 160]
        require idx < arg1.length
        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = mem[(32 * idx) + 128]
        capz.length++
        mem[0] = 11
        stor175B[stor11.length] = mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        stor175B[stor11.length] = mem[(32 * arg2.length) + (32 * arg1.length) + 192]
        idx = idx + 1
        continue 
    capDefault = arg3
}

function _fallback() payable {
    require not stor1
    idx = 0
    while idx < capz.length:
        mem[0] = 11
        if block.timestamp >= (3600 * capz[idx].field_0) + (426997 * 3600):
            idx = idx + 1
            continue 
        require idx < capz.length
        require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
        require msg.value + contributions[address(msg.sender)] < 10^18 * capz[idx].field_256
        require ext_code.size(whiteListedAddress)
        call whiteListedAddress.whiteList(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if msg.value <= 10^17:
            require msg.value == 4999999999 * 10^17
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require block.timestamp > 426997 * 3600
        if block.timestamp >= 427165 * 3600:
            if block.timestamp >= 427333 * 3600:
                require block.timestamp < 428053 * 3600
                require 500000000 * 10^18 > tokensRaised
                if not msg.value:
                    if not contributions[address(msg.sender)]:
                        numContributors++
                    require tokensRaised >= tokensRaised
                    require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                    contributions[address(msg.sender)] += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, 0, msg.sender);
                else:
                    require 20000 * msg.value / msg.value == 20000
                    if not contributions[address(msg.sender)]:
                        numContributors++
                    require (20000 * msg.value) + tokensRaised >= tokensRaised
                    tokensRaised += 20000 * msg.value
                    require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                    contributions[address(msg.sender)] += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 20000 * msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, 20000 * msg.value, msg.sender);
            else:
                if 500000000 * 10^18 > tokensRaised:
                    if not msg.value:
                        if not contributions[address(msg.sender)]:
                            numContributors++
                        require tokensRaised >= tokensRaised
                        require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                        contributions[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 0, msg.sender);
                    else:
                        require 22000 * msg.value / msg.value == 22000
                        if not contributions[address(msg.sender)]:
                            numContributors++
                        require (22000 * msg.value) + tokensRaised >= tokensRaised
                        tokensRaised += 22000 * msg.value
                        require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                        contributions[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 22000 * msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 22000 * msg.value, msg.sender);
                else:
                    require block.timestamp < 428053 * 3600
                    require 500000000 * 10^18 > tokensRaised
                    if not msg.value:
                        if not contributions[address(msg.sender)]:
                            numContributors++
                        require tokensRaised >= tokensRaised
                        require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                        contributions[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 0, msg.sender);
                    else:
                        require 20000 * msg.value / msg.value == 20000
                        if not contributions[address(msg.sender)]:
                            numContributors++
                        require (20000 * msg.value) + tokensRaised >= tokensRaised
                        tokensRaised += 20000 * msg.value
                        require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                        contributions[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 20000 * msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 20000 * msg.value, msg.sender);
        else:
            if 400000000 * 10^18 > tokensRaised:
                if not msg.value:
                    if not contributions[address(msg.sender)]:
                        numContributors++
                    require tokensRaised >= tokensRaised
                    require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                    contributions[address(msg.sender)] += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, 0, msg.sender);
                else:
                    require 24000 * msg.value / msg.value == 24000
                    if not contributions[address(msg.sender)]:
                        numContributors++
                    require (24000 * msg.value) + tokensRaised >= tokensRaised
                    tokensRaised += 24000 * msg.value
                    require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                    contributions[address(msg.sender)] += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 24000 * msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, 24000 * msg.value, msg.sender);
            else:
                if block.timestamp >= 427333 * 3600:
                    require block.timestamp < 428053 * 3600
                    require 500000000 * 10^18 > tokensRaised
                    if not msg.value:
                        if not contributions[address(msg.sender)]:
                            numContributors++
                        require tokensRaised >= tokensRaised
                        require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                        contributions[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 0, msg.sender);
                    else:
                        require 20000 * msg.value / msg.value == 20000
                        if not contributions[address(msg.sender)]:
                            numContributors++
                        require (20000 * msg.value) + tokensRaised >= tokensRaised
                        tokensRaised += 20000 * msg.value
                        require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                        contributions[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 20000 * msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 20000 * msg.value, msg.sender);
                else:
                    if 500000000 * 10^18 > tokensRaised:
                        if not msg.value:
                            if not contributions[address(msg.sender)]:
                                numContributors++
                            require tokensRaised >= tokensRaised
                            require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                            contributions[address(msg.sender)] += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit TokenPurchase(msg.value, 0, msg.sender);
                        else:
                            require 22000 * msg.value / msg.value == 22000
                            if not contributions[address(msg.sender)]:
                                numContributors++
                            require (22000 * msg.value) + tokensRaised >= tokensRaised
                            tokensRaised += 22000 * msg.value
                            require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                            contributions[address(msg.sender)] += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 22000 * msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit TokenPurchase(msg.value, 22000 * msg.value, msg.sender);
                    else:
                        require block.timestamp < 428053 * 3600
                        require 500000000 * 10^18 > tokensRaised
                        if not msg.value:
                            if not contributions[address(msg.sender)]:
                                numContributors++
                            require tokensRaised >= tokensRaised
                            require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                            contributions[address(msg.sender)] += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit TokenPurchase(msg.value, 0, msg.sender);
                        else:
                            require 20000 * msg.value / msg.value == 20000
                            if not contributions[address(msg.sender)]:
                                numContributors++
                            require (20000 * msg.value) + tokensRaised >= tokensRaised
                            tokensRaised += 20000 * msg.value
                            require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                            contributions[address(msg.sender)] += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 20000 * msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit TokenPurchase(msg.value, 20000 * msg.value, msg.sender);
        call 0x25c7a30f23a107ebf430fdfd582afe1245b690af with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
    require msg.value + contributions[address(msg.sender)] < capDefault
    require ext_code.size(whiteListedAddress)
    call whiteListedAddress.whiteList(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if msg.value <= 10^17:
        require msg.value == 4999999999 * 10^17
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require block.timestamp > 426997 * 3600
    if block.timestamp >= 427165 * 3600:
        if block.timestamp >= 427333 * 3600:
            require block.timestamp < 428053 * 3600
            require 500000000 * 10^18 > tokensRaised
            if not msg.value:
                if not contributions[address(msg.sender)]:
                    numContributors++
                require tokensRaised >= tokensRaised
                require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                contributions[address(msg.sender)] += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, 0, msg.sender);
            else:
                require 20000 * msg.value / msg.value == 20000
                if not contributions[address(msg.sender)]:
                    numContributors++
                require (20000 * msg.value) + tokensRaised >= tokensRaised
                tokensRaised += 20000 * msg.value
                require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                contributions[address(msg.sender)] += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, 20000 * msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, 20000 * msg.value, msg.sender);
        else:
            if 500000000 * 10^18 > tokensRaised:
                if not msg.value:
                    if not contributions[address(msg.sender)]:
                        numContributors++
                    require tokensRaised >= tokensRaised
                    require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                    contributions[address(msg.sender)] += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, 0, msg.sender);
                else:
                    require 22000 * msg.value / msg.value == 22000
                    if not contributions[address(msg.sender)]:
                        numContributors++
                    require (22000 * msg.value) + tokensRaised >= tokensRaised
                    tokensRaised += 22000 * msg.value
                    require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                    contributions[address(msg.sender)] += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 22000 * msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, 22000 * msg.value, msg.sender);
            else:
                require block.timestamp < 428053 * 3600
                require 500000000 * 10^18 > tokensRaised
                if not msg.value:
                    if not contributions[address(msg.sender)]:
                        numContributors++
                    require tokensRaised >= tokensRaised
                    require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                    contributions[address(msg.sender)] += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, 0, msg.sender);
                else:
                    require 20000 * msg.value / msg.value == 20000
                    if not contributions[address(msg.sender)]:
                        numContributors++
                    require (20000 * msg.value) + tokensRaised >= tokensRaised
                    tokensRaised += 20000 * msg.value
                    require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                    contributions[address(msg.sender)] += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 20000 * msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, 20000 * msg.value, msg.sender);
    else:
        if 400000000 * 10^18 > tokensRaised:
            if not msg.value:
                if not contributions[address(msg.sender)]:
                    numContributors++
                require tokensRaised >= tokensRaised
                require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                contributions[address(msg.sender)] += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, 0, msg.sender);
            else:
                require 24000 * msg.value / msg.value == 24000
                if not contributions[address(msg.sender)]:
                    numContributors++
                require (24000 * msg.value) + tokensRaised >= tokensRaised
                tokensRaised += 24000 * msg.value
                require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                contributions[address(msg.sender)] += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, 24000 * msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, 24000 * msg.value, msg.sender);
        else:
            if block.timestamp >= 427333 * 3600:
                require block.timestamp < 428053 * 3600
                require 500000000 * 10^18 > tokensRaised
                if not msg.value:
                    if not contributions[address(msg.sender)]:
                        numContributors++
                    require tokensRaised >= tokensRaised
                    require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                    contributions[address(msg.sender)] += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, 0, msg.sender);
                else:
                    require 20000 * msg.value / msg.value == 20000
                    if not contributions[address(msg.sender)]:
                        numContributors++
                    require (20000 * msg.value) + tokensRaised >= tokensRaised
                    tokensRaised += 20000 * msg.value
                    require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                    contributions[address(msg.sender)] += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 20000 * msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, 20000 * msg.value, msg.sender);
            else:
                if 500000000 * 10^18 > tokensRaised:
                    if not msg.value:
                        if not contributions[address(msg.sender)]:
                            numContributors++
                        require tokensRaised >= tokensRaised
                        require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                        contributions[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 0, msg.sender);
                    else:
                        require 22000 * msg.value / msg.value == 22000
                        if not contributions[address(msg.sender)]:
                            numContributors++
                        require (22000 * msg.value) + tokensRaised >= tokensRaised
                        tokensRaised += 22000 * msg.value
                        require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                        contributions[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 22000 * msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 22000 * msg.value, msg.sender);
                else:
                    require block.timestamp < 428053 * 3600
                    require 500000000 * 10^18 > tokensRaised
                    if not msg.value:
                        if not contributions[address(msg.sender)]:
                            numContributors++
                        require tokensRaised >= tokensRaised
                        require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                        contributions[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 0, msg.sender);
                    else:
                        require 20000 * msg.value / msg.value == 20000
                        if not contributions[address(msg.sender)]:
                            numContributors++
                        require (20000 * msg.value) + tokensRaised >= tokensRaised
                        tokensRaised += 20000 * msg.value
                        require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
                        contributions[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 20000 * msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 20000 * msg.value, msg.sender);
    call 0x25c7a30f23a107ebf430fdfd582afe1245b690af with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

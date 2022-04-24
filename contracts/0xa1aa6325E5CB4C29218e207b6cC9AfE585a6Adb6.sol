contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    stor2 = 10^16
    require not msg.value
    stor0 = msg.sender
    require code.data[11462 len 32] >= block.timestamp
    require code.data[11506 len 20]
    create contract with 0 wei
                    code: code.data[8118 len 3344]
    require create.new_address
    stor1 = address(create.new_address)
    stor3 = 0
    stor9 = code.data[11462 len 32]
    stor4 = 0
    stor10 = code.data[11462 len 32] + (288 * 24 * 3600)
    stor5 = code.data[11506 len 20]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x8faa64b6b2ed30290554128289f3a6de9a97d8f6, 4675000000 * 10^18
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x2ef6ab856a6be9220a0cf3be798b3e05fa29267f, 62500 * 10^18 * 3600
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xe84f002ed596e38d7f1ce048503b13321eb28a98, 300000000 * 10^18
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xb4eb582b0055d9f8b8ad862292ca1b33dfe8215c, 100000000 * 10^18
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xd6f13f05dbb959f8daa6721a088906fef4ad093c, 500000000 * 10^18
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x220ea3406b1b9d72b6386ea29eff73a230d5d51c, 700000000 * 10^18
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x87969413c2388b23c2ac871a61702d1b2d67b9cb, 2000000000 * 10^18
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x8456cb59 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return code.data[1663 len 6455]
}



// =====================  Runtime code  =====================


const sub_db328c00(?) = 250000000 * 10^18

const TOTAL_TOKENS_ICO = 1250000000 * 10^18


address owner;
address tokenAddress;
uint256 MINIMUMCONTIB;
uint256 startTimeIco;
uint256 endTimeIco;
address walletAddress;
uint256 baseRate;
uint256 weiRaised;
uint256 tokensIssuedIco;
uint256 startTimePre;
uint256 endTimePre;
mapping of uint256 contributions;
uint256 totalContributions;
mapping of uint8 stor13;

function startTimePre() {
    return startTimePre
}

function baseRate() {
    return baseRate
}

function totalContributions() {
    return totalContributions
}

function startTimeIco() {
    return startTimeIco
}

function weiRaised() {
    return weiRaised
}

function contributions(address arg1) {
    return contributions[arg1]
}

function endTimeIco() {
    return endTimeIco
}

function wallet() {
    return walletAddress
}

function MINIMUMCONTIB() {
    return MINIMUMCONTIB
}

function endTimePre() {
    return endTimePre
}

function owner() {
    return owner
}

function claimedTokens(address arg1) {
    return bool(stor13[arg1])
}

function tokensIssuedIco() {
    return tokensIssuedIco
}

function token() {
    return tokenAddress
}

function tokenValue() {
    require totalContributions
    return (250000000 * 10^18 / totalContributions)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setBaseRate(uint256 arg1) {
    require owner == msg.sender
    require block.timestamp > endTimePre
    require block.timestamp < startTimeIco
    baseRate = arg1
}

function setICOStart(uint256 arg1) {
    require owner == msg.sender
    require arg1
    require not startTimeIco
    startTimeIco = arg1
    endTimeIco = arg1 + (720 * 24 * 3600)
}

function releaseTokens() {
    require block.timestamp > endTimeIco
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3f4ba83a with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function sub_8e5f6185(?) {
    if block.timestamp - startTimePre < 48 * 24 * 3600:
        return 200
    if block.timestamp - startTimePre < 96 * 24 * 3600:
        return 190
    if block.timestamp - startTimePre < 144 * 24 * 3600:
        return 180
    if block.timestamp - startTimePre < 192 * 24 * 3600:
        return 170
    if block.timestamp - startTimePre < 240 * 24 * 3600:
        return 160
    if block.timestamp - startTimePre >= 288 * 24 * 3600:
        return 0
    return 150
}

function claimTokens() {
    require block.timestamp > endTimePre
    require not stor13[address(msg.sender)]
    require totalContributions
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, 250000000 * 10^18 / totalContributions * contributions[address(msg.sender)]
    require ext_call.success
    stor13[address(msg.sender)] = 1
    emit TokenClaimed((250000000 * 10^18 / totalContributions * contributions[address(msg.sender)]), msg.sender);
}

function getRateIco() {
    if block.timestamp - startTimeIco < 120 * 24 * 3600:
        return baseRate
    if block.timestamp - startTimeIco < 240 * 24 * 3600:
        return (100 * baseRate / 110)
    if block.timestamp - startTimeIco < 360 * 24 * 3600:
        return (100 * baseRate / 120)
    if block.timestamp - startTimeIco < 480 * 24 * 3600:
        return (100 * baseRate / 130)
    if block.timestamp - startTimeIco < 600 * 24 * 3600:
        return (100 * baseRate / 140)
    if block.timestamp - startTimeIco >= 720 * 24 * 3600:
        return 0
    return (100 * baseRate / 160)
}

function _fallback() payable {
    require msg.value >= MINIMUMCONTIB
    if block.timestamp < startTimePre:
        require block.timestamp >= startTimeIco
        require block.timestamp <= endTimeIco
        require msg.value
        require msg.sender
        if block.timestamp - startTimeIco < 120 * 24 * 3600:
            if msg.value:
                require msg.value
                require baseRate * msg.value / msg.value == baseRate
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require (baseRate * msg.value) + tokensIssuedIco >= tokensIssuedIco
            tokensIssuedIco += baseRate * msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, baseRate * msg.value
            require ext_call.success
            require tokensIssuedIco <= 1250000000 * 10^18
            emit TokenPurchase(msg.value, baseRate * msg.value, msg.sender, msg.sender);
        else:
            if block.timestamp - startTimeIco < 240 * 24 * 3600:
                if msg.value:
                    require msg.value
                    require 100 * baseRate / 110 * msg.value / msg.value == 100 * baseRate / 110
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require (100 * baseRate / 110 * msg.value) + tokensIssuedIco >= tokensIssuedIco
                tokensIssuedIco += 100 * baseRate / 110 * msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 100 * baseRate / 110 * msg.value
                require ext_call.success
                require tokensIssuedIco <= 1250000000 * 10^18
                emit TokenPurchase(msg.value, 100 * baseRate / 110 * msg.value, msg.sender, msg.sender);
            else:
                if block.timestamp - startTimeIco < 360 * 24 * 3600:
                    if msg.value:
                        require msg.value
                        require 100 * baseRate / 120 * msg.value / msg.value == 100 * baseRate / 120
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require (100 * baseRate / 120 * msg.value) + tokensIssuedIco >= tokensIssuedIco
                    tokensIssuedIco += 100 * baseRate / 120 * msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 100 * baseRate / 120 * msg.value
                    require ext_call.success
                    require tokensIssuedIco <= 1250000000 * 10^18
                    emit TokenPurchase(msg.value, 100 * baseRate / 120 * msg.value, msg.sender, msg.sender);
                else:
                    if block.timestamp - startTimeIco < 480 * 24 * 3600:
                        if msg.value:
                            require msg.value
                            require 100 * baseRate / 130 * msg.value / msg.value == 100 * baseRate / 130
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require (100 * baseRate / 130 * msg.value) + tokensIssuedIco >= tokensIssuedIco
                        tokensIssuedIco += 100 * baseRate / 130 * msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 100 * baseRate / 130 * msg.value
                        require ext_call.success
                        require tokensIssuedIco <= 1250000000 * 10^18
                        emit TokenPurchase(msg.value, 100 * baseRate / 130 * msg.value, msg.sender, msg.sender);
                    else:
                        if block.timestamp - startTimeIco < 600 * 24 * 3600:
                            if msg.value:
                                require msg.value
                                require 100 * baseRate / 140 * msg.value / msg.value == 100 * baseRate / 140
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require (100 * baseRate / 140 * msg.value) + tokensIssuedIco >= tokensIssuedIco
                            tokensIssuedIco += 100 * baseRate / 140 * msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 100 * baseRate / 140 * msg.value
                            require ext_call.success
                            require tokensIssuedIco <= 1250000000 * 10^18
                            emit TokenPurchase(msg.value, 100 * baseRate / 140 * msg.value, msg.sender, msg.sender);
                        else:
                            if block.timestamp - startTimeIco >= 720 * 24 * 3600:
                                if msg.value:
                                    require msg.value
                                    require not 0 / msg.value
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require tokensIssuedIco >= tokensIssuedIco
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 0
                                require ext_call.success
                                require tokensIssuedIco <= 1250000000 * 10^18
                                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                            else:
                                if msg.value:
                                    require msg.value
                                    require 100 * baseRate / 160 * msg.value / msg.value == 100 * baseRate / 160
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (100 * baseRate / 160 * msg.value) + tokensIssuedIco >= tokensIssuedIco
                                tokensIssuedIco += 100 * baseRate / 160 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 100 * baseRate / 160 * msg.value
                                require ext_call.success
                                require tokensIssuedIco <= 1250000000 * 10^18
                                emit TokenPurchase(msg.value, 100 * baseRate / 160 * msg.value, msg.sender, msg.sender);
    else:
        if block.timestamp > endTimePre:
            require block.timestamp >= startTimeIco
            require block.timestamp <= endTimeIco
            require msg.value
            require msg.sender
            if block.timestamp - startTimeIco < 120 * 24 * 3600:
                if msg.value:
                    require msg.value
                    require baseRate * msg.value / msg.value == baseRate
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require (baseRate * msg.value) + tokensIssuedIco >= tokensIssuedIco
                tokensIssuedIco += baseRate * msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, baseRate * msg.value
                require ext_call.success
                require tokensIssuedIco <= 1250000000 * 10^18
                emit TokenPurchase(msg.value, baseRate * msg.value, msg.sender, msg.sender);
            else:
                if block.timestamp - startTimeIco < 240 * 24 * 3600:
                    if msg.value:
                        require msg.value
                        require 100 * baseRate / 110 * msg.value / msg.value == 100 * baseRate / 110
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require (100 * baseRate / 110 * msg.value) + tokensIssuedIco >= tokensIssuedIco
                    tokensIssuedIco += 100 * baseRate / 110 * msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 100 * baseRate / 110 * msg.value
                    require ext_call.success
                    require tokensIssuedIco <= 1250000000 * 10^18
                    emit TokenPurchase(msg.value, 100 * baseRate / 110 * msg.value, msg.sender, msg.sender);
                else:
                    if block.timestamp - startTimeIco < 360 * 24 * 3600:
                        if msg.value:
                            require msg.value
                            require 100 * baseRate / 120 * msg.value / msg.value == 100 * baseRate / 120
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require (100 * baseRate / 120 * msg.value) + tokensIssuedIco >= tokensIssuedIco
                        tokensIssuedIco += 100 * baseRate / 120 * msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 100 * baseRate / 120 * msg.value
                        require ext_call.success
                        require tokensIssuedIco <= 1250000000 * 10^18
                        emit TokenPurchase(msg.value, 100 * baseRate / 120 * msg.value, msg.sender, msg.sender);
                    else:
                        if block.timestamp - startTimeIco < 480 * 24 * 3600:
                            if msg.value:
                                require msg.value
                                require 100 * baseRate / 130 * msg.value / msg.value == 100 * baseRate / 130
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require (100 * baseRate / 130 * msg.value) + tokensIssuedIco >= tokensIssuedIco
                            tokensIssuedIco += 100 * baseRate / 130 * msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 100 * baseRate / 130 * msg.value
                            require ext_call.success
                            require tokensIssuedIco <= 1250000000 * 10^18
                            emit TokenPurchase(msg.value, 100 * baseRate / 130 * msg.value, msg.sender, msg.sender);
                        else:
                            if block.timestamp - startTimeIco < 600 * 24 * 3600:
                                if msg.value:
                                    require msg.value
                                    require 100 * baseRate / 140 * msg.value / msg.value == 100 * baseRate / 140
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (100 * baseRate / 140 * msg.value) + tokensIssuedIco >= tokensIssuedIco
                                tokensIssuedIco += 100 * baseRate / 140 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 100 * baseRate / 140 * msg.value
                                require ext_call.success
                                require tokensIssuedIco <= 1250000000 * 10^18
                                emit TokenPurchase(msg.value, 100 * baseRate / 140 * msg.value, msg.sender, msg.sender);
                            else:
                                if block.timestamp - startTimeIco >= 720 * 24 * 3600:
                                    if msg.value:
                                        require msg.value
                                        require not 0 / msg.value
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require tokensIssuedIco >= tokensIssuedIco
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 0
                                    require ext_call.success
                                    require tokensIssuedIco <= 1250000000 * 10^18
                                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                else:
                                    if msg.value:
                                        require msg.value
                                        require 100 * baseRate / 160 * msg.value / msg.value == 100 * baseRate / 160
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (100 * baseRate / 160 * msg.value) + tokensIssuedIco >= tokensIssuedIco
                                    tokensIssuedIco += 100 * baseRate / 160 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 100 * baseRate / 160 * msg.value
                                    require ext_call.success
                                    require tokensIssuedIco <= 1250000000 * 10^18
                                    emit TokenPurchase(msg.value, 100 * baseRate / 160 * msg.value, msg.sender, msg.sender);
        else:
            if msg.value:
                require msg.sender
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                if block.timestamp - startTimePre < 48 * 24 * 3600:
                    contributions[address(msg.sender)] += 200 * msg.value / 100
                    require (200 * msg.value / 100) + totalContributions >= totalContributions
                    totalContributions += 200 * msg.value / 100
                    emit WeiContributed(msg.value, 200 * msg.value / 100, msg.sender, msg.sender);
                else:
                    if block.timestamp - startTimePre < 96 * 24 * 3600:
                        contributions[address(msg.sender)] += 190 * msg.value / 100
                        require (190 * msg.value / 100) + totalContributions >= totalContributions
                        totalContributions += 190 * msg.value / 100
                        emit WeiContributed(msg.value, 190 * msg.value / 100, msg.sender, msg.sender);
                    else:
                        if block.timestamp - startTimePre < 144 * 24 * 3600:
                            contributions[address(msg.sender)] += 180 * msg.value / 100
                            require (180 * msg.value / 100) + totalContributions >= totalContributions
                            totalContributions += 180 * msg.value / 100
                            emit WeiContributed(msg.value, 180 * msg.value / 100, msg.sender, msg.sender);
                        else:
                            if block.timestamp - startTimePre < 192 * 24 * 3600:
                                contributions[address(msg.sender)] += 170 * msg.value / 100
                                require (170 * msg.value / 100) + totalContributions >= totalContributions
                                totalContributions += 170 * msg.value / 100
                                emit WeiContributed(msg.value, 170 * msg.value / 100, msg.sender, msg.sender);
                            else:
                                if block.timestamp - startTimePre < 240 * 24 * 3600:
                                    contributions[address(msg.sender)] += 160 * msg.value / 100
                                    require (160 * msg.value / 100) + totalContributions >= totalContributions
                                    totalContributions += 160 * msg.value / 100
                                    emit WeiContributed(msg.value, 160 * msg.value / 100, msg.sender, msg.sender);
                                else:
                                    if block.timestamp - startTimePre >= 288 * 24 * 3600:
                                        require totalContributions >= totalContributions
                                        emit WeiContributed(msg.value, 0, msg.sender, msg.sender);
                                    else:
                                        contributions[address(msg.sender)] += 150 * msg.value / 100
                                        require (150 * msg.value / 100) + totalContributions >= totalContributions
                                        totalContributions += 150 * msg.value / 100
                                        emit WeiContributed(msg.value, 150 * msg.value / 100, msg.sender, msg.sender);
            else:
                require block.timestamp >= startTimeIco
                require block.timestamp <= endTimeIco
                require msg.value
                require msg.sender
                if block.timestamp - startTimeIco < 120 * 24 * 3600:
                    if msg.value:
                        require msg.value
                        require baseRate * msg.value / msg.value == baseRate
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require (baseRate * msg.value) + tokensIssuedIco >= tokensIssuedIco
                    tokensIssuedIco += baseRate * msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, baseRate * msg.value
                    require ext_call.success
                    require tokensIssuedIco <= 1250000000 * 10^18
                    emit TokenPurchase(msg.value, baseRate * msg.value, msg.sender, msg.sender);
                else:
                    if block.timestamp - startTimeIco < 240 * 24 * 3600:
                        if msg.value:
                            require msg.value
                            require 100 * baseRate / 110 * msg.value / msg.value == 100 * baseRate / 110
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require (100 * baseRate / 110 * msg.value) + tokensIssuedIco >= tokensIssuedIco
                        tokensIssuedIco += 100 * baseRate / 110 * msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 100 * baseRate / 110 * msg.value
                        require ext_call.success
                        require tokensIssuedIco <= 1250000000 * 10^18
                        emit TokenPurchase(msg.value, 100 * baseRate / 110 * msg.value, msg.sender, msg.sender);
                    else:
                        if block.timestamp - startTimeIco < 360 * 24 * 3600:
                            if msg.value:
                                require msg.value
                                require 100 * baseRate / 120 * msg.value / msg.value == 100 * baseRate / 120
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require (100 * baseRate / 120 * msg.value) + tokensIssuedIco >= tokensIssuedIco
                            tokensIssuedIco += 100 * baseRate / 120 * msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 100 * baseRate / 120 * msg.value
                            require ext_call.success
                            require tokensIssuedIco <= 1250000000 * 10^18
                            emit TokenPurchase(msg.value, 100 * baseRate / 120 * msg.value, msg.sender, msg.sender);
                        else:
                            if block.timestamp - startTimeIco < 480 * 24 * 3600:
                                if msg.value:
                                    require msg.value
                                    require 100 * baseRate / 130 * msg.value / msg.value == 100 * baseRate / 130
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (100 * baseRate / 130 * msg.value) + tokensIssuedIco >= tokensIssuedIco
                                tokensIssuedIco += 100 * baseRate / 130 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 100 * baseRate / 130 * msg.value
                                require ext_call.success
                                require tokensIssuedIco <= 1250000000 * 10^18
                                emit TokenPurchase(msg.value, 100 * baseRate / 130 * msg.value, msg.sender, msg.sender);
                            else:
                                if block.timestamp - startTimeIco < 600 * 24 * 3600:
                                    if msg.value:
                                        require msg.value
                                        require 100 * baseRate / 140 * msg.value / msg.value == 100 * baseRate / 140
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (100 * baseRate / 140 * msg.value) + tokensIssuedIco >= tokensIssuedIco
                                    tokensIssuedIco += 100 * baseRate / 140 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 100 * baseRate / 140 * msg.value
                                    require ext_call.success
                                    require tokensIssuedIco <= 1250000000 * 10^18
                                    emit TokenPurchase(msg.value, 100 * baseRate / 140 * msg.value, msg.sender, msg.sender);
                                else:
                                    if block.timestamp - startTimeIco >= 720 * 24 * 3600:
                                        if msg.value:
                                            require msg.value
                                            require not 0 / msg.value
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require tokensIssuedIco >= tokensIssuedIco
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 0
                                        require ext_call.success
                                        require tokensIssuedIco <= 1250000000 * 10^18
                                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                    else:
                                        if msg.value:
                                            require msg.value
                                            require 100 * baseRate / 160 * msg.value / msg.value == 100 * baseRate / 160
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (100 * baseRate / 160 * msg.value) + tokensIssuedIco >= tokensIssuedIco
                                        tokensIssuedIco += 100 * baseRate / 160 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 100 * baseRate / 160 * msg.value
                                        require ext_call.success
                                        require tokensIssuedIco <= 1250000000 * 10^18
                                        emit TokenPurchase(msg.value, 100 * baseRate / 160 * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}

contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
address stor5;
address stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    stor2 = 0
    stor7 = 3200 * 10^6
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    require not msg.value
    stor0 = msg.sender
    stor5 = stor0
    stor6 = stor0
    return code.data[373 len 13224]
}



// =====================  Runtime code  =====================


const name = 'indaHash Coin'

const decimals = 6

const atNow = block.timestamp

const symbol = 'IDH'

const CLAWBACK_PERIOD = (2160 * 24 * 3600)

const DATE_PRESALE_START = 1510151400

const BONUS_ICO_WEEK_TWO = 10

const BONUS_PRESALE = 40

const MIN_FUNDING_GOAL = 4 * 10^13

const MIN_CONTRIBUTION = 5 * 10^16

const PRESALE_ETH_CAP = 15000 * 10^18

const DATE_PRESALE_END = (419655 * 3600)

const COOLDOWN_PERIOD = (48 * 24 * 3600)

const TOKEN_SUPPLY_MKT = 8 * 10^13

const MAX_CONTRIBUTION = 300 * 10^18

const DATE_ICO_START = (419991 * 3600)

const DATE_ICO_END = (420495 * 3600)

const BONUS_ICO_WEEK_ONE = 20

const TOKEN_SUPPLY_ICO = 32 * 10^13

const TOKEN_SUPPLY_TOTAL = 4 * 10^14


address owner;
address newOwner;
uint256 tokensIssuedTotal;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address walletAddress;
address adminWalletAddress;
uint256 tokensPerEth;
uint256 icoEtherReceived;
uint256 tokensIssuedIco;
uint256 tokensIssuedMkt;
uint256 tokensClaimedAirdrop;
mapping of uint256 icoEtherContributed;
mapping of uint256 icoTokensReceived;
mapping of uint8 stor14;
mapping of uint8 stor15;

function totalSupply() {
    return tokensIssuedTotal
}

function icoEtherContributed(address arg1) {
    return icoEtherContributed[arg1]
}

function adminWallet() {
    return adminWalletAddress
}

function wallet() {
    return walletAddress
}

function tokensClaimedAirdrop() {
    return tokensClaimedAirdrop
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function tokensIssuedTotal() {
    return tokensIssuedTotal
}

function owner() {
    return owner
}

function refundClaimed(address arg1) {
    return bool(stor15[arg1])
}

function tokensPerEth() {
    return tokensPerEth
}

function icoTokensReceived(address arg1) {
    return icoTokensReceived[arg1]
}

function airdropClaimed(address arg1) {
    return bool(stor14[arg1])
}

function newOwner() {
    return newOwner
}

function tokensIssuedIco() {
    return tokensIssuedIco
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function tokensIssuedMkt() {
    return tokensIssuedMkt
}

function icoEtherReceived() {
    return icoEtherReceived
}

function icoThresholdReached() {
    if tokensIssuedIco >= 4 * 10^13:
        return 1
    else:
        return 0
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
}

function setWallet(address arg1) {
    require msg.sender == owner
    require arg1
    walletAddress = arg1
    emit WalletUpdated(walletAddress);
}

function setAdminWallet(address arg1) {
    require msg.sender == owner
    require arg1
    adminWalletAddress = arg1
    emit AdminWalletUpdated(adminWalletAddress);
}

function updateTokensPerEth(uint256 arg1) {
    require msg.sender == owner
    require block.timestamp < 1510151400
    tokensPerEth = arg1
    emit TokensPerEthUpdated(arg1);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    require arg1
    emit OwnershipTransferProposed(owner, arg1);
    newOwner = arg1
}

function isTransferable() {
    if tokensIssuedIco >= 4 * 10^13:
        if block.timestamp >= 420543 * 3600:
            return 1
        else:
            return 0
    else:
        return 0
}

function approve(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function ownerClawback() {
    require msg.sender == owner
    require block.timestamp > 422655 * 3600
    call walletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require tokensIssuedIco >= 4 * 10^13
    require block.timestamp >= 420543 * 3600
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mintMarketing(address arg1, uint256 arg2) {
    require msg.sender == owner
    require tokensIssuedMkt <= 8 * 10^13
    require arg2 <= -tokensIssuedMkt + 8 * 10^13
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require tokensIssuedMkt + arg2 >= tokensIssuedMkt
    tokensIssuedMkt += arg2
    require tokensIssuedTotal + arg2 >= tokensIssuedTotal
    tokensIssuedTotal += arg2
    emit Transfer(arg2, 0, arg1);
    emit TokensMinted(arg2, balanceOf[address(arg1)], arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require tokensIssuedIco >= 4 * 10^13
    require block.timestamp >= 420543 * 3600
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function computeAirdrop(address arg1) {
    if block.timestamp < 420495 * 3600:
        return 0
    if tokensIssuedIco < 4 * 10^13:
        return 0
    if stor14[address(arg1)]:
        return 0
    if not icoTokensReceived[address(arg1)]:
        return 0
    if not icoTokensReceived[address(arg1)]:
        if tokensIssuedIco:
            return ((32 * 10^13 * icoTokensReceived[address(arg1)] / tokensIssuedIco) - icoTokensReceived[address(arg1)])
    else:
        if icoTokensReceived[address(arg1)]:
            if 32 * 10^13 * icoTokensReceived[address(arg1)] / icoTokensReceived[address(arg1)] == 32 * 10^13:
                if tokensIssuedIco:
                    return ((32 * 10^13 * icoTokensReceived[address(arg1)] / tokensIssuedIco) - icoTokensReceived[address(arg1)])
    revert
}

function reclaimFunds() {
    require block.timestamp > 420495 * 3600
    require tokensIssuedIco < 4 * 10^13
    require not stor15[address(msg.sender)]
    require icoEtherContributed[address(msg.sender)] > 0
    require icoTokensReceived[address(msg.sender)] <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= icoTokensReceived[address(msg.sender)]
    require icoTokensReceived[address(msg.sender)] <= tokensIssuedTotal
    tokensIssuedTotal -= icoTokensReceived[address(msg.sender)]
    stor15[address(msg.sender)] = 1
    call msg.sender with:
       value icoEtherContributed[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(icoTokensReceived[address(msg.sender)], msg.sender, 0);
    emit Refund(icoEtherContributed[address(msg.sender)], icoTokensReceived[address(msg.sender)], msg.sender);
}

function transferMultiple(address[] arg1, uint256[] arg2) {
    require tokensIssuedIco >= 4 * 10^13
    require block.timestamp >= 420543 * 3600
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require balanceOf[address(msg.sender)] >= cd[((32 * idx) + arg2 + 36)]
        require cd[((32 * idx) + arg2 + 36)] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= cd[((32 * idx) + arg2 + 36)]
        require balanceOf[address(cd[((32 * idx) + arg1 + 36)])] + cd[((32 * idx) + arg2 + 36)] >= balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 3
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)]
        mem[96] = cd[((32 * idx) + arg2 + 36)]
        emit Transfer(cd[((32 * idx) + arg2 + 36)], msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function adminClaimAirdrop(address arg1) {
    require msg.sender == adminWalletAddress
    require block.timestamp >= 420495 * 3600
    require tokensIssuedIco >= 4 * 10^13
    require not stor14[address(arg1)]
    require icoTokensReceived[address(arg1)]
    if icoTokensReceived[address(arg1)]:
        require icoTokensReceived[address(arg1)]
        require 32 * 10^13 * icoTokensReceived[address(arg1)] / icoTokensReceived[address(arg1)] == 32 * 10^13
    require tokensIssuedIco
    require (32 * 10^13 * icoTokensReceived[address(arg1)] / tokensIssuedIco) - icoTokensReceived[address(arg1)] > 0
    stor14[address(arg1)] = 1
    require balanceOf[address(arg1)] + (32 * 10^13 * icoTokensReceived[address(arg1)] / tokensIssuedIco) - icoTokensReceived[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (32 * 10^13 * icoTokensReceived[address(arg1)] / tokensIssuedIco) - icoTokensReceived[address(arg1)]
    require tokensIssuedTotal + (32 * 10^13 * icoTokensReceived[address(arg1)] / tokensIssuedIco) - icoTokensReceived[address(arg1)] >= tokensIssuedTotal
    tokensIssuedTotal = tokensIssuedTotal + (32 * 10^13 * icoTokensReceived[address(arg1)] / tokensIssuedIco) - icoTokensReceived[address(arg1)]
    require tokensClaimedAirdrop + (32 * 10^13 * icoTokensReceived[address(arg1)] / tokensIssuedIco) - icoTokensReceived[address(arg1)] >= tokensClaimedAirdrop
    tokensClaimedAirdrop = tokensClaimedAirdrop + (32 * 10^13 * icoTokensReceived[address(arg1)] / tokensIssuedIco) - icoTokensReceived[address(arg1)]
    emit Airdrop((32 * 10^13 * icoTokensReceived[address(arg1)] / tokensIssuedIco) - icoTokensReceived[address(arg1)], balanceOf[address(arg1)], arg1);
    emit Transfer(((32 * 10^13 * icoTokensReceived[address(arg1)] / tokensIssuedIco) - icoTokensReceived[address(arg1)]), 0, arg1);
}

function claimAirdrop() {
    require block.timestamp >= 420495 * 3600
    require tokensIssuedIco >= 4 * 10^13
    require not stor14[address(msg.sender)]
    require icoTokensReceived[address(msg.sender)]
    if icoTokensReceived[address(msg.sender)]:
        require icoTokensReceived[address(msg.sender)]
        require 32 * 10^13 * icoTokensReceived[address(msg.sender)] / icoTokensReceived[address(msg.sender)] == 32 * 10^13
    require tokensIssuedIco
    require (32 * 10^13 * icoTokensReceived[address(msg.sender)] / tokensIssuedIco) - icoTokensReceived[address(msg.sender)] > 0
    stor14[address(msg.sender)] = 1
    require balanceOf[address(msg.sender)] + (32 * 10^13 * icoTokensReceived[address(msg.sender)] / tokensIssuedIco) - icoTokensReceived[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (32 * 10^13 * icoTokensReceived[address(msg.sender)] / tokensIssuedIco) - icoTokensReceived[address(msg.sender)]
    require tokensIssuedTotal + (32 * 10^13 * icoTokensReceived[address(msg.sender)] / tokensIssuedIco) - icoTokensReceived[address(msg.sender)] >= tokensIssuedTotal
    tokensIssuedTotal = tokensIssuedTotal + (32 * 10^13 * icoTokensReceived[address(msg.sender)] / tokensIssuedIco) - icoTokensReceived[address(msg.sender)]
    require tokensClaimedAirdrop + (32 * 10^13 * icoTokensReceived[address(msg.sender)] / tokensIssuedIco) - icoTokensReceived[address(msg.sender)] >= tokensClaimedAirdrop
    tokensClaimedAirdrop = tokensClaimedAirdrop + (32 * 10^13 * icoTokensReceived[address(msg.sender)] / tokensIssuedIco) - icoTokensReceived[address(msg.sender)]
    emit Airdrop((32 * 10^13 * icoTokensReceived[address(msg.sender)] / tokensIssuedIco) - icoTokensReceived[address(msg.sender)], balanceOf[address(msg.sender)], msg.sender);
    emit Transfer(((32 * 10^13 * icoTokensReceived[address(msg.sender)] / tokensIssuedIco) - icoTokensReceived[address(msg.sender)]), 0, msg.sender);
}

function adminClaimAirdropMultiple(address[] arg1) {
    require msg.sender == adminWalletAddress
    idx = 0
    while idx < arg1.length:
        require block.timestamp >= 420495 * 3600
        require tokensIssuedIco >= 4 * 10^13
        require not stor14[address(cd[((32 * idx) + arg1 + 36)])]
        require icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])]
        if icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])]:
            require icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])]
            require 32 * 10^13 * icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] / icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] == 32 * 10^13
        require tokensIssuedIco
        require (32 * 10^13 * icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] / tokensIssuedIco) - icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] > 0
        stor14[address(cd[((32 * idx) + arg1 + 36)])] = 1
        require balanceOf[address(cd[((32 * idx) + arg1 + 36)])] + (32 * 10^13 * icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] / tokensIssuedIco) - icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] >= balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] = balanceOf[address(cd[((32 * idx) + arg1 + 36)])] + (32 * 10^13 * icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] / tokensIssuedIco) - icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])]
        require tokensIssuedTotal + (32 * 10^13 * icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] / tokensIssuedIco) - icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] >= tokensIssuedTotal
        tokensIssuedTotal = tokensIssuedTotal + (32 * 10^13 * icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] / tokensIssuedIco) - icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])]
        require tokensClaimedAirdrop + (32 * 10^13 * icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] / tokensIssuedIco) - icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] >= tokensClaimedAirdrop
        tokensClaimedAirdrop = tokensClaimedAirdrop + (32 * 10^13 * icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] / tokensIssuedIco) - icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])]
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 3
        mem[128] = balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        emit Airdrop((32 * 10^13 * icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] / tokensIssuedIco) - icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])], balanceOf[address(cd[((32 * idx) + arg1 + 36)])], address(cd[((32 * idx) + arg1 + 36)]));
        mem[96] = (32 * 10^13 * icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] / tokensIssuedIco) - icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])]
        emit Transfer(((32 * 10^13 * icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] / tokensIssuedIco) - icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])]), 0, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function _fallback() payable {
    require msg.value >= 5 * 10^16
    require icoEtherContributed[address(msg.sender)] + msg.value >= icoEtherContributed[address(msg.sender)]
    require icoEtherContributed[address(msg.sender)] + msg.value <= 300 * 10^18
    require block.timestamp > 1510151400
    if block.timestamp >= 419655 * 3600:
        require block.timestamp > 419991 * 3600
        require block.timestamp < 420495 * 3600
        if not tokensPerEth:
            if block.timestamp >= 420159 * 3600:
                if block.timestamp >= 420327 * 3600:
                    require tokensIssuedIco + (tokensPerEth * msg.value / 10^18) >= tokensIssuedIco
                    require tokensIssuedIco + (tokensPerEth * msg.value / 10^18) <= 32 * 10^13
                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                    require icoTokensReceived[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= icoTokensReceived[address(msg.sender)]
                    icoTokensReceived[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                    require tokensIssuedIco + (tokensPerEth * msg.value / 10^18) >= tokensIssuedIco
                    tokensIssuedIco += tokensPerEth * msg.value / 10^18
                    require tokensIssuedTotal + (tokensPerEth * msg.value / 10^18) >= tokensIssuedTotal
                    tokensIssuedTotal += tokensPerEth * msg.value / 10^18
                    require icoEtherReceived + msg.value >= icoEtherReceived
                    icoEtherReceived += msg.value
                    require icoEtherContributed[address(msg.sender)] + msg.value >= icoEtherContributed[address(msg.sender)]
                    icoEtherContributed[address(msg.sender)] += msg.value
                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                    emit TokensIssued(tokensPerEth * msg.value / 10^18, balanceOf[address(msg.sender)], msg.value, msg.sender);
                    if tokensIssuedIco >= 4 * 10^13:
                        call walletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                else:
                    if not tokensPerEth * msg.value / 10^18:
                        require tokensIssuedIco + (110 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                        require tokensIssuedIco + (110 * tokensPerEth * msg.value / 10^18 / 100) <= 32 * 10^13
                        require balanceOf[address(msg.sender)] + (110 * tokensPerEth * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 110 * tokensPerEth * msg.value / 10^18 / 100
                        require icoTokensReceived[address(msg.sender)] + (110 * tokensPerEth * msg.value / 10^18 / 100) >= icoTokensReceived[address(msg.sender)]
                        icoTokensReceived[address(msg.sender)] += 110 * tokensPerEth * msg.value / 10^18 / 100
                        require tokensIssuedIco + (110 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                        tokensIssuedIco += 110 * tokensPerEth * msg.value / 10^18 / 100
                        require tokensIssuedTotal + (110 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedTotal
                        tokensIssuedTotal += 110 * tokensPerEth * msg.value / 10^18 / 100
                        require icoEtherReceived + msg.value >= icoEtherReceived
                        icoEtherReceived += msg.value
                        require icoEtherContributed[address(msg.sender)] + msg.value >= icoEtherContributed[address(msg.sender)]
                        icoEtherContributed[address(msg.sender)] += msg.value
                        emit Transfer((110 * tokensPerEth * msg.value / 10^18 / 100), 0, msg.sender);
                        emit TokensIssued(110 * tokensPerEth * msg.value / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                        if tokensIssuedIco >= 4 * 10^13:
                            call walletAddress with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                    else:
                        require tokensPerEth * msg.value / 10^18
                        require 110 * tokensPerEth * msg.value / 10^18 / tokensPerEth * msg.value / 10^18 == 110
                        require tokensIssuedIco + (110 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                        require tokensIssuedIco + (110 * tokensPerEth * msg.value / 10^18 / 100) <= 32 * 10^13
                        require balanceOf[address(msg.sender)] + (110 * tokensPerEth * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 110 * tokensPerEth * msg.value / 10^18 / 100
                        require icoTokensReceived[address(msg.sender)] + (110 * tokensPerEth * msg.value / 10^18 / 100) >= icoTokensReceived[address(msg.sender)]
                        icoTokensReceived[address(msg.sender)] += 110 * tokensPerEth * msg.value / 10^18 / 100
                        require tokensIssuedIco + (110 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                        tokensIssuedIco += 110 * tokensPerEth * msg.value / 10^18 / 100
                        require tokensIssuedTotal + (110 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedTotal
                        tokensIssuedTotal += 110 * tokensPerEth * msg.value / 10^18 / 100
                        require icoEtherReceived + msg.value >= icoEtherReceived
                        icoEtherReceived += msg.value
                        require icoEtherContributed[address(msg.sender)] + msg.value >= icoEtherContributed[address(msg.sender)]
                        icoEtherContributed[address(msg.sender)] += msg.value
                        emit Transfer((110 * tokensPerEth * msg.value / 10^18 / 100), 0, msg.sender);
                        emit TokensIssued(110 * tokensPerEth * msg.value / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                        if tokensIssuedIco >= 4 * 10^13:
                            call walletAddress with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
            else:
                if not tokensPerEth * msg.value / 10^18:
                    require tokensIssuedIco + (120 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                    require tokensIssuedIco + (120 * tokensPerEth * msg.value / 10^18 / 100) <= 32 * 10^13
                    require balanceOf[address(msg.sender)] + (120 * tokensPerEth * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 120 * tokensPerEth * msg.value / 10^18 / 100
                    require icoTokensReceived[address(msg.sender)] + (120 * tokensPerEth * msg.value / 10^18 / 100) >= icoTokensReceived[address(msg.sender)]
                    icoTokensReceived[address(msg.sender)] += 120 * tokensPerEth * msg.value / 10^18 / 100
                    require tokensIssuedIco + (120 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                    tokensIssuedIco += 120 * tokensPerEth * msg.value / 10^18 / 100
                    require tokensIssuedTotal + (120 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedTotal
                    tokensIssuedTotal += 120 * tokensPerEth * msg.value / 10^18 / 100
                    require icoEtherReceived + msg.value >= icoEtherReceived
                    icoEtherReceived += msg.value
                    require icoEtherContributed[address(msg.sender)] + msg.value >= icoEtherContributed[address(msg.sender)]
                    icoEtherContributed[address(msg.sender)] += msg.value
                    emit Transfer((120 * tokensPerEth * msg.value / 10^18 / 100), 0, msg.sender);
                    emit TokensIssued(120 * tokensPerEth * msg.value / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                    if tokensIssuedIco >= 4 * 10^13:
                        call walletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                else:
                    require tokensPerEth * msg.value / 10^18
                    require 120 * tokensPerEth * msg.value / 10^18 / tokensPerEth * msg.value / 10^18 == 120
                    require tokensIssuedIco + (120 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                    require tokensIssuedIco + (120 * tokensPerEth * msg.value / 10^18 / 100) <= 32 * 10^13
                    require balanceOf[address(msg.sender)] + (120 * tokensPerEth * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 120 * tokensPerEth * msg.value / 10^18 / 100
                    require icoTokensReceived[address(msg.sender)] + (120 * tokensPerEth * msg.value / 10^18 / 100) >= icoTokensReceived[address(msg.sender)]
                    icoTokensReceived[address(msg.sender)] += 120 * tokensPerEth * msg.value / 10^18 / 100
                    require tokensIssuedIco + (120 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                    tokensIssuedIco += 120 * tokensPerEth * msg.value / 10^18 / 100
                    require tokensIssuedTotal + (120 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedTotal
                    tokensIssuedTotal += 120 * tokensPerEth * msg.value / 10^18 / 100
                    require icoEtherReceived + msg.value >= icoEtherReceived
                    icoEtherReceived += msg.value
                    require icoEtherContributed[address(msg.sender)] + msg.value >= icoEtherContributed[address(msg.sender)]
                    icoEtherContributed[address(msg.sender)] += msg.value
                    emit Transfer((120 * tokensPerEth * msg.value / 10^18 / 100), 0, msg.sender);
                    emit TokensIssued(120 * tokensPerEth * msg.value / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                    if tokensIssuedIco >= 4 * 10^13:
                        call walletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
        else:
            require tokensPerEth
            require tokensPerEth * msg.value / tokensPerEth == msg.value
            if block.timestamp >= 420159 * 3600:
                if block.timestamp >= 420327 * 3600:
                    require tokensIssuedIco + (tokensPerEth * msg.value / 10^18) >= tokensIssuedIco
                    require tokensIssuedIco + (tokensPerEth * msg.value / 10^18) <= 32 * 10^13
                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                    require icoTokensReceived[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= icoTokensReceived[address(msg.sender)]
                    icoTokensReceived[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                    require tokensIssuedIco + (tokensPerEth * msg.value / 10^18) >= tokensIssuedIco
                    tokensIssuedIco += tokensPerEth * msg.value / 10^18
                    require tokensIssuedTotal + (tokensPerEth * msg.value / 10^18) >= tokensIssuedTotal
                    tokensIssuedTotal += tokensPerEth * msg.value / 10^18
                    require icoEtherReceived + msg.value >= icoEtherReceived
                    icoEtherReceived += msg.value
                    require icoEtherContributed[address(msg.sender)] + msg.value >= icoEtherContributed[address(msg.sender)]
                    icoEtherContributed[address(msg.sender)] += msg.value
                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                    emit TokensIssued(tokensPerEth * msg.value / 10^18, balanceOf[address(msg.sender)], msg.value, msg.sender);
                    if tokensIssuedIco >= 4 * 10^13:
                        call walletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                else:
                    if not tokensPerEth * msg.value / 10^18:
                        require tokensIssuedIco + (110 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                        require tokensIssuedIco + (110 * tokensPerEth * msg.value / 10^18 / 100) <= 32 * 10^13
                        require balanceOf[address(msg.sender)] + (110 * tokensPerEth * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 110 * tokensPerEth * msg.value / 10^18 / 100
                        require icoTokensReceived[address(msg.sender)] + (110 * tokensPerEth * msg.value / 10^18 / 100) >= icoTokensReceived[address(msg.sender)]
                        icoTokensReceived[address(msg.sender)] += 110 * tokensPerEth * msg.value / 10^18 / 100
                        require tokensIssuedIco + (110 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                        tokensIssuedIco += 110 * tokensPerEth * msg.value / 10^18 / 100
                        require tokensIssuedTotal + (110 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedTotal
                        tokensIssuedTotal += 110 * tokensPerEth * msg.value / 10^18 / 100
                        require icoEtherReceived + msg.value >= icoEtherReceived
                        icoEtherReceived += msg.value
                        require icoEtherContributed[address(msg.sender)] + msg.value >= icoEtherContributed[address(msg.sender)]
                        icoEtherContributed[address(msg.sender)] += msg.value
                        emit Transfer((110 * tokensPerEth * msg.value / 10^18 / 100), 0, msg.sender);
                        emit TokensIssued(110 * tokensPerEth * msg.value / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                        if tokensIssuedIco >= 4 * 10^13:
                            call walletAddress with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                    else:
                        require tokensPerEth * msg.value / 10^18
                        require 110 * tokensPerEth * msg.value / 10^18 / tokensPerEth * msg.value / 10^18 == 110
                        require tokensIssuedIco + (110 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                        require tokensIssuedIco + (110 * tokensPerEth * msg.value / 10^18 / 100) <= 32 * 10^13
                        require balanceOf[address(msg.sender)] + (110 * tokensPerEth * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 110 * tokensPerEth * msg.value / 10^18 / 100
                        require icoTokensReceived[address(msg.sender)] + (110 * tokensPerEth * msg.value / 10^18 / 100) >= icoTokensReceived[address(msg.sender)]
                        icoTokensReceived[address(msg.sender)] += 110 * tokensPerEth * msg.value / 10^18 / 100
                        require tokensIssuedIco + (110 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                        tokensIssuedIco += 110 * tokensPerEth * msg.value / 10^18 / 100
                        require tokensIssuedTotal + (110 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedTotal
                        tokensIssuedTotal += 110 * tokensPerEth * msg.value / 10^18 / 100
                        require icoEtherReceived + msg.value >= icoEtherReceived
                        icoEtherReceived += msg.value
                        require icoEtherContributed[address(msg.sender)] + msg.value >= icoEtherContributed[address(msg.sender)]
                        icoEtherContributed[address(msg.sender)] += msg.value
                        emit Transfer((110 * tokensPerEth * msg.value / 10^18 / 100), 0, msg.sender);
                        emit TokensIssued(110 * tokensPerEth * msg.value / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                        if tokensIssuedIco >= 4 * 10^13:
                            call walletAddress with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
            else:
                if not tokensPerEth * msg.value / 10^18:
                    require tokensIssuedIco + (120 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                    require tokensIssuedIco + (120 * tokensPerEth * msg.value / 10^18 / 100) <= 32 * 10^13
                    require balanceOf[address(msg.sender)] + (120 * tokensPerEth * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 120 * tokensPerEth * msg.value / 10^18 / 100
                    require icoTokensReceived[address(msg.sender)] + (120 * tokensPerEth * msg.value / 10^18 / 100) >= icoTokensReceived[address(msg.sender)]
                    icoTokensReceived[address(msg.sender)] += 120 * tokensPerEth * msg.value / 10^18 / 100
                    require tokensIssuedIco + (120 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                    tokensIssuedIco += 120 * tokensPerEth * msg.value / 10^18 / 100
                    require tokensIssuedTotal + (120 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedTotal
                    tokensIssuedTotal += 120 * tokensPerEth * msg.value / 10^18 / 100
                    require icoEtherReceived + msg.value >= icoEtherReceived
                    icoEtherReceived += msg.value
                    require icoEtherContributed[address(msg.sender)] + msg.value >= icoEtherContributed[address(msg.sender)]
                    icoEtherContributed[address(msg.sender)] += msg.value
                    emit Transfer((120 * tokensPerEth * msg.value / 10^18 / 100), 0, msg.sender);
                    emit TokensIssued(120 * tokensPerEth * msg.value / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                    if tokensIssuedIco >= 4 * 10^13:
                        call walletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                else:
                    require tokensPerEth * msg.value / 10^18
                    require 120 * tokensPerEth * msg.value / 10^18 / tokensPerEth * msg.value / 10^18 == 120
                    require tokensIssuedIco + (120 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                    require tokensIssuedIco + (120 * tokensPerEth * msg.value / 10^18 / 100) <= 32 * 10^13
                    require balanceOf[address(msg.sender)] + (120 * tokensPerEth * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 120 * tokensPerEth * msg.value / 10^18 / 100
                    require icoTokensReceived[address(msg.sender)] + (120 * tokensPerEth * msg.value / 10^18 / 100) >= icoTokensReceived[address(msg.sender)]
                    icoTokensReceived[address(msg.sender)] += 120 * tokensPerEth * msg.value / 10^18 / 100
                    require tokensIssuedIco + (120 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                    tokensIssuedIco += 120 * tokensPerEth * msg.value / 10^18 / 100
                    require tokensIssuedTotal + (120 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedTotal
                    tokensIssuedTotal += 120 * tokensPerEth * msg.value / 10^18 / 100
                    require icoEtherReceived + msg.value >= icoEtherReceived
                    icoEtherReceived += msg.value
                    require icoEtherContributed[address(msg.sender)] + msg.value >= icoEtherContributed[address(msg.sender)]
                    icoEtherContributed[address(msg.sender)] += msg.value
                    emit Transfer((120 * tokensPerEth * msg.value / 10^18 / 100), 0, msg.sender);
                    emit TokensIssued(120 * tokensPerEth * msg.value / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                    if tokensIssuedIco >= 4 * 10^13:
                        call walletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
    else:
        if block.timestamp <= 419991 * 3600:
            require icoEtherReceived + msg.value >= icoEtherReceived
            require icoEtherReceived + msg.value <= 15000 * 10^18
            if not tokensPerEth:
                if not tokensPerEth * msg.value / 10^18:
                    require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                    require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) <= 32 * 10^13
                    require balanceOf[address(msg.sender)] + (140 * tokensPerEth * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 140 * tokensPerEth * msg.value / 10^18 / 100
                    require icoTokensReceived[address(msg.sender)] + (140 * tokensPerEth * msg.value / 10^18 / 100) >= icoTokensReceived[address(msg.sender)]
                    icoTokensReceived[address(msg.sender)] += 140 * tokensPerEth * msg.value / 10^18 / 100
                    require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                    tokensIssuedIco += 140 * tokensPerEth * msg.value / 10^18 / 100
                    require tokensIssuedTotal + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedTotal
                    tokensIssuedTotal += 140 * tokensPerEth * msg.value / 10^18 / 100
                    require icoEtherReceived + msg.value >= icoEtherReceived
                    icoEtherReceived += msg.value
                    require icoEtherContributed[address(msg.sender)] + msg.value >= icoEtherContributed[address(msg.sender)]
                    icoEtherContributed[address(msg.sender)] += msg.value
                    emit Transfer((140 * tokensPerEth * msg.value / 10^18 / 100), 0, msg.sender);
                    emit TokensIssued(140 * tokensPerEth * msg.value / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                    if tokensIssuedIco >= 4 * 10^13:
                        call walletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                else:
                    require tokensPerEth * msg.value / 10^18
                    require 140 * tokensPerEth * msg.value / 10^18 / tokensPerEth * msg.value / 10^18 == 140
                    require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                    require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) <= 32 * 10^13
                    require balanceOf[address(msg.sender)] + (140 * tokensPerEth * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 140 * tokensPerEth * msg.value / 10^18 / 100
                    require icoTokensReceived[address(msg.sender)] + (140 * tokensPerEth * msg.value / 10^18 / 100) >= icoTokensReceived[address(msg.sender)]
                    icoTokensReceived[address(msg.sender)] += 140 * tokensPerEth * msg.value / 10^18 / 100
                    require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                    tokensIssuedIco += 140 * tokensPerEth * msg.value / 10^18 / 100
                    require tokensIssuedTotal + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedTotal
                    tokensIssuedTotal += 140 * tokensPerEth * msg.value / 10^18 / 100
                    require icoEtherReceived + msg.value >= icoEtherReceived
                    icoEtherReceived += msg.value
                    require icoEtherContributed[address(msg.sender)] + msg.value >= icoEtherContributed[address(msg.sender)]
                    icoEtherContributed[address(msg.sender)] += msg.value
                    emit Transfer((140 * tokensPerEth * msg.value / 10^18 / 100), 0, msg.sender);
                    emit TokensIssued(140 * tokensPerEth * msg.value / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                    if tokensIssuedIco >= 4 * 10^13:
                        call walletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
            else:
                require tokensPerEth
                require tokensPerEth * msg.value / tokensPerEth == msg.value
                if not tokensPerEth * msg.value / 10^18:
                    require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                    require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) <= 32 * 10^13
                    require balanceOf[address(msg.sender)] + (140 * tokensPerEth * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 140 * tokensPerEth * msg.value / 10^18 / 100
                    require icoTokensReceived[address(msg.sender)] + (140 * tokensPerEth * msg.value / 10^18 / 100) >= icoTokensReceived[address(msg.sender)]
                    icoTokensReceived[address(msg.sender)] += 140 * tokensPerEth * msg.value / 10^18 / 100
                    require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                    tokensIssuedIco += 140 * tokensPerEth * msg.value / 10^18 / 100
                    require tokensIssuedTotal + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedTotal
                    tokensIssuedTotal += 140 * tokensPerEth * msg.value / 10^18 / 100
                    require icoEtherReceived + msg.value >= icoEtherReceived
                    icoEtherReceived += msg.value
                    require icoEtherContributed[address(msg.sender)] + msg.value >= icoEtherContributed[address(msg.sender)]
                    icoEtherContributed[address(msg.sender)] += msg.value
                    emit Transfer((140 * tokensPerEth * msg.value / 10^18 / 100), 0, msg.sender);
                    emit TokensIssued(140 * tokensPerEth * msg.value / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                    if tokensIssuedIco >= 4 * 10^13:
                        call walletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                else:
                    require tokensPerEth * msg.value / 10^18
                    require 140 * tokensPerEth * msg.value / 10^18 / tokensPerEth * msg.value / 10^18 == 140
                    require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                    require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) <= 32 * 10^13
                    require balanceOf[address(msg.sender)] + (140 * tokensPerEth * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 140 * tokensPerEth * msg.value / 10^18 / 100
                    require icoTokensReceived[address(msg.sender)] + (140 * tokensPerEth * msg.value / 10^18 / 100) >= icoTokensReceived[address(msg.sender)]
                    icoTokensReceived[address(msg.sender)] += 140 * tokensPerEth * msg.value / 10^18 / 100
                    require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                    tokensIssuedIco += 140 * tokensPerEth * msg.value / 10^18 / 100
                    require tokensIssuedTotal + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedTotal
                    tokensIssuedTotal += 140 * tokensPerEth * msg.value / 10^18 / 100
                    require icoEtherReceived + msg.value >= icoEtherReceived
                    icoEtherReceived += msg.value
                    require icoEtherContributed[address(msg.sender)] + msg.value >= icoEtherContributed[address(msg.sender)]
                    icoEtherContributed[address(msg.sender)] += msg.value
                    emit Transfer((140 * tokensPerEth * msg.value / 10^18 / 100), 0, msg.sender);
                    emit TokensIssued(140 * tokensPerEth * msg.value / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                    if tokensIssuedIco >= 4 * 10^13:
                        call walletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
        else:
            if block.timestamp >= 420495 * 3600:
                require icoEtherReceived + msg.value >= icoEtherReceived
                require icoEtherReceived + msg.value <= 15000 * 10^18
                if not tokensPerEth:
                    if not tokensPerEth * msg.value / 10^18:
                        require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                        require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) <= 32 * 10^13
                        require balanceOf[address(msg.sender)] + (140 * tokensPerEth * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require icoTokensReceived[address(msg.sender)] + (140 * tokensPerEth * msg.value / 10^18 / 100) >= icoTokensReceived[address(msg.sender)]
                        icoTokensReceived[address(msg.sender)] += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                        tokensIssuedIco += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require tokensIssuedTotal + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedTotal
                        tokensIssuedTotal += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require icoEtherReceived + msg.value >= icoEtherReceived
                        icoEtherReceived += msg.value
                        require icoEtherContributed[address(msg.sender)] + msg.value >= icoEtherContributed[address(msg.sender)]
                        icoEtherContributed[address(msg.sender)] += msg.value
                        emit Transfer((140 * tokensPerEth * msg.value / 10^18 / 100), 0, msg.sender);
                        emit TokensIssued(140 * tokensPerEth * msg.value / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                        if tokensIssuedIco >= 4 * 10^13:
                            call walletAddress with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                    else:
                        require tokensPerEth * msg.value / 10^18
                        require 140 * tokensPerEth * msg.value / 10^18 / tokensPerEth * msg.value / 10^18 == 140
                        require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                        require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) <= 32 * 10^13
                        require balanceOf[address(msg.sender)] + (140 * tokensPerEth * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require icoTokensReceived[address(msg.sender)] + (140 * tokensPerEth * msg.value / 10^18 / 100) >= icoTokensReceived[address(msg.sender)]
                        icoTokensReceived[address(msg.sender)] += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                        tokensIssuedIco += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require tokensIssuedTotal + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedTotal
                        tokensIssuedTotal += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require icoEtherReceived + msg.value >= icoEtherReceived
                        icoEtherReceived += msg.value
                        require icoEtherContributed[address(msg.sender)] + msg.value >= icoEtherContributed[address(msg.sender)]
                        icoEtherContributed[address(msg.sender)] += msg.value
                        emit Transfer((140 * tokensPerEth * msg.value / 10^18 / 100), 0, msg.sender);
                        emit TokensIssued(140 * tokensPerEth * msg.value / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                        if tokensIssuedIco >= 4 * 10^13:
                            call walletAddress with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                else:
                    require tokensPerEth
                    require tokensPerEth * msg.value / tokensPerEth == msg.value
                    if not tokensPerEth * msg.value / 10^18:
                        require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                        require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) <= 32 * 10^13
                        require balanceOf[address(msg.sender)] + (140 * tokensPerEth * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require icoTokensReceived[address(msg.sender)] + (140 * tokensPerEth * msg.value / 10^18 / 100) >= icoTokensReceived[address(msg.sender)]
                        icoTokensReceived[address(msg.sender)] += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                        tokensIssuedIco += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require tokensIssuedTotal + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedTotal
                        tokensIssuedTotal += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require icoEtherReceived + msg.value >= icoEtherReceived
                        icoEtherReceived += msg.value
                        require icoEtherContributed[address(msg.sender)] + msg.value >= icoEtherContributed[address(msg.sender)]
                        icoEtherContributed[address(msg.sender)] += msg.value
                        emit Transfer((140 * tokensPerEth * msg.value / 10^18 / 100), 0, msg.sender);
                        emit TokensIssued(140 * tokensPerEth * msg.value / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                        if tokensIssuedIco >= 4 * 10^13:
                            call walletAddress with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                    else:
                        require tokensPerEth * msg.value / 10^18
                        require 140 * tokensPerEth * msg.value / 10^18 / tokensPerEth * msg.value / 10^18 == 140
                        require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                        require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) <= 32 * 10^13
                        require balanceOf[address(msg.sender)] + (140 * tokensPerEth * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require icoTokensReceived[address(msg.sender)] + (140 * tokensPerEth * msg.value / 10^18 / 100) >= icoTokensReceived[address(msg.sender)]
                        icoTokensReceived[address(msg.sender)] += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                        tokensIssuedIco += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require tokensIssuedTotal + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedTotal
                        tokensIssuedTotal += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require icoEtherReceived + msg.value >= icoEtherReceived
                        icoEtherReceived += msg.value
                        require icoEtherContributed[address(msg.sender)] + msg.value >= icoEtherContributed[address(msg.sender)]
                        icoEtherContributed[address(msg.sender)] += msg.value
                        emit Transfer((140 * tokensPerEth * msg.value / 10^18 / 100), 0, msg.sender);
                        emit TokensIssued(140 * tokensPerEth * msg.value / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                        if tokensIssuedIco >= 4 * 10^13:
                            call walletAddress with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
            else:
                require icoEtherReceived + msg.value >= icoEtherReceived
                require icoEtherReceived + msg.value <= 15000 * 10^18
                if not tokensPerEth:
                    if not tokensPerEth * msg.value / 10^18:
                        require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                        require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) <= 32 * 10^13
                        require balanceOf[address(msg.sender)] + (140 * tokensPerEth * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require icoTokensReceived[address(msg.sender)] + (140 * tokensPerEth * msg.value / 10^18 / 100) >= icoTokensReceived[address(msg.sender)]
                        icoTokensReceived[address(msg.sender)] += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                        tokensIssuedIco += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require tokensIssuedTotal + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedTotal
                        tokensIssuedTotal += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require icoEtherReceived + msg.value >= icoEtherReceived
                        icoEtherReceived += msg.value
                        require icoEtherContributed[address(msg.sender)] + msg.value >= icoEtherContributed[address(msg.sender)]
                        icoEtherContributed[address(msg.sender)] += msg.value
                        emit Transfer((140 * tokensPerEth * msg.value / 10^18 / 100), 0, msg.sender);
                        emit TokensIssued(140 * tokensPerEth * msg.value / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                        if tokensIssuedIco >= 4 * 10^13:
                            call walletAddress with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                    else:
                        require tokensPerEth * msg.value / 10^18
                        require 140 * tokensPerEth * msg.value / 10^18 / tokensPerEth * msg.value / 10^18 == 140
                        require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                        require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) <= 32 * 10^13
                        require balanceOf[address(msg.sender)] + (140 * tokensPerEth * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require icoTokensReceived[address(msg.sender)] + (140 * tokensPerEth * msg.value / 10^18 / 100) >= icoTokensReceived[address(msg.sender)]
                        icoTokensReceived[address(msg.sender)] += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                        tokensIssuedIco += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require tokensIssuedTotal + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedTotal
                        tokensIssuedTotal += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require icoEtherReceived + msg.value >= icoEtherReceived
                        icoEtherReceived += msg.value
                        require icoEtherContributed[address(msg.sender)] + msg.value >= icoEtherContributed[address(msg.sender)]
                        icoEtherContributed[address(msg.sender)] += msg.value
                        emit Transfer((140 * tokensPerEth * msg.value / 10^18 / 100), 0, msg.sender);
                        emit TokensIssued(140 * tokensPerEth * msg.value / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                        if tokensIssuedIco >= 4 * 10^13:
                            call walletAddress with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                else:
                    require tokensPerEth
                    require tokensPerEth * msg.value / tokensPerEth == msg.value
                    if not tokensPerEth * msg.value / 10^18:
                        require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                        require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) <= 32 * 10^13
                        require balanceOf[address(msg.sender)] + (140 * tokensPerEth * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require icoTokensReceived[address(msg.sender)] + (140 * tokensPerEth * msg.value / 10^18 / 100) >= icoTokensReceived[address(msg.sender)]
                        icoTokensReceived[address(msg.sender)] += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                        tokensIssuedIco += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require tokensIssuedTotal + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedTotal
                        tokensIssuedTotal += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require icoEtherReceived + msg.value >= icoEtherReceived
                        icoEtherReceived += msg.value
                        require icoEtherContributed[address(msg.sender)] + msg.value >= icoEtherContributed[address(msg.sender)]
                        icoEtherContributed[address(msg.sender)] += msg.value
                        emit Transfer((140 * tokensPerEth * msg.value / 10^18 / 100), 0, msg.sender);
                        emit TokensIssued(140 * tokensPerEth * msg.value / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                        if tokensIssuedIco >= 4 * 10^13:
                            call walletAddress with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                    else:
                        require tokensPerEth * msg.value / 10^18
                        require 140 * tokensPerEth * msg.value / 10^18 / tokensPerEth * msg.value / 10^18 == 140
                        require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                        require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) <= 32 * 10^13
                        require balanceOf[address(msg.sender)] + (140 * tokensPerEth * msg.value / 10^18 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require icoTokensReceived[address(msg.sender)] + (140 * tokensPerEth * msg.value / 10^18 / 100) >= icoTokensReceived[address(msg.sender)]
                        icoTokensReceived[address(msg.sender)] += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require tokensIssuedIco + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedIco
                        tokensIssuedIco += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require tokensIssuedTotal + (140 * tokensPerEth * msg.value / 10^18 / 100) >= tokensIssuedTotal
                        tokensIssuedTotal += 140 * tokensPerEth * msg.value / 10^18 / 100
                        require icoEtherReceived + msg.value >= icoEtherReceived
                        icoEtherReceived += msg.value
                        require icoEtherContributed[address(msg.sender)] + msg.value >= icoEtherContributed[address(msg.sender)]
                        icoEtherContributed[address(msg.sender)] += msg.value
                        emit Transfer((140 * tokensPerEth * msg.value / 10^18 / 100), 0, msg.sender);
                        emit TokensIssued(140 * tokensPerEth * msg.value / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                        if tokensIssuedIco >= 4 * 10^13:
                            call walletAddress with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
}



}

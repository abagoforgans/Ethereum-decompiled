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
    stor7 = 336 * 10^6
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    require not msg.value
    stor0 = msg.sender
    stor5 = stor0
    stor6 = stor0
    return code.data[144 len 8567]
}



// =====================  Runtime code  =====================


const name = 'Tulip Mania'

const decimals = 6

const atNow = block.timestamp

const symbol = 'BULB'

const CLAWBACK_PERIOD = (48 * 24 * 3600)

const DATE_PRESALE_START = (419655 * 3600)

const BONUS_PRESALE = 100

const MIN_CONTRIBUTION = 2 * 10^15

const PRESALE_ETH_CAP = 750 * 10^18

const DATE_PRESALE_END = (419823 * 3600)

const COOLDOWN_PERIOD = (48 * 24 * 3600)

const TOKEN_SUPPLY_MKT = 15 * 10^11

const MAX_CONTRIBUTION = 300 * 10^18

const DATE_ICO_START = 1511362801

const DATE_ICO_END = (420519 * 3600)

const TOKEN_SUPPLY_ICO = 85 * 10^11

const TOKEN_SUPPLY_TOTAL = 10^13


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
mapping of uint8 stor16;

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

function locked(address arg1) {
    return bool(stor16[arg1])
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

function isTransferable() {
    if block.timestamp >= 420567 * 3600:
        return 1
    else:
        return 0
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
}

function setWallet(address arg1) {
    require owner == msg.sender
    require arg1
    walletAddress = arg1
    emit WalletUpdated(arg1);
}

function setAdminWallet(address arg1) {
    require owner == msg.sender
    require arg1
    adminWalletAddress = arg1
    emit AdminWalletUpdated(arg1);
}

function removeLock(address arg1) {
    if adminWalletAddress != msg.sender:
        require owner == msg.sender
    stor16[address(arg1)] = 0
    emit LockRemoved(arg1);
}

function updateTokensPerEth(uint256 arg1) {
    require owner == msg.sender
    require block.timestamp < 419655 * 3600
    tokensPerEth = arg1
    emit TokensPerEthUpdated(arg1);
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    require arg1
    emit OwnershipTransferProposed(owner, arg1);
    newOwner = arg1
}

function approve(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function ownerClawback() {
    require owner == msg.sender
    require block.timestamp > 420567 * 3600
    call walletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require block.timestamp >= 420567 * 3600
    require not stor16[address(msg.sender)]
    require not stor16[address(arg1)]
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function removeLockMultiple(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if adminWalletAddress != msg.sender:
        require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 16
        stor16[mem[(32 * idx) + 140 len 20]] = 0
        require idx < arg1.length
        emit LockRemoved(mem[(32 * idx) + 140 len 20]);
        idx = idx + 1
        continue 
}

function mintMarketing(address arg1, uint256 arg2) {
    require owner == msg.sender
    require tokensIssuedMkt <= 15 * 10^11
    require arg2 <= -tokensIssuedMkt + 15 * 10^11
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + tokensIssuedMkt >= tokensIssuedMkt
    tokensIssuedMkt += arg2
    require arg2 + tokensIssuedTotal >= tokensIssuedTotal
    tokensIssuedTotal += arg2
    stor16[address(arg1)] = 1
    emit Transfer(arg2, 0, arg1);
    emit TokensMinted(arg2, balanceOf[address(arg1)], arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require block.timestamp >= 420567 * 3600
    require not stor16[address(arg1)]
    require not stor16[address(arg2)]
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function computeAirdrop(address arg1) {
    if block.timestamp < 420519 * 3600:
        return 0
    if stor14[address(arg1)]:
        return 0
    if not icoTokensReceived[address(arg1)]:
        return 0
    if not icoTokensReceived[address(arg1)]:
        if tokensIssuedIco:
            return ((85 * 10^11 * icoTokensReceived[address(arg1)] / tokensIssuedIco) - icoTokensReceived[address(arg1)])
    else:
        if icoTokensReceived[address(arg1)]:
            if 85 * 10^11 * icoTokensReceived[address(arg1)] / icoTokensReceived[address(arg1)] == 85 * 10^11:
                if tokensIssuedIco:
                    return ((85 * 10^11 * icoTokensReceived[address(arg1)] / tokensIssuedIco) - icoTokensReceived[address(arg1)])
    revert
}

function reclaimFunds() {
    require block.timestamp > 420519 * 3600
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
    require block.timestamp >= 420567 * 3600
    require not stor16[address(msg.sender)]
    require arg2.length == arg1.length
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 16
        if not stor16[address(cd[((32 * idx) + arg1 + 36)])]:
            require idx < arg1.length
            require idx < arg2.length
            require balanceOf[address(msg.sender)] >= cd[((32 * idx) + arg2 + 36)]
            require cd[((32 * idx) + arg2 + 36)] <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= cd[((32 * idx) + arg2 + 36)]
            require cd[((32 * idx) + arg2 + 36)] + balanceOf[address(cd[((32 * idx) + arg1 + 36)])] >= balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
            mem[32] = 3
            balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)]
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[96] = cd[((32 * idx) + arg2 + 36)]
            emit Transfer(cd[((32 * idx) + arg2 + 36)], msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function adminClaimAirdrop(address arg1) {
    require adminWalletAddress == msg.sender
    require block.timestamp >= 420519 * 3600
    require not stor14[address(arg1)]
    require icoTokensReceived[address(arg1)]
    if icoTokensReceived[address(arg1)]:
        require icoTokensReceived[address(arg1)]
        require 85 * 10^11 * icoTokensReceived[address(arg1)] / icoTokensReceived[address(arg1)] == 85 * 10^11
    require tokensIssuedIco
    require (85 * 10^11 * icoTokensReceived[address(arg1)] / tokensIssuedIco) - icoTokensReceived[address(arg1)] > 0
    stor14[address(arg1)] = 1
    require (85 * 10^11 * icoTokensReceived[address(arg1)] / tokensIssuedIco) - icoTokensReceived[address(arg1)] + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = (85 * 10^11 * icoTokensReceived[address(arg1)] / tokensIssuedIco) - icoTokensReceived[address(arg1)] + balanceOf[address(arg1)]
    require (85 * 10^11 * icoTokensReceived[address(arg1)] / tokensIssuedIco) - icoTokensReceived[address(arg1)] + tokensIssuedTotal >= tokensIssuedTotal
    tokensIssuedTotal = (85 * 10^11 * icoTokensReceived[address(arg1)] / tokensIssuedIco) - icoTokensReceived[address(arg1)] + tokensIssuedTotal
    require (85 * 10^11 * icoTokensReceived[address(arg1)] / tokensIssuedIco) - icoTokensReceived[address(arg1)] + tokensClaimedAirdrop >= tokensClaimedAirdrop
    tokensClaimedAirdrop = (85 * 10^11 * icoTokensReceived[address(arg1)] / tokensIssuedIco) - icoTokensReceived[address(arg1)] + tokensClaimedAirdrop
    emit Airdrop((85 * 10^11 * icoTokensReceived[address(arg1)] / tokensIssuedIco) - icoTokensReceived[address(arg1)], balanceOf[address(arg1)], arg1);
    emit Transfer(((85 * 10^11 * icoTokensReceived[address(arg1)] / tokensIssuedIco) - icoTokensReceived[address(arg1)]), 0, arg1);
}

function claimAirdrop() {
    require block.timestamp >= 420519 * 3600
    require not stor14[address(msg.sender)]
    require icoTokensReceived[address(msg.sender)]
    if icoTokensReceived[address(msg.sender)]:
        require icoTokensReceived[address(msg.sender)]
        require 85 * 10^11 * icoTokensReceived[address(msg.sender)] / icoTokensReceived[address(msg.sender)] == 85 * 10^11
    require tokensIssuedIco
    require (85 * 10^11 * icoTokensReceived[address(msg.sender)] / tokensIssuedIco) - icoTokensReceived[address(msg.sender)] > 0
    stor14[address(msg.sender)] = 1
    require (85 * 10^11 * icoTokensReceived[address(msg.sender)] / tokensIssuedIco) - icoTokensReceived[address(msg.sender)] + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = (85 * 10^11 * icoTokensReceived[address(msg.sender)] / tokensIssuedIco) - icoTokensReceived[address(msg.sender)] + balanceOf[address(msg.sender)]
    require (85 * 10^11 * icoTokensReceived[address(msg.sender)] / tokensIssuedIco) - icoTokensReceived[address(msg.sender)] + tokensIssuedTotal >= tokensIssuedTotal
    tokensIssuedTotal = (85 * 10^11 * icoTokensReceived[address(msg.sender)] / tokensIssuedIco) - icoTokensReceived[address(msg.sender)] + tokensIssuedTotal
    require (85 * 10^11 * icoTokensReceived[address(msg.sender)] / tokensIssuedIco) - icoTokensReceived[address(msg.sender)] + tokensClaimedAirdrop >= tokensClaimedAirdrop
    tokensClaimedAirdrop = (85 * 10^11 * icoTokensReceived[address(msg.sender)] / tokensIssuedIco) - icoTokensReceived[address(msg.sender)] + tokensClaimedAirdrop
    emit Airdrop((85 * 10^11 * icoTokensReceived[address(msg.sender)] / tokensIssuedIco) - icoTokensReceived[address(msg.sender)], balanceOf[address(msg.sender)], msg.sender);
    emit Transfer(((85 * 10^11 * icoTokensReceived[address(msg.sender)] / tokensIssuedIco) - icoTokensReceived[address(msg.sender)]), 0, msg.sender);
}

function adminClaimAirdropMultiple(address[] arg1) {
    require adminWalletAddress == msg.sender
    idx = 0
    while idx < arg1.length:
        require block.timestamp >= 420519 * 3600
        require not stor14[address(cd[((32 * idx) + arg1 + 36)])]
        require icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])]
        if icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])]:
            require icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])]
            require 85 * 10^11 * icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] / icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] == 85 * 10^11
        require tokensIssuedIco
        require (85 * 10^11 * icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] / tokensIssuedIco) - icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] > 0
        stor14[address(cd[((32 * idx) + arg1 + 36)])] = 1
        require (85 * 10^11 * icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] / tokensIssuedIco) - icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] + balanceOf[address(cd[((32 * idx) + arg1 + 36)])] >= balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] = (85 * 10^11 * icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] / tokensIssuedIco) - icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] + balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        require (85 * 10^11 * icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] / tokensIssuedIco) - icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] + tokensIssuedTotal >= tokensIssuedTotal
        tokensIssuedTotal = (85 * 10^11 * icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] / tokensIssuedIco) - icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] + tokensIssuedTotal
        require (85 * 10^11 * icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] / tokensIssuedIco) - icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] + tokensClaimedAirdrop >= tokensClaimedAirdrop
        tokensClaimedAirdrop = (85 * 10^11 * icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] / tokensIssuedIco) - icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] + tokensClaimedAirdrop
        mem[32] = 3
        mem[128] = balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        emit Airdrop((85 * 10^11 * icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] / tokensIssuedIco) - icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])], balanceOf[address(cd[((32 * idx) + arg1 + 36)])], address(cd[((32 * idx) + arg1 + 36)]));
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[96] = (85 * 10^11 * icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] / tokensIssuedIco) - icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])]
        emit Transfer(((85 * 10^11 * icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])] / tokensIssuedIco) - icoTokensReceived[address(cd[((32 * idx) + arg1 + 36)])]), 0, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function _fallback() payable {
    require msg.value >= 2 * 10^15
    require msg.value + icoEtherContributed[address(msg.sender)] >= icoEtherContributed[address(msg.sender)]
    require msg.value + icoEtherContributed[address(msg.sender)] <= 300 * 10^18
    require block.timestamp > 419655 * 3600
    if block.timestamp >= 419823 * 3600:
        require block.timestamp > 1511362801
        require block.timestamp < 420519 * 3600
        if not tokensPerEth:
            require (msg.value * tokensPerEth / 10^18) + tokensIssuedIco >= tokensIssuedIco
            require (msg.value * tokensPerEth / 10^18) + tokensIssuedIco <= 85 * 10^11
            require (msg.value * tokensPerEth / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value * tokensPerEth / 10^18
            require (msg.value * tokensPerEth / 10^18) + icoTokensReceived[address(msg.sender)] >= icoTokensReceived[address(msg.sender)]
            icoTokensReceived[address(msg.sender)] += msg.value * tokensPerEth / 10^18
            require (msg.value * tokensPerEth / 10^18) + tokensIssuedIco >= tokensIssuedIco
            tokensIssuedIco += msg.value * tokensPerEth / 10^18
            require (msg.value * tokensPerEth / 10^18) + tokensIssuedTotal >= tokensIssuedTotal
            tokensIssuedTotal += msg.value * tokensPerEth / 10^18
            require msg.value + icoEtherReceived >= icoEtherReceived
            icoEtherReceived += msg.value
            require msg.value + icoEtherContributed[address(msg.sender)] >= icoEtherContributed[address(msg.sender)]
            icoEtherContributed[address(msg.sender)] += msg.value
            stor16[address(msg.sender)] = 1
            emit Transfer((msg.value * tokensPerEth / 10^18), 0, msg.sender);
            emit TokensIssued(msg.value * tokensPerEth / 10^18, balanceOf[address(msg.sender)], msg.value, msg.sender);
            call walletAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require tokensPerEth
            require msg.value * tokensPerEth / tokensPerEth == msg.value
            require (msg.value * tokensPerEth / 10^18) + tokensIssuedIco >= tokensIssuedIco
            require (msg.value * tokensPerEth / 10^18) + tokensIssuedIco <= 85 * 10^11
            require (msg.value * tokensPerEth / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value * tokensPerEth / 10^18
            require (msg.value * tokensPerEth / 10^18) + icoTokensReceived[address(msg.sender)] >= icoTokensReceived[address(msg.sender)]
            icoTokensReceived[address(msg.sender)] += msg.value * tokensPerEth / 10^18
            require (msg.value * tokensPerEth / 10^18) + tokensIssuedIco >= tokensIssuedIco
            tokensIssuedIco += msg.value * tokensPerEth / 10^18
            require (msg.value * tokensPerEth / 10^18) + tokensIssuedTotal >= tokensIssuedTotal
            tokensIssuedTotal += msg.value * tokensPerEth / 10^18
            require msg.value + icoEtherReceived >= icoEtherReceived
            icoEtherReceived += msg.value
            require msg.value + icoEtherContributed[address(msg.sender)] >= icoEtherContributed[address(msg.sender)]
            icoEtherContributed[address(msg.sender)] += msg.value
            stor16[address(msg.sender)] = 1
            emit Transfer((msg.value * tokensPerEth / 10^18), 0, msg.sender);
            emit TokensIssued(msg.value * tokensPerEth / 10^18, balanceOf[address(msg.sender)], msg.value, msg.sender);
            call walletAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    else:
        if block.timestamp <= 1511362801:
            require msg.value + icoEtherReceived >= icoEtherReceived
            require msg.value + icoEtherReceived <= 750 * 10^18
            if not tokensPerEth:
                if not msg.value * tokensPerEth / 10^18:
                    require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco >= tokensIssuedIco
                    require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco <= 85 * 10^11
                    require (200 * msg.value * tokensPerEth / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 200 * msg.value * tokensPerEth / 10^18 / 100
                    require (200 * msg.value * tokensPerEth / 10^18 / 100) + icoTokensReceived[address(msg.sender)] >= icoTokensReceived[address(msg.sender)]
                    icoTokensReceived[address(msg.sender)] += 200 * msg.value * tokensPerEth / 10^18 / 100
                    require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco >= tokensIssuedIco
                    tokensIssuedIco += 200 * msg.value * tokensPerEth / 10^18 / 100
                    require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedTotal >= tokensIssuedTotal
                    tokensIssuedTotal += 200 * msg.value * tokensPerEth / 10^18 / 100
                    require msg.value + icoEtherReceived >= icoEtherReceived
                    icoEtherReceived += msg.value
                    require msg.value + icoEtherContributed[address(msg.sender)] >= icoEtherContributed[address(msg.sender)]
                    icoEtherContributed[address(msg.sender)] += msg.value
                    stor16[address(msg.sender)] = 1
                    emit Transfer((200 * msg.value * tokensPerEth / 10^18 / 100), 0, msg.sender);
                    emit TokensIssued(200 * msg.value * tokensPerEth / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                    call walletAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    require msg.value * tokensPerEth / 10^18
                    require 200 * msg.value * tokensPerEth / 10^18 / msg.value * tokensPerEth / 10^18 == 200
                    require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco >= tokensIssuedIco
                    require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco <= 85 * 10^11
                    require (200 * msg.value * tokensPerEth / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 200 * msg.value * tokensPerEth / 10^18 / 100
                    require (200 * msg.value * tokensPerEth / 10^18 / 100) + icoTokensReceived[address(msg.sender)] >= icoTokensReceived[address(msg.sender)]
                    icoTokensReceived[address(msg.sender)] += 200 * msg.value * tokensPerEth / 10^18 / 100
                    require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco >= tokensIssuedIco
                    tokensIssuedIco += 200 * msg.value * tokensPerEth / 10^18 / 100
                    require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedTotal >= tokensIssuedTotal
                    tokensIssuedTotal += 200 * msg.value * tokensPerEth / 10^18 / 100
                    require msg.value + icoEtherReceived >= icoEtherReceived
                    icoEtherReceived += msg.value
                    require msg.value + icoEtherContributed[address(msg.sender)] >= icoEtherContributed[address(msg.sender)]
                    icoEtherContributed[address(msg.sender)] += msg.value
                    stor16[address(msg.sender)] = 1
                    emit Transfer((200 * msg.value * tokensPerEth / 10^18 / 100), 0, msg.sender);
                    emit TokensIssued(200 * msg.value * tokensPerEth / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                    call walletAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                require tokensPerEth
                require msg.value * tokensPerEth / tokensPerEth == msg.value
                if not msg.value * tokensPerEth / 10^18:
                    require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco >= tokensIssuedIco
                    require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco <= 85 * 10^11
                    require (200 * msg.value * tokensPerEth / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 200 * msg.value * tokensPerEth / 10^18 / 100
                    require (200 * msg.value * tokensPerEth / 10^18 / 100) + icoTokensReceived[address(msg.sender)] >= icoTokensReceived[address(msg.sender)]
                    icoTokensReceived[address(msg.sender)] += 200 * msg.value * tokensPerEth / 10^18 / 100
                    require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco >= tokensIssuedIco
                    tokensIssuedIco += 200 * msg.value * tokensPerEth / 10^18 / 100
                    require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedTotal >= tokensIssuedTotal
                    tokensIssuedTotal += 200 * msg.value * tokensPerEth / 10^18 / 100
                    require msg.value + icoEtherReceived >= icoEtherReceived
                    icoEtherReceived += msg.value
                    require msg.value + icoEtherContributed[address(msg.sender)] >= icoEtherContributed[address(msg.sender)]
                    icoEtherContributed[address(msg.sender)] += msg.value
                    stor16[address(msg.sender)] = 1
                    emit Transfer((200 * msg.value * tokensPerEth / 10^18 / 100), 0, msg.sender);
                    emit TokensIssued(200 * msg.value * tokensPerEth / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                    call walletAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    require msg.value * tokensPerEth / 10^18
                    require 200 * msg.value * tokensPerEth / 10^18 / msg.value * tokensPerEth / 10^18 == 200
                    require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco >= tokensIssuedIco
                    require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco <= 85 * 10^11
                    require (200 * msg.value * tokensPerEth / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 200 * msg.value * tokensPerEth / 10^18 / 100
                    require (200 * msg.value * tokensPerEth / 10^18 / 100) + icoTokensReceived[address(msg.sender)] >= icoTokensReceived[address(msg.sender)]
                    icoTokensReceived[address(msg.sender)] += 200 * msg.value * tokensPerEth / 10^18 / 100
                    require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco >= tokensIssuedIco
                    tokensIssuedIco += 200 * msg.value * tokensPerEth / 10^18 / 100
                    require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedTotal >= tokensIssuedTotal
                    tokensIssuedTotal += 200 * msg.value * tokensPerEth / 10^18 / 100
                    require msg.value + icoEtherReceived >= icoEtherReceived
                    icoEtherReceived += msg.value
                    require msg.value + icoEtherContributed[address(msg.sender)] >= icoEtherContributed[address(msg.sender)]
                    icoEtherContributed[address(msg.sender)] += msg.value
                    stor16[address(msg.sender)] = 1
                    emit Transfer((200 * msg.value * tokensPerEth / 10^18 / 100), 0, msg.sender);
                    emit TokensIssued(200 * msg.value * tokensPerEth / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                    call walletAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
        else:
            if block.timestamp >= 420519 * 3600:
                require msg.value + icoEtherReceived >= icoEtherReceived
                require msg.value + icoEtherReceived <= 750 * 10^18
                if not tokensPerEth:
                    if not msg.value * tokensPerEth / 10^18:
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco >= tokensIssuedIco
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco <= 85 * 10^11
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + icoTokensReceived[address(msg.sender)] >= icoTokensReceived[address(msg.sender)]
                        icoTokensReceived[address(msg.sender)] += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco >= tokensIssuedIco
                        tokensIssuedIco += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedTotal >= tokensIssuedTotal
                        tokensIssuedTotal += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require msg.value + icoEtherReceived >= icoEtherReceived
                        icoEtherReceived += msg.value
                        require msg.value + icoEtherContributed[address(msg.sender)] >= icoEtherContributed[address(msg.sender)]
                        icoEtherContributed[address(msg.sender)] += msg.value
                        stor16[address(msg.sender)] = 1
                        emit Transfer((200 * msg.value * tokensPerEth / 10^18 / 100), 0, msg.sender);
                        emit TokensIssued(200 * msg.value * tokensPerEth / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                        call walletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        require msg.value * tokensPerEth / 10^18
                        require 200 * msg.value * tokensPerEth / 10^18 / msg.value * tokensPerEth / 10^18 == 200
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco >= tokensIssuedIco
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco <= 85 * 10^11
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + icoTokensReceived[address(msg.sender)] >= icoTokensReceived[address(msg.sender)]
                        icoTokensReceived[address(msg.sender)] += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco >= tokensIssuedIco
                        tokensIssuedIco += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedTotal >= tokensIssuedTotal
                        tokensIssuedTotal += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require msg.value + icoEtherReceived >= icoEtherReceived
                        icoEtherReceived += msg.value
                        require msg.value + icoEtherContributed[address(msg.sender)] >= icoEtherContributed[address(msg.sender)]
                        icoEtherContributed[address(msg.sender)] += msg.value
                        stor16[address(msg.sender)] = 1
                        emit Transfer((200 * msg.value * tokensPerEth / 10^18 / 100), 0, msg.sender);
                        emit TokensIssued(200 * msg.value * tokensPerEth / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                        call walletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    require tokensPerEth
                    require msg.value * tokensPerEth / tokensPerEth == msg.value
                    if not msg.value * tokensPerEth / 10^18:
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco >= tokensIssuedIco
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco <= 85 * 10^11
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + icoTokensReceived[address(msg.sender)] >= icoTokensReceived[address(msg.sender)]
                        icoTokensReceived[address(msg.sender)] += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco >= tokensIssuedIco
                        tokensIssuedIco += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedTotal >= tokensIssuedTotal
                        tokensIssuedTotal += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require msg.value + icoEtherReceived >= icoEtherReceived
                        icoEtherReceived += msg.value
                        require msg.value + icoEtherContributed[address(msg.sender)] >= icoEtherContributed[address(msg.sender)]
                        icoEtherContributed[address(msg.sender)] += msg.value
                        stor16[address(msg.sender)] = 1
                        emit Transfer((200 * msg.value * tokensPerEth / 10^18 / 100), 0, msg.sender);
                        emit TokensIssued(200 * msg.value * tokensPerEth / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                        call walletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        require msg.value * tokensPerEth / 10^18
                        require 200 * msg.value * tokensPerEth / 10^18 / msg.value * tokensPerEth / 10^18 == 200
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco >= tokensIssuedIco
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco <= 85 * 10^11
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + icoTokensReceived[address(msg.sender)] >= icoTokensReceived[address(msg.sender)]
                        icoTokensReceived[address(msg.sender)] += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco >= tokensIssuedIco
                        tokensIssuedIco += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedTotal >= tokensIssuedTotal
                        tokensIssuedTotal += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require msg.value + icoEtherReceived >= icoEtherReceived
                        icoEtherReceived += msg.value
                        require msg.value + icoEtherContributed[address(msg.sender)] >= icoEtherContributed[address(msg.sender)]
                        icoEtherContributed[address(msg.sender)] += msg.value
                        stor16[address(msg.sender)] = 1
                        emit Transfer((200 * msg.value * tokensPerEth / 10^18 / 100), 0, msg.sender);
                        emit TokensIssued(200 * msg.value * tokensPerEth / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                        call walletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
            else:
                require msg.value + icoEtherReceived >= icoEtherReceived
                require msg.value + icoEtherReceived <= 750 * 10^18
                if not tokensPerEth:
                    if not msg.value * tokensPerEth / 10^18:
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco >= tokensIssuedIco
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco <= 85 * 10^11
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + icoTokensReceived[address(msg.sender)] >= icoTokensReceived[address(msg.sender)]
                        icoTokensReceived[address(msg.sender)] += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco >= tokensIssuedIco
                        tokensIssuedIco += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedTotal >= tokensIssuedTotal
                        tokensIssuedTotal += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require msg.value + icoEtherReceived >= icoEtherReceived
                        icoEtherReceived += msg.value
                        require msg.value + icoEtherContributed[address(msg.sender)] >= icoEtherContributed[address(msg.sender)]
                        icoEtherContributed[address(msg.sender)] += msg.value
                        stor16[address(msg.sender)] = 1
                        emit Transfer((200 * msg.value * tokensPerEth / 10^18 / 100), 0, msg.sender);
                        emit TokensIssued(200 * msg.value * tokensPerEth / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                        call walletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        require msg.value * tokensPerEth / 10^18
                        require 200 * msg.value * tokensPerEth / 10^18 / msg.value * tokensPerEth / 10^18 == 200
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco >= tokensIssuedIco
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco <= 85 * 10^11
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + icoTokensReceived[address(msg.sender)] >= icoTokensReceived[address(msg.sender)]
                        icoTokensReceived[address(msg.sender)] += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco >= tokensIssuedIco
                        tokensIssuedIco += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedTotal >= tokensIssuedTotal
                        tokensIssuedTotal += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require msg.value + icoEtherReceived >= icoEtherReceived
                        icoEtherReceived += msg.value
                        require msg.value + icoEtherContributed[address(msg.sender)] >= icoEtherContributed[address(msg.sender)]
                        icoEtherContributed[address(msg.sender)] += msg.value
                        stor16[address(msg.sender)] = 1
                        emit Transfer((200 * msg.value * tokensPerEth / 10^18 / 100), 0, msg.sender);
                        emit TokensIssued(200 * msg.value * tokensPerEth / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                        call walletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    require tokensPerEth
                    require msg.value * tokensPerEth / tokensPerEth == msg.value
                    if not msg.value * tokensPerEth / 10^18:
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco >= tokensIssuedIco
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco <= 85 * 10^11
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + icoTokensReceived[address(msg.sender)] >= icoTokensReceived[address(msg.sender)]
                        icoTokensReceived[address(msg.sender)] += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco >= tokensIssuedIco
                        tokensIssuedIco += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedTotal >= tokensIssuedTotal
                        tokensIssuedTotal += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require msg.value + icoEtherReceived >= icoEtherReceived
                        icoEtherReceived += msg.value
                        require msg.value + icoEtherContributed[address(msg.sender)] >= icoEtherContributed[address(msg.sender)]
                        icoEtherContributed[address(msg.sender)] += msg.value
                        stor16[address(msg.sender)] = 1
                        emit Transfer((200 * msg.value * tokensPerEth / 10^18 / 100), 0, msg.sender);
                        emit TokensIssued(200 * msg.value * tokensPerEth / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                        call walletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        require msg.value * tokensPerEth / 10^18
                        require 200 * msg.value * tokensPerEth / 10^18 / msg.value * tokensPerEth / 10^18 == 200
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco >= tokensIssuedIco
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco <= 85 * 10^11
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + icoTokensReceived[address(msg.sender)] >= icoTokensReceived[address(msg.sender)]
                        icoTokensReceived[address(msg.sender)] += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedIco >= tokensIssuedIco
                        tokensIssuedIco += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require (200 * msg.value * tokensPerEth / 10^18 / 100) + tokensIssuedTotal >= tokensIssuedTotal
                        tokensIssuedTotal += 200 * msg.value * tokensPerEth / 10^18 / 100
                        require msg.value + icoEtherReceived >= icoEtherReceived
                        icoEtherReceived += msg.value
                        require msg.value + icoEtherContributed[address(msg.sender)] >= icoEtherContributed[address(msg.sender)]
                        icoEtherContributed[address(msg.sender)] += msg.value
                        stor16[address(msg.sender)] = 1
                        emit Transfer((200 * msg.value * tokensPerEth / 10^18 / 100), 0, msg.sender);
                        emit TokensIssued(200 * msg.value * tokensPerEth / 10^18 / 100, balanceOf[address(msg.sender)], msg.value, msg.sender);
                        call walletAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
}



}

contract main {




// =====================  Runtime code  =====================


address owner;
address regulatorApprovedKycProviderAddress;
address issuerAddress;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply_;
uint256 rewardPool_;
uint8 stor8;
mapping of uint256 balances;
array of uint256 kycHash;
array of address kycApproved;
mapping of uint256 allowance;
mapping of address referredBy;

function name() {
    return name[0 len name.length]
}

function regulatorApprovedKycProvider() {
    return regulatorApprovedKycProviderAddress
}

function totalSupply() {
    return totalSupply_
}

function issuer() {
    return issuerAddress
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function decimals() {
    return decimals
}

function totalSupply_() {
    return totalSupply_
}

function kycValidated(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < kycApproved.length
    return address(kycApproved[arg1])
}

function rewardPool() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function.'
    return rewardPool_
}

function kycHashes(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < kycHash.length
    return kycHash[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function rewardPool_() {
    return rewardPool_
}

function symbol() {
    return symbol[0 len symbol.length]
}

function referredBy(address arg1) {
    require calldata.size - 4 >= 32
    return referredBy[arg1]
}

function getKycHash(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < kycHash.length
    return kycHash[arg1]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function isIcoComplete() {
    return bool(stor8)
}

function getKycApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < kycApproved.length
    return address(kycApproved[arg1])
}

function _fallback() payable {
    revert
}

function setIssuer(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function.'
    issuerAddress = arg1
}

function setKycProvider(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function.'
    regulatorApprovedKycProviderAddress = arg1
}

function setKycHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function.'
    if stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The ICO phase has ended, you can no longer set KYC hashes.'
    kycHash.length++
    kycHash[kycHash.length] = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] > 0:
        if arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'You cannot set a non-zero allowance to another non-zero, you must zero it first.'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function safeApprove(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0, 'Cannot approve null address.'
    if arg3 != allowance[address(msg.sender)][address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The expected old value did not match current allowance.'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function refer(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function.'
    if not arg1:
        revert with 0, 'Referrer cannot be null'
    if not arg2:
        revert with 0, 'Referee cannot be null'
    if stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot add new referrals after ICO is complete.'
    referredBy[address(arg2)] = arg1
}

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if issuerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the Issuer can call this function.'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Tokens to mint must be greater than zero'
    require balances[stor0] + arg1 >= balances[stor0]
    balances[stor0] += arg1
    require totalSupply_ + arg1 >= totalSupply_
    totalSupply_ += arg1
    emit Mint(arg1, msg.sender);
}

function kycApproved(address arg1) {
    require calldata.size - 4 >= 32
    if regulatorApprovedKycProviderAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the KYC Provider can call this function.'
    if stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The ICO phase has ended, you can no longer approve.'
    if not arg1:
        revert with 0, 'Cannot approve a null address.'
    kycApproved.length++
    address(kycApproved[kycApproved.length]) = arg1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if issuerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the Issuer can call this function.'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Tokens to burn must be greater than zero'
    if balances[stor0] < arg1:
        revert with 0, 'Tokens to burn exceeds balance'
    require arg1 <= balances[stor0]
    balances[stor0] -= arg1
    require arg1 <= totalSupply_
    totalSupply_ -= arg1
    emit Burn(arg1, msg.sender);
}

function closeIco() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function.'
    if stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The ICO phase has already ended, you cannot close it again.'
    if balances[stor0] - rewardPool_:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot close ICO when a balance remains in the owner account.'
    stor8 = 1
    kycHash.length = 0
    idx = 0
    while kycHash.length > idx:
        kycHash[idx] = 0
        idx = idx + 1
        continue 
    kycApproved.length = 0
    idx = 0
    while kycApproved.length > idx:
        uint256(kycApproved[idx]) = 0
        idx = idx + 1
        continue 
    emit IcoComplete()
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot send tokens from null address'
    if not arg1:
        revert with 0, 'Cannot transfer tokens to null'
    if balances[address(msg.sender)] < arg2:
        revert with 0, 'Insufficient funds'
    if arg2:
        require arg2 <= balances[address(msg.sender)]
        balances[address(msg.sender)] -= arg2
        require balances[address(arg1)] + arg2 >= balances[address(arg1)]
        balances[address(arg1)] += arg2
        if arg1 == owner:
            if arg2 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Tokens to burn must be greater than zero'
            if balances[address(arg1)] < arg2:
                revert with 0, 'Tokens to burn exceeds balance'
            require arg2 <= balances[address(arg1)]
            balances[address(arg1)] -= arg2
            require arg2 <= totalSupply_
            totalSupply_ -= arg2
            emit Burn(arg2, msg.sender);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount to transfer is greater than allowance.'
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot send tokens from null address'
    if not arg2:
        revert with 0, 'Cannot transfer tokens to null'
    if balances[address(arg1)] < arg3:
        revert with 0, 'Insufficient funds'
    if arg3:
        require arg3 <= balances[address(arg1)]
        balances[address(arg1)] -= arg3
        require balances[address(arg2)] + arg3 >= balances[address(arg2)]
        balances[address(arg2)] += arg3
        if arg2 == owner:
            if arg3 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Tokens to burn must be greater than zero'
            if balances[address(arg2)] < arg3:
                revert with 0, 'Tokens to burn exceeds balance'
            require arg3 <= balances[address(arg2)]
            balances[address(arg2)] -= arg3
            require arg3 <= totalSupply_
            totalSupply_ -= arg3
            emit Burn(arg3, msg.sender);
    return 1
}

function icoTransfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function.'
    if stor8:
        revert with 0, 'ICO is complete, use transfer().'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot send tokens from null address'
    if not arg1:
        revert with 0, 'Cannot transfer tokens to null'
    if arg2 > balances[address(msg.sender)] - rewardPool_:
        if balances[address(msg.sender)] < balances[address(msg.sender)] - rewardPool_:
            revert with 0, 'Insufficient funds'
        if balances[address(msg.sender)] - rewardPool_:
            require balances[address(msg.sender)] - rewardPool_ <= balances[address(msg.sender)]
            balances[address(msg.sender)] = rewardPool_
            require balances[address(arg1)] + balances[address(msg.sender)] - rewardPool_ >= balances[address(arg1)]
            balances[address(arg1)] = balances[address(arg1)] + balances[address(msg.sender)] - rewardPool_
            if arg1 == owner:
                if balances[address(msg.sender)] - rewardPool_ <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Tokens to burn must be greater than zero'
                if balances[address(arg1)] < balances[address(msg.sender)] - rewardPool_:
                    revert with 0, 'Tokens to burn exceeds balance'
                require balances[address(msg.sender)] - rewardPool_ <= balances[address(arg1)]
                balances[address(arg1)] = balances[address(arg1)] - balances[address(msg.sender)] + rewardPool_
                require balances[address(msg.sender)] - rewardPool_ <= totalSupply_
                totalSupply_ = totalSupply_ - balances[address(msg.sender)] + rewardPool_
                emit Burn((balances[address(msg.sender)] - rewardPool_), msg.sender);
        if referredBy[address(arg1)]:
            referredBy[address(arg1)] = 0
            require balances[address(msg.sender)] - rewardPool_ / 100 <= balances[stor0]
            balances[stor0] -= balances[address(msg.sender)] - rewardPool_ / 100
            require balances[stor13[address(arg1)]] + (balances[address(msg.sender)] - rewardPool_ / 100) >= balances[stor13[address(arg1)]]
            balances[stor13[address(arg1)]] += balances[address(msg.sender)] - rewardPool_ / 100
            rewardPool_ -= balances[address(msg.sender)] - rewardPool_ / 100
            emit ReferralRedeemed((balances[address(msg.sender)] - rewardPool_ / 100), arg1, referredBy[address(arg1)]);
    else:
        if balances[address(msg.sender)] < arg2:
            revert with 0, 'Insufficient funds'
        if arg2:
            require arg2 <= balances[address(msg.sender)]
            balances[address(msg.sender)] -= arg2
            require balances[address(arg1)] + arg2 >= balances[address(arg1)]
            balances[address(arg1)] += arg2
            if arg1 == owner:
                if arg2 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Tokens to burn must be greater than zero'
                if balances[address(arg1)] < arg2:
                    revert with 0, 'Tokens to burn exceeds balance'
                require arg2 <= balances[address(arg1)]
                balances[address(arg1)] -= arg2
                require arg2 <= totalSupply_
                totalSupply_ -= arg2
                emit Burn(arg2, msg.sender);
        if referredBy[address(arg1)]:
            referredBy[address(arg1)] = 0
            require arg2 / 100 <= balances[stor0]
            balances[stor0] -= arg2 / 100
            require balances[stor13[address(arg1)]] + (arg2 / 100) >= balances[stor13[address(arg1)]]
            balances[stor13[address(arg1)]] += arg2 / 100
            rewardPool_ -= arg2 / 100
            emit ReferralRedeemed((arg2 / 100), arg1, referredBy[address(arg1)]);
}



}

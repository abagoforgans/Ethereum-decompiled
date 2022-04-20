contract main {


// =======================  Init code  ======================


address stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint8 stor5;
uint256 stor5; offset 8
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
address stor16;
address stor17;
address stor18;
address stor19;
mapping of uint256 stor20;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 10
    stor2.length.field_8 = 'NRGY Token' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 4
    stor3.length.field_8 = 'NRGY' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    uint8(stor5.field_0) = 0
    Mask(248, 0, stor5.field_8) = 0
    stor6 = 0
    stor7 = 0
    stor8 = 3 * 10^6 * 10^stor4
    stor9 = 300000 * 10^stor4
    stor10 = 60000 * 10^stor4
    stor11 = 12
    stor12 = 0
    stor13 = 419592 * 24 * 3600
    stor14 = 1513382399
    stor15 = 1529107199
    require not msg.value
    stor1 = msg.sender
    stor17 = code.data[13604 len 20]
    stor18 = code.data[13636 len 20]
    stor16 = code.data[13668 len 20]
    stor19 = code.data[13700 len 20]
    require not uint8(stor5.field_0)
    require stor6 + stor9 >= stor6
    stor6 += stor9
    require stor6 <= stor8
    require stor20[stor17] + stor9 >= stor20[stor17]
    stor20[stor17] += stor9
    emit Mint(stor9, stor17);
    emit Transfer(stor9, this.address, stor17);
    require not uint8(stor5.field_0)
    require stor6 + stor10 >= stor6
    stor6 += stor10
    require stor6 <= stor8
    require stor20[stor18] + stor10 >= stor20[stor18]
    stor20[stor18] += stor10
    emit Mint(stor10, stor18);
    emit Transfer(stor10, this.address, stor18);
    return code.data[1577 len 12015]
}



// =====================  Runtime code  =====================


const showEthBalance = eth.balance(this.address)


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint8 stor5;
uint8 stor5; offset 8
uint256 stor5; offset 8
uint256 tokenTotalSupply;
uint256 trashedTokens;
uint256 hardcap;
uint256 ownerTokens;
uint256 bountyTokens;
uint8 stor11;
uint256 stor11; offset 8
uint256 ethToToken;
uint256 noContributors;
uint256 start;
uint256 initialSaleEndDate;
uint256 ownerGrace;
address multisigVaultAddress;
address ownerVault;
address bountyVaultAddress;
address treasuryVaultAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 sub_83805dd0;

function mintingFinished() {
    return bool(uint8(stor5.field_0))
}

function name() {
    return name[0 len name.length]
}

function bountyVault() {
    return bountyVaultAddress
}

function totalSupply() {
    return tokenTotalSupply
}

function bountyTokens() {
    return bountyTokens
}

function ownerVault() {
    return ownerVault
}

function decimals() {
    return decimals
}

function salePaused() {
    return bool(uint8(stor5.field_8))
}

function getNoContributors() {
    return noContributors
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function ethToToken() {
    return ethToToken
}

function sub_83805dd0(?) {
    return sub_83805dd0[address(arg1)]
}

function ownerGrace() {
    return ownerGrace
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function treasuryVault() {
    return treasuryVaultAddress
}

function hardcap() {
    return hardcap
}

function trashedTokens() {
    return trashedTokens
}

function start() {
    return start
}

function ownerTokens() {
    return ownerTokens
}

function initialSaleEndDate() {
    return initialSaleEndDate
}

function multisigVault() {
    return multisigVaultAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function noContributors() {
    return noContributors
}

function tokenTotalSupply() {
    return tokenTotalSupply
}

function pauseSale() {
    require msg.sender == owner
    Mask(248, 0, stor5.field_8) = 1
}

function resumeSale() {
    require msg.sender == owner
    Mask(248, 0, stor5.field_8) = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function setMultisigVault(address arg1) {
    require msg.sender == owner
    if arg1:
        multisigVaultAddress = arg1
}

function changeEthToTokenRation(uint8 arg1) {
    require msg.sender == owner
    if arg1:
        uint8(stor11.field_0) = arg1
        Mask(248, 0, stor11.field_8) = 0
}

function saleOn() {
    if block.timestamp < start:
        return block.timestamp >= start
    if block.timestamp >= initialSaleEndDate:
        return (block.timestamp < initialSaleEndDate)
    return not bool(uint8(stor5.field_8))
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrawEthereum(uint256 arg1) {
    require msg.sender == owner
    require multisigVaultAddress
    require arg1 <= eth.balance(this.address)
    call multisigVaultAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_b4a78ae0(?) {
    require msg.sender == owner
    require arg2 * 10^decimals <= sub_83805dd0[address(arg1)]
    sub_83805dd0[address(arg1)] += -1 * arg2 * 10^decimals
    require balanceOf[address(arg1)] + (arg2 * 10^decimals) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2 * 10^decimals
    return 1
}

function sub_941c24f4(?) {
    require arg1 * 10^decimals <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += -1 * arg1 * 10^decimals
    require sub_83805dd0[address(msg.sender)] + (arg1 * 10^decimals) >= sub_83805dd0[address(msg.sender)]
    sub_83805dd0[address(msg.sender)] += arg1 * 10^decimals
    return 1
}

function decreaseSupply(uint256 arg1, address arg2) {
    require msg.sender == owner
    require arg1 <= balanceOf[address(arg2)]
    balanceOf[address(arg2)] -= arg1
    require trashedTokens + arg1 >= trashedTokens
    trashedTokens += arg1
    require arg1 <= tokenTotalSupply
    tokenTotalSupply -= arg1
    emit Transfer(arg1, arg2, 0);
    return 1
}

function retrieveTokens() {
    require msg.sender == owner
    require treasuryVaultAddress
    require tokenTotalSupply <= hardcap
    tokenTotalSupply = hardcap
    require balanceOf[stor19] + hardcap - tokenTotalSupply >= balanceOf[stor19]
    balanceOf[stor19] = balanceOf[stor19] + hardcap - tokenTotalSupply
    emit Transfer((hardcap - tokenTotalSupply), this.address, treasuryVaultAddress);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if msg.sender == ownerVault:
        require block.timestamp >= ownerGrace
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_19180722(?) {
    require msg.sender == owner
    require arg2 * 10^decimals <= sub_83805dd0[address(arg1)]
    sub_83805dd0[address(arg1)] += -1 * arg2 * 10^decimals
    require trashedTokens + (arg2 * 10^decimals) >= trashedTokens
    trashedTokens += arg2 * 10^decimals
    require arg2 * 10^decimals <= tokenTotalSupply
    tokenTotalSupply += -1 * arg2 * 10^decimals
    emit Transfer((arg2 * 10^decimals), arg1, 0);
    return 1
}

function masterTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require msg.sender == owner
    if arg1 == ownerVault:
        require block.timestamp >= ownerGrace
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function finishSale() {
    require msg.sender == owner
    uint8(stor5.field_0) = 1
    emit MintFinished()
    require treasuryVaultAddress
    require tokenTotalSupply <= hardcap
    tokenTotalSupply = hardcap
    require balanceOf[stor19] + hardcap - tokenTotalSupply >= balanceOf[stor19]
    balanceOf[stor19] = balanceOf[stor19] + hardcap - tokenTotalSupply
    emit Transfer((hardcap - tokenTotalSupply), this.address, treasuryVaultAddress);
    emit MainSaleClosed()
}

function masterMint(address arg1, uint256 arg2) {
    require not uint8(stor5.field_0)
    require msg.sender == owner
    require tokenTotalSupply + arg2 >= tokenTotalSupply
    tokenTotalSupply += arg2
    require tokenTotalSupply <= hardcap
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require noContributors + 1 >= noContributors
    noContributors++
    emit Mint(arg2, arg1);
    emit Transfer(arg2, this.address, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    if arg1 == ownerVault:
        require block.timestamp >= ownerGrace
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function createTokens(address arg1) payable {
    require tokenTotalSupply <= hardcap
    require block.timestamp >= start
    require block.timestamp < initialSaleEndDate
    require not uint8(stor5.field_8)
    if ethToToken:
        require ethToToken
        require ethToToken * msg.value / ethToToken == msg.value
    if block.timestamp <= start + (168 * 24 * 3600):
        if ethToToken * msg.value:
            require ethToToken * msg.value
            require 15 * ethToToken * msg.value / ethToToken * msg.value == 15
        if ethToToken:
            require ethToToken
            require ethToToken * msg.value / ethToToken == msg.value
        require (ethToToken * msg.value) + (15 * ethToToken * msg.value / 100) > 0
        require not uint8(stor5.field_0)
        require tokenTotalSupply + (ethToToken * msg.value) + (15 * ethToToken * msg.value / 100) >= tokenTotalSupply
        tokenTotalSupply = tokenTotalSupply + (ethToToken * msg.value) + (15 * ethToToken * msg.value / 100)
        require tokenTotalSupply <= hardcap
        require balanceOf[address(arg1)] + (ethToToken * msg.value) + (15 * ethToToken * msg.value / 100) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (ethToToken * msg.value) + (15 * ethToToken * msg.value / 100)
        require noContributors + 1 >= noContributors
        noContributors++
        emit Mint(((ethToToken * msg.value) + (15 * ethToToken * msg.value / 100)), arg1);
        emit Transfer(((ethToToken * msg.value) + (15 * ethToToken * msg.value / 100)), this.address, arg1);
        emit TokenSold(address(arg1), msg.value, (ethToToken * msg.value) + (15 * ethToToken * msg.value / 100), ethToToken);
    else:
        if block.timestamp <= start + (336 * 24 * 3600):
            if ethToToken * msg.value:
                require ethToToken * msg.value
                require 10 * ethToToken * msg.value / ethToToken * msg.value == 10
            if ethToToken:
                require ethToToken
                require ethToToken * msg.value / ethToToken == msg.value
            require (ethToToken * msg.value) + (10 * ethToToken * msg.value / 100) > 0
            require not uint8(stor5.field_0)
            require tokenTotalSupply + (ethToToken * msg.value) + (10 * ethToToken * msg.value / 100) >= tokenTotalSupply
            tokenTotalSupply = tokenTotalSupply + (ethToToken * msg.value) + (10 * ethToToken * msg.value / 100)
            require tokenTotalSupply <= hardcap
            require balanceOf[address(arg1)] + (ethToToken * msg.value) + (10 * ethToToken * msg.value / 100) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (ethToToken * msg.value) + (10 * ethToToken * msg.value / 100)
            require noContributors + 1 >= noContributors
            noContributors++
            emit Mint(((ethToToken * msg.value) + (10 * ethToToken * msg.value / 100)), arg1);
            emit Transfer(((ethToToken * msg.value) + (10 * ethToToken * msg.value / 100)), this.address, arg1);
            emit TokenSold(address(arg1), msg.value, (ethToToken * msg.value) + (10 * ethToToken * msg.value / 100), ethToToken);
        else:
            if block.timestamp > start + (504 * 24 * 3600):
                require ethToToken * msg.value > 0
                require not uint8(stor5.field_0)
                require tokenTotalSupply + (ethToToken * msg.value) >= tokenTotalSupply
                tokenTotalSupply += ethToToken * msg.value
                require tokenTotalSupply <= hardcap
                require balanceOf[address(arg1)] + (ethToToken * msg.value) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += ethToToken * msg.value
                require noContributors + 1 >= noContributors
                noContributors++
                emit Mint((ethToToken * msg.value), arg1);
                emit Transfer((ethToToken * msg.value), this.address, arg1);
                emit TokenSold(address(arg1), msg.value, ethToToken * msg.value, ethToToken);
            else:
                if ethToToken * msg.value:
                    require ethToToken * msg.value
                    require 5 * ethToToken * msg.value / ethToToken * msg.value == 5
                if ethToToken:
                    require ethToToken
                    require ethToToken * msg.value / ethToToken == msg.value
                require (ethToToken * msg.value) + (5 * ethToToken * msg.value / 100) > 0
                require not uint8(stor5.field_0)
                require tokenTotalSupply + (ethToToken * msg.value) + (5 * ethToToken * msg.value / 100) >= tokenTotalSupply
                tokenTotalSupply = tokenTotalSupply + (ethToToken * msg.value) + (5 * ethToToken * msg.value / 100)
                require tokenTotalSupply <= hardcap
                require balanceOf[address(arg1)] + (ethToToken * msg.value) + (5 * ethToToken * msg.value / 100) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (ethToToken * msg.value) + (5 * ethToToken * msg.value / 100)
                require noContributors + 1 >= noContributors
                noContributors++
                emit Mint(((ethToToken * msg.value) + (5 * ethToToken * msg.value / 100)), arg1);
                emit Transfer(((ethToToken * msg.value) + (5 * ethToToken * msg.value / 100)), this.address, arg1);
                emit TokenSold(address(arg1), msg.value, (ethToToken * msg.value) + (5 * ethToToken * msg.value / 100), ethToToken);
}

function _fallback() payable {
    require tokenTotalSupply <= hardcap
    require block.timestamp >= start
    require block.timestamp < initialSaleEndDate
    require not uint8(stor5.field_8)
    if ethToToken:
        require ethToToken
        require ethToToken * msg.value / ethToToken == msg.value
    if block.timestamp <= start + (168 * 24 * 3600):
        if ethToToken * msg.value:
            require ethToToken * msg.value
            require 15 * ethToToken * msg.value / ethToToken * msg.value == 15
        if ethToToken:
            require ethToToken
            require ethToToken * msg.value / ethToToken == msg.value
        require (ethToToken * msg.value) + (15 * ethToToken * msg.value / 100) > 0
        require not uint8(stor5.field_0)
        require tokenTotalSupply + (ethToToken * msg.value) + (15 * ethToToken * msg.value / 100) >= tokenTotalSupply
        tokenTotalSupply = tokenTotalSupply + (ethToToken * msg.value) + (15 * ethToToken * msg.value / 100)
        require tokenTotalSupply <= hardcap
        require balanceOf[address(msg.sender)] + (ethToToken * msg.value) + (15 * ethToToken * msg.value / 100) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (ethToToken * msg.value) + (15 * ethToToken * msg.value / 100)
        require noContributors + 1 >= noContributors
        noContributors++
        emit Mint(((ethToToken * msg.value) + (15 * ethToToken * msg.value / 100)), msg.sender);
        emit Transfer(((ethToToken * msg.value) + (15 * ethToToken * msg.value / 100)), this.address, msg.sender);
        emit TokenSold(address(msg.sender), msg.value, (ethToToken * msg.value) + (15 * ethToToken * msg.value / 100), ethToToken);
    else:
        if block.timestamp <= start + (336 * 24 * 3600):
            if ethToToken * msg.value:
                require ethToToken * msg.value
                require 10 * ethToToken * msg.value / ethToToken * msg.value == 10
            if ethToToken:
                require ethToToken
                require ethToToken * msg.value / ethToToken == msg.value
            require (ethToToken * msg.value) + (10 * ethToToken * msg.value / 100) > 0
            require not uint8(stor5.field_0)
            require tokenTotalSupply + (ethToToken * msg.value) + (10 * ethToToken * msg.value / 100) >= tokenTotalSupply
            tokenTotalSupply = tokenTotalSupply + (ethToToken * msg.value) + (10 * ethToToken * msg.value / 100)
            require tokenTotalSupply <= hardcap
            require balanceOf[address(msg.sender)] + (ethToToken * msg.value) + (10 * ethToToken * msg.value / 100) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (ethToToken * msg.value) + (10 * ethToToken * msg.value / 100)
            require noContributors + 1 >= noContributors
            noContributors++
            emit Mint(((ethToToken * msg.value) + (10 * ethToToken * msg.value / 100)), msg.sender);
            emit Transfer(((ethToToken * msg.value) + (10 * ethToToken * msg.value / 100)), this.address, msg.sender);
            emit TokenSold(address(msg.sender), msg.value, (ethToToken * msg.value) + (10 * ethToToken * msg.value / 100), ethToToken);
        else:
            if block.timestamp > start + (504 * 24 * 3600):
                require ethToToken * msg.value > 0
                require not uint8(stor5.field_0)
                require tokenTotalSupply + (ethToToken * msg.value) >= tokenTotalSupply
                tokenTotalSupply += ethToToken * msg.value
                require tokenTotalSupply <= hardcap
                require balanceOf[address(msg.sender)] + (ethToToken * msg.value) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += ethToToken * msg.value
                require noContributors + 1 >= noContributors
                noContributors++
                emit Mint((ethToToken * msg.value), msg.sender);
                emit Transfer((ethToToken * msg.value), this.address, msg.sender);
                emit TokenSold(address(msg.sender), msg.value, ethToToken * msg.value, ethToToken);
            else:
                if ethToToken * msg.value:
                    require ethToToken * msg.value
                    require 5 * ethToToken * msg.value / ethToToken * msg.value == 5
                if ethToToken:
                    require ethToToken
                    require ethToToken * msg.value / ethToToken == msg.value
                require (ethToToken * msg.value) + (5 * ethToToken * msg.value / 100) > 0
                require not uint8(stor5.field_0)
                require tokenTotalSupply + (ethToToken * msg.value) + (5 * ethToToken * msg.value / 100) >= tokenTotalSupply
                tokenTotalSupply = tokenTotalSupply + (ethToToken * msg.value) + (5 * ethToToken * msg.value / 100)
                require tokenTotalSupply <= hardcap
                require balanceOf[address(msg.sender)] + (ethToToken * msg.value) + (5 * ethToToken * msg.value / 100) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (ethToToken * msg.value) + (5 * ethToToken * msg.value / 100)
                require noContributors + 1 >= noContributors
                noContributors++
                emit Mint(((ethToToken * msg.value) + (5 * ethToToken * msg.value / 100)), msg.sender);
                emit Transfer(((ethToToken * msg.value) + (5 * ethToToken * msg.value / 100)), this.address, msg.sender);
                emit TokenSold(address(msg.sender), msg.value, (ethToToken * msg.value) + (5 * ethToToken * msg.value / 100), ethToToken);
}



}

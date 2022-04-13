contract main {


// =======================  Init code  ======================


address stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint8 stor5;
uint8 stor5; offset 8
uint256 stor5; offset 16
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
address stor20;
mapping of uint256 stor21;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 11
    stor2.length.field_8 = 'BIONT Token' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 5
    stor3.length.field_8 = 'BIONT' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    uint8(stor5.field_0) = 0
    Mask(248, 0, stor5.field_8) = 0
    Mask(240, 0, stor5.field_16) = 0
    stor6 = 0
    stor7 = 0
    stor8 = 140 * 10^6 * 10^stor4
    stor9 = 14 * 10^6 * 10^stor4
    stor10 = 300
    stor11 = 0
    stor12 = 1503346080
    stor13 = stor12 + (1512 * 24 * 3600)
    stor14 = stor13 + (4368 * 24 * 3600)
    stor15 = stor13 + (43800 * 24 * 3600)
    require not msg.value
    stor1 = msg.sender
    stor18 = code.data[14470 len 20]
    stor19 = code.data[14502 len 20]
    stor20 = code.data[14534 len 20]
    stor17 = code.data[14566 len 20]
    stor16 = code.data[14598 len 20]
    require not uint8(stor5.field_8)
    require stor6 + stor9 >= stor6
    stor6 += stor9
    require stor6 <= stor8
    require stor21[stor18] + stor9 >= stor21[stor18]
    stor21[stor18] += stor9
    require stor11 + 1 >= stor11
    stor11++
    emit Mint(stor9, stor18);
    emit Transfer(stor9, this.address, stor18);
    return code.data[1604 len 12854]
}



// =====================  Runtime code  =====================


const showEthBalance = eth.balance(this.address)


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint8 stor5;
uint8 stor5; offset 8
uint8 stor5; offset 16
uint256 stor5; offset 16
uint256 stor5; offset 8
uint256 tokenTotalSupply;
uint256 trashedTokens;
uint256 hardcap;
uint256 ownerTokens;
uint256 ethToToken;
uint256 noContributors;
uint256 start;
uint256 initialSaleEndDate;
uint256 ownerGrace;
uint256 fiveYearGrace;
address multisigVaultAddress;
address lockedVaultAddress;
address ownerVault;
address authorizerOneAddress;
address authorizerTwoAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 showAuthorizerTwoAmount;

function mintingFinished() {
    return bool(uint8(stor5.field_8))
}

function name() {
    return name[0 len name.length]
}

function authorizerTwo() {
    return authorizerTwoAddress
}

function totalSupply() {
    return tokenTotalSupply
}

function authorizerOne() {
    return authorizerOneAddress
}

function showAuthorizerTwoAmount() {
    return showAuthorizerTwoAmount[stor20]
}

function ownerVault() {
    return ownerVault
}

function decimals() {
    return decimals
}

function tradingStarted() {
    return bool(uint8(stor5.field_0))
}

function salePaused() {
    return bool(uint8(stor5.field_16))
}

function getNoContributors() {
    return noContributors
}

function showAuthorizerOneAmount() {
    return showAuthorizerTwoAmount[stor19]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function ethToToken() {
    return ethToToken
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

function fiveYearGrace() {
    return fiveYearGrace
}

function hardcap() {
    return hardcap
}

function trashedTokens() {
    return trashedTokens
}

function lockedVault() {
    return lockedVaultAddress
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

function startTrading() {
    require msg.sender == owner
    uint8(stor5.field_0) = 1
}

function pauseSale() {
    require msg.sender == owner
    Mask(240, 0, stor5.field_16) = 1
}

function resumeSale() {
    require msg.sender == owner
    Mask(240, 0, stor5.field_16) = 0
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

function setAuthorizedWithdrawalAmount(uint256 arg1) {
    require arg1 >= 0
    if authorizerOneAddress != msg.sender:
        require msg.sender == authorizerTwoAddress
    showAuthorizerTwoAmount[address(msg.sender)] = arg1
}

function saleOn() {
    if block.timestamp <= start:
        return (block.timestamp > start)
    if block.timestamp >= initialSaleEndDate:
        return (block.timestamp < initialSaleEndDate)
    return not bool(uint8(stor5.field_16))
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function trashTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require trashedTokens + arg2 >= trashedTokens
    trashedTokens += arg2
    require arg2 <= tokenTotalSupply
    tokenTotalSupply -= arg2
    return 0
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
    require lockedVaultAddress
    require tokenTotalSupply <= hardcap
    tokenTotalSupply = hardcap
    require balanceOf[stor17] + hardcap - tokenTotalSupply >= balanceOf[stor17]
    balanceOf[stor17] = balanceOf[stor17] + hardcap - tokenTotalSupply
    emit Transfer((hardcap - tokenTotalSupply), this.address, lockedVaultAddress);
}

function masterMint(address arg1, uint256 arg2) {
    require not uint8(stor5.field_8)
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

function finishSale() {
    require msg.sender == owner
    Mask(248, 0, stor5.field_8) = 1
    emit MintFinished()
    require lockedVaultAddress
    require tokenTotalSupply <= hardcap
    tokenTotalSupply = hardcap
    require balanceOf[stor17] + hardcap - tokenTotalSupply >= balanceOf[stor17]
    balanceOf[stor17] = balanceOf[stor17] + hardcap - tokenTotalSupply
    emit Transfer((hardcap - tokenTotalSupply), this.address, lockedVaultAddress);
    require msg.sender == owner
    uint8(stor5.field_0) = 1
    emit MainSaleClosed()
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require uint8(stor5.field_0)
    if msg.sender == lockedVaultAddress:
        require block.timestamp >= fiveYearGrace
    if msg.sender == ownerVault:
        require block.timestamp >= ownerGrace
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function masterTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require uint8(stor5.field_0)
    require msg.sender == owner
    if arg1 == lockedVaultAddress:
        require block.timestamp >= fiveYearGrace
    if arg1 == ownerVault:
        require block.timestamp >= ownerGrace
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdrawEthereum(uint256 arg1) {
    require msg.sender == owner
    require multisigVaultAddress
    require arg1 <= eth.balance(this.address)
    require showAuthorizerTwoAmount[stor19] == showAuthorizerTwoAmount[stor20]
    require arg1 <= showAuthorizerTwoAmount[stor19]
    call multisigVaultAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require arg1 <= showAuthorizerTwoAmount[stor19]
    showAuthorizerTwoAmount[stor19] -= arg1
    require arg1 <= showAuthorizerTwoAmount[stor20]
    showAuthorizerTwoAmount[stor20] -= arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require uint8(stor5.field_0)
    if arg1 == lockedVaultAddress:
        require block.timestamp >= fiveYearGrace
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
    require block.timestamp > start
    require block.timestamp < initialSaleEndDate
    require not uint8(stor5.field_16)
    if ethToToken:
        require ethToToken
        require ethToToken * msg.value / ethToToken == msg.value
    if block.timestamp <= start + (336 * 24 * 3600):
        if ethToToken * msg.value:
            require ethToToken * msg.value
            require 20 * ethToToken * msg.value / ethToToken * msg.value == 20
        if ethToToken:
            require ethToToken
            require ethToToken * msg.value / ethToToken == msg.value
        require (ethToToken * msg.value) + (20 * ethToToken * msg.value / 100) > 0
        require not uint8(stor5.field_8)
        require tokenTotalSupply + (ethToToken * msg.value) + (20 * ethToToken * msg.value / 100) >= tokenTotalSupply
        tokenTotalSupply = tokenTotalSupply + (ethToToken * msg.value) + (20 * ethToToken * msg.value / 100)
        require tokenTotalSupply <= hardcap
        require balanceOf[address(arg1)] + (ethToToken * msg.value) + (20 * ethToToken * msg.value / 100) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (ethToToken * msg.value) + (20 * ethToToken * msg.value / 100)
        require noContributors + 1 >= noContributors
        noContributors++
        emit Mint(((ethToToken * msg.value) + (20 * ethToToken * msg.value / 100)), arg1);
        emit Transfer(((ethToToken * msg.value) + (20 * ethToToken * msg.value / 100)), this.address, arg1);
        emit TokenSold(address(arg1), msg.value, (ethToToken * msg.value) + (20 * ethToToken * msg.value / 100), ethToToken);
    else:
        if block.timestamp <= start + (504 * 24 * 3600):
            if ethToToken * msg.value:
                require ethToToken * msg.value
                require 15 * ethToToken * msg.value / ethToToken * msg.value == 15
            if ethToToken:
                require ethToToken
                require ethToToken * msg.value / ethToToken == msg.value
            require (ethToToken * msg.value) + (15 * ethToToken * msg.value / 100) > 0
            require not uint8(stor5.field_8)
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
            if block.timestamp <= start + (672 * 24 * 3600):
                if ethToToken * msg.value:
                    require ethToToken * msg.value
                    require 10 * ethToToken * msg.value / ethToToken * msg.value == 10
                if ethToToken:
                    require ethToToken
                    require ethToToken * msg.value / ethToToken == msg.value
                require (ethToToken * msg.value) + (10 * ethToToken * msg.value / 100) > 0
                require not uint8(stor5.field_8)
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
                if block.timestamp > start + (840 * 24 * 3600):
                    require ethToToken * msg.value > 0
                    require not uint8(stor5.field_8)
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
                    require not uint8(stor5.field_8)
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
    require block.timestamp > start
    require block.timestamp < initialSaleEndDate
    require not uint8(stor5.field_16)
    if ethToToken:
        require ethToToken
        require ethToToken * msg.value / ethToToken == msg.value
    if block.timestamp <= start + (336 * 24 * 3600):
        if ethToToken * msg.value:
            require ethToToken * msg.value
            require 20 * ethToToken * msg.value / ethToToken * msg.value == 20
        if ethToToken:
            require ethToToken
            require ethToToken * msg.value / ethToToken == msg.value
        require (ethToToken * msg.value) + (20 * ethToToken * msg.value / 100) > 0
        require not uint8(stor5.field_8)
        require tokenTotalSupply + (ethToToken * msg.value) + (20 * ethToToken * msg.value / 100) >= tokenTotalSupply
        tokenTotalSupply = tokenTotalSupply + (ethToToken * msg.value) + (20 * ethToToken * msg.value / 100)
        require tokenTotalSupply <= hardcap
        require balanceOf[address(msg.sender)] + (ethToToken * msg.value) + (20 * ethToToken * msg.value / 100) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (ethToToken * msg.value) + (20 * ethToToken * msg.value / 100)
        require noContributors + 1 >= noContributors
        noContributors++
        emit Mint(((ethToToken * msg.value) + (20 * ethToToken * msg.value / 100)), msg.sender);
        emit Transfer(((ethToToken * msg.value) + (20 * ethToToken * msg.value / 100)), this.address, msg.sender);
        emit TokenSold(address(msg.sender), msg.value, (ethToToken * msg.value) + (20 * ethToToken * msg.value / 100), ethToToken);
    else:
        if block.timestamp <= start + (504 * 24 * 3600):
            if ethToToken * msg.value:
                require ethToToken * msg.value
                require 15 * ethToToken * msg.value / ethToToken * msg.value == 15
            if ethToToken:
                require ethToToken
                require ethToToken * msg.value / ethToToken == msg.value
            require (ethToToken * msg.value) + (15 * ethToToken * msg.value / 100) > 0
            require not uint8(stor5.field_8)
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
            if block.timestamp <= start + (672 * 24 * 3600):
                if ethToToken * msg.value:
                    require ethToToken * msg.value
                    require 10 * ethToToken * msg.value / ethToToken * msg.value == 10
                if ethToToken:
                    require ethToToken
                    require ethToToken * msg.value / ethToToken == msg.value
                require (ethToToken * msg.value) + (10 * ethToToken * msg.value / 100) > 0
                require not uint8(stor5.field_8)
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
                if block.timestamp > start + (840 * 24 * 3600):
                    require ethToToken * msg.value > 0
                    require not uint8(stor5.field_8)
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
                    require not uint8(stor5.field_8)
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

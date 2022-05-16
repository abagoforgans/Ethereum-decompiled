contract main {




// =====================  Runtime code  =====================


const getWeiBalance = eth.balance(this.address)


mapping of uint256 balance;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
uint256 transfersAllowDate;
uint256 nfsPoolLeft;
uint256 nfsPoolCount;
address oracleAddress;
uint256 soldTokensCount;
uint256 tokenStartPrice;
uint256 tokenSecondPeriodPrice;
uint256 sPerDate;
uint256 sPeriodEndDate;
uint256 sPeriodSoldTokensLimit;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function tokenStartPrice() {
    return tokenStartPrice
}

function name() {
    return name[0 len name.length]
}

function nfsPoolLeft() {
    return nfsPoolLeft
}

function sPeriodSoldTokensLimit() {
    return sPeriodSoldTokensLimit
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balance[address(arg1)]
}

function nfsPoolCount() {
    return nfsPoolCount
}

function oracle() {
    return oracleAddress
}

function sPerDate() {
    return sPerDate
}

function soldTokensCount() {
    return soldTokensCount
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function transfersAllowDate() {
    return transfersAllowDate
}

function tokenSecondPeriodPrice() {
    return tokenSecondPeriodPrice
}

function sPeriodEndDate() {
    return sPeriodEndDate
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getBalance(address arg1) {
    return balance[address(arg1)]
}

function getIsSecondPhaseByTime() {
    return block.timestamp >= sPerDate
}

function getIsThirdPhase() {
    return transfersAllowDate <= block.timestamp
}

function getIsSecondPhaseEndedByTime() {
    return (sPeriodEndDate < block.timestamp)
}

function getRemainingDaysToSecondPhase() {
    return (sPerDate - block.timestamp / 24 * 3600)
}

function setOracleAddress(address arg1) {
    require msg.sender == owner
    oracleAddress = arg1
}

function getRemainingDaysToThirdPhase() {
    return (transfersAllowDate - block.timestamp / 24 * 3600)
}

function getIsSecondPhaseBySoldedTokens() {
    return soldTokensCount >= totalSupply - sPeriodSoldTokensLimit - nfsPoolCount
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function EthToOwner(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= eth.balance(this.address)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function nfsPoolTransfer(address arg1, uint256 arg2) {
    require msg.sender == owner
    if nfsPoolLeft < arg2:
        revert with 0, 'Value more than tokens left'
    if not arg1:
        revert with 0, 'Not allowed send to trash tokens'
    nfsPoolLeft -= arg2
    require balance[address(arg1)] + arg2 >= balance[address(arg1)]
    balance[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if transfersAllowDate > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function cannot be called at this time.'
    require arg1
    require arg2 <= balance[address(msg.sender)]
    require arg2 <= balance[address(msg.sender)]
    balance[address(msg.sender)] -= arg2
    require balance[address(arg1)] + arg2 >= balance[address(arg1)]
    balance[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require transfersAllowDate <= block.timestamp
    require arg2
    require arg3 <= balance[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balance[address(arg1)]
    balance[address(arg1)] -= arg3
    require balance[address(arg2)] + arg3 >= balance[address(arg2)]
    balance[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getCurrentPhase() {
    if transfersAllowDate <= block.timestamp:
        return Array(len=83, data='Last third phase, you can transf', 'er tokens between users, but can', ''t buy more tokens.' >> 256, Mask(152, -512, 'Last third phase, you can transf', 'er tokens between users, but can', ''t buy more tokens.') << 512), 
    if sPeriodEndDate < block.timestamp:
        return Array(len=48, data='Second phase ended, You can not ', 'buy more tokens.', Mask(128, -256, 'Second phase ended, You can not ', 'buy more tokens.') << 256), 
    if block.timestamp >= sPerDate:
        if soldTokensCount >= totalSupply - sPeriodSoldTokensLimit - nfsPoolCount:
            return Array(len=38, data='Second phase by time and solded ', 'tokens', Mask(48, -256, 'Second phase by time and solded ', 'tokens') << 256), 
        if block.timestamp >= sPerDate:
            return 'Second phase by time'
    if soldTokensCount < totalSupply - sPeriodSoldTokensLimit - nfsPoolCount:
        return 'First phase'
    return 'Second phase by solded tokens'
}

function _fallback() payable {
    if 10^14 > msg.value:
        revert with 0, 'min limit eth 0.0001'
    if sPeriodEndDate < block.timestamp:
        revert with 0, 'Sell tokens all periods ended'
    require ext_code.size(oracleAddress)
    call oracleAddress.0xc8583e69 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp >= sPerDate:
        require tokenSecondPeriodPrice
        if msg.value * ext_call.return_data[0] / tokenSecondPeriodPrice <= 0:
            revert with 0, 'tokens count must be positive'
        if soldTokensCount + (msg.value * ext_call.return_data[0] / tokenSecondPeriodPrice) > totalSupply - nfsPoolCount:
            revert with 0, 'tokens limit'
        balance[address(msg.sender)] += msg.value * ext_call.return_data[0] / tokenSecondPeriodPrice
        soldTokensCount += msg.value * ext_call.return_data[0] / tokenSecondPeriodPrice
        emit Transfer((msg.value * ext_call.return_data[0] / tokenSecondPeriodPrice), 0, msg.sender);
    else:
        if soldTokensCount >= totalSupply - sPeriodSoldTokensLimit - nfsPoolCount:
            require tokenSecondPeriodPrice
            if msg.value * ext_call.return_data[0] / tokenSecondPeriodPrice <= 0:
                revert with 0, 'tokens count must be positive'
            if soldTokensCount + (msg.value * ext_call.return_data[0] / tokenSecondPeriodPrice) > totalSupply - nfsPoolCount:
                revert with 0, 'tokens limit'
            balance[address(msg.sender)] += msg.value * ext_call.return_data[0] / tokenSecondPeriodPrice
            soldTokensCount += msg.value * ext_call.return_data[0] / tokenSecondPeriodPrice
            emit Transfer((msg.value * ext_call.return_data[0] / tokenSecondPeriodPrice), 0, msg.sender);
        else:
            require tokenStartPrice
            if totalSupply - sPeriodSoldTokensLimit - nfsPoolCount >= soldTokensCount + (msg.value * ext_call.return_data[0] / tokenStartPrice):
                if msg.value * ext_call.return_data[0] / tokenStartPrice <= 0:
                    revert with 0, 'tokens count must be positive'
                if soldTokensCount + (msg.value * ext_call.return_data[0] / tokenStartPrice) > totalSupply - nfsPoolCount:
                    revert with 0, 'tokens limit'
                balance[address(msg.sender)] += msg.value * ext_call.return_data[0] / tokenStartPrice
                soldTokensCount += msg.value * ext_call.return_data[0] / tokenStartPrice
                emit Transfer((msg.value * ext_call.return_data[0] / tokenStartPrice), 0, msg.sender);
            else:
                if soldTokensCount + (msg.value * ext_call.return_data[0] / tokenStartPrice) - totalSupply + sPeriodSoldTokensLimit + nfsPoolCount <= 0:
                    if msg.value * ext_call.return_data[0] / tokenStartPrice <= 0:
                        revert with 0, 'tokens count must be positive'
                    if soldTokensCount + (msg.value * ext_call.return_data[0] / tokenStartPrice) > totalSupply - nfsPoolCount:
                        revert with 0, 'tokens limit'
                    balance[address(msg.sender)] += msg.value * ext_call.return_data[0] / tokenStartPrice
                    soldTokensCount += msg.value * ext_call.return_data[0] / tokenStartPrice
                    emit Transfer((msg.value * ext_call.return_data[0] / tokenStartPrice), 0, msg.sender);
                else:
                    require ext_call.return_data[0]
                    require tokenSecondPeriodPrice
                    if -soldTokensCount + totalSupply - sPeriodSoldTokensLimit - nfsPoolCount + ((soldTokensCount * tokenStartPrice) + (msg.value * ext_call.return_data[0] / tokenStartPrice * tokenStartPrice) - (totalSupply * tokenStartPrice) + (sPeriodSoldTokensLimit * tokenStartPrice) + (nfsPoolCount * tokenStartPrice) / ext_call.return_data[0] * ext_call.return_data[0] / tokenSecondPeriodPrice) <= 0:
                        revert with 0, 'tokens count must be positive'
                    if -sPeriodSoldTokensLimit + ((soldTokensCount * tokenStartPrice) + (msg.value * ext_call.return_data[0] / tokenStartPrice * tokenStartPrice) - (totalSupply * tokenStartPrice) + (sPeriodSoldTokensLimit * tokenStartPrice) + (nfsPoolCount * tokenStartPrice) / ext_call.return_data[0] * ext_call.return_data[0] / tokenSecondPeriodPrice) > 0:
                        revert with 0, 'tokens limit'
                    balance[address(msg.sender)] = balance[address(msg.sender)] - soldTokensCount + totalSupply - sPeriodSoldTokensLimit - nfsPoolCount + ((soldTokensCount * tokenStartPrice) + (msg.value * ext_call.return_data[0] / tokenStartPrice * tokenStartPrice) - (totalSupply * tokenStartPrice) + (sPeriodSoldTokensLimit * tokenStartPrice) + (nfsPoolCount * tokenStartPrice) / ext_call.return_data[0] * ext_call.return_data[0] / tokenSecondPeriodPrice)
                    soldTokensCount = totalSupply - sPeriodSoldTokensLimit - nfsPoolCount + ((soldTokensCount * tokenStartPrice) + (msg.value * ext_call.return_data[0] / tokenStartPrice * tokenStartPrice) - (totalSupply * tokenStartPrice) + (sPeriodSoldTokensLimit * tokenStartPrice) + (nfsPoolCount * tokenStartPrice) / ext_call.return_data[0] * ext_call.return_data[0] / tokenSecondPeriodPrice)
                    emit Transfer((-soldTokensCount + totalSupply - sPeriodSoldTokensLimit - nfsPoolCount + ((soldTokensCount * tokenStartPrice) + (msg.value * ext_call.return_data[0] / tokenStartPrice * tokenStartPrice) - (totalSupply * tokenStartPrice) + (sPeriodSoldTokensLimit * tokenStartPrice) + (nfsPoolCount * tokenStartPrice) / ext_call.return_data[0] * ext_call.return_data[0] / tokenSecondPeriodPrice)), 0, msg.sender);
}



}

contract main {


// =======================  Init code  ======================


address stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint8 stor14;
uint256 stor14; offset 8

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 10
    stor4.length.field_8 = 'BITSDToken' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 5
    stor5.length.field_8 = 'BITSD' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 3
    stor7 = 10^stor6
    require stor7 > 0
    require stor7
    require 10^18 == (stor7 * 10^18 / stor7) + (10^18 % stor7)
    stor8 = 10^18 / stor7
    require 7 * 10^6 * stor7 / 7 * 10^6 == stor7
    stor9 = 7 * 10^6 * stor7
    require 700000 * stor7 / 700000 == stor7
    stor10 = 700000 * stor7
    stor11 = 300
    stor12 = 10^18
    stor13 = 0
    uint8(stor14.field_0) = 0
    Mask(248, 0, stor14.field_8) = 0
    require not msg.value
    stor3 = msg.sender
    emit BITSDTokenInitialized(msg.sender);
    return code.data[958 len 6020]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 multiplier;
uint256 etherRatio;
uint256 TOTAL_SUPPLY;
uint256 TEAM_SUPPLY;
uint256 PRICE;
uint256 MIN_PURCHASE;
uint256 saleStartTime;
uint8 teamTokensAllocated;
uint8 ownerTokensAllocated; offset 8
uint256 stor14; offset 8

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function multiplier() {
    return multiplier
}

function saleStartTime() {
    return saleStartTime
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function etherRatio() {
    return etherRatio
}

function PRICE() {
    return PRICE
}

function owner() {
    return owner
}

function TOTAL_SUPPLY() {
    return TOTAL_SUPPLY
}

function symbol() {
    return symbol[0 len symbol.length]
}

function TEAM_SUPPLY() {
    return TEAM_SUPPLY
}

function MIN_PURCHASE() {
    return MIN_PURCHASE
}

function ownerTokensAllocated() {
    return bool(ownerTokensAllocated)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function teamTokensAllocated() {
    return bool(teamTokensAllocated)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function startSale() {
    require msg.sender == owner
    require teamTokensAllocated
    require not saleStartTime
    saleStartTime = block.timestamp
    emit SaleStarted(saleStartTime);
}

function bonus() {
    require saleStartTime <= block.timestamp
    if block.timestamp - saleStartTime < 168 * 24 * 3600:
        return 10
    if block.timestamp - saleStartTime >= 336 * 24 * 3600:
        return 0
    return 5
}

function canBuyTokens() {
    if saleStartTime:
        require saleStartTime + (744 * 24 * 3600) >= saleStartTime
        if block.timestamp <= saleStartTime + (744 * 24 * 3600):
            return 1
        else:
            return 0
    else:
        return 0
}

function allocateTeamTokens() {
    require not teamTokensAllocated
    require balanceOf[stor3] + TEAM_SUPPLY >= balanceOf[stor3]
    balanceOf[stor3] += TEAM_SUPPLY
    require totalSupply + TEAM_SUPPLY >= totalSupply
    totalSupply += TEAM_SUPPLY
    teamTokensAllocated = 1
    emit TeamTokensAllocated(TEAM_SUPPLY);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function allocateOwnerTokens() {
    require not ownerTokensAllocated
    require saleStartTime
    require saleStartTime + (744 * 24 * 3600) >= saleStartTime
    require block.timestamp > saleStartTime + (744 * 24 * 3600)
    stor14 = 1
    require totalSupply <= TOTAL_SUPPLY
    require balanceOf[stor3] + TOTAL_SUPPLY - totalSupply >= balanceOf[stor3]
    balanceOf[stor3] = balanceOf[stor3] + TOTAL_SUPPLY - totalSupply
    require TOTAL_SUPPLY >= totalSupply
    totalSupply = TOTAL_SUPPLY
    emit OwnerTokensAllocated((TOTAL_SUPPLY - totalSupply));
}

function createTokens(address arg1) payable {
    require msg.value >= MIN_PURCHASE
    require saleStartTime
    require saleStartTime + (744 * 24 * 3600) >= saleStartTime
    require block.timestamp <= saleStartTime + (744 * 24 * 3600)
    if msg.value:
        require msg.value
        require msg.value * PRICE / msg.value == PRICE
    require saleStartTime <= block.timestamp
    if block.timestamp - saleStartTime < 168 * 24 * 3600:
        if msg.value * PRICE:
            require msg.value * PRICE
            require 11 * 10^17 * msg.value * PRICE / msg.value * PRICE == 11 * 10^17
        require 11 * 10^17 * msg.value * PRICE == (10^18 * 11 * 10^17 * msg.value * PRICE / 10^18) + (11 * 10^17 * msg.value * PRICE % 10^18)
        require etherRatio > 0
        require etherRatio
        require 11 * 10^17 * msg.value * PRICE / 10^18 == (etherRatio * 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) + (11 * 10^17 * msg.value * PRICE / 10^18 % etherRatio)
        require totalSupply + (11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
        totalSupply += 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
        require totalSupply <= TOTAL_SUPPLY
        require balanceOf[address(arg1)] + (11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit TokensCreated(msg.value, 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio, arg1);
    else:
        if block.timestamp - saleStartTime >= 336 * 24 * 3600:
            require etherRatio > 0
            require etherRatio
            require msg.value * PRICE == (etherRatio * msg.value * PRICE / etherRatio) + (msg.value * PRICE % etherRatio)
            require totalSupply + (msg.value * PRICE / etherRatio) >= totalSupply
            totalSupply += msg.value * PRICE / etherRatio
            require totalSupply <= TOTAL_SUPPLY
            require balanceOf[address(arg1)] + (msg.value * PRICE / etherRatio) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += msg.value * PRICE / etherRatio
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit TokensCreated(msg.value, msg.value * PRICE / etherRatio, arg1);
        else:
            if msg.value * PRICE:
                require msg.value * PRICE
                require 105 * 10^16 * msg.value * PRICE / msg.value * PRICE == 105 * 10^16
            require 105 * 10^16 * msg.value * PRICE == (10^18 * 105 * 10^16 * msg.value * PRICE / 10^18) + (105 * 10^16 * msg.value * PRICE % 10^18)
            require etherRatio > 0
            require etherRatio
            require 105 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (105 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
            require totalSupply + (105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
            totalSupply += 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
            require totalSupply <= TOTAL_SUPPLY
            require balanceOf[address(arg1)] + (105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit TokensCreated(msg.value, 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio, arg1);
}

function _fallback() payable {
    require msg.value >= MIN_PURCHASE
    require saleStartTime
    require saleStartTime + (744 * 24 * 3600) >= saleStartTime
    require block.timestamp <= saleStartTime + (744 * 24 * 3600)
    if msg.value:
        require msg.value
        require msg.value * PRICE / msg.value == PRICE
    require saleStartTime <= block.timestamp
    if block.timestamp - saleStartTime < 168 * 24 * 3600:
        if msg.value * PRICE:
            require msg.value * PRICE
            require 11 * 10^17 * msg.value * PRICE / msg.value * PRICE == 11 * 10^17
        require 11 * 10^17 * msg.value * PRICE == (10^18 * 11 * 10^17 * msg.value * PRICE / 10^18) + (11 * 10^17 * msg.value * PRICE % 10^18)
        require etherRatio > 0
        require etherRatio
        require 11 * 10^17 * msg.value * PRICE / 10^18 == (etherRatio * 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) + (11 * 10^17 * msg.value * PRICE / 10^18 % etherRatio)
        require totalSupply + (11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
        totalSupply += 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
        require totalSupply <= TOTAL_SUPPLY
        require balanceOf[address(msg.sender)] + (11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit TokensCreated(msg.value, 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio, msg.sender);
    else:
        if block.timestamp - saleStartTime >= 336 * 24 * 3600:
            require etherRatio > 0
            require etherRatio
            require msg.value * PRICE == (etherRatio * msg.value * PRICE / etherRatio) + (msg.value * PRICE % etherRatio)
            require totalSupply + (msg.value * PRICE / etherRatio) >= totalSupply
            totalSupply += msg.value * PRICE / etherRatio
            require totalSupply <= TOTAL_SUPPLY
            require balanceOf[address(msg.sender)] + (msg.value * PRICE / etherRatio) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value * PRICE / etherRatio
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit TokensCreated(msg.value, msg.value * PRICE / etherRatio, msg.sender);
        else:
            if msg.value * PRICE:
                require msg.value * PRICE
                require 105 * 10^16 * msg.value * PRICE / msg.value * PRICE == 105 * 10^16
            require 105 * 10^16 * msg.value * PRICE == (10^18 * 105 * 10^16 * msg.value * PRICE / 10^18) + (105 * 10^16 * msg.value * PRICE % 10^18)
            require etherRatio > 0
            require etherRatio
            require 105 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (105 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
            require totalSupply + (105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
            totalSupply += 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
            require totalSupply <= TOTAL_SUPPLY
            require balanceOf[address(msg.sender)] + (105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit TokensCreated(msg.value, 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio, msg.sender);
}



}

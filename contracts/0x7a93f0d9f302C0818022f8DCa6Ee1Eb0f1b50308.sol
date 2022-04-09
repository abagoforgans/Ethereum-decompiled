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
uint256 stor14;
uint256 stor15;
uint8 stor16;
uint256 stor16; offset 8

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 7
    stor4.length.field_8 = 'OxToken' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 2
    stor5.length.field_8 = 'OX' / 256
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
    require 700 * 10^6 * stor7 / 700 * 10^6 == stor7
    stor9 = 700 * 10^6 * stor7
    require 200 * 10^6 * stor7 / 200 * 10^6 == stor7
    stor10 = 200 * 10^6 * stor7
    require 200 * 10^6 * stor7 / 200 * 10^6 == stor7
    stor11 = 200 * 10^6 * stor7
    require 100 * 10^6 * stor7 / 100 * 10^6 == stor7
    stor12 = 100 * 10^6 * stor7
    stor13 = 3000
    stor14 = 10^17
    stor15 = 0
    uint8(stor16.field_0) = 0
    Mask(248, 0, stor16.field_8) = 0
    require not msg.value
    stor3 = msg.sender
    emit OxTokenInitialized(msg.sender);
    return code.data[1044 len 6353]
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
uint256 MAX_SUPPLY;
uint256 CORPORATE_SUPPLY;
uint256 BOUNTY_SUPPLY;
uint256 TEAM_SUPPLY;
uint256 PRICE;
uint256 MIN_PURCHASE;
uint256 saleStartTime;
uint8 ownerTokensAllocated;
uint8 balancesInitialized; offset 8
uint256 stor16; offset 8

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

function MAX_SUPPLY() {
    return MAX_SUPPLY
}

function balancesInitialized() {
    return bool(balancesInitialized)
}

function CORPORATE_SUPPLY() {
    return CORPORATE_SUPPLY
}

function BOUNTY_SUPPLY() {
    return BOUNTY_SUPPLY
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
    require not saleStartTime
    saleStartTime = block.timestamp
    emit SaleStarted(saleStartTime);
}

function initializeBalances() {
    require not balancesInitialized
    balanceOf[stor3] = CORPORATE_SUPPLY
    totalSupply = CORPORATE_SUPPLY
    stor16 = 1
    emit Transfer(CORPORATE_SUPPLY, 0, msg.sender);
    emit InitialTokensAllocated(CORPORATE_SUPPLY);
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

function transferableTokens(address arg1, uint64 arg2) {
    if arg1 != owner:
        if not saleStartTime:
            return 0
        require saleStartTime + (744 * 24 * 3600) >= saleStartTime
        if block.timestamp <= saleStartTime + (744 * 24 * 3600):
            return 0
    return balanceOf[address(arg1)]
}

function bonus() {
    require saleStartTime <= block.timestamp
    if block.timestamp - saleStartTime < 24 * 3600:
        return 25
    if block.timestamp - saleStartTime < 168 * 24 * 3600:
        return 20
    if block.timestamp - saleStartTime < 336 * 24 * 3600:
        return 15
    if block.timestamp - saleStartTime < 504 * 24 * 3600:
        return 10
    if block.timestamp - saleStartTime >= 672 * 24 * 3600:
        return 0
    return 5
}

function transfer(address arg1, uint256 arg2) {
    if msg.sender == owner:
        require arg2 <= balanceOf[address(msg.sender)]
    else:
        if not saleStartTime:
            require arg2 <= 0
        else:
            require saleStartTime + (744 * 24 * 3600) >= saleStartTime
            if block.timestamp <= saleStartTime + (744 * 24 * 3600):
                require arg2 <= 0
            else:
                require arg2 <= balanceOf[address(msg.sender)]
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function allocateOwnerTokens() {
    require not ownerTokensAllocated
    require saleStartTime
    require saleStartTime + (744 * 24 * 3600) >= saleStartTime
    require block.timestamp > saleStartTime + (744 * 24 * 3600)
    ownerTokensAllocated = 1
    require BOUNTY_SUPPLY + TEAM_SUPPLY >= BOUNTY_SUPPLY
    require balanceOf[address(msg.sender)] + BOUNTY_SUPPLY + TEAM_SUPPLY >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + BOUNTY_SUPPLY + TEAM_SUPPLY
    require totalSupply + BOUNTY_SUPPLY + TEAM_SUPPLY >= totalSupply
    totalSupply = totalSupply + BOUNTY_SUPPLY + TEAM_SUPPLY
    emit Transfer((BOUNTY_SUPPLY + TEAM_SUPPLY), 0, msg.sender);
    emit OwnerTokensAllocated((BOUNTY_SUPPLY + TEAM_SUPPLY));
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg1 == owner:
        require arg3 <= balanceOf[address(arg1)]
    else:
        if not saleStartTime:
            require arg3 <= 0
        else:
            require saleStartTime + (744 * 24 * 3600) >= saleStartTime
            if block.timestamp <= saleStartTime + (744 * 24 * 3600):
                require arg3 <= 0
            else:
                require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function createTokens(address arg1) payable {
    require msg.value >= MIN_PURCHASE
    require saleStartTime
    require saleStartTime + (744 * 24 * 3600) >= saleStartTime
    require block.timestamp <= saleStartTime + (744 * 24 * 3600)
    if not msg.value:
        require saleStartTime <= block.timestamp
        if block.timestamp - saleStartTime < 24 * 3600:
            if not msg.value * PRICE:
                require 125 * 10^16 * msg.value * PRICE == (10^18 * 125 * 10^16 * msg.value * PRICE / 10^18) + (125 * 10^16 * msg.value * PRICE % 10^18)
                require etherRatio > 0
                if etherRatio:
                    require 125 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (125 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
                    require totalSupply + (125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                    totalSupply += 125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                    require totalSupply <= MAX_SUPPLY
                    require balanceOf[address(arg1)] + (125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
            else:
                if msg.value * PRICE:
                    require 125 * 10^16 * msg.value * PRICE / msg.value * PRICE == 125 * 10^16
                    require 125 * 10^16 * msg.value * PRICE == (10^18 * 125 * 10^16 * msg.value * PRICE / 10^18) + (125 * 10^16 * msg.value * PRICE % 10^18)
                    require etherRatio > 0
                    if etherRatio:
                        require 125 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (125 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
                        require totalSupply + (125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                        totalSupply += 125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                        require totalSupply <= MAX_SUPPLY
                        require balanceOf[address(arg1)] + (125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
        else:
            if block.timestamp - saleStartTime < 168 * 24 * 3600:
                if not msg.value * PRICE:
                    require 12 * 10^17 * msg.value * PRICE == (10^18 * 12 * 10^17 * msg.value * PRICE / 10^18) + (12 * 10^17 * msg.value * PRICE % 10^18)
                    require etherRatio > 0
                    if etherRatio:
                        require 12 * 10^17 * msg.value * PRICE / 10^18 == (etherRatio * 12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) + (12 * 10^17 * msg.value * PRICE / 10^18 % etherRatio)
                        require totalSupply + (12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                        totalSupply += 12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                        require totalSupply <= MAX_SUPPLY
                        require balanceOf[address(arg1)] + (12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                else:
                    if msg.value * PRICE:
                        require 12 * 10^17 * msg.value * PRICE / msg.value * PRICE == 12 * 10^17
                        require 12 * 10^17 * msg.value * PRICE == (10^18 * 12 * 10^17 * msg.value * PRICE / 10^18) + (12 * 10^17 * msg.value * PRICE % 10^18)
                        require etherRatio > 0
                        if etherRatio:
                            require 12 * 10^17 * msg.value * PRICE / 10^18 == (etherRatio * 12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) + (12 * 10^17 * msg.value * PRICE / 10^18 % etherRatio)
                            require totalSupply + (12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                            totalSupply += 12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                            require totalSupply <= MAX_SUPPLY
                            require balanceOf[address(arg1)] + (12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
            else:
                if block.timestamp - saleStartTime < 336 * 24 * 3600:
                    if not msg.value * PRICE:
                        require 115 * 10^16 * msg.value * PRICE == (10^18 * 115 * 10^16 * msg.value * PRICE / 10^18) + (115 * 10^16 * msg.value * PRICE % 10^18)
                        require etherRatio > 0
                        if etherRatio:
                            require 115 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (115 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
                            require totalSupply + (115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                            totalSupply += 115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                            require totalSupply <= MAX_SUPPLY
                            require balanceOf[address(arg1)] + (115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                    else:
                        if msg.value * PRICE:
                            require 115 * 10^16 * msg.value * PRICE / msg.value * PRICE == 115 * 10^16
                            require 115 * 10^16 * msg.value * PRICE == (10^18 * 115 * 10^16 * msg.value * PRICE / 10^18) + (115 * 10^16 * msg.value * PRICE % 10^18)
                            require etherRatio > 0
                            if etherRatio:
                                require 115 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (115 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
                                require totalSupply + (115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                                totalSupply += 115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                require totalSupply <= MAX_SUPPLY
                                require balanceOf[address(arg1)] + (115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                else:
                    if block.timestamp - saleStartTime < 504 * 24 * 3600:
                        if not msg.value * PRICE:
                            require 11 * 10^17 * msg.value * PRICE == (10^18 * 11 * 10^17 * msg.value * PRICE / 10^18) + (11 * 10^17 * msg.value * PRICE % 10^18)
                            require etherRatio > 0
                            if etherRatio:
                                require 11 * 10^17 * msg.value * PRICE / 10^18 == (etherRatio * 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) + (11 * 10^17 * msg.value * PRICE / 10^18 % etherRatio)
                                require totalSupply + (11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                                totalSupply += 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                                require totalSupply <= MAX_SUPPLY
                                require balanceOf[address(arg1)] + (11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                        else:
                            if msg.value * PRICE:
                                require 11 * 10^17 * msg.value * PRICE / msg.value * PRICE == 11 * 10^17
                                require 11 * 10^17 * msg.value * PRICE == (10^18 * 11 * 10^17 * msg.value * PRICE / 10^18) + (11 * 10^17 * msg.value * PRICE % 10^18)
                                require etherRatio > 0
                                if etherRatio:
                                    require 11 * 10^17 * msg.value * PRICE / 10^18 == (etherRatio * 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) + (11 * 10^17 * msg.value * PRICE / 10^18 % etherRatio)
                                    require totalSupply + (11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                                    totalSupply += 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                                    require totalSupply <= MAX_SUPPLY
                                    require balanceOf[address(arg1)] + (11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                    else:
                        if block.timestamp - saleStartTime >= 672 * 24 * 3600:
                            require etherRatio > 0
                            if etherRatio:
                                require msg.value * PRICE == (etherRatio * msg.value * PRICE / etherRatio) + (msg.value * PRICE % etherRatio)
                                require totalSupply + (msg.value * PRICE / etherRatio) >= totalSupply
                                totalSupply += msg.value * PRICE / etherRatio
                                require totalSupply <= MAX_SUPPLY
                                require balanceOf[address(arg1)] + (msg.value * PRICE / etherRatio) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += msg.value * PRICE / etherRatio
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                        else:
                            if not msg.value * PRICE:
                                require 105 * 10^16 * msg.value * PRICE == (10^18 * 105 * 10^16 * msg.value * PRICE / 10^18) + (105 * 10^16 * msg.value * PRICE % 10^18)
                                require etherRatio > 0
                                if etherRatio:
                                    require 105 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (105 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
                                    require totalSupply + (105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                                    totalSupply += 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                    require totalSupply <= MAX_SUPPLY
                                    require balanceOf[address(arg1)] + (105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                            else:
                                if msg.value * PRICE:
                                    require 105 * 10^16 * msg.value * PRICE / msg.value * PRICE == 105 * 10^16
                                    require 105 * 10^16 * msg.value * PRICE == (10^18 * 105 * 10^16 * msg.value * PRICE / 10^18) + (105 * 10^16 * msg.value * PRICE % 10^18)
                                    require etherRatio > 0
                                    if etherRatio:
                                        require 105 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (105 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
                                        require totalSupply + (105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                                        totalSupply += 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                        require totalSupply <= MAX_SUPPLY
                                        require balanceOf[address(arg1)] + (105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] += 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
    else:
        if msg.value:
            require msg.value * PRICE / msg.value == PRICE
            require saleStartTime <= block.timestamp
            if block.timestamp - saleStartTime < 24 * 3600:
                if not msg.value * PRICE:
                    require 125 * 10^16 * msg.value * PRICE == (10^18 * 125 * 10^16 * msg.value * PRICE / 10^18) + (125 * 10^16 * msg.value * PRICE % 10^18)
                    require etherRatio > 0
                    if etherRatio:
                        require 125 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (125 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
                        require totalSupply + (125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                        totalSupply += 125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                        require totalSupply <= MAX_SUPPLY
                        require balanceOf[address(arg1)] + (125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                else:
                    if msg.value * PRICE:
                        require 125 * 10^16 * msg.value * PRICE / msg.value * PRICE == 125 * 10^16
                        require 125 * 10^16 * msg.value * PRICE == (10^18 * 125 * 10^16 * msg.value * PRICE / 10^18) + (125 * 10^16 * msg.value * PRICE % 10^18)
                        require etherRatio > 0
                        if etherRatio:
                            require 125 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (125 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
                            require totalSupply + (125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                            totalSupply += 125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                            require totalSupply <= MAX_SUPPLY
                            require balanceOf[address(arg1)] + (125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
            else:
                if block.timestamp - saleStartTime < 168 * 24 * 3600:
                    if not msg.value * PRICE:
                        require 12 * 10^17 * msg.value * PRICE == (10^18 * 12 * 10^17 * msg.value * PRICE / 10^18) + (12 * 10^17 * msg.value * PRICE % 10^18)
                        require etherRatio > 0
                        if etherRatio:
                            require 12 * 10^17 * msg.value * PRICE / 10^18 == (etherRatio * 12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) + (12 * 10^17 * msg.value * PRICE / 10^18 % etherRatio)
                            require totalSupply + (12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                            totalSupply += 12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                            require totalSupply <= MAX_SUPPLY
                            require balanceOf[address(arg1)] + (12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                    else:
                        if msg.value * PRICE:
                            require 12 * 10^17 * msg.value * PRICE / msg.value * PRICE == 12 * 10^17
                            require 12 * 10^17 * msg.value * PRICE == (10^18 * 12 * 10^17 * msg.value * PRICE / 10^18) + (12 * 10^17 * msg.value * PRICE % 10^18)
                            require etherRatio > 0
                            if etherRatio:
                                require 12 * 10^17 * msg.value * PRICE / 10^18 == (etherRatio * 12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) + (12 * 10^17 * msg.value * PRICE / 10^18 % etherRatio)
                                require totalSupply + (12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                                totalSupply += 12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                                require totalSupply <= MAX_SUPPLY
                                require balanceOf[address(arg1)] + (12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                else:
                    if block.timestamp - saleStartTime < 336 * 24 * 3600:
                        if not msg.value * PRICE:
                            require 115 * 10^16 * msg.value * PRICE == (10^18 * 115 * 10^16 * msg.value * PRICE / 10^18) + (115 * 10^16 * msg.value * PRICE % 10^18)
                            require etherRatio > 0
                            if etherRatio:
                                require 115 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (115 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
                                require totalSupply + (115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                                totalSupply += 115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                require totalSupply <= MAX_SUPPLY
                                require balanceOf[address(arg1)] + (115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                        else:
                            if msg.value * PRICE:
                                require 115 * 10^16 * msg.value * PRICE / msg.value * PRICE == 115 * 10^16
                                require 115 * 10^16 * msg.value * PRICE == (10^18 * 115 * 10^16 * msg.value * PRICE / 10^18) + (115 * 10^16 * msg.value * PRICE % 10^18)
                                require etherRatio > 0
                                if etherRatio:
                                    require 115 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (115 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
                                    require totalSupply + (115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                                    totalSupply += 115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                    require totalSupply <= MAX_SUPPLY
                                    require balanceOf[address(arg1)] + (115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += 115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                    else:
                        if block.timestamp - saleStartTime < 504 * 24 * 3600:
                            if not msg.value * PRICE:
                                require 11 * 10^17 * msg.value * PRICE == (10^18 * 11 * 10^17 * msg.value * PRICE / 10^18) + (11 * 10^17 * msg.value * PRICE % 10^18)
                                require etherRatio > 0
                                if etherRatio:
                                    require 11 * 10^17 * msg.value * PRICE / 10^18 == (etherRatio * 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) + (11 * 10^17 * msg.value * PRICE / 10^18 % etherRatio)
                                    require totalSupply + (11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                                    totalSupply += 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                                    require totalSupply <= MAX_SUPPLY
                                    require balanceOf[address(arg1)] + (11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                            else:
                                if msg.value * PRICE:
                                    require 11 * 10^17 * msg.value * PRICE / msg.value * PRICE == 11 * 10^17
                                    require 11 * 10^17 * msg.value * PRICE == (10^18 * 11 * 10^17 * msg.value * PRICE / 10^18) + (11 * 10^17 * msg.value * PRICE % 10^18)
                                    require etherRatio > 0
                                    if etherRatio:
                                        require 11 * 10^17 * msg.value * PRICE / 10^18 == (etherRatio * 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) + (11 * 10^17 * msg.value * PRICE / 10^18 % etherRatio)
                                        require totalSupply + (11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                                        totalSupply += 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                                        require totalSupply <= MAX_SUPPLY
                                        require balanceOf[address(arg1)] + (11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] += 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                        else:
                            if block.timestamp - saleStartTime >= 672 * 24 * 3600:
                                require etherRatio > 0
                                if etherRatio:
                                    require msg.value * PRICE == (etherRatio * msg.value * PRICE / etherRatio) + (msg.value * PRICE % etherRatio)
                                    require totalSupply + (msg.value * PRICE / etherRatio) >= totalSupply
                                    totalSupply += msg.value * PRICE / etherRatio
                                    require totalSupply <= MAX_SUPPLY
                                    require balanceOf[address(arg1)] + (msg.value * PRICE / etherRatio) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += msg.value * PRICE / etherRatio
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                            else:
                                if not msg.value * PRICE:
                                    require 105 * 10^16 * msg.value * PRICE == (10^18 * 105 * 10^16 * msg.value * PRICE / 10^18) + (105 * 10^16 * msg.value * PRICE % 10^18)
                                    require etherRatio > 0
                                    if etherRatio:
                                        require 105 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (105 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
                                        require totalSupply + (105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                                        totalSupply += 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                        require totalSupply <= MAX_SUPPLY
                                        require balanceOf[address(arg1)] + (105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] += 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                                else:
                                    if msg.value * PRICE:
                                        require 105 * 10^16 * msg.value * PRICE / msg.value * PRICE == 105 * 10^16
                                        require 105 * 10^16 * msg.value * PRICE == (10^18 * 105 * 10^16 * msg.value * PRICE / 10^18) + (105 * 10^16 * msg.value * PRICE % 10^18)
                                        require etherRatio > 0
                                        if etherRatio:
                                            require 105 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (105 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
                                            require totalSupply + (105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                                            totalSupply += 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                            require totalSupply <= MAX_SUPPLY
                                            require balanceOf[address(arg1)] + (105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] += 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
    revert
}

function _fallback() payable {
    require msg.value >= MIN_PURCHASE
    require saleStartTime
    require saleStartTime + (744 * 24 * 3600) >= saleStartTime
    require block.timestamp <= saleStartTime + (744 * 24 * 3600)
    if not msg.value:
        require saleStartTime <= block.timestamp
        if block.timestamp - saleStartTime < 24 * 3600:
            if not msg.value * PRICE:
                require 125 * 10^16 * msg.value * PRICE == (10^18 * 125 * 10^16 * msg.value * PRICE / 10^18) + (125 * 10^16 * msg.value * PRICE % 10^18)
                require etherRatio > 0
                if etherRatio:
                    require 125 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (125 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
                    require totalSupply + (125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                    totalSupply += 125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                    require totalSupply <= MAX_SUPPLY
                    require balanceOf[address(msg.sender)] + (125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
            else:
                if msg.value * PRICE:
                    require 125 * 10^16 * msg.value * PRICE / msg.value * PRICE == 125 * 10^16
                    require 125 * 10^16 * msg.value * PRICE == (10^18 * 125 * 10^16 * msg.value * PRICE / 10^18) + (125 * 10^16 * msg.value * PRICE % 10^18)
                    require etherRatio > 0
                    if etherRatio:
                        require 125 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (125 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
                        require totalSupply + (125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                        totalSupply += 125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                        require totalSupply <= MAX_SUPPLY
                        require balanceOf[address(msg.sender)] + (125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
        else:
            if block.timestamp - saleStartTime < 168 * 24 * 3600:
                if not msg.value * PRICE:
                    require 12 * 10^17 * msg.value * PRICE == (10^18 * 12 * 10^17 * msg.value * PRICE / 10^18) + (12 * 10^17 * msg.value * PRICE % 10^18)
                    require etherRatio > 0
                    if etherRatio:
                        require 12 * 10^17 * msg.value * PRICE / 10^18 == (etherRatio * 12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) + (12 * 10^17 * msg.value * PRICE / 10^18 % etherRatio)
                        require totalSupply + (12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                        totalSupply += 12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                        require totalSupply <= MAX_SUPPLY
                        require balanceOf[address(msg.sender)] + (12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                else:
                    if msg.value * PRICE:
                        require 12 * 10^17 * msg.value * PRICE / msg.value * PRICE == 12 * 10^17
                        require 12 * 10^17 * msg.value * PRICE == (10^18 * 12 * 10^17 * msg.value * PRICE / 10^18) + (12 * 10^17 * msg.value * PRICE % 10^18)
                        require etherRatio > 0
                        if etherRatio:
                            require 12 * 10^17 * msg.value * PRICE / 10^18 == (etherRatio * 12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) + (12 * 10^17 * msg.value * PRICE / 10^18 % etherRatio)
                            require totalSupply + (12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                            totalSupply += 12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                            require totalSupply <= MAX_SUPPLY
                            require balanceOf[address(msg.sender)] + (12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
            else:
                if block.timestamp - saleStartTime < 336 * 24 * 3600:
                    if not msg.value * PRICE:
                        require 115 * 10^16 * msg.value * PRICE == (10^18 * 115 * 10^16 * msg.value * PRICE / 10^18) + (115 * 10^16 * msg.value * PRICE % 10^18)
                        require etherRatio > 0
                        if etherRatio:
                            require 115 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (115 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
                            require totalSupply + (115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                            totalSupply += 115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                            require totalSupply <= MAX_SUPPLY
                            require balanceOf[address(msg.sender)] + (115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                    else:
                        if msg.value * PRICE:
                            require 115 * 10^16 * msg.value * PRICE / msg.value * PRICE == 115 * 10^16
                            require 115 * 10^16 * msg.value * PRICE == (10^18 * 115 * 10^16 * msg.value * PRICE / 10^18) + (115 * 10^16 * msg.value * PRICE % 10^18)
                            require etherRatio > 0
                            if etherRatio:
                                require 115 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (115 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
                                require totalSupply + (115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                                totalSupply += 115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                require totalSupply <= MAX_SUPPLY
                                require balanceOf[address(msg.sender)] + (115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                else:
                    if block.timestamp - saleStartTime < 504 * 24 * 3600:
                        if not msg.value * PRICE:
                            require 11 * 10^17 * msg.value * PRICE == (10^18 * 11 * 10^17 * msg.value * PRICE / 10^18) + (11 * 10^17 * msg.value * PRICE % 10^18)
                            require etherRatio > 0
                            if etherRatio:
                                require 11 * 10^17 * msg.value * PRICE / 10^18 == (etherRatio * 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) + (11 * 10^17 * msg.value * PRICE / 10^18 % etherRatio)
                                require totalSupply + (11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                                totalSupply += 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                                require totalSupply <= MAX_SUPPLY
                                require balanceOf[address(msg.sender)] + (11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                        else:
                            if msg.value * PRICE:
                                require 11 * 10^17 * msg.value * PRICE / msg.value * PRICE == 11 * 10^17
                                require 11 * 10^17 * msg.value * PRICE == (10^18 * 11 * 10^17 * msg.value * PRICE / 10^18) + (11 * 10^17 * msg.value * PRICE % 10^18)
                                require etherRatio > 0
                                if etherRatio:
                                    require 11 * 10^17 * msg.value * PRICE / 10^18 == (etherRatio * 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) + (11 * 10^17 * msg.value * PRICE / 10^18 % etherRatio)
                                    require totalSupply + (11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                                    totalSupply += 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                                    require totalSupply <= MAX_SUPPLY
                                    require balanceOf[address(msg.sender)] + (11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                    else:
                        if block.timestamp - saleStartTime >= 672 * 24 * 3600:
                            require etherRatio > 0
                            if etherRatio:
                                require msg.value * PRICE == (etherRatio * msg.value * PRICE / etherRatio) + (msg.value * PRICE % etherRatio)
                                require totalSupply + (msg.value * PRICE / etherRatio) >= totalSupply
                                totalSupply += msg.value * PRICE / etherRatio
                                require totalSupply <= MAX_SUPPLY
                                require balanceOf[address(msg.sender)] + (msg.value * PRICE / etherRatio) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value * PRICE / etherRatio
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                        else:
                            if not msg.value * PRICE:
                                require 105 * 10^16 * msg.value * PRICE == (10^18 * 105 * 10^16 * msg.value * PRICE / 10^18) + (105 * 10^16 * msg.value * PRICE % 10^18)
                                require etherRatio > 0
                                if etherRatio:
                                    require 105 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (105 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
                                    require totalSupply + (105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                                    totalSupply += 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                    require totalSupply <= MAX_SUPPLY
                                    require balanceOf[address(msg.sender)] + (105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                            else:
                                if msg.value * PRICE:
                                    require 105 * 10^16 * msg.value * PRICE / msg.value * PRICE == 105 * 10^16
                                    require 105 * 10^16 * msg.value * PRICE == (10^18 * 105 * 10^16 * msg.value * PRICE / 10^18) + (105 * 10^16 * msg.value * PRICE % 10^18)
                                    require etherRatio > 0
                                    if etherRatio:
                                        require 105 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (105 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
                                        require totalSupply + (105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                                        totalSupply += 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                        require totalSupply <= MAX_SUPPLY
                                        require balanceOf[address(msg.sender)] + (105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
    else:
        if msg.value:
            require msg.value * PRICE / msg.value == PRICE
            require saleStartTime <= block.timestamp
            if block.timestamp - saleStartTime < 24 * 3600:
                if not msg.value * PRICE:
                    require 125 * 10^16 * msg.value * PRICE == (10^18 * 125 * 10^16 * msg.value * PRICE / 10^18) + (125 * 10^16 * msg.value * PRICE % 10^18)
                    require etherRatio > 0
                    if etherRatio:
                        require 125 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (125 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
                        require totalSupply + (125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                        totalSupply += 125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                        require totalSupply <= MAX_SUPPLY
                        require balanceOf[address(msg.sender)] + (125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                else:
                    if msg.value * PRICE:
                        require 125 * 10^16 * msg.value * PRICE / msg.value * PRICE == 125 * 10^16
                        require 125 * 10^16 * msg.value * PRICE == (10^18 * 125 * 10^16 * msg.value * PRICE / 10^18) + (125 * 10^16 * msg.value * PRICE % 10^18)
                        require etherRatio > 0
                        if etherRatio:
                            require 125 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (125 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
                            require totalSupply + (125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                            totalSupply += 125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                            require totalSupply <= MAX_SUPPLY
                            require balanceOf[address(msg.sender)] + (125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 125 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
            else:
                if block.timestamp - saleStartTime < 168 * 24 * 3600:
                    if not msg.value * PRICE:
                        require 12 * 10^17 * msg.value * PRICE == (10^18 * 12 * 10^17 * msg.value * PRICE / 10^18) + (12 * 10^17 * msg.value * PRICE % 10^18)
                        require etherRatio > 0
                        if etherRatio:
                            require 12 * 10^17 * msg.value * PRICE / 10^18 == (etherRatio * 12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) + (12 * 10^17 * msg.value * PRICE / 10^18 % etherRatio)
                            require totalSupply + (12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                            totalSupply += 12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                            require totalSupply <= MAX_SUPPLY
                            require balanceOf[address(msg.sender)] + (12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                    else:
                        if msg.value * PRICE:
                            require 12 * 10^17 * msg.value * PRICE / msg.value * PRICE == 12 * 10^17
                            require 12 * 10^17 * msg.value * PRICE == (10^18 * 12 * 10^17 * msg.value * PRICE / 10^18) + (12 * 10^17 * msg.value * PRICE % 10^18)
                            require etherRatio > 0
                            if etherRatio:
                                require 12 * 10^17 * msg.value * PRICE / 10^18 == (etherRatio * 12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) + (12 * 10^17 * msg.value * PRICE / 10^18 % etherRatio)
                                require totalSupply + (12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                                totalSupply += 12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                                require totalSupply <= MAX_SUPPLY
                                require balanceOf[address(msg.sender)] + (12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 12 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                else:
                    if block.timestamp - saleStartTime < 336 * 24 * 3600:
                        if not msg.value * PRICE:
                            require 115 * 10^16 * msg.value * PRICE == (10^18 * 115 * 10^16 * msg.value * PRICE / 10^18) + (115 * 10^16 * msg.value * PRICE % 10^18)
                            require etherRatio > 0
                            if etherRatio:
                                require 115 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (115 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
                                require totalSupply + (115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                                totalSupply += 115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                require totalSupply <= MAX_SUPPLY
                                require balanceOf[address(msg.sender)] + (115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                        else:
                            if msg.value * PRICE:
                                require 115 * 10^16 * msg.value * PRICE / msg.value * PRICE == 115 * 10^16
                                require 115 * 10^16 * msg.value * PRICE == (10^18 * 115 * 10^16 * msg.value * PRICE / 10^18) + (115 * 10^16 * msg.value * PRICE % 10^18)
                                require etherRatio > 0
                                if etherRatio:
                                    require 115 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (115 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
                                    require totalSupply + (115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                                    totalSupply += 115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                    require totalSupply <= MAX_SUPPLY
                                    require balanceOf[address(msg.sender)] + (115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 115 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                    else:
                        if block.timestamp - saleStartTime < 504 * 24 * 3600:
                            if not msg.value * PRICE:
                                require 11 * 10^17 * msg.value * PRICE == (10^18 * 11 * 10^17 * msg.value * PRICE / 10^18) + (11 * 10^17 * msg.value * PRICE % 10^18)
                                require etherRatio > 0
                                if etherRatio:
                                    require 11 * 10^17 * msg.value * PRICE / 10^18 == (etherRatio * 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) + (11 * 10^17 * msg.value * PRICE / 10^18 % etherRatio)
                                    require totalSupply + (11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                                    totalSupply += 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                                    require totalSupply <= MAX_SUPPLY
                                    require balanceOf[address(msg.sender)] + (11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                            else:
                                if msg.value * PRICE:
                                    require 11 * 10^17 * msg.value * PRICE / msg.value * PRICE == 11 * 10^17
                                    require 11 * 10^17 * msg.value * PRICE == (10^18 * 11 * 10^17 * msg.value * PRICE / 10^18) + (11 * 10^17 * msg.value * PRICE % 10^18)
                                    require etherRatio > 0
                                    if etherRatio:
                                        require 11 * 10^17 * msg.value * PRICE / 10^18 == (etherRatio * 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) + (11 * 10^17 * msg.value * PRICE / 10^18 % etherRatio)
                                        require totalSupply + (11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                                        totalSupply += 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                                        require totalSupply <= MAX_SUPPLY
                                        require balanceOf[address(msg.sender)] + (11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += 11 * 10^17 * msg.value * PRICE / 10^18 / etherRatio
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                        else:
                            if block.timestamp - saleStartTime >= 672 * 24 * 3600:
                                require etherRatio > 0
                                if etherRatio:
                                    require msg.value * PRICE == (etherRatio * msg.value * PRICE / etherRatio) + (msg.value * PRICE % etherRatio)
                                    require totalSupply + (msg.value * PRICE / etherRatio) >= totalSupply
                                    totalSupply += msg.value * PRICE / etherRatio
                                    require totalSupply <= MAX_SUPPLY
                                    require balanceOf[address(msg.sender)] + (msg.value * PRICE / etherRatio) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value * PRICE / etherRatio
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                            else:
                                if not msg.value * PRICE:
                                    require 105 * 10^16 * msg.value * PRICE == (10^18 * 105 * 10^16 * msg.value * PRICE / 10^18) + (105 * 10^16 * msg.value * PRICE % 10^18)
                                    require etherRatio > 0
                                    if etherRatio:
                                        require 105 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (105 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
                                        require totalSupply + (105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                                        totalSupply += 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                        require totalSupply <= MAX_SUPPLY
                                        require balanceOf[address(msg.sender)] + (105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                                else:
                                    if msg.value * PRICE:
                                        require 105 * 10^16 * msg.value * PRICE / msg.value * PRICE == 105 * 10^16
                                        require 105 * 10^16 * msg.value * PRICE == (10^18 * 105 * 10^16 * msg.value * PRICE / 10^18) + (105 * 10^16 * msg.value * PRICE % 10^18)
                                        require etherRatio > 0
                                        if etherRatio:
                                            require 105 * 10^16 * msg.value * PRICE / 10^18 == (etherRatio * 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) + (105 * 10^16 * msg.value * PRICE / 10^18 % etherRatio)
                                            require totalSupply + (105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= totalSupply
                                            totalSupply += 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                            require totalSupply <= MAX_SUPPLY
                                            require balanceOf[address(msg.sender)] + (105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += 105 * 10^16 * msg.value * PRICE / 10^18 / etherRatio
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
    revert
}



}

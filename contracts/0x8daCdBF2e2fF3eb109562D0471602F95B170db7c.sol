contract main {


// =======================  Init code  ======================


address stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint64 stor21;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 9
    stor2.length.field_8 = 'TrestCoin' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 4
    stor3.length.field_8 = 'TRST' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 8
    stor5 = 0
    stor6 = 0xc487f60b6fa6d7cc1e51908b383385cbfc6c30b5
    stor7 = 10^14
    stor8 = 1000
    stor9 = 1500
    stor10 = 1300
    stor11 = 1150
    stor12 = 1000
    stor13 = 2 * 10^18
    stor14 = 1502256600
    stor15 = 1502260200
    stor16 = 417295 * 3600
    stor17 = 1502263800
    stor18 = 417296 * 3600
    stor19 = 1502267400
    stor20 = 417297 * 3600
    stor21 = 0
    stor1 = msg.sender
    return code.data[544 len 4645]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 ethRaised;
address stor6;
uint256 minEth;
uint256 priceRate;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 ethGoal;
uint256 startPreICOTimestamp;
uint256 endPreICOTimestamp;
uint256 startICOTimestamp;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 endICOTimestamp;
bool stor21; offset 256
uint8 preSaleGoalReached;
uint8 preSaleStarted; offset 8
uint8 preSaleEnded; offset 16
uint8 saleStarted; offset 24
uint8 saleEnded; offset 32
uint8 isFinalized; offset 40
uint16 stor21; offset 24
uint32 stor21; offset 16
uint32 stor21; offset 8
uint256 stor21; offset 40
uint256 stor21; offset 8
uint256 stor21;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function ethGoal() {
    return ethGoal
}

function name() {
    return name[0 len name.length]
}

function startPreICOTimestamp() {
    return startPreICOTimestamp
}

function SaleEnded() {
    return bool(saleEnded)
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function preSaleGoalReached() {
    return bool(preSaleGoalReached)
}

function preSaleStarted() {
    return bool(preSaleStarted)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function isFinalized() {
    return bool(isFinalized)
}

function owner() {
    return owner
}

function startICOTimestamp() {
    return startICOTimestamp
}

function SaleStarted() {
    return bool(saleStarted)
}

function symbol() {
    return symbol[0 len symbol.length]
}

function preSaleEnded() {
    return bool(preSaleEnded)
}

function endICOTimestamp() {
    return endICOTimestamp
}

function priceRate() {
    return priceRate
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function endPreICOTimestamp() {
    return endPreICOTimestamp
}

function minEth() {
    return minEth
}

function ethRaised() {
    return ethRaised
}

function RelestToken() {
    owner = msg.sender
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require preSaleEnded
    require saleEnded
    require arg1
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    balanceOf[msg.sender] -= arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function finalize() {
    require owner == msg.sender
    require block.timestamp > endICOTimestamp
    require saleEnded
    require not isFinalized
    emit Bounty((30 * totalSupply / 70), stor6);
    require (30 * totalSupply / 70) + totalSupply >= totalSupply
    totalSupply += 30 * totalSupply / 70
    require (30 * totalSupply / 70) + balanceOf[stor6] >= balanceOf[stor6]
    balanceOf[stor6] += 30 * totalSupply / 70
    emit Mint((30 * totalSupply / 70), stor6);
    isFinalized = 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 68
    require preSaleEnded
    require saleEnded
    require arg2
    require arg3 > 0
    require balanceOf[address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function checkPeriod() {
    if block.timestamp > startPreICOTimestamp:
        if block.timestamp < endPreICOTimestamp:
            if not preSaleGoalReached:
                preSaleStarted = 1
                stor21.field_16 % 16777216 = 0
                Mask(216, 0, stor21.field_40) = 0
                stor21.field_256 % 1 = 0
                return 1
    if block.timestamp > startICOTimestamp:
        if block.timestamp < endICOTimestamp:
            uint256(stor21.field_0) = 1
            return 1
    if block.timestamp > endICOTimestamp:
        preSaleEnded = 1
        saleEnded = 1
        Mask(216, 0, stor21.field_40) = 0
        stor21.field_256 % 1 = 0
    else:
        if block.timestamp < startPreICOTimestamp:
            uint32(stor21.field_8) = 0
        else:
            preSaleStarted = 1
            preSaleEnded = 1
            uint16(stor21.field_24) = 0
            Mask(216, 0, stor21.field_40) = 0
            stor21.field_256 % 1 = 0
            stor21.field_256 % 1 = 0
    return 0
}

function buyTokens(address arg1) payable {
    require msg.value >= minEth
    require msg.sender
    if block.timestamp <= startPreICOTimestamp:
        if block.timestamp <= startICOTimestamp:
            if block.timestamp > endICOTimestamp:
                preSaleEnded = 1
                saleEnded = 1
                Mask(216, 0, stor21.field_40) = 0
                stor21.field_256 % 1 = 0
            else:
                if block.timestamp < startPreICOTimestamp:
                    uint32(stor21.field_8) = 0
                else:
                    preSaleStarted = 1
                    preSaleEnded = 1
                    uint16(stor21.field_24) = 0
                    Mask(216, 0, stor21.field_40) = 0
                    stor21.field_256 % 1 = 0
                    stor21.field_256 % 1 = 0
            revert
        if block.timestamp >= endICOTimestamp:
            if block.timestamp > endICOTimestamp:
                preSaleEnded = 1
                saleEnded = 1
                Mask(216, 0, stor21.field_40) = 0
                stor21.field_256 % 1 = 0
            else:
                if block.timestamp < startPreICOTimestamp:
                    uint32(stor21.field_8) = 0
                else:
                    preSaleStarted = 1
                    preSaleEnded = 1
                    uint16(stor21.field_24) = 0
                    Mask(216, 0, stor21.field_40) = 0
                    stor21.field_256 % 1 = 0
                    stor21.field_256 % 1 = 0
            revert
        uint256(stor21.field_0) = 1
    else:
        if block.timestamp >= endPreICOTimestamp:
            if block.timestamp <= startICOTimestamp:
                if block.timestamp > endICOTimestamp:
                    preSaleEnded = 1
                    saleEnded = 1
                    Mask(216, 0, stor21.field_40) = 0
                    stor21.field_256 % 1 = 0
                else:
                    if block.timestamp < startPreICOTimestamp:
                        uint32(stor21.field_8) = 0
                    else:
                        preSaleStarted = 1
                        preSaleEnded = 1
                        uint16(stor21.field_24) = 0
                        Mask(216, 0, stor21.field_40) = 0
                        stor21.field_256 % 1 = 0
                        stor21.field_256 % 1 = 0
                revert
            if block.timestamp >= endICOTimestamp:
                if block.timestamp > endICOTimestamp:
                    preSaleEnded = 1
                    saleEnded = 1
                    Mask(216, 0, stor21.field_40) = 0
                    stor21.field_256 % 1 = 0
                else:
                    if block.timestamp < startPreICOTimestamp:
                        uint32(stor21.field_8) = 0
                    else:
                        preSaleStarted = 1
                        preSaleEnded = 1
                        uint16(stor21.field_24) = 0
                        Mask(216, 0, stor21.field_40) = 0
                        stor21.field_256 % 1 = 0
                        stor21.field_256 % 1 = 0
                revert
            uint256(stor21.field_0) = 1
        else:
            if preSaleGoalReached:
                if block.timestamp <= startICOTimestamp:
                    if block.timestamp > endICOTimestamp:
                        preSaleEnded = 1
                        saleEnded = 1
                        Mask(216, 0, stor21.field_40) = 0
                        stor21.field_256 % 1 = 0
                    else:
                        if block.timestamp < startPreICOTimestamp:
                            uint32(stor21.field_8) = 0
                        else:
                            preSaleStarted = 1
                            preSaleEnded = 1
                            uint16(stor21.field_24) = 0
                            Mask(216, 0, stor21.field_40) = 0
                            stor21.field_256 % 1 = 0
                            stor21.field_256 % 1 = 0
                    revert
                if block.timestamp >= endICOTimestamp:
                    if block.timestamp > endICOTimestamp:
                        preSaleEnded = 1
                        saleEnded = 1
                        Mask(216, 0, stor21.field_40) = 0
                        stor21.field_256 % 1 = 0
                    else:
                        if block.timestamp < startPreICOTimestamp:
                            uint32(stor21.field_8) = 0
                        else:
                            preSaleStarted = 1
                            preSaleEnded = 1
                            uint16(stor21.field_24) = 0
                            Mask(216, 0, stor21.field_40) = 0
                            stor21.field_256 % 1 = 0
                            stor21.field_256 % 1 = 0
                    revert
                uint256(stor21.field_0) = 1
            else:
                preSaleStarted = 1
                stor21.field_16 % 16777216 = 0
                Mask(216, 0, stor21.field_40) = 0
                stor21.field_256 % 1 = 0
    if preSaleStarted:
        if not preSaleEnded:
            priceRate = 2000
    if saleStarted:
        if not saleEnded:
            if block.timestamp < startICOTimestamp:
                if block.timestamp <= stor17:
                    if block.timestamp <= stor18:
                        priceRate = stor12
                    else:
                        if block.timestamp > stor19:
                            priceRate = stor12
                        else:
                            priceRate = stor11
                else:
                    if block.timestamp <= stor18:
                        priceRate = stor10
                    else:
                        if block.timestamp > stor19:
                            priceRate = stor12
                        else:
                            priceRate = stor11
            else:
                if block.timestamp <= stor17:
                    priceRate = stor9
                else:
                    if block.timestamp <= stor18:
                        priceRate = stor10
                    else:
                        if block.timestamp > stor19:
                            priceRate = stor12
                        else:
                            priceRate = stor11
    if msg.value:
        require msg.value
        require priceRate * msg.value / msg.value == priceRate
    require msg.value + ethRaised >= ethRaised
    ethRaised += msg.value
    require (priceRate * msg.value / 10^10) + totalSupply >= totalSupply
    totalSupply += priceRate * msg.value / 10^10
    require (priceRate * msg.value / 10^10) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += priceRate * msg.value / 10^10
    emit Mint((priceRate * msg.value / 10^10), arg1);
    emit TokenPurchase(msg.value, priceRate * msg.value / 10^10, msg.sender, arg1);
    call stor6 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if preSaleStarted:
        if not preSaleEnded:
            if ethRaised >= ethGoal:
                preSaleGoalReached = 1
                Mask(248, 0, stor21.field_8) = preSaleStarted
                preSaleEnded = 1
}

function _fallback() payable {
    require msg.value >= minEth
    require msg.sender
    if block.timestamp <= startPreICOTimestamp:
        if block.timestamp <= startICOTimestamp:
            if block.timestamp > endICOTimestamp:
                preSaleEnded = 1
                saleEnded = 1
                Mask(216, 0, stor21.field_40) = 0
                stor21.field_256 % 1 = 0
            else:
                if block.timestamp < startPreICOTimestamp:
                    uint32(stor21.field_8) = 0
                else:
                    preSaleStarted = 1
                    preSaleEnded = 1
                    uint16(stor21.field_24) = 0
                    Mask(216, 0, stor21.field_40) = 0
                    stor21.field_256 % 1 = 0
                    stor21.field_256 % 1 = 0
            revert
        if block.timestamp >= endICOTimestamp:
            if block.timestamp > endICOTimestamp:
                preSaleEnded = 1
                saleEnded = 1
                Mask(216, 0, stor21.field_40) = 0
                stor21.field_256 % 1 = 0
            else:
                if block.timestamp < startPreICOTimestamp:
                    uint32(stor21.field_8) = 0
                else:
                    preSaleStarted = 1
                    preSaleEnded = 1
                    uint16(stor21.field_24) = 0
                    Mask(216, 0, stor21.field_40) = 0
                    stor21.field_256 % 1 = 0
                    stor21.field_256 % 1 = 0
            revert
        uint256(stor21.field_0) = 1
    else:
        if block.timestamp >= endPreICOTimestamp:
            if block.timestamp <= startICOTimestamp:
                if block.timestamp > endICOTimestamp:
                    preSaleEnded = 1
                    saleEnded = 1
                    Mask(216, 0, stor21.field_40) = 0
                    stor21.field_256 % 1 = 0
                else:
                    if block.timestamp < startPreICOTimestamp:
                        uint32(stor21.field_8) = 0
                    else:
                        preSaleStarted = 1
                        preSaleEnded = 1
                        uint16(stor21.field_24) = 0
                        Mask(216, 0, stor21.field_40) = 0
                        stor21.field_256 % 1 = 0
                        stor21.field_256 % 1 = 0
                revert
            if block.timestamp >= endICOTimestamp:
                if block.timestamp > endICOTimestamp:
                    preSaleEnded = 1
                    saleEnded = 1
                    Mask(216, 0, stor21.field_40) = 0
                    stor21.field_256 % 1 = 0
                else:
                    if block.timestamp < startPreICOTimestamp:
                        uint32(stor21.field_8) = 0
                    else:
                        preSaleStarted = 1
                        preSaleEnded = 1
                        uint16(stor21.field_24) = 0
                        Mask(216, 0, stor21.field_40) = 0
                        stor21.field_256 % 1 = 0
                        stor21.field_256 % 1 = 0
                revert
            uint256(stor21.field_0) = 1
        else:
            if preSaleGoalReached:
                if block.timestamp <= startICOTimestamp:
                    if block.timestamp > endICOTimestamp:
                        preSaleEnded = 1
                        saleEnded = 1
                        Mask(216, 0, stor21.field_40) = 0
                        stor21.field_256 % 1 = 0
                    else:
                        if block.timestamp < startPreICOTimestamp:
                            uint32(stor21.field_8) = 0
                        else:
                            preSaleStarted = 1
                            preSaleEnded = 1
                            uint16(stor21.field_24) = 0
                            Mask(216, 0, stor21.field_40) = 0
                            stor21.field_256 % 1 = 0
                            stor21.field_256 % 1 = 0
                    revert
                if block.timestamp >= endICOTimestamp:
                    if block.timestamp > endICOTimestamp:
                        preSaleEnded = 1
                        saleEnded = 1
                        Mask(216, 0, stor21.field_40) = 0
                        stor21.field_256 % 1 = 0
                    else:
                        if block.timestamp < startPreICOTimestamp:
                            uint32(stor21.field_8) = 0
                        else:
                            preSaleStarted = 1
                            preSaleEnded = 1
                            uint16(stor21.field_24) = 0
                            Mask(216, 0, stor21.field_40) = 0
                            stor21.field_256 % 1 = 0
                            stor21.field_256 % 1 = 0
                    revert
                uint256(stor21.field_0) = 1
            else:
                preSaleStarted = 1
                stor21.field_16 % 16777216 = 0
                Mask(216, 0, stor21.field_40) = 0
                stor21.field_256 % 1 = 0
    if preSaleStarted:
        if not preSaleEnded:
            priceRate = 2000
    if saleStarted:
        if not saleEnded:
            if block.timestamp < startICOTimestamp:
                if block.timestamp <= stor17:
                    if block.timestamp <= stor18:
                        priceRate = stor12
                    else:
                        if block.timestamp > stor19:
                            priceRate = stor12
                        else:
                            priceRate = stor11
                else:
                    if block.timestamp <= stor18:
                        priceRate = stor10
                    else:
                        if block.timestamp > stor19:
                            priceRate = stor12
                        else:
                            priceRate = stor11
            else:
                if block.timestamp <= stor17:
                    priceRate = stor9
                else:
                    if block.timestamp <= stor18:
                        priceRate = stor10
                    else:
                        if block.timestamp > stor19:
                            priceRate = stor12
                        else:
                            priceRate = stor11
    if msg.value:
        require msg.value
        require priceRate * msg.value / msg.value == priceRate
    require msg.value + ethRaised >= ethRaised
    ethRaised += msg.value
    require (priceRate * msg.value / 10^10) + totalSupply >= totalSupply
    totalSupply += priceRate * msg.value / 10^10
    require (priceRate * msg.value / 10^10) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += priceRate * msg.value / 10^10
    emit Mint((priceRate * msg.value / 10^10), msg.sender);
    emit TokenPurchase(msg.value, priceRate * msg.value / 10^10, msg.sender, msg.sender);
    call stor6 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if preSaleStarted:
        if not preSaleEnded:
            if ethRaised >= ethGoal:
                preSaleGoalReached = 1
                Mask(248, 0, stor21.field_8) = preSaleStarted
                preSaleEnded = 1
}



}

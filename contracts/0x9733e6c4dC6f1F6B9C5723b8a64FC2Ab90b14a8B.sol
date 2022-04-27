contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
mapping of uint256 stor8;
uint8 stor10;
uint256 stor11;
uint256 stor12;

function _fallback() payable {
    stor3 = 18
    stor4 = 10^18
    stor7 = 10^18
    stor10 = 1
    stor11 = 0
    stor12 = 0
    require not msg.value
    stor0 = msg.sender
    require 186 * 10^6 * stor4 / 186 * 10^6 == stor4
    stor5 = 186 * 10^6 * stor4
    stor8[address(this.address)] = 186 * 10^6 * stor4
    stor6 = 186 * 10^6 * stor4
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = 'Streamity' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'STM' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[542 len 6243]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 stor4;
uint256 totalSupply;
uint256 avaliableSupply;
uint256 buyPrice;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 paused;
uint256 startIcoDate;
uint256 stage;
uint256 weisRaised;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint8 stor17;
uint8 stor17; offset 8

function avaliableSupply() {
    return avaliableSupply
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function paused() {
    return bool(paused)
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function buyPrice() {
    return buyPrice
}

function symbol() {
    return symbol[0 len symbol.length]
}

function stage() {
    return stage
}

function startIcoDate() {
    return startIcoDate
}

function weisRaised() {
    return weisRaised
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function pause() {
    require stor0 == msg.sender
    paused = 1
    emit EPause()
}

function unpause() {
    require stor0 == msg.sender
    paused = 0
    emit EUnpause()
}

function ICO() {
    return stor14, stor15, stor16, uint8(stor17.field_0), uint8(stor17.field_8)
}

function changeDiscount(uint8 arg1) {
    require stor0 == msg.sender
    uint8(stor17.field_0) = arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function transferOwnership(address arg1) {
    require stor0 == msg.sender
    require arg1
    emit OwnershipTransferred(stor0, arg1);
    stor0 = arg1
}

function transferEthFromContract(address arg1, uint256 arg2) {
    require stor0 == msg.sender
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
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

function burn(uint256 arg1) {
    require stor0 == msg.sender
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= avaliableSupply
    avaliableSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function startCrowd(uint256 arg1, uint256 arg2, uint256 arg3, uint8 arg4, uint8 arg5) {
    require stor0 == msg.sender
    require arg1 * stor4 <= avaliableSupply
    stor14 = arg1 * stor4
    stor15 = arg2
    stor16 = arg2 + (24 * 3600 * arg3)
    uint8(stor17.field_0) = arg4
    uint8(stor17.field_8) = arg5
    require stage + 1 >= stage
    stage++
    paused = 0
    emit EUnpause()
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require stor0 == msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function changeRate(uint256 arg1, uint256 arg2) {
    require stor0 == msg.sender
    if not arg1:
        require stor4 == stor4
        if not arg2:
            buyPrice = stor4
        else:
            require arg2
            buyPrice = stor4 / arg2
    else:
        if arg1:
            require arg1
            require stor4 * arg1 / arg1 == stor4
        if not arg2:
            buyPrice = stor4 * arg1
        else:
            require arg2
            buyPrice = stor4 * arg1 / arg2
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require stor0 == msg.sender
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= avaliableSupply
    avaliableSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] > balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + balanceOf[msg.sender] >= balanceOf[msg.sender]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] >= balanceOf[msg.sender]
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[address(arg1)] + balanceOf[msg.sender]
}

function transferTokensFromContract(address arg1, uint256 arg2) {
    require stor0 == msg.sender
    require arg2 <= avaliableSupply
    avaliableSupply -= arg2
    require arg1
    require balanceOf[address(this.address)] >= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] > balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + balanceOf[this.address] >= balanceOf[this.address]
    require arg2 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, this.address, arg1);
    require balanceOf[address(arg1)] + balanceOf[this.address] >= balanceOf[this.address]
    require balanceOf[address(arg1)] + balanceOf[this.address] == balanceOf[address(arg1)] + balanceOf[this.address]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] > balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + balanceOf[arg1] >= balanceOf[arg1]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg2)] + balanceOf[arg1] >= balanceOf[arg1]
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[address(arg2)] + balanceOf[arg1]
    return 1
}

function transferWeb3js(address arg1, uint256 arg2) {
    require stor0 == msg.sender
    require arg2 <= stor14
    stor14 -= arg2
    require arg2 <= avaliableSupply
    avaliableSupply -= arg2
    require arg1
    require balanceOf[address(this.address)] >= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] > balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + balanceOf[this.address] >= balanceOf[this.address]
    require arg2 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, this.address, arg1);
    require balanceOf[address(arg1)] + balanceOf[this.address] >= balanceOf[this.address]
    require balanceOf[address(arg1)] + balanceOf[this.address] == balanceOf[address(arg1)] + balanceOf[this.address]
}

function _fallback() payable {
    require msg.value >= 10^17
    require block.timestamp >= stor15
    require not paused
    if msg.value:
        require msg.value
        require stor4 * msg.value / msg.value == stor4
    require buyPrice
    if 1 == stage:
        if stor4 * msg.value / buyPrice:
            require stor4 * msg.value / buyPrice
            require uint8(stor17.field_0) * stor4 * msg.value / buyPrice / stor4 * msg.value / buyPrice == uint8(stor17.field_0)
        require (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) >= stor4 * msg.value / buyPrice
        if stor14 < (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice):
            require stor14 <= stor14
            stor14 = 0
            require stor14 <= avaliableSupply
            avaliableSupply -= stor14
            require msg.sender
            require balanceOf[address(this.address)] >= stor14
            require stor14 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            require stor14 + balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] + balanceOf[this.address] >= balanceOf[this.address]
            require stor14 <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] -= stor14
            require stor14 + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = stor14 + balanceOf[msg.sender]
            emit Transfer(stor14, this.address, msg.sender);
            require balanceOf[address(msg.sender)] + balanceOf[this.address] >= balanceOf[this.address]
            require balanceOf[address(msg.sender)] + balanceOf[this.address] == balanceOf[address(msg.sender)] + balanceOf[this.address]
            require msg.value + weisRaised >= weisRaised
            weisRaised += msg.value
            paused = 1
            emit EPause()
            if 1 == stage:
                emit CrowdSaleFinished('Pre-ICO');
            else:
                if 2 == stage:
                    emit CrowdSaleFinished('ICO first stage');
                else:
                    if 3 == stage:
                        emit CrowdSaleFinished('ICO second stage');
                    else:
                        if 4 < stage:
                            emit CrowdSaleFinished('there is no stage at present');
                        else:
                            emit CrowdSaleFinished('feature stage');
        else:
            require (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) <= stor14
            stor14 = stor14 - (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) - (stor4 * msg.value / buyPrice)
            require (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) <= avaliableSupply
            avaliableSupply = avaliableSupply - (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) - (stor4 * msg.value / buyPrice)
            require msg.sender
            require balanceOf[address(this.address)] >= (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice)
            require (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            require (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) + balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] + balanceOf[this.address] >= balanceOf[this.address]
            require (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) - (stor4 * msg.value / buyPrice)
            require (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) + balanceOf[msg.sender]
            emit Transfer(((uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice)), this.address, msg.sender);
            require balanceOf[address(msg.sender)] + balanceOf[this.address] >= balanceOf[this.address]
            require balanceOf[address(msg.sender)] + balanceOf[this.address] == balanceOf[address(msg.sender)] + balanceOf[this.address]
            require msg.value + weisRaised >= weisRaised
            weisRaised += msg.value
            if block.timestamp >= stor16:
                paused = 1
                emit EPause()
                if 1 == stage:
                    emit CrowdSaleFinished('Pre-ICO');
                else:
                    if 2 == stage:
                        emit CrowdSaleFinished('ICO first stage');
                    else:
                        if 3 == stage:
                            emit CrowdSaleFinished('ICO second stage');
                        else:
                            if 4 < stage:
                                emit CrowdSaleFinished('there is no stage at present');
                            else:
                                emit CrowdSaleFinished('feature stage');
    else:
        if stage != 2:
            if stage != 3:
                if stor14 < stor4 * msg.value / buyPrice:
                    require stor14 <= stor14
                    stor14 = 0
                    require stor14 <= avaliableSupply
                    avaliableSupply -= stor14
                    require msg.sender
                    require balanceOf[address(this.address)] >= stor14
                    require stor14 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require stor14 + balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] + balanceOf[this.address] >= balanceOf[this.address]
                    require stor14 <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] -= stor14
                    require stor14 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = stor14 + balanceOf[msg.sender]
                    emit Transfer(stor14, this.address, msg.sender);
                    require balanceOf[address(msg.sender)] + balanceOf[this.address] >= balanceOf[this.address]
                    require balanceOf[address(msg.sender)] + balanceOf[this.address] == balanceOf[address(msg.sender)] + balanceOf[this.address]
                    require msg.value + weisRaised >= weisRaised
                    weisRaised += msg.value
                    paused = 1
                    emit EPause()
                    if 1 == stage:
                        emit CrowdSaleFinished('Pre-ICO');
                    else:
                        if 2 == stage:
                            emit CrowdSaleFinished('ICO first stage');
                        else:
                            if 3 == stage:
                                emit CrowdSaleFinished('ICO second stage');
                            else:
                                if 4 < stage:
                                    emit CrowdSaleFinished('there is no stage at present');
                                else:
                                    emit CrowdSaleFinished('feature stage');
                else:
                    require stor4 * msg.value / buyPrice <= stor14
                    stor14 -= stor4 * msg.value / buyPrice
                    require stor4 * msg.value / buyPrice <= avaliableSupply
                    avaliableSupply -= stor4 * msg.value / buyPrice
                    require msg.sender
                    require balanceOf[address(this.address)] >= stor4 * msg.value / buyPrice
                    require (stor4 * msg.value / buyPrice) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require (stor4 * msg.value / buyPrice) + balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] + balanceOf[this.address] >= balanceOf[this.address]
                    require stor4 * msg.value / buyPrice <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] -= stor4 * msg.value / buyPrice
                    require (stor4 * msg.value / buyPrice) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = (stor4 * msg.value / buyPrice) + balanceOf[msg.sender]
                    emit Transfer((stor4 * msg.value / buyPrice), this.address, msg.sender);
                    require balanceOf[address(msg.sender)] + balanceOf[this.address] >= balanceOf[this.address]
                    require balanceOf[address(msg.sender)] + balanceOf[this.address] == balanceOf[address(msg.sender)] + balanceOf[this.address]
                    require msg.value + weisRaised >= weisRaised
                    weisRaised += msg.value
                    if block.timestamp >= stor16:
                        paused = 1
                        emit EPause()
                        if 1 == stage:
                            emit CrowdSaleFinished('Pre-ICO');
                        else:
                            if 2 == stage:
                                emit CrowdSaleFinished('ICO first stage');
                            else:
                                if 3 == stage:
                                    emit CrowdSaleFinished('ICO second stage');
                                else:
                                    if 4 < stage:
                                        emit CrowdSaleFinished('there is no stage at present');
                                    else:
                                        emit CrowdSaleFinished('feature stage');
            else:
                if stor4 * msg.value / buyPrice:
                    require stor4 * msg.value / buyPrice
                    require uint8(stor17.field_0) * stor4 * msg.value / buyPrice / stor4 * msg.value / buyPrice == uint8(stor17.field_0)
                require (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) >= stor4 * msg.value / buyPrice
                if stor14 < (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice):
                    require stor14 <= stor14
                    stor14 = 0
                    require stor14 <= avaliableSupply
                    avaliableSupply -= stor14
                    require msg.sender
                    require balanceOf[address(this.address)] >= stor14
                    require stor14 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require stor14 + balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] + balanceOf[this.address] >= balanceOf[this.address]
                    require stor14 <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] -= stor14
                    require stor14 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = stor14 + balanceOf[msg.sender]
                    emit Transfer(stor14, this.address, msg.sender);
                    require balanceOf[address(msg.sender)] + balanceOf[this.address] >= balanceOf[this.address]
                    require balanceOf[address(msg.sender)] + balanceOf[this.address] == balanceOf[address(msg.sender)] + balanceOf[this.address]
                    require msg.value + weisRaised >= weisRaised
                    weisRaised += msg.value
                    paused = 1
                    emit EPause()
                    if 1 == stage:
                        emit CrowdSaleFinished('Pre-ICO');
                    else:
                        if 2 == stage:
                            emit CrowdSaleFinished('ICO first stage');
                        else:
                            if 3 == stage:
                                emit CrowdSaleFinished('ICO second stage');
                            else:
                                if 4 < stage:
                                    emit CrowdSaleFinished('there is no stage at present');
                                else:
                                    emit CrowdSaleFinished('feature stage');
                else:
                    require (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) <= stor14
                    stor14 = stor14 - (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) - (stor4 * msg.value / buyPrice)
                    require (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) <= avaliableSupply
                    avaliableSupply = avaliableSupply - (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) - (stor4 * msg.value / buyPrice)
                    require msg.sender
                    require balanceOf[address(this.address)] >= (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice)
                    require (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) + balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] + balanceOf[this.address] >= balanceOf[this.address]
                    require (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) - (stor4 * msg.value / buyPrice)
                    require (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) + balanceOf[msg.sender]
                    emit Transfer(((uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice)), this.address, msg.sender);
                    require balanceOf[address(msg.sender)] + balanceOf[this.address] >= balanceOf[this.address]
                    require balanceOf[address(msg.sender)] + balanceOf[this.address] == balanceOf[address(msg.sender)] + balanceOf[this.address]
                    require msg.value + weisRaised >= weisRaised
                    weisRaised += msg.value
                    if block.timestamp >= stor16:
                        paused = 1
                        emit EPause()
                        if 1 == stage:
                            emit CrowdSaleFinished('Pre-ICO');
                        else:
                            if 2 == stage:
                                emit CrowdSaleFinished('ICO first stage');
                            else:
                                if 3 == stage:
                                    emit CrowdSaleFinished('ICO second stage');
                                else:
                                    if 4 < stage:
                                        emit CrowdSaleFinished('there is no stage at present');
                                    else:
                                        emit CrowdSaleFinished('feature stage');
        else:
            if block.timestamp > stor15 + (24 * 3600):
                if stor4 * msg.value / buyPrice:
                    require stor4 * msg.value / buyPrice
                    require uint8(stor17.field_0) * stor4 * msg.value / buyPrice / stor4 * msg.value / buyPrice == uint8(stor17.field_0)
                require (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) >= stor4 * msg.value / buyPrice
                if stor14 < (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice):
                    require stor14 <= stor14
                    stor14 = 0
                    require stor14 <= avaliableSupply
                    avaliableSupply -= stor14
                    require msg.sender
                    require balanceOf[address(this.address)] >= stor14
                    require stor14 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require stor14 + balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] + balanceOf[this.address] >= balanceOf[this.address]
                    require stor14 <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] -= stor14
                    require stor14 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = stor14 + balanceOf[msg.sender]
                    emit Transfer(stor14, this.address, msg.sender);
                    require balanceOf[address(msg.sender)] + balanceOf[this.address] >= balanceOf[this.address]
                    require balanceOf[address(msg.sender)] + balanceOf[this.address] == balanceOf[address(msg.sender)] + balanceOf[this.address]
                    require msg.value + weisRaised >= weisRaised
                    weisRaised += msg.value
                    paused = 1
                    emit EPause()
                    if 1 == stage:
                        emit CrowdSaleFinished('Pre-ICO');
                    else:
                        if 2 == stage:
                            emit CrowdSaleFinished('ICO first stage');
                        else:
                            if 3 == stage:
                                emit CrowdSaleFinished('ICO second stage');
                            else:
                                if 4 < stage:
                                    emit CrowdSaleFinished('there is no stage at present');
                                else:
                                    emit CrowdSaleFinished('feature stage');
                else:
                    require (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) <= stor14
                    stor14 = stor14 - (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) - (stor4 * msg.value / buyPrice)
                    require (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) <= avaliableSupply
                    avaliableSupply = avaliableSupply - (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) - (stor4 * msg.value / buyPrice)
                    require msg.sender
                    require balanceOf[address(this.address)] >= (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice)
                    require (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) + balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] + balanceOf[this.address] >= balanceOf[this.address]
                    require (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) - (stor4 * msg.value / buyPrice)
                    require (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = (uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) + balanceOf[msg.sender]
                    emit Transfer(((uint8(stor17.field_0) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice)), this.address, msg.sender);
                    require balanceOf[address(msg.sender)] + balanceOf[this.address] >= balanceOf[this.address]
                    require balanceOf[address(msg.sender)] + balanceOf[this.address] == balanceOf[address(msg.sender)] + balanceOf[this.address]
                    require msg.value + weisRaised >= weisRaised
                    weisRaised += msg.value
                    if block.timestamp >= stor16:
                        paused = 1
                        emit EPause()
                        if 1 == stage:
                            emit CrowdSaleFinished('Pre-ICO');
                        else:
                            if 2 == stage:
                                emit CrowdSaleFinished('ICO first stage');
                            else:
                                if 3 == stage:
                                    emit CrowdSaleFinished('ICO second stage');
                                else:
                                    if 4 < stage:
                                        emit CrowdSaleFinished('there is no stage at present');
                                    else:
                                        emit CrowdSaleFinished('feature stage');
            else:
                if not uint8(stor17.field_8):
                    uint8(stor17.field_8) = 20
                if stor4 * msg.value / buyPrice:
                    require stor4 * msg.value / buyPrice
                    require uint8(stor17.field_8) * stor4 * msg.value / buyPrice / stor4 * msg.value / buyPrice == uint8(stor17.field_8)
                require (uint8(stor17.field_8) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) >= stor4 * msg.value / buyPrice
                if stor14 < (uint8(stor17.field_8) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice):
                    require stor14 <= stor14
                    stor14 = 0
                    require stor14 <= avaliableSupply
                    avaliableSupply -= stor14
                    require msg.sender
                    require balanceOf[address(this.address)] >= stor14
                    require stor14 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require stor14 + balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] + balanceOf[this.address] >= balanceOf[this.address]
                    require stor14 <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] -= stor14
                    require stor14 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = stor14 + balanceOf[msg.sender]
                    emit Transfer(stor14, this.address, msg.sender);
                    require balanceOf[address(msg.sender)] + balanceOf[this.address] >= balanceOf[this.address]
                    require balanceOf[address(msg.sender)] + balanceOf[this.address] == balanceOf[address(msg.sender)] + balanceOf[this.address]
                    require msg.value + weisRaised >= weisRaised
                    weisRaised += msg.value
                    paused = 1
                    emit EPause()
                    if 1 == stage:
                        emit CrowdSaleFinished('Pre-ICO');
                    else:
                        if 2 == stage:
                            emit CrowdSaleFinished('ICO first stage');
                        else:
                            if 3 == stage:
                                emit CrowdSaleFinished('ICO second stage');
                            else:
                                if 4 < stage:
                                    emit CrowdSaleFinished('there is no stage at present');
                                else:
                                    emit CrowdSaleFinished('feature stage');
                else:
                    require (uint8(stor17.field_8) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) <= stor14
                    stor14 = stor14 - (uint8(stor17.field_8) * stor4 * msg.value / buyPrice / 100) - (stor4 * msg.value / buyPrice)
                    require (uint8(stor17.field_8) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) <= avaliableSupply
                    avaliableSupply = avaliableSupply - (uint8(stor17.field_8) * stor4 * msg.value / buyPrice / 100) - (stor4 * msg.value / buyPrice)
                    require msg.sender
                    require balanceOf[address(this.address)] >= (uint8(stor17.field_8) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice)
                    require (uint8(stor17.field_8) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require (uint8(stor17.field_8) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) + balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] + balanceOf[this.address] >= balanceOf[this.address]
                    require (uint8(stor17.field_8) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (uint8(stor17.field_8) * stor4 * msg.value / buyPrice / 100) - (stor4 * msg.value / buyPrice)
                    require (uint8(stor17.field_8) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = (uint8(stor17.field_8) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice) + balanceOf[msg.sender]
                    emit Transfer(((uint8(stor17.field_8) * stor4 * msg.value / buyPrice / 100) + (stor4 * msg.value / buyPrice)), this.address, msg.sender);
                    require balanceOf[address(msg.sender)] + balanceOf[this.address] >= balanceOf[this.address]
                    require balanceOf[address(msg.sender)] + balanceOf[this.address] == balanceOf[address(msg.sender)] + balanceOf[this.address]
                    require msg.value + weisRaised >= weisRaised
                    weisRaised += msg.value
                    if block.timestamp >= stor16:
                        paused = 1
                        emit EPause()
                        if 1 == stage:
                            emit CrowdSaleFinished('Pre-ICO');
                        else:
                            if 2 == stage:
                                emit CrowdSaleFinished('ICO first stage');
                            else:
                                if 3 == stage:
                                    emit CrowdSaleFinished('ICO second stage');
                                else:
                                    if 4 < stage:
                                        emit CrowdSaleFinished('there is no stage at present');
                                    else:
                                        emit CrowdSaleFinished('feature stage');
}



}

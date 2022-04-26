contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
mapping of uint256 stor9;
uint8 stor11;
uint256 stor12;
uint256 stor13;

function _fallback() payable {
    stor3 = 18
    stor4 = 10^stor3
    stor8 = 12077 * 10^12
    stor11 = 1
    stor12 = 0
    stor13 = 0
    require not msg.value
    stor0 = msg.sender
    stor6 = 50 * 10^6 * stor4
    stor9[address(this.address)] = stor6
    stor7 = stor9[address(this.address)]
    bool(stor1.length) = 0
    stor1.length.field_1 = 23
    stor1.length.field_8 = 'Barbarossa Invest Token' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'BIT' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = msg.sender
    return code.data[721 len 9959]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 stor4;
address owner;
uint256 totalSupply;
uint256 avaliableSupply;
uint256 buyPrice;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor11;
uint256 sub_751bba6a;
uint256 stage;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint8 stor17;
uint256 lastCompletedMigration;
uint256 weisRaised;

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
    return bool(stor11)
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_751bba6a(?) {
    return sub_751bba6a
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function stage() {
    return stage
}

function weisRaised() {
    return weisRaised
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function lastCompletedMigration() {
    return lastCompletedMigration
}

function sub_3221f50c(?) {
    return stor14, stor15, stor16, stor17
}

function pause() {
    require msg.sender == stor0
    stor11 = 1
    emit EPause()
}

function setPrices(uint256 arg1) {
    require msg.sender == stor0
    buyPrice = arg1
}

function unpause() {
    require msg.sender == stor0
    stor11 = 0
    emit EUnpause()
}

function setCompleted(uint256 arg1) {
    require msg.sender == stor0
    lastCompletedMigration = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == stor0
    require arg1
    emit OwnershipTransferred(stor0, arg1);
    stor0 = arg1
}

function transferEthFromContract(address arg1, uint256 arg2) {
    require msg.sender == stor0
    call arg1 with:
       value arg2 * stor4 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function upgrade(address arg1) {
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0xfdacd576 with:
         gas gas_remaining - 710 wei
        args lastCompletedMigration
    require ext_call.success
}

function burn(uint256 arg1) {
    require msg.sender == stor0
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    avaliableSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function sub_944c68b1(?) {
    require msg.sender == stor0
    require arg1 * stor4 <= avaliableSupply
    sub_751bba6a = arg2
    stor14 = arg1 * stor4
    stor15 = arg2
    stor16 = arg3
    stor17 = arg4
    stage++
    require msg.sender == stor0
    stor11 = 0
    emit EUnpause()
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

function burnFrom(address arg1, uint256 arg2) {
    require msg.sender == stor0
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    avaliableSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require msg.sender == stor0
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    return 1
}

function transferTokensFromContract(address arg1, uint256 arg2) {
    require msg.sender == stor0
    avaliableSupply -= arg2
    require arg1
    require balanceOf[address(this.address)] >= arg2 * stor4
    require balanceOf[address(arg1)] + (arg2 * stor4) > balanceOf[address(arg1)]
    balanceOf[address(this.address)] += -1 * arg2 * stor4
    balanceOf[address(arg1)] += arg2 * stor4
    emit Transfer((arg2 * stor4), this.address, arg1);
    require balanceOf[address(this.address)] + balanceOf[address(arg1)] == balanceOf[address(this.address)] + balanceOf[address(arg1)]
}

function _fallback() payable {
    require msg.value >= 10^17
    if msg.value:
        require msg.value
        require msg.value * stor4 / msg.value == stor4
    require buyPrice
    if 1 == stage:
        require (msg.value * stor4 / buyPrice) + (msg.value * stor4 / buyPrice * stor17 / 100) >= msg.value * stor4 / buyPrice
        if stor14 < (msg.value * stor4 / buyPrice) + (msg.value * stor4 / buyPrice * stor17 / 100):
            if 1 == stage:
                emit 0x37dc1508: 'first stage'
            else:
                if 2 == stage:
                    emit 0x37dc1508: 'second stage'
                else:
                    if 3 == stage:
                        emit 0x37dc1508: 'feature stage'
                    else:
                        if 4 < stage:
                            emit 0x37dc1508: 'there is no stage at present'
                        else:
                            emit 0x37dc1508: 'feature stage'
            stor11 = 1
            emit EPause()
            revert
        stor14 = stor14 - (msg.value * stor4 / buyPrice) - (msg.value * stor4 / buyPrice * stor17 / 100)
        avaliableSupply = avaliableSupply - (msg.value * stor4 / buyPrice) - (msg.value * stor4 / buyPrice * stor17 / 100)
        require msg.sender
        require balanceOf[address(this.address)] >= (msg.value * stor4 / buyPrice) + (msg.value * stor4 / buyPrice * stor17 / 100)
        require balanceOf[address(msg.sender)] + (msg.value * stor4 / buyPrice) + (msg.value * stor4 / buyPrice * stor17 / 100) > balanceOf[address(msg.sender)]
        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * stor4 / buyPrice) - (msg.value * stor4 / buyPrice * stor17 / 100)
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * stor4 / buyPrice) + (msg.value * stor4 / buyPrice * stor17 / 100)
        emit Transfer(((msg.value * stor4 / buyPrice) + (msg.value * stor4 / buyPrice * stor17 / 100)), this.address, msg.sender);
    else:
        if 2 == stage:
            require (msg.value * stor4 / buyPrice) + (msg.value * stor4 / buyPrice * stor17 / 100) >= msg.value * stor4 / buyPrice
            if stor14 < (msg.value * stor4 / buyPrice) + (msg.value * stor4 / buyPrice * stor17 / 100):
                if 1 == stage:
                    emit 0x37dc1508: 'first stage'
                else:
                    if 2 == stage:
                        emit 0x37dc1508: 'second stage'
                    else:
                        if 3 == stage:
                            emit 0x37dc1508: 'feature stage'
                        else:
                            if 4 < stage:
                                emit 0x37dc1508: 'there is no stage at present'
                            else:
                                emit 0x37dc1508: 'feature stage'
                stor11 = 1
                emit EPause()
                revert
            stor14 = stor14 - (msg.value * stor4 / buyPrice) - (msg.value * stor4 / buyPrice * stor17 / 100)
            avaliableSupply = avaliableSupply - (msg.value * stor4 / buyPrice) - (msg.value * stor4 / buyPrice * stor17 / 100)
            require msg.sender
            require balanceOf[address(this.address)] >= (msg.value * stor4 / buyPrice) + (msg.value * stor4 / buyPrice * stor17 / 100)
            require balanceOf[address(msg.sender)] + (msg.value * stor4 / buyPrice) + (msg.value * stor4 / buyPrice * stor17 / 100) > balanceOf[address(msg.sender)]
            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * stor4 / buyPrice) - (msg.value * stor4 / buyPrice * stor17 / 100)
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * stor4 / buyPrice) + (msg.value * stor4 / buyPrice * stor17 / 100)
            emit Transfer(((msg.value * stor4 / buyPrice) + (msg.value * stor4 / buyPrice * stor17 / 100)), this.address, msg.sender);
        else:
            if stage != 3:
                if stor14 < msg.value * stor4 / buyPrice:
                    if 1 == stage:
                        emit 0x37dc1508: 'first stage'
                    else:
                        if 2 == stage:
                            emit 0x37dc1508: 'second stage'
                        else:
                            if 3 == stage:
                                emit 0x37dc1508: 'feature stage'
                            else:
                                if 4 < stage:
                                    emit 0x37dc1508: 'there is no stage at present'
                                else:
                                    emit 0x37dc1508: 'feature stage'
                    stor11 = 1
                    emit EPause()
                    revert
                stor14 -= msg.value * stor4 / buyPrice
                avaliableSupply -= msg.value * stor4 / buyPrice
                require msg.sender
                require balanceOf[address(this.address)] >= msg.value * stor4 / buyPrice
                require balanceOf[address(msg.sender)] + (msg.value * stor4 / buyPrice) > balanceOf[address(msg.sender)]
                balanceOf[address(this.address)] -= msg.value * stor4 / buyPrice
                balanceOf[address(msg.sender)] += msg.value * stor4 / buyPrice
                emit Transfer((msg.value * stor4 / buyPrice), this.address, msg.sender);
            else:
                require (msg.value * stor4 / buyPrice) + (msg.value * stor4 / buyPrice * stor17 / 100) >= msg.value * stor4 / buyPrice
                if stor14 < (msg.value * stor4 / buyPrice) + (msg.value * stor4 / buyPrice * stor17 / 100):
                    if 1 == stage:
                        emit 0x37dc1508: 'first stage'
                    else:
                        if 2 == stage:
                            emit 0x37dc1508: 'second stage'
                        else:
                            if 3 == stage:
                                emit 0x37dc1508: 'feature stage'
                            else:
                                if 4 < stage:
                                    emit 0x37dc1508: 'there is no stage at present'
                                else:
                                    emit 0x37dc1508: 'feature stage'
                    stor11 = 1
                    emit EPause()
                    revert
                stor14 = stor14 - (msg.value * stor4 / buyPrice) - (msg.value * stor4 / buyPrice * stor17 / 100)
                avaliableSupply = avaliableSupply - (msg.value * stor4 / buyPrice) - (msg.value * stor4 / buyPrice * stor17 / 100)
                require msg.sender
                require balanceOf[address(this.address)] >= (msg.value * stor4 / buyPrice) + (msg.value * stor4 / buyPrice * stor17 / 100)
                require balanceOf[address(msg.sender)] + (msg.value * stor4 / buyPrice) + (msg.value * stor4 / buyPrice * stor17 / 100) > balanceOf[address(msg.sender)]
                balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * stor4 / buyPrice) - (msg.value * stor4 / buyPrice * stor17 / 100)
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * stor4 / buyPrice) + (msg.value * stor4 / buyPrice * stor17 / 100)
                emit Transfer(((msg.value * stor4 / buyPrice) + (msg.value * stor4 / buyPrice * stor17 / 100)), this.address, msg.sender);
    require balanceOf[address(this.address)] + balanceOf[address(msg.sender)] == balanceOf[address(this.address)] + balanceOf[address(msg.sender)]
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require weisRaised + msg.value >= weisRaised
    weisRaised += msg.value
}



}

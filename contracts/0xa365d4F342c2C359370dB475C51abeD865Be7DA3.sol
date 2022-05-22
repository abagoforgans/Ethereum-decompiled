contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
address stor2;
address stor3;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
mapping of uint256 stor10;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 17
    stor1.length.field_8 = 'http://eencoin.im' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = this.address
    stor3 = msg.sender
    bool(stor4.length) = 0
    stor4.length.field_1 = 7
    stor4.length.field_8 = 'EENcoin' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'EEN' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 18
    stor7 = 100000006 * 10^18
    stor8 = 25000
    stor9 = 25000
    require not msg.value
    stor0 = msg.sender
    stor10[address(msg.sender)] = stor7
    stor3 = msg.sender
    return code.data[599 len 4422]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 sub_8e57a553;
address sub_61841adcAddress;
address creatorAddress;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 buyPrice;
uint256 sellPrice;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor12;

function creator() {
    return creatorAddress
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

function sellPrice() {
    return sellPrice
}

function sub_61841adc(?) {
    return sub_61841adcAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function sub_8e57a553(?) {
    return sub_8e57a553[0 len sub_8e57a553.length]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor12[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    sellPrice = arg1
    buyPrice = arg2
}

function freezeAccount(address arg1, bool arg2) {
    require owner == msg.sender
    stor12[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function sell(uint256 arg1) {
    require eth.balance(this.address) >= arg1 * sellPrice
    require this.address
    require balanceOf[address(msg.sender)] >= arg1
    require balanceOf[address(this.address)] + arg1 >= balanceOf[address(this.address)]
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[this.address] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    if block.timestamp < 423576 * 24 * 3600:
        require balanceOf[stor3] >= msg.value * buyPrice
        require msg.value > 0
        require msg.value >= 0
        require msg.value >= msg.value
        require (msg.value * buyPrice) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require (msg.value * buyPrice) + balanceOf[address(msg.sender)] >= msg.value * buyPrice
        balanceOf[address(msg.sender)] += msg.value * buyPrice
        require msg.value * buyPrice <= balanceOf[stor3]
        balanceOf[stor3] += -1 * msg.value * buyPrice
        emit Transfer((msg.value * buyPrice), creatorAddress, msg.sender);
    else:
        if block.timestamp <= 1527551999:
            require balanceOf[stor3] >= (50 * msg.value * buyPrice / 100) + (msg.value * buyPrice)
            require msg.value > 0
            require msg.value >= 0
            require msg.value >= msg.value
            require (50 * msg.value * buyPrice / 100) + (msg.value * buyPrice) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] >= 0
            balanceOf[address(msg.sender)] = (50 * msg.value * buyPrice / 100) + (msg.value * buyPrice) + balanceOf[address(msg.sender)]
            require (50 * msg.value * buyPrice / 100) + (msg.value * buyPrice) <= balanceOf[stor3]
            balanceOf[stor3] = balanceOf[stor3] - (50 * msg.value * buyPrice / 100) - (msg.value * buyPrice)
            emit Transfer(((50 * msg.value * buyPrice / 100) + (msg.value * buyPrice)), creatorAddress, msg.sender);
        else:
            if block.timestamp < 424320 * 24 * 3600:
                require balanceOf[stor3] >= msg.value * buyPrice
                require msg.value > 0
                require msg.value >= 0
                require msg.value >= msg.value
                require (msg.value * buyPrice) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require (msg.value * buyPrice) + balanceOf[address(msg.sender)] >= msg.value * buyPrice
                balanceOf[address(msg.sender)] += msg.value * buyPrice
                require msg.value * buyPrice <= balanceOf[stor3]
                balanceOf[stor3] += -1 * msg.value * buyPrice
                emit Transfer((msg.value * buyPrice), creatorAddress, msg.sender);
            else:
                if block.timestamp <= 1530316799:
                    require balanceOf[stor3] >= (40 * msg.value * buyPrice / 100) + (msg.value * buyPrice)
                    require msg.value > 0
                    require msg.value >= 0
                    require msg.value >= msg.value
                    require (40 * msg.value * buyPrice / 100) + (msg.value * buyPrice) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] >= 0
                    balanceOf[address(msg.sender)] = (40 * msg.value * buyPrice / 100) + (msg.value * buyPrice) + balanceOf[address(msg.sender)]
                    require (40 * msg.value * buyPrice / 100) + (msg.value * buyPrice) <= balanceOf[stor3]
                    balanceOf[stor3] = balanceOf[stor3] - (40 * msg.value * buyPrice / 100) - (msg.value * buyPrice)
                    emit Transfer(((40 * msg.value * buyPrice / 100) + (msg.value * buyPrice)), creatorAddress, msg.sender);
                else:
                    if block.timestamp < 425088 * 24 * 3600:
                        require balanceOf[stor3] >= msg.value * buyPrice
                        require msg.value > 0
                        require msg.value >= 0
                        require msg.value >= msg.value
                        require (msg.value * buyPrice) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        require (msg.value * buyPrice) + balanceOf[address(msg.sender)] >= msg.value * buyPrice
                        balanceOf[address(msg.sender)] += msg.value * buyPrice
                        require msg.value * buyPrice <= balanceOf[stor3]
                        balanceOf[stor3] += -1 * msg.value * buyPrice
                        emit Transfer((msg.value * buyPrice), creatorAddress, msg.sender);
                    else:
                        if block.timestamp <= 1532995199:
                            require balanceOf[stor3] >= (30 * msg.value * buyPrice / 100) + (msg.value * buyPrice)
                            require msg.value > 0
                            require msg.value >= 0
                            require msg.value >= msg.value
                            require (30 * msg.value * buyPrice / 100) + (msg.value * buyPrice) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            require balanceOf[address(msg.sender)] >= 0
                            balanceOf[address(msg.sender)] = (30 * msg.value * buyPrice / 100) + (msg.value * buyPrice) + balanceOf[address(msg.sender)]
                            require (30 * msg.value * buyPrice / 100) + (msg.value * buyPrice) <= balanceOf[stor3]
                            balanceOf[stor3] = balanceOf[stor3] - (30 * msg.value * buyPrice / 100) - (msg.value * buyPrice)
                            emit Transfer(((30 * msg.value * buyPrice / 100) + (msg.value * buyPrice)), creatorAddress, msg.sender);
                        else:
                            if block.timestamp < 425832 * 24 * 3600:
                                require balanceOf[stor3] >= msg.value * buyPrice
                                require msg.value > 0
                                require msg.value >= 0
                                require msg.value >= msg.value
                                require (msg.value * buyPrice) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                require (msg.value * buyPrice) + balanceOf[address(msg.sender)] >= msg.value * buyPrice
                                balanceOf[address(msg.sender)] += msg.value * buyPrice
                                require msg.value * buyPrice <= balanceOf[stor3]
                                balanceOf[stor3] += -1 * msg.value * buyPrice
                                emit Transfer((msg.value * buyPrice), creatorAddress, msg.sender);
                            else:
                                if block.timestamp <= 1535759999:
                                    require balanceOf[stor3] >= (20 * msg.value * buyPrice / 100) + (msg.value * buyPrice)
                                    require msg.value > 0
                                    require msg.value >= 0
                                    require msg.value >= msg.value
                                    require (20 * msg.value * buyPrice / 100) + (msg.value * buyPrice) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    require balanceOf[address(msg.sender)] >= 0
                                    balanceOf[address(msg.sender)] = (20 * msg.value * buyPrice / 100) + (msg.value * buyPrice) + balanceOf[address(msg.sender)]
                                    require (20 * msg.value * buyPrice / 100) + (msg.value * buyPrice) <= balanceOf[stor3]
                                    balanceOf[stor3] = balanceOf[stor3] - (20 * msg.value * buyPrice / 100) - (msg.value * buyPrice)
                                    emit Transfer(((20 * msg.value * buyPrice / 100) + (msg.value * buyPrice)), creatorAddress, msg.sender);
                                else:
                                    if block.timestamp < 426600 * 24 * 3600:
                                        require balanceOf[stor3] >= msg.value * buyPrice
                                        require msg.value > 0
                                        require msg.value >= 0
                                        require msg.value >= msg.value
                                        require (msg.value * buyPrice) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        require (msg.value * buyPrice) + balanceOf[address(msg.sender)] >= msg.value * buyPrice
                                        balanceOf[address(msg.sender)] += msg.value * buyPrice
                                        require msg.value * buyPrice <= balanceOf[stor3]
                                        balanceOf[stor3] += -1 * msg.value * buyPrice
                                        emit Transfer((msg.value * buyPrice), creatorAddress, msg.sender);
                                    else:
                                        if block.timestamp > 1538438399:
                                            require balanceOf[stor3] >= msg.value * buyPrice
                                            require msg.value > 0
                                            require msg.value >= 0
                                            require msg.value >= msg.value
                                            require (msg.value * buyPrice) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            require (msg.value * buyPrice) + balanceOf[address(msg.sender)] >= msg.value * buyPrice
                                            balanceOf[address(msg.sender)] += msg.value * buyPrice
                                            require msg.value * buyPrice <= balanceOf[stor3]
                                            balanceOf[stor3] += -1 * msg.value * buyPrice
                                            emit Transfer((msg.value * buyPrice), creatorAddress, msg.sender);
                                        else:
                                            require balanceOf[stor3] >= (10 * msg.value * buyPrice / 100) + (msg.value * buyPrice)
                                            require msg.value > 0
                                            require msg.value >= 0
                                            require msg.value >= msg.value
                                            require (10 * msg.value * buyPrice / 100) + (msg.value * buyPrice) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            require balanceOf[address(msg.sender)] >= 0
                                            balanceOf[address(msg.sender)] = (10 * msg.value * buyPrice / 100) + (msg.value * buyPrice) + balanceOf[address(msg.sender)]
                                            require (10 * msg.value * buyPrice / 100) + (msg.value * buyPrice) <= balanceOf[stor3]
                                            balanceOf[stor3] = balanceOf[stor3] - (10 * msg.value * buyPrice / 100) - (msg.value * buyPrice)
                                            emit Transfer(((10 * msg.value * buyPrice / 100) + (msg.value * buyPrice)), creatorAddress, msg.sender);
    call creatorAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}

contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
uint256 stor5;
mapping of uint256 stor6;
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

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 8
    stor1.length.field_8 = 'MimiCoin' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'MIM' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 18
    stor5 = 50 * 10^6
    stor8 = 500
    stor9 = 500
    stor10 = 750
    stor11 = 250
    stor12 = 1518479999
    stor13 = 420696 * 24 * 3600
    stor14 = 1515455999
    stor15 = 420960 * 24 * 3600
    stor16 = 1516751999
    stor17 = 420600 * 24 * 3600
    stor18 = 1514246399
    stor19 = 420768 * 24 * 3600
    stor20 = 1514851199
    require not msg.value
    stor0 = msg.sender
    stor4 = stor5 * 10^stor3
    stor6[address(this.address)] = stor4
    return code.data[666 len 7089]
}



// =====================  Runtime code  =====================


const ledger = 0xd7b4754a023b92f811ef98b2bd1cd8d531905e5a


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 sellPrice;
uint256 buyPrice;
uint256 sub_662f3031;
uint256 sub_67b0bd3d;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
mapping of uint8 stor21;

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

function sub_662f3031(?) {
    return sub_662f3031
}

function sub_67b0bd3d(?) {
    return sub_67b0bd3d
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

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor21[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    sellPrice = arg1
    buyPrice = arg2
}

function approve(address arg1, uint256 arg2) {
    require msg.sender == owner
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor21[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require balanceOf[address(this.address)] >= arg1
    balanceOf[address(this.address)] -= arg1
    emit Burn(arg1, this.address);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function burnFrom(address arg1, uint256 arg2) {
    require msg.sender == owner
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require msg.sender == owner
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require balanceOf[address(this.address)] > arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require not stor21[address(this.address)]
    require not stor21[address(arg1)]
    balanceOf[address(this.address)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, this.address, arg1);
    call 0xd7b4754a023b92f811ef98b2bd1cd8d531905e5a with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] > arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require not stor21[address(arg1)]
    require not stor21[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    call 0xd7b4754a023b92f811ef98b2bd1cd8d531905e5a with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function sell(uint256 arg1) {
    require msg.sender == owner
    require eth.balance(this.address) >= arg1 * sellPrice
    require this.address
    require balanceOf[address(msg.sender)] > arg1
    require balanceOf[address(this.address)] + arg1 > balanceOf[address(this.address)]
    require not stor21[address(msg.sender)]
    require not stor21[address(this.address)]
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[address(this.address)] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    call 0xd7b4754a023b92f811ef98b2bd1cd8d531905e5a with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require buyPrice
    require msg.value >= 10^18 / buyPrice
    require block.timestamp < stor12
    require msg.sender
    if block.timestamp < stor13:
        if block.timestamp < stor15:
            if block.timestamp < stor17:
                if block.timestamp < stor19:
                    require balanceOf[address(this.address)] > msg.value * sub_67b0bd3d
                    require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) > balanceOf[address(msg.sender)]
                    require not stor21[address(this.address)]
                    require not stor21[address(msg.sender)]
                    balanceOf[address(this.address)] += -1 * msg.value * sub_67b0bd3d
                    balanceOf[address(msg.sender)] += msg.value * sub_67b0bd3d
                    emit Transfer((msg.value * sub_67b0bd3d), this.address, msg.sender);
                else:
                    if block.timestamp > stor20:
                        require balanceOf[address(this.address)] > msg.value * sub_67b0bd3d
                        require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) > balanceOf[address(msg.sender)]
                        require not stor21[address(this.address)]
                        require not stor21[address(msg.sender)]
                        balanceOf[address(this.address)] += -1 * msg.value * sub_67b0bd3d
                        balanceOf[address(msg.sender)] += msg.value * sub_67b0bd3d
                        emit Transfer((msg.value * sub_67b0bd3d), this.address, msg.sender);
                    else:
                        require balanceOf[address(this.address)] > (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)
                        require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100) > balanceOf[address(msg.sender)]
                        require not stor21[address(this.address)]
                        require not stor21[address(msg.sender)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * sub_67b0bd3d) - (50 * msg.value * sub_67b0bd3d / 100)
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)
                        emit Transfer(((msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)), this.address, msg.sender);
            else:
                if block.timestamp <= stor18:
                    require balanceOf[address(this.address)] > (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)
                    require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100) > balanceOf[address(msg.sender)]
                    require not stor21[address(this.address)]
                    require not stor21[address(msg.sender)]
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * sub_67b0bd3d) - (50 * msg.value * sub_67b0bd3d / 100)
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)
                    emit Transfer(((msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)), this.address, msg.sender);
                else:
                    if block.timestamp < stor19:
                        require balanceOf[address(this.address)] > msg.value * sub_67b0bd3d
                        require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) > balanceOf[address(msg.sender)]
                        require not stor21[address(this.address)]
                        require not stor21[address(msg.sender)]
                        balanceOf[address(this.address)] += -1 * msg.value * sub_67b0bd3d
                        balanceOf[address(msg.sender)] += msg.value * sub_67b0bd3d
                        emit Transfer((msg.value * sub_67b0bd3d), this.address, msg.sender);
                    else:
                        if block.timestamp > stor20:
                            require balanceOf[address(this.address)] > msg.value * sub_67b0bd3d
                            require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) > balanceOf[address(msg.sender)]
                            require not stor21[address(this.address)]
                            require not stor21[address(msg.sender)]
                            balanceOf[address(this.address)] += -1 * msg.value * sub_67b0bd3d
                            balanceOf[address(msg.sender)] += msg.value * sub_67b0bd3d
                            emit Transfer((msg.value * sub_67b0bd3d), this.address, msg.sender);
                        else:
                            require balanceOf[address(this.address)] > (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100) > balanceOf[address(msg.sender)]
                            require not stor21[address(this.address)]
                            require not stor21[address(msg.sender)]
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * sub_67b0bd3d) - (50 * msg.value * sub_67b0bd3d / 100)
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)
                            emit Transfer(((msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)), this.address, msg.sender);
        else:
            if block.timestamp > stor16:
                if block.timestamp < stor17:
                    if block.timestamp < stor19:
                        require balanceOf[address(this.address)] > msg.value * sub_67b0bd3d
                        require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) > balanceOf[address(msg.sender)]
                        require not stor21[address(this.address)]
                        require not stor21[address(msg.sender)]
                        balanceOf[address(this.address)] += -1 * msg.value * sub_67b0bd3d
                        balanceOf[address(msg.sender)] += msg.value * sub_67b0bd3d
                        emit Transfer((msg.value * sub_67b0bd3d), this.address, msg.sender);
                    else:
                        if block.timestamp > stor20:
                            require balanceOf[address(this.address)] > msg.value * sub_67b0bd3d
                            require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) > balanceOf[address(msg.sender)]
                            require not stor21[address(this.address)]
                            require not stor21[address(msg.sender)]
                            balanceOf[address(this.address)] += -1 * msg.value * sub_67b0bd3d
                            balanceOf[address(msg.sender)] += msg.value * sub_67b0bd3d
                            emit Transfer((msg.value * sub_67b0bd3d), this.address, msg.sender);
                        else:
                            require balanceOf[address(this.address)] > (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100) > balanceOf[address(msg.sender)]
                            require not stor21[address(this.address)]
                            require not stor21[address(msg.sender)]
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * sub_67b0bd3d) - (50 * msg.value * sub_67b0bd3d / 100)
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)
                            emit Transfer(((msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)), this.address, msg.sender);
                else:
                    if block.timestamp <= stor18:
                        require balanceOf[address(this.address)] > (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)
                        require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100) > balanceOf[address(msg.sender)]
                        require not stor21[address(this.address)]
                        require not stor21[address(msg.sender)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * sub_67b0bd3d) - (50 * msg.value * sub_67b0bd3d / 100)
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)
                        emit Transfer(((msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)), this.address, msg.sender);
                    else:
                        if block.timestamp < stor19:
                            require balanceOf[address(this.address)] > msg.value * sub_67b0bd3d
                            require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) > balanceOf[address(msg.sender)]
                            require not stor21[address(this.address)]
                            require not stor21[address(msg.sender)]
                            balanceOf[address(this.address)] += -1 * msg.value * sub_67b0bd3d
                            balanceOf[address(msg.sender)] += msg.value * sub_67b0bd3d
                            emit Transfer((msg.value * sub_67b0bd3d), this.address, msg.sender);
                        else:
                            if block.timestamp > stor20:
                                require balanceOf[address(this.address)] > msg.value * sub_67b0bd3d
                                require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) > balanceOf[address(msg.sender)]
                                require not stor21[address(this.address)]
                                require not stor21[address(msg.sender)]
                                balanceOf[address(this.address)] += -1 * msg.value * sub_67b0bd3d
                                balanceOf[address(msg.sender)] += msg.value * sub_67b0bd3d
                                emit Transfer((msg.value * sub_67b0bd3d), this.address, msg.sender);
                            else:
                                require balanceOf[address(this.address)] > (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)
                                require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100) > balanceOf[address(msg.sender)]
                                require not stor21[address(this.address)]
                                require not stor21[address(msg.sender)]
                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * sub_67b0bd3d) - (50 * msg.value * sub_67b0bd3d / 100)
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)
                                emit Transfer(((msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)), this.address, msg.sender);
            else:
                if block.timestamp < stor17:
                    if block.timestamp < stor19:
                        require balanceOf[address(this.address)] > msg.value * buyPrice
                        require balanceOf[address(msg.sender)] + (msg.value * buyPrice) > balanceOf[address(msg.sender)]
                        require not stor21[address(this.address)]
                        require not stor21[address(msg.sender)]
                        balanceOf[address(this.address)] += -1 * msg.value * buyPrice
                        balanceOf[address(msg.sender)] += msg.value * buyPrice
                        emit Transfer((msg.value * buyPrice), this.address, msg.sender);
                    else:
                        if block.timestamp > stor20:
                            require balanceOf[address(this.address)] > msg.value * buyPrice
                            require balanceOf[address(msg.sender)] + (msg.value * buyPrice) > balanceOf[address(msg.sender)]
                            require not stor21[address(this.address)]
                            require not stor21[address(msg.sender)]
                            balanceOf[address(this.address)] += -1 * msg.value * buyPrice
                            balanceOf[address(msg.sender)] += msg.value * buyPrice
                            emit Transfer((msg.value * buyPrice), this.address, msg.sender);
                        else:
                            require balanceOf[address(this.address)] > (msg.value * buyPrice) + (50 * msg.value * buyPrice / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * buyPrice) + (50 * msg.value * buyPrice / 100) > balanceOf[address(msg.sender)]
                            require not stor21[address(this.address)]
                            require not stor21[address(msg.sender)]
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * buyPrice) - (50 * msg.value * buyPrice / 100)
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * buyPrice) + (50 * msg.value * buyPrice / 100)
                            emit Transfer(((msg.value * buyPrice) + (50 * msg.value * buyPrice / 100)), this.address, msg.sender);
                else:
                    if block.timestamp <= stor18:
                        require balanceOf[address(this.address)] > (msg.value * buyPrice) + (50 * msg.value * buyPrice / 100)
                        require balanceOf[address(msg.sender)] + (msg.value * buyPrice) + (50 * msg.value * buyPrice / 100) > balanceOf[address(msg.sender)]
                        require not stor21[address(this.address)]
                        require not stor21[address(msg.sender)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * buyPrice) - (50 * msg.value * buyPrice / 100)
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * buyPrice) + (50 * msg.value * buyPrice / 100)
                        emit Transfer(((msg.value * buyPrice) + (50 * msg.value * buyPrice / 100)), this.address, msg.sender);
                    else:
                        if block.timestamp < stor19:
                            require balanceOf[address(this.address)] > msg.value * buyPrice
                            require balanceOf[address(msg.sender)] + (msg.value * buyPrice) > balanceOf[address(msg.sender)]
                            require not stor21[address(this.address)]
                            require not stor21[address(msg.sender)]
                            balanceOf[address(this.address)] += -1 * msg.value * buyPrice
                            balanceOf[address(msg.sender)] += msg.value * buyPrice
                            emit Transfer((msg.value * buyPrice), this.address, msg.sender);
                        else:
                            if block.timestamp > stor20:
                                require balanceOf[address(this.address)] > msg.value * buyPrice
                                require balanceOf[address(msg.sender)] + (msg.value * buyPrice) > balanceOf[address(msg.sender)]
                                require not stor21[address(this.address)]
                                require not stor21[address(msg.sender)]
                                balanceOf[address(this.address)] += -1 * msg.value * buyPrice
                                balanceOf[address(msg.sender)] += msg.value * buyPrice
                                emit Transfer((msg.value * buyPrice), this.address, msg.sender);
                            else:
                                require balanceOf[address(this.address)] > (msg.value * buyPrice) + (50 * msg.value * buyPrice / 100)
                                require balanceOf[address(msg.sender)] + (msg.value * buyPrice) + (50 * msg.value * buyPrice / 100) > balanceOf[address(msg.sender)]
                                require not stor21[address(this.address)]
                                require not stor21[address(msg.sender)]
                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * buyPrice) - (50 * msg.value * buyPrice / 100)
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * buyPrice) + (50 * msg.value * buyPrice / 100)
                                emit Transfer(((msg.value * buyPrice) + (50 * msg.value * buyPrice / 100)), this.address, msg.sender);
    else:
        if block.timestamp <= stor14:
            if block.timestamp < stor17:
                if block.timestamp < stor19:
                    require balanceOf[address(this.address)] > msg.value * sub_662f3031
                    require balanceOf[address(msg.sender)] + (msg.value * sub_662f3031) > balanceOf[address(msg.sender)]
                    require not stor21[address(this.address)]
                    require not stor21[address(msg.sender)]
                    balanceOf[address(this.address)] += -1 * msg.value * sub_662f3031
                    balanceOf[address(msg.sender)] += msg.value * sub_662f3031
                    emit Transfer((msg.value * sub_662f3031), this.address, msg.sender);
                else:
                    if block.timestamp > stor20:
                        require balanceOf[address(this.address)] > msg.value * sub_662f3031
                        require balanceOf[address(msg.sender)] + (msg.value * sub_662f3031) > balanceOf[address(msg.sender)]
                        require not stor21[address(this.address)]
                        require not stor21[address(msg.sender)]
                        balanceOf[address(this.address)] += -1 * msg.value * sub_662f3031
                        balanceOf[address(msg.sender)] += msg.value * sub_662f3031
                        emit Transfer((msg.value * sub_662f3031), this.address, msg.sender);
                    else:
                        require balanceOf[address(this.address)] > (msg.value * sub_662f3031) + (50 * msg.value * sub_662f3031 / 100)
                        require balanceOf[address(msg.sender)] + (msg.value * sub_662f3031) + (50 * msg.value * sub_662f3031 / 100) > balanceOf[address(msg.sender)]
                        require not stor21[address(this.address)]
                        require not stor21[address(msg.sender)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * sub_662f3031) - (50 * msg.value * sub_662f3031 / 100)
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * sub_662f3031) + (50 * msg.value * sub_662f3031 / 100)
                        emit Transfer(((msg.value * sub_662f3031) + (50 * msg.value * sub_662f3031 / 100)), this.address, msg.sender);
            else:
                if block.timestamp <= stor18:
                    require balanceOf[address(this.address)] > (msg.value * sub_662f3031) + (50 * msg.value * sub_662f3031 / 100)
                    require balanceOf[address(msg.sender)] + (msg.value * sub_662f3031) + (50 * msg.value * sub_662f3031 / 100) > balanceOf[address(msg.sender)]
                    require not stor21[address(this.address)]
                    require not stor21[address(msg.sender)]
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * sub_662f3031) - (50 * msg.value * sub_662f3031 / 100)
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * sub_662f3031) + (50 * msg.value * sub_662f3031 / 100)
                    emit Transfer(((msg.value * sub_662f3031) + (50 * msg.value * sub_662f3031 / 100)), this.address, msg.sender);
                else:
                    if block.timestamp < stor19:
                        require balanceOf[address(this.address)] > msg.value * sub_662f3031
                        require balanceOf[address(msg.sender)] + (msg.value * sub_662f3031) > balanceOf[address(msg.sender)]
                        require not stor21[address(this.address)]
                        require not stor21[address(msg.sender)]
                        balanceOf[address(this.address)] += -1 * msg.value * sub_662f3031
                        balanceOf[address(msg.sender)] += msg.value * sub_662f3031
                        emit Transfer((msg.value * sub_662f3031), this.address, msg.sender);
                    else:
                        if block.timestamp > stor20:
                            require balanceOf[address(this.address)] > msg.value * sub_662f3031
                            require balanceOf[address(msg.sender)] + (msg.value * sub_662f3031) > balanceOf[address(msg.sender)]
                            require not stor21[address(this.address)]
                            require not stor21[address(msg.sender)]
                            balanceOf[address(this.address)] += -1 * msg.value * sub_662f3031
                            balanceOf[address(msg.sender)] += msg.value * sub_662f3031
                            emit Transfer((msg.value * sub_662f3031), this.address, msg.sender);
                        else:
                            require balanceOf[address(this.address)] > (msg.value * sub_662f3031) + (50 * msg.value * sub_662f3031 / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * sub_662f3031) + (50 * msg.value * sub_662f3031 / 100) > balanceOf[address(msg.sender)]
                            require not stor21[address(this.address)]
                            require not stor21[address(msg.sender)]
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * sub_662f3031) - (50 * msg.value * sub_662f3031 / 100)
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * sub_662f3031) + (50 * msg.value * sub_662f3031 / 100)
                            emit Transfer(((msg.value * sub_662f3031) + (50 * msg.value * sub_662f3031 / 100)), this.address, msg.sender);
        else:
            if block.timestamp < stor15:
                if block.timestamp < stor17:
                    if block.timestamp < stor19:
                        require balanceOf[address(this.address)] > msg.value * sub_67b0bd3d
                        require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) > balanceOf[address(msg.sender)]
                        require not stor21[address(this.address)]
                        require not stor21[address(msg.sender)]
                        balanceOf[address(this.address)] += -1 * msg.value * sub_67b0bd3d
                        balanceOf[address(msg.sender)] += msg.value * sub_67b0bd3d
                        emit Transfer((msg.value * sub_67b0bd3d), this.address, msg.sender);
                    else:
                        if block.timestamp > stor20:
                            require balanceOf[address(this.address)] > msg.value * sub_67b0bd3d
                            require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) > balanceOf[address(msg.sender)]
                            require not stor21[address(this.address)]
                            require not stor21[address(msg.sender)]
                            balanceOf[address(this.address)] += -1 * msg.value * sub_67b0bd3d
                            balanceOf[address(msg.sender)] += msg.value * sub_67b0bd3d
                            emit Transfer((msg.value * sub_67b0bd3d), this.address, msg.sender);
                        else:
                            require balanceOf[address(this.address)] > (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100) > balanceOf[address(msg.sender)]
                            require not stor21[address(this.address)]
                            require not stor21[address(msg.sender)]
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * sub_67b0bd3d) - (50 * msg.value * sub_67b0bd3d / 100)
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)
                            emit Transfer(((msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)), this.address, msg.sender);
                else:
                    if block.timestamp <= stor18:
                        require balanceOf[address(this.address)] > (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)
                        require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100) > balanceOf[address(msg.sender)]
                        require not stor21[address(this.address)]
                        require not stor21[address(msg.sender)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * sub_67b0bd3d) - (50 * msg.value * sub_67b0bd3d / 100)
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)
                        emit Transfer(((msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)), this.address, msg.sender);
                    else:
                        if block.timestamp < stor19:
                            require balanceOf[address(this.address)] > msg.value * sub_67b0bd3d
                            require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) > balanceOf[address(msg.sender)]
                            require not stor21[address(this.address)]
                            require not stor21[address(msg.sender)]
                            balanceOf[address(this.address)] += -1 * msg.value * sub_67b0bd3d
                            balanceOf[address(msg.sender)] += msg.value * sub_67b0bd3d
                            emit Transfer((msg.value * sub_67b0bd3d), this.address, msg.sender);
                        else:
                            if block.timestamp > stor20:
                                require balanceOf[address(this.address)] > msg.value * sub_67b0bd3d
                                require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) > balanceOf[address(msg.sender)]
                                require not stor21[address(this.address)]
                                require not stor21[address(msg.sender)]
                                balanceOf[address(this.address)] += -1 * msg.value * sub_67b0bd3d
                                balanceOf[address(msg.sender)] += msg.value * sub_67b0bd3d
                                emit Transfer((msg.value * sub_67b0bd3d), this.address, msg.sender);
                            else:
                                require balanceOf[address(this.address)] > (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)
                                require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100) > balanceOf[address(msg.sender)]
                                require not stor21[address(this.address)]
                                require not stor21[address(msg.sender)]
                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * sub_67b0bd3d) - (50 * msg.value * sub_67b0bd3d / 100)
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)
                                emit Transfer(((msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)), this.address, msg.sender);
            else:
                if block.timestamp > stor16:
                    if block.timestamp < stor17:
                        if block.timestamp < stor19:
                            require balanceOf[address(this.address)] > msg.value * sub_67b0bd3d
                            require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) > balanceOf[address(msg.sender)]
                            require not stor21[address(this.address)]
                            require not stor21[address(msg.sender)]
                            balanceOf[address(this.address)] += -1 * msg.value * sub_67b0bd3d
                            balanceOf[address(msg.sender)] += msg.value * sub_67b0bd3d
                            emit Transfer((msg.value * sub_67b0bd3d), this.address, msg.sender);
                        else:
                            if block.timestamp > stor20:
                                require balanceOf[address(this.address)] > msg.value * sub_67b0bd3d
                                require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) > balanceOf[address(msg.sender)]
                                require not stor21[address(this.address)]
                                require not stor21[address(msg.sender)]
                                balanceOf[address(this.address)] += -1 * msg.value * sub_67b0bd3d
                                balanceOf[address(msg.sender)] += msg.value * sub_67b0bd3d
                                emit Transfer((msg.value * sub_67b0bd3d), this.address, msg.sender);
                            else:
                                require balanceOf[address(this.address)] > (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)
                                require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100) > balanceOf[address(msg.sender)]
                                require not stor21[address(this.address)]
                                require not stor21[address(msg.sender)]
                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * sub_67b0bd3d) - (50 * msg.value * sub_67b0bd3d / 100)
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)
                                emit Transfer(((msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)), this.address, msg.sender);
                    else:
                        if block.timestamp <= stor18:
                            require balanceOf[address(this.address)] > (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100) > balanceOf[address(msg.sender)]
                            require not stor21[address(this.address)]
                            require not stor21[address(msg.sender)]
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * sub_67b0bd3d) - (50 * msg.value * sub_67b0bd3d / 100)
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)
                            emit Transfer(((msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)), this.address, msg.sender);
                        else:
                            if block.timestamp < stor19:
                                require balanceOf[address(this.address)] > msg.value * sub_67b0bd3d
                                require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) > balanceOf[address(msg.sender)]
                                require not stor21[address(this.address)]
                                require not stor21[address(msg.sender)]
                                balanceOf[address(this.address)] += -1 * msg.value * sub_67b0bd3d
                                balanceOf[address(msg.sender)] += msg.value * sub_67b0bd3d
                                emit Transfer((msg.value * sub_67b0bd3d), this.address, msg.sender);
                            else:
                                if block.timestamp > stor20:
                                    require balanceOf[address(this.address)] > msg.value * sub_67b0bd3d
                                    require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) > balanceOf[address(msg.sender)]
                                    require not stor21[address(this.address)]
                                    require not stor21[address(msg.sender)]
                                    balanceOf[address(this.address)] += -1 * msg.value * sub_67b0bd3d
                                    balanceOf[address(msg.sender)] += msg.value * sub_67b0bd3d
                                    emit Transfer((msg.value * sub_67b0bd3d), this.address, msg.sender);
                                else:
                                    require balanceOf[address(this.address)] > (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)
                                    require balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100) > balanceOf[address(msg.sender)]
                                    require not stor21[address(this.address)]
                                    require not stor21[address(msg.sender)]
                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * sub_67b0bd3d) - (50 * msg.value * sub_67b0bd3d / 100)
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)
                                    emit Transfer(((msg.value * sub_67b0bd3d) + (50 * msg.value * sub_67b0bd3d / 100)), this.address, msg.sender);
                else:
                    if block.timestamp < stor17:
                        if block.timestamp < stor19:
                            require balanceOf[address(this.address)] > msg.value * buyPrice
                            require balanceOf[address(msg.sender)] + (msg.value * buyPrice) > balanceOf[address(msg.sender)]
                            require not stor21[address(this.address)]
                            require not stor21[address(msg.sender)]
                            balanceOf[address(this.address)] += -1 * msg.value * buyPrice
                            balanceOf[address(msg.sender)] += msg.value * buyPrice
                            emit Transfer((msg.value * buyPrice), this.address, msg.sender);
                        else:
                            if block.timestamp > stor20:
                                require balanceOf[address(this.address)] > msg.value * buyPrice
                                require balanceOf[address(msg.sender)] + (msg.value * buyPrice) > balanceOf[address(msg.sender)]
                                require not stor21[address(this.address)]
                                require not stor21[address(msg.sender)]
                                balanceOf[address(this.address)] += -1 * msg.value * buyPrice
                                balanceOf[address(msg.sender)] += msg.value * buyPrice
                                emit Transfer((msg.value * buyPrice), this.address, msg.sender);
                            else:
                                require balanceOf[address(this.address)] > (msg.value * buyPrice) + (50 * msg.value * buyPrice / 100)
                                require balanceOf[address(msg.sender)] + (msg.value * buyPrice) + (50 * msg.value * buyPrice / 100) > balanceOf[address(msg.sender)]
                                require not stor21[address(this.address)]
                                require not stor21[address(msg.sender)]
                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * buyPrice) - (50 * msg.value * buyPrice / 100)
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * buyPrice) + (50 * msg.value * buyPrice / 100)
                                emit Transfer(((msg.value * buyPrice) + (50 * msg.value * buyPrice / 100)), this.address, msg.sender);
                    else:
                        if block.timestamp <= stor18:
                            require balanceOf[address(this.address)] > (msg.value * buyPrice) + (50 * msg.value * buyPrice / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * buyPrice) + (50 * msg.value * buyPrice / 100) > balanceOf[address(msg.sender)]
                            require not stor21[address(this.address)]
                            require not stor21[address(msg.sender)]
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * buyPrice) - (50 * msg.value * buyPrice / 100)
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * buyPrice) + (50 * msg.value * buyPrice / 100)
                            emit Transfer(((msg.value * buyPrice) + (50 * msg.value * buyPrice / 100)), this.address, msg.sender);
                        else:
                            if block.timestamp < stor19:
                                require balanceOf[address(this.address)] > msg.value * buyPrice
                                require balanceOf[address(msg.sender)] + (msg.value * buyPrice) > balanceOf[address(msg.sender)]
                                require not stor21[address(this.address)]
                                require not stor21[address(msg.sender)]
                                balanceOf[address(this.address)] += -1 * msg.value * buyPrice
                                balanceOf[address(msg.sender)] += msg.value * buyPrice
                                emit Transfer((msg.value * buyPrice), this.address, msg.sender);
                            else:
                                if block.timestamp > stor20:
                                    require balanceOf[address(this.address)] > msg.value * buyPrice
                                    require balanceOf[address(msg.sender)] + (msg.value * buyPrice) > balanceOf[address(msg.sender)]
                                    require not stor21[address(this.address)]
                                    require not stor21[address(msg.sender)]
                                    balanceOf[address(this.address)] += -1 * msg.value * buyPrice
                                    balanceOf[address(msg.sender)] += msg.value * buyPrice
                                    emit Transfer((msg.value * buyPrice), this.address, msg.sender);
                                else:
                                    require balanceOf[address(this.address)] > (msg.value * buyPrice) + (50 * msg.value * buyPrice / 100)
                                    require balanceOf[address(msg.sender)] + (msg.value * buyPrice) + (50 * msg.value * buyPrice / 100) > balanceOf[address(msg.sender)]
                                    require not stor21[address(this.address)]
                                    require not stor21[address(msg.sender)]
                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * buyPrice) - (50 * msg.value * buyPrice / 100)
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * buyPrice) + (50 * msg.value * buyPrice / 100)
                                    emit Transfer(((msg.value * buyPrice) + (50 * msg.value * buyPrice / 100)), this.address, msg.sender);
    call 0xd7b4754a023b92f811ef98b2bd1cd8d531905e5a with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}

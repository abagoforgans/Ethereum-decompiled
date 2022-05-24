contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 buyPrice;
uint256 sellPrice;
mapping of uint8 stor9;
mapping of uint256 sub_a5eefd9e;
mapping of uint256 sub_13af6ab8;
mapping of uint256 sub_1226cbd3;
uint256 sub_7e891f01;
array of address stor14;
uint256 sub_51eb10aa;
uint256 sub_f57f84e7;
uint256 stor17;
uint8 stor18;
address sub_0210adf8Address; offset 8
uint256 sub_24301be2;

function sub_0210adf8(?) {
    return sub_0210adf8Address
}

function name() {
    return name[0 len name.length]
}

function sub_1226cbd3(?) {
    return sub_1226cbd3[arg1]
}

function sub_13af6ab8(?) {
    return sub_13af6ab8[arg1]
}

function totalSupply() {
    return totalSupply
}

function sub_24301be2(?) {
    return sub_24301be2
}

function decimals() {
    return decimals
}

function sellPrice() {
    return sellPrice
}

function sub_51eb10aa(?) {
    return sub_51eb10aa
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_7e891f01(?) {
    return sub_7e891f01
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

function sub_a5eefd9e(?) {
    return sub_a5eefd9e[arg1]
}

function frozenAccount(address arg1) {
    return bool(stor9[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function sub_f57f84e7(?) {
    return sub_f57f84e7
}

function sub_e950f15a(?) {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    selfdestruct(msg.sender)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    buyPrice = arg1
    sellPrice = arg2
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require not stor9[address(msg.sender)]
    require not stor9[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require not stor9[address(arg1)]
    require not stor9[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function auctionEnd() {
    require msg.sender == owner
    require block.timestamp >= sub_f57f84e7
    require not stor18
    s = 0
    s = 0
    idx = stor14.length - 1
    s = 999 * sub_7e891f01 / 10000
    while idx >= 0:
        require idx < stor14.length
        if 100 * sub_1226cbd3[stor14[idx]] <= s:
            totalSupply -= balanceOf[stor14[idx]]
            balanceOf[stor14[idx]] = 0
            stor9[stor14[idx]] = 0
            require stor14[idx]
            require balanceOf[address(this.address)] >= 100 * sub_1226cbd3[stor14[idx]]
            require balanceOf[stor14[idx]] + (100 * sub_1226cbd3[stor14[idx]]) >= balanceOf[stor14[idx]]
            require not stor9[address(this.address)]
            require not stor9[stor14[idx]]
            balanceOf[address(this.address)] += -100 * sub_1226cbd3[stor14[idx]]
            balanceOf[stor14[idx]] += 100 * sub_1226cbd3[stor14[idx]]
            mem[96] = 100 * sub_1226cbd3[stor14[idx]]
            emit Transfer((100 * sub_1226cbd3[stor14[idx]]), this.address, stor14[idx]);
            stor9[stor14[idx]] = 1
            sub_a5eefd9e[stor14[idx]] = block.timestamp - (720 * 24 * 3600)
            mem[0] = stor14[idx]
            mem[32] = 11
            sub_13af6ab8[stor14[idx]] = block.timestamp
            s = 100 * sub_1226cbd3[stor14[idx]]
            s = stor14[idx]
            idx = idx - 1
            s = s - (100 * sub_1226cbd3[stor14[idx]])
            continue 
        if s <= 0:
            stor18 = 1
            emit AuctionEnded(msg.sender, block.timestamp);
        totalSupply -= balanceOf[stor14[idx]]
        balanceOf[stor14[idx]] = 0
        stor9[stor14[idx]] = 0
        require stor14[idx]
        require balanceOf[address(this.address)] >= s
        require balanceOf[stor14[idx]] + s >= balanceOf[stor14[idx]]
        require not stor9[address(this.address)]
        require not stor9[stor14[idx]]
        balanceOf[address(this.address)] -= s
        balanceOf[stor14[idx]] += s
        mem[96] = s
        emit Transfer(s, this.address, stor14[idx]);
        stor9[stor14[idx]] = 1
        sub_a5eefd9e[stor14[idx]] = block.timestamp - (720 * 24 * 3600)
        mem[0] = stor14[idx]
        mem[32] = 11
        sub_13af6ab8[stor14[idx]] = block.timestamp
        s = s
        s = stor14[idx]
        idx = idx - 1
        s = 0
        continue 
    stor18 = 1
    emit AuctionEnded(msg.sender, block.timestamp);
}

function sub_b4a60512(?) {
    require sub_1226cbd3[address(msg.sender)] > 0
    require block.timestamp >= sub_a5eefd9e[address(msg.sender)] + (720 * 24 * 3600)
    require sellPrice
    if sub_a5eefd9e[address(msg.sender)] != sub_13af6ab8[address(msg.sender)]:
        require eth.balance(this.address) >= 10^18 * balanceOf[address(msg.sender)] / sellPrice
        stor9[address(msg.sender)] = 0
        require this.address
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require balanceOf[address(this.address)] + balanceOf[address(msg.sender)] >= balanceOf[address(this.address)]
        require not stor9[address(msg.sender)]
        require not stor9[address(this.address)]
        balanceOf[address(msg.sender)] = 0
        balanceOf[address(this.address)] += balanceOf[address(msg.sender)]
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, this.address);
        stor9[address(msg.sender)] = 1
        call msg.sender with:
           value 10^18 * balanceOf[address(msg.sender)] / sellPrice wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        balanceOf[address(msg.sender)] = 0
        sub_1226cbd3[address(msg.sender)] = 0
        sub_13af6ab8[address(msg.sender)] = block.timestamp
        emit 0x6df75305: msg.sender, 10^18 * balanceOf[address(msg.sender)] / sellPrice
    else:
        require eth.balance(this.address) >= (10^18 * balanceOf[address(msg.sender)]) + (10^18 * 246529 * sub_1226cbd3[address(msg.sender)] / 10000 / 30) / sellPrice
        stor9[address(msg.sender)] = 0
        require this.address
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require balanceOf[address(this.address)] + balanceOf[address(msg.sender)] >= balanceOf[address(this.address)]
        require not stor9[address(msg.sender)]
        require not stor9[address(this.address)]
        balanceOf[address(msg.sender)] = 0
        balanceOf[address(this.address)] += balanceOf[address(msg.sender)]
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, this.address);
        stor9[address(msg.sender)] = 1
        call msg.sender with:
           value (10^18 * balanceOf[address(msg.sender)]) + (10^18 * 246529 * sub_1226cbd3[address(msg.sender)] / 10000 / 30) / sellPrice wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        balanceOf[address(msg.sender)] = 0
        sub_1226cbd3[address(msg.sender)] = 0
        sub_13af6ab8[address(msg.sender)] = block.timestamp
        emit 0x6df75305: msg.sender, (10^18 * balanceOf[address(msg.sender)]) + (10^18 * 246529 * sub_1226cbd3[address(msg.sender)] / 10000 / 30) / sellPrice
}

function _fallback() payable {
    if not msg.value:
        if owner == msg.sender:
            call owner with:
               value 99 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require sub_1226cbd3[address(msg.sender)] > 0
            require block.timestamp >= sub_a5eefd9e[address(msg.sender)] + (720 * 24 * 3600)
            require sellPrice
            if sub_a5eefd9e[address(msg.sender)] != sub_13af6ab8[address(msg.sender)]:
                require eth.balance(this.address) >= 10^18 * balanceOf[address(msg.sender)] / sellPrice
                stor9[address(msg.sender)] = 0
                require this.address
                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require balanceOf[address(this.address)] + balanceOf[address(msg.sender)] >= balanceOf[address(this.address)]
                require not stor9[address(msg.sender)]
                require not stor9[address(this.address)]
                balanceOf[address(msg.sender)] = 0
                balanceOf[address(this.address)] += balanceOf[address(msg.sender)]
                emit Transfer(balanceOf[address(msg.sender)], msg.sender, this.address);
                stor9[address(msg.sender)] = 1
                call msg.sender with:
                   value 10^18 * balanceOf[address(msg.sender)] / sellPrice wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                balanceOf[address(msg.sender)] = 0
                sub_1226cbd3[address(msg.sender)] = 0
                sub_13af6ab8[address(msg.sender)] = block.timestamp
                emit 0x6df75305: msg.sender, 10^18 * balanceOf[address(msg.sender)] / sellPrice
            else:
                require eth.balance(this.address) >= (10^18 * balanceOf[address(msg.sender)]) + (10^18 * 246529 * sub_1226cbd3[address(msg.sender)] / 10000 / 30) / sellPrice
                stor9[address(msg.sender)] = 0
                require this.address
                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require balanceOf[address(this.address)] + balanceOf[address(msg.sender)] >= balanceOf[address(this.address)]
                require not stor9[address(msg.sender)]
                require not stor9[address(this.address)]
                balanceOf[address(msg.sender)] = 0
                balanceOf[address(this.address)] += balanceOf[address(msg.sender)]
                emit Transfer(balanceOf[address(msg.sender)], msg.sender, this.address);
                stor9[address(msg.sender)] = 1
                call msg.sender with:
                   value (10^18 * balanceOf[address(msg.sender)]) + (10^18 * 246529 * sub_1226cbd3[address(msg.sender)] / 10000 / 30) / sellPrice wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                balanceOf[address(msg.sender)] = 0
                sub_1226cbd3[address(msg.sender)] = 0
                sub_13af6ab8[address(msg.sender)] = block.timestamp
                emit 0x6df75305: msg.sender, (10^18 * balanceOf[address(msg.sender)]) + (10^18 * 246529 * sub_1226cbd3[address(msg.sender)] / 10000 / 30) / sellPrice
    else:
        if msg.value < 10^16:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xe629dd36: msg.sender, msg.value
        else:
            if block.timestamp > sub_f57f84e7:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xe629dd36: msg.sender, msg.value
            else:
                if bool(stor18) == 1:
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xe629dd36: msg.sender, msg.value
                else:
                    if sub_1226cbd3[address(msg.sender)] > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xe629dd36: msg.sender, msg.value
                    else:
                        require buyPrice
                        stor9[address(msg.sender)] = 0
                        require msg.sender
                        require balanceOf[address(this.address)] >= 10^18 * msg.value / buyPrice
                        require balanceOf[address(msg.sender)] + (10^18 * msg.value / buyPrice) >= balanceOf[address(msg.sender)]
                        require not stor9[address(this.address)]
                        require not stor9[address(msg.sender)]
                        balanceOf[address(this.address)] -= 10^18 * msg.value / buyPrice
                        balanceOf[address(msg.sender)] += 10^18 * msg.value / buyPrice
                        emit Transfer((10^18 * msg.value / buyPrice), this.address, msg.sender);
                        stor9[address(msg.sender)] = 1
                        sub_1226cbd3[address(msg.sender)] += 10^18 * msg.value / buyPrice
                        sub_7e891f01 += 10^18 * msg.value / buyPrice
                        sub_0210adf8Address = msg.sender
                        sub_24301be2 = msg.value
                        sub_f57f84e7 = block.timestamp + stor17
                        sub_a5eefd9e[address(msg.sender)] = block.timestamp
                        sub_13af6ab8[address(msg.sender)] = sub_a5eefd9e[address(msg.sender)]
                        stor14.length++
                        stor14[stor14.length] = msg.sender
                        emit 0x278c3602: msg.sender, msg.value
}



}

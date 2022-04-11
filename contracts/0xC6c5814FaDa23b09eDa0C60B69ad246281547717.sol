contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
mapping of uint256 stor7;

function _fallback() {
    uint8(stor0.length) = 16
    stor0.length.field_8 = 'kkTEST80' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor1.length) = 14
    stor1.length.field_8 = 'kkTST80' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 0
    stor3 = 30 * 10^6
    stor4 = 5000
    stor5 = msg.sender
    stor7[address(msg.sender)] = 30 * 10^6
    return code.data[398 len 1889]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 INITIAL_SUPPLY;
uint256 rate;
address owner;
uint256 amount;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function rate() {
    return rate
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function amount() {
    return amount
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    if not msg.value:
        require msg.value
        require msg.value >= 0
        require balanceOf[stor5] >= rate * msg.value / 10^18
        amount = 0
        if not msg.value:
            amount = rate * msg.value / 10^18
            if (rate * msg.value / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                balanceOf[address(msg.sender)] += rate * msg.value / 10^18
                if rate * msg.value / 10^18 <= balanceOf[stor5]:
                    balanceOf[stor5] -= rate * msg.value / 10^18
                    emit Transfer((rate * msg.value / 10^18), owner, msg.sender);
                    amount = 0
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
        else:
            if msg.value:
                if rate * msg.value / msg.value == rate:
                    amount = rate * msg.value / 10^18
                    if (rate * msg.value / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                        balanceOf[address(msg.sender)] += rate * msg.value / 10^18
                        if rate * msg.value / 10^18 <= balanceOf[stor5]:
                            balanceOf[stor5] -= rate * msg.value / 10^18
                            emit Transfer((rate * msg.value / 10^18), owner, msg.sender);
                            amount = 0
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
    else:
        if msg.value:
            if rate * msg.value / msg.value == rate:
                require msg.value
                require msg.value >= 0
                require balanceOf[stor5] >= rate * msg.value / 10^18
                amount = 0
                if not msg.value:
                    amount = rate * msg.value / 10^18
                    if (rate * msg.value / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                        balanceOf[address(msg.sender)] += rate * msg.value / 10^18
                        if rate * msg.value / 10^18 <= balanceOf[stor5]:
                            balanceOf[stor5] -= rate * msg.value / 10^18
                            emit Transfer((rate * msg.value / 10^18), owner, msg.sender);
                            amount = 0
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                else:
                    if msg.value:
                        if rate * msg.value / msg.value == rate:
                            amount = rate * msg.value / 10^18
                            if (rate * msg.value / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                                balanceOf[address(msg.sender)] += rate * msg.value / 10^18
                                if rate * msg.value / 10^18 <= balanceOf[stor5]:
                                    balanceOf[stor5] -= rate * msg.value / 10^18
                                    emit Transfer((rate * msg.value / 10^18), owner, msg.sender);
                                    amount = 0
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
    revert
}



}

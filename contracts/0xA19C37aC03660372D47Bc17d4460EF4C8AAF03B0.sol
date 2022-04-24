contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor8;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 11
    stor0.length.field_8 = 'Just Wallet' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'JWT' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor3 = 0
    stor4 = 0
    require not msg.value
    stor8[0xbd4cb8e76d58cc7e6d53ad475d599e8f4c110c19] += 60000000 * 10^18
    stor4 += 60000000 * 10^18
    return code.data[582 len 6697]
}



// =====================  Runtime code  =====================


const TOKEN_SUPPLY_LIMIT = 750000000 * 10^18

const PRICE = 5000


array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint8 currentPhase;
uint256 totalSupply;
address tokenManagerAddress;
address escrowAddress;
address crowdsaleManagerAddress;
mapping of uint256 balanceOf;
mapping of uint8 stor9;

function currentPhase() {
    require currentPhase <= 4
    return currentPhase
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function tokenManager() {
    return tokenManagerAddress
}

function decimals() {
    return decimals
}

function crowdsaleManager() {
    return crowdsaleManagerAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isSaler(address arg1) {
    return bool(stor9[arg1])
}

function escrow() {
    return escrowAddress
}

function addSaler(address arg1) {
    require msg.sender == tokenManagerAddress
    require currentPhase <= 4
    require currentPhase != 3
    stor9[address(arg1)] = 1
}

function removeSaler(address arg1) {
    require msg.sender == tokenManagerAddress
    require currentPhase <= 4
    require currentPhase != 3
    stor9[address(arg1)] = 0
}

function setCrowdsaleManager(address arg1) {
    require msg.sender == tokenManagerAddress
    require currentPhase <= 4
    require currentPhase != 3
    crowdsaleManagerAddress = arg1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == crowdsaleManagerAddress
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, tokenManagerAddress);
    emit Transfer(arg2, tokenManagerAddress, arg1);
}

function withdrawEther() {
    require msg.sender == tokenManagerAddress
    require escrowAddress
    if eth.balance(this.address) > 0:
        call escrowAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function burnTokens(address arg1) {
    require msg.sender == crowdsaleManagerAddress
    require currentPhase <= 4
    require currentPhase == 3
    require balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
    totalSupply -= balanceOf[address(arg1)]
    emit LogBurn(balanceOf[address(arg1)], arg1);
    if not totalSupply:
        currentPhase = 4
        emit LogPhaseSwitch(4);
}

function transfer(address arg1, uint256 arg2) {
    require msg.sender == escrowAddress
    require arg1
    require arg2 > 0
    require balanceOf[address(msg.sender)] > arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require balanceOf[address(msg.sender)] - arg2 < balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function buy(address arg1) payable {
    require currentPhase <= 4
    require currentPhase == 1
    require msg.value
    if msg.value >= 3000 * 10^18:
        require totalSupply + (7550 * msg.value) < 750000000 * 10^18
        balanceOf[address(arg1)] += 7550 * msg.value
        totalSupply += 7550 * msg.value
        emit LogBuy((7550 * msg.value), arg1);
    else:
        if msg.value < 300 * 10^18:
            require totalSupply + (5000 * msg.value) < 750000000 * 10^18
            balanceOf[address(arg1)] += 5000 * msg.value
            totalSupply += 5000 * msg.value
            emit LogBuy((5000 * msg.value), arg1);
        else:
            require totalSupply + (6350 * msg.value) < 750000000 * 10^18
            balanceOf[address(arg1)] += 6350 * msg.value
            totalSupply += 6350 * msg.value
            emit LogBuy((6350 * msg.value), arg1);
}

function _fallback() payable {
    require currentPhase <= 4
    require currentPhase == 1
    require msg.value
    if msg.value >= 3000 * 10^18:
        require totalSupply + (7550 * msg.value) < 750000000 * 10^18
        balanceOf[address(msg.sender)] += 7550 * msg.value
        totalSupply += 7550 * msg.value
        emit LogBuy((7550 * msg.value), msg.sender);
    else:
        if msg.value < 300 * 10^18:
            require totalSupply + (5000 * msg.value) < 750000000 * 10^18
            balanceOf[address(msg.sender)] += 5000 * msg.value
            totalSupply += 5000 * msg.value
            emit LogBuy((5000 * msg.value), msg.sender);
        else:
            require totalSupply + (6350 * msg.value) < 750000000 * 10^18
            balanceOf[address(msg.sender)] += 6350 * msg.value
            totalSupply += 6350 * msg.value
            emit LogBuy((6350 * msg.value), msg.sender);
}

function buyTokens(address arg1) payable {
    require bool(stor9[address(arg1)]) == 1
    require currentPhase <= 4
    require currentPhase == 1
    require msg.value
    if msg.value >= 3000 * 10^18:
        require totalSupply + (7550 * msg.value) + (7550 * msg.value / 20) <= 750000000 * 10^18
        balanceOf[address(arg1)] += 7550 * msg.value / 20
        balanceOf[address(msg.sender)] += 7550 * msg.value
        totalSupply += 7550 * msg.value
        totalSupply += 7550 * msg.value / 20
        emit LogBuy((7550 * msg.value), msg.sender);
    else:
        if msg.value < 300 * 10^18:
            require totalSupply + (5000 * msg.value) + (5000 * msg.value / 20) <= 750000000 * 10^18
            balanceOf[address(arg1)] += 5000 * msg.value / 20
            balanceOf[address(msg.sender)] += 5000 * msg.value
            totalSupply += 5000 * msg.value
            totalSupply += 5000 * msg.value / 20
            emit LogBuy((5000 * msg.value), msg.sender);
        else:
            require totalSupply + (6350 * msg.value) + (6350 * msg.value / 20) <= 750000000 * 10^18
            balanceOf[address(arg1)] += 6350 * msg.value / 20
            balanceOf[address(msg.sender)] += 6350 * msg.value
            totalSupply += 6350 * msg.value
            totalSupply += 6350 * msg.value / 20
            emit LogBuy((6350 * msg.value), msg.sender);
}

function setPresalePhase(uint8 arg1) {
    require msg.sender == tokenManagerAddress
    require currentPhase <= 4
    if currentPhase:
        require currentPhase <= 4
        if currentPhase != 1:
            require currentPhase <= 4
            if currentPhase == 1:
                require arg1 <= 4
                if arg1 != 3:
                    require currentPhase <= 4
                    if currentPhase != 2:
                        require currentPhase <= 4
                        require currentPhase == 3
                        require arg1 <= 4
                        require arg1 == 4
                        require not totalSupply
                    else:
                        require arg1 <= 4
                        if arg1 != 1:
                            require currentPhase <= 4
                            require currentPhase == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                else:
                    if not crowdsaleManagerAddress:
                        require currentPhase <= 4
                        if currentPhase != 2:
                            require currentPhase <= 4
                            require currentPhase == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
            else:
                require currentPhase <= 4
                if currentPhase != 2:
                    require currentPhase <= 4
                    if currentPhase != 2:
                        require currentPhase <= 4
                        require currentPhase == 3
                        require arg1 <= 4
                        require arg1 == 4
                        require not totalSupply
                    else:
                        require arg1 <= 4
                        if arg1 != 1:
                            require currentPhase <= 4
                            require currentPhase == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                else:
                    require arg1 <= 4
                    if arg1 != 3:
                        require currentPhase <= 4
                        if currentPhase != 2:
                            require currentPhase <= 4
                            require currentPhase == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                    else:
                        if not crowdsaleManagerAddress:
                            require currentPhase <= 4
                            if currentPhase != 2:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require currentPhase <= 4
                                    require currentPhase == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
        else:
            require arg1 <= 4
            if arg1 != 2:
                require currentPhase <= 4
                if currentPhase == 1:
                    require arg1 <= 4
                    if arg1 != 3:
                        require currentPhase <= 4
                        if currentPhase != 2:
                            require currentPhase <= 4
                            require currentPhase == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                    else:
                        if not crowdsaleManagerAddress:
                            require currentPhase <= 4
                            if currentPhase != 2:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require currentPhase <= 4
                                    require currentPhase == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                else:
                    require currentPhase <= 4
                    if currentPhase != 2:
                        require currentPhase <= 4
                        if currentPhase != 2:
                            require currentPhase <= 4
                            require currentPhase == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                    else:
                        require arg1 <= 4
                        if arg1 != 3:
                            require currentPhase <= 4
                            if currentPhase != 2:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require currentPhase <= 4
                                    require currentPhase == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                        else:
                            if not crowdsaleManagerAddress:
                                require currentPhase <= 4
                                if currentPhase != 2:
                                    require currentPhase <= 4
                                    require currentPhase == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                                else:
                                    require arg1 <= 4
                                    if arg1 != 1:
                                        require currentPhase <= 4
                                        require currentPhase == 3
                                        require arg1 <= 4
                                        require arg1 == 4
                                        require not totalSupply
    else:
        require arg1 <= 4
        if arg1 != 1:
            require currentPhase <= 4
            if currentPhase != 1:
                require currentPhase <= 4
                if currentPhase == 1:
                    require arg1 <= 4
                    if arg1 != 3:
                        require currentPhase <= 4
                        if currentPhase != 2:
                            require currentPhase <= 4
                            require currentPhase == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                    else:
                        if not crowdsaleManagerAddress:
                            require currentPhase <= 4
                            if currentPhase != 2:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require currentPhase <= 4
                                    require currentPhase == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                else:
                    require currentPhase <= 4
                    if currentPhase != 2:
                        require currentPhase <= 4
                        if currentPhase != 2:
                            require currentPhase <= 4
                            require currentPhase == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                    else:
                        require arg1 <= 4
                        if arg1 != 3:
                            require currentPhase <= 4
                            if currentPhase != 2:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require currentPhase <= 4
                                    require currentPhase == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                        else:
                            if not crowdsaleManagerAddress:
                                require currentPhase <= 4
                                if currentPhase != 2:
                                    require currentPhase <= 4
                                    require currentPhase == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                                else:
                                    require arg1 <= 4
                                    if arg1 != 1:
                                        require currentPhase <= 4
                                        require currentPhase == 3
                                        require arg1 <= 4
                                        require arg1 == 4
                                        require not totalSupply
            else:
                require arg1 <= 4
                if arg1 != 2:
                    require currentPhase <= 4
                    if currentPhase == 1:
                        require arg1 <= 4
                        if arg1 != 3:
                            require currentPhase <= 4
                            if currentPhase != 2:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require currentPhase <= 4
                                    require currentPhase == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                        else:
                            if not crowdsaleManagerAddress:
                                require currentPhase <= 4
                                if currentPhase != 2:
                                    require currentPhase <= 4
                                    require currentPhase == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                                else:
                                    require arg1 <= 4
                                    if arg1 != 1:
                                        require currentPhase <= 4
                                        require currentPhase == 3
                                        require arg1 <= 4
                                        require arg1 == 4
                                        require not totalSupply
                    else:
                        require currentPhase <= 4
                        if currentPhase != 2:
                            require currentPhase <= 4
                            if currentPhase != 2:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require currentPhase <= 4
                                    require currentPhase == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 3:
                                require currentPhase <= 4
                                if currentPhase != 2:
                                    require currentPhase <= 4
                                    require currentPhase == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                                else:
                                    require arg1 <= 4
                                    if arg1 != 1:
                                        require currentPhase <= 4
                                        require currentPhase == 3
                                        require arg1 <= 4
                                        require arg1 == 4
                                        require not totalSupply
                            else:
                                if not crowdsaleManagerAddress:
                                    require currentPhase <= 4
                                    if currentPhase != 2:
                                        require currentPhase <= 4
                                        require currentPhase == 3
                                        require arg1 <= 4
                                        require arg1 == 4
                                        require not totalSupply
                                    else:
                                        require arg1 <= 4
                                        if arg1 != 1:
                                            require currentPhase <= 4
                                            require currentPhase == 3
                                            require arg1 <= 4
                                            require arg1 == 4
                                            require not totalSupply
    require arg1 <= 4
    currentPhase = arg1
    emit LogPhaseSwitch(arg1);
}



}

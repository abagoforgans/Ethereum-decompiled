contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint8 stor4;
address stor4; offset 8
address stor5;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    stor2 = 2000
    stor3 = 20000000 * 10^18
    uint8(stor4.field_0) = 0
    require not msg.value
    address(stor4.field_8) = code.data[3295 len 20]
    stor5 = code.data[3327 len 20]
    return code.data[174 len 3109]
}



// =====================  Runtime code  =====================


const name = 'ARI Token'

const decimals = 18

const symbol = 'ARI'


uint8 currentPhase;
uint256 totalSupply;
uint256 price;
uint256 tokenSupplyLimit;
uint8 stor4;
address tokenManagerAddress; offset 8
address escrowAddress;
address crowdsaleManagerAddress;
mapping of uint256 balanceOf;

function currentPhase() {
    require currentPhase <= 4
    return currentPhase
}

function totalSupply() {
    return totalSupply
}

function tokenSupplyLimit() {
    return tokenSupplyLimit
}

function tokenManager() {
    return tokenManagerAddress
}

function crowdsaleManager() {
    return crowdsaleManagerAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function transferable() {
    return bool(stor4)
}

function price() {
    return price
}

function escrow() {
    return escrowAddress
}

function setTransferable(bool arg1) {
    require tokenManagerAddress == msg.sender
    stor4 = uint8(arg1)
}

function setPrice(uint256 arg1) {
    require tokenManagerAddress == msg.sender
    require currentPhase <= 4
    require currentPhase == 2
    require arg1 > 0
    price = arg1
}

function setCrowdsaleManager(address arg1) {
    require tokenManagerAddress == msg.sender
    require currentPhase <= 4
    require currentPhase != 3
    crowdsaleManagerAddress = arg1
}

function setTokenSupplyLimit(uint256 arg1) {
    require tokenManagerAddress == msg.sender
    require currentPhase <= 4
    require currentPhase == 2
    require arg1 > 0
    require totalSupply <= 10^18 * arg1
    tokenSupplyLimit = 10^18 * arg1
}

function withdrawEther() {
    require tokenManagerAddress == msg.sender
    if eth.balance(this.address) > 0:
        call escrowAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require stor4
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function buyTokens(address arg1) payable {
    require currentPhase <= 4
    require currentPhase == 1
    require msg.value > 0
    require totalSupply + (msg.value * price) <= tokenSupplyLimit
    balanceOf[address(arg1)] += msg.value * price
    totalSupply += msg.value * price
    emit LogBuy((msg.value * price), arg1);
}

function _fallback() payable {
    require currentPhase <= 4
    require currentPhase == 1
    require msg.value > 0
    require totalSupply + (msg.value * price) <= tokenSupplyLimit
    balanceOf[address(msg.sender)] += msg.value * price
    totalSupply += msg.value * price
    emit LogBuy((msg.value * price), msg.sender);
}

function burnTokens(address arg1) {
    require crowdsaleManagerAddress == msg.sender
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

function setPresalePhase(uint8 arg1) {
    require tokenManagerAddress == msg.sender
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

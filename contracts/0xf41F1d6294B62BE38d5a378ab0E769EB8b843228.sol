contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor1;
address stor2;
address stor3;
address stor4;

function _fallback() payable {
    stor0 = 1
    stor1 = 0
    stor2 = 0
    stor3 = 0
    stor4 = 0
    require not msg.value
    require code.data[4956 len 20]
    require code.data[4988 len 20]
    stor3 = code.data[4956 len 20]
    stor2 = code.data[4988 len 20]
    return code.data[512 len 4432]
}



// =====================  Runtime code  =====================


const name = 'SquarEx Private Round Token'

const decimals = 18

const symbol = 'SQPT'

const getPrice = 1700

const TOKEN_SUPPLY_LIMIT = 4250000 * 10^18

const PRICE = 1700


uint8 currentState;
uint256 totalSupply;
address escrowAddress;
address tokenManagerAddress;
address crowdsaleManagerAddress;
mapping of uint256 balanceOf;

function currentState() {
    require currentState <= 4
    return currentState
}

function totalSupply() {
    return totalSupply
}

function tokenManager() {
    return tokenManagerAddress
}

function crowdsaleManager() {
    return crowdsaleManagerAddress
}

function getCurrentState() {
    require currentState <= 4
    return currentState
}

function getCrowdsaleManager() {
    return crowdsaleManagerAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getTokenManager() {
    return tokenManagerAddress
}

function getTotalSupply() {
    return totalSupply
}

function escrow() {
    return escrowAddress
}

function setTokenManager(address arg1) {
    require msg.sender == tokenManagerAddress
    tokenManagerAddress = arg1
}

function setCrowdsaleManager(address arg1) {
    require msg.sender == tokenManagerAddress
    require currentState <= 4
    require currentState != 3
    crowdsaleManagerAddress = arg1
}

function withdrawEther() {
    require msg.sender == tokenManagerAddress
    if eth.balance(this.address) > 0:
        call escrowAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function buyTokens(address arg1) payable {
    require currentState <= 4
    require 1 == currentState
    require msg.value
    require totalSupply + (1700 * msg.value) <= 4250000 * 10^18
    balanceOf[address(arg1)] += 1700 * msg.value
    totalSupply += 1700 * msg.value
    emit LogBuy((1700 * msg.value), arg1);
}

function _fallback() payable {
    require currentState <= 4
    require 1 == currentState
    require msg.value
    require totalSupply + (1700 * msg.value) <= 4250000 * 10^18
    balanceOf[address(msg.sender)] += 1700 * msg.value
    totalSupply += 1700 * msg.value
    emit LogBuy((1700 * msg.value), msg.sender);
}

function burnTokens(address arg1) {
    require msg.sender == crowdsaleManagerAddress
    require currentState <= 4
    require 3 == currentState
    require balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
    totalSupply -= balanceOf[address(arg1)]
    emit LogBurn(balanceOf[address(arg1)], arg1);
    if not totalSupply:
        currentState = 4
        emit LogStateSwitch(4);
}

function setPresaleState(uint8 arg1) {
    require msg.sender == tokenManagerAddress
    require currentState <= 4
    if currentState:
        require currentState <= 4
        if currentState != 1:
            require currentState <= 4
            if currentState == 1:
                require arg1 <= 4
                if arg1 != 3:
                    require currentState <= 4
                    if currentState != 2:
                        require currentState <= 4
                        require currentState == 3
                        require arg1 <= 4
                        require arg1 == 4
                        require not totalSupply
                    else:
                        require arg1 <= 4
                        if arg1 != 1:
                            require currentState <= 4
                            require currentState == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                else:
                    if not crowdsaleManagerAddress:
                        require currentState <= 4
                        if currentState != 2:
                            require currentState <= 4
                            require currentState == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require currentState <= 4
                                require currentState == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
            else:
                require currentState <= 4
                if currentState != 2:
                    require currentState <= 4
                    if currentState != 2:
                        require currentState <= 4
                        require currentState == 3
                        require arg1 <= 4
                        require arg1 == 4
                        require not totalSupply
                    else:
                        require arg1 <= 4
                        if arg1 != 1:
                            require currentState <= 4
                            require currentState == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                else:
                    require arg1 <= 4
                    if arg1 != 3:
                        require currentState <= 4
                        if currentState != 2:
                            require currentState <= 4
                            require currentState == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require currentState <= 4
                                require currentState == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                    else:
                        if not crowdsaleManagerAddress:
                            require currentState <= 4
                            if currentState != 2:
                                require currentState <= 4
                                require currentState == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require currentState <= 4
                                    require currentState == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
        else:
            require arg1 <= 4
            if arg1 != 2:
                require currentState <= 4
                if currentState == 1:
                    require arg1 <= 4
                    if arg1 != 3:
                        require currentState <= 4
                        if currentState != 2:
                            require currentState <= 4
                            require currentState == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require currentState <= 4
                                require currentState == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                    else:
                        if not crowdsaleManagerAddress:
                            require currentState <= 4
                            if currentState != 2:
                                require currentState <= 4
                                require currentState == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require currentState <= 4
                                    require currentState == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                else:
                    require currentState <= 4
                    if currentState != 2:
                        require currentState <= 4
                        if currentState != 2:
                            require currentState <= 4
                            require currentState == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require currentState <= 4
                                require currentState == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                    else:
                        require arg1 <= 4
                        if arg1 != 3:
                            require currentState <= 4
                            if currentState != 2:
                                require currentState <= 4
                                require currentState == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require currentState <= 4
                                    require currentState == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                        else:
                            if not crowdsaleManagerAddress:
                                require currentState <= 4
                                if currentState != 2:
                                    require currentState <= 4
                                    require currentState == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                                else:
                                    require arg1 <= 4
                                    if arg1 != 1:
                                        require currentState <= 4
                                        require currentState == 3
                                        require arg1 <= 4
                                        require arg1 == 4
                                        require not totalSupply
    else:
        require arg1 <= 4
        if arg1 != 1:
            require currentState <= 4
            if currentState != 1:
                require currentState <= 4
                if currentState == 1:
                    require arg1 <= 4
                    if arg1 != 3:
                        require currentState <= 4
                        if currentState != 2:
                            require currentState <= 4
                            require currentState == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require currentState <= 4
                                require currentState == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                    else:
                        if not crowdsaleManagerAddress:
                            require currentState <= 4
                            if currentState != 2:
                                require currentState <= 4
                                require currentState == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require currentState <= 4
                                    require currentState == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                else:
                    require currentState <= 4
                    if currentState != 2:
                        require currentState <= 4
                        if currentState != 2:
                            require currentState <= 4
                            require currentState == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require currentState <= 4
                                require currentState == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                    else:
                        require arg1 <= 4
                        if arg1 != 3:
                            require currentState <= 4
                            if currentState != 2:
                                require currentState <= 4
                                require currentState == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require currentState <= 4
                                    require currentState == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                        else:
                            if not crowdsaleManagerAddress:
                                require currentState <= 4
                                if currentState != 2:
                                    require currentState <= 4
                                    require currentState == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                                else:
                                    require arg1 <= 4
                                    if arg1 != 1:
                                        require currentState <= 4
                                        require currentState == 3
                                        require arg1 <= 4
                                        require arg1 == 4
                                        require not totalSupply
            else:
                require arg1 <= 4
                if arg1 != 2:
                    require currentState <= 4
                    if currentState == 1:
                        require arg1 <= 4
                        if arg1 != 3:
                            require currentState <= 4
                            if currentState != 2:
                                require currentState <= 4
                                require currentState == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require currentState <= 4
                                    require currentState == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                        else:
                            if not crowdsaleManagerAddress:
                                require currentState <= 4
                                if currentState != 2:
                                    require currentState <= 4
                                    require currentState == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                                else:
                                    require arg1 <= 4
                                    if arg1 != 1:
                                        require currentState <= 4
                                        require currentState == 3
                                        require arg1 <= 4
                                        require arg1 == 4
                                        require not totalSupply
                    else:
                        require currentState <= 4
                        if currentState != 2:
                            require currentState <= 4
                            if currentState != 2:
                                require currentState <= 4
                                require currentState == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require currentState <= 4
                                    require currentState == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 3:
                                require currentState <= 4
                                if currentState != 2:
                                    require currentState <= 4
                                    require currentState == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                                else:
                                    require arg1 <= 4
                                    if arg1 != 1:
                                        require currentState <= 4
                                        require currentState == 3
                                        require arg1 <= 4
                                        require arg1 == 4
                                        require not totalSupply
                            else:
                                if not crowdsaleManagerAddress:
                                    require currentState <= 4
                                    if currentState != 2:
                                        require currentState <= 4
                                        require currentState == 3
                                        require arg1 <= 4
                                        require arg1 == 4
                                        require not totalSupply
                                    else:
                                        require arg1 <= 4
                                        if arg1 != 1:
                                            require currentState <= 4
                                            require currentState == 3
                                            require arg1 <= 4
                                            require arg1 == 4
                                            require not totalSupply
    require arg1 <= 4
    currentState = arg1
    emit LogStateSwitch(arg1);
}



}

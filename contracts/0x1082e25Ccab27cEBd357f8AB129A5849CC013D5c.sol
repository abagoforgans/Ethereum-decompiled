contract main {




// =====================  Runtime code  =====================


const name = 'SquarEx Pre-sale SQEX Token'

const decimals = 18

const symbol = 'SQEX'

const getPrice = 1500

const TOKEN_SUPPLY_LIMIT = 1749999999999 * 10^13

const PRICE = 1500


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
    require (1500 * msg.value) + totalSupply <= 1749999999999 * 10^13
    balanceOf[address(arg1)] += 1500 * msg.value
    totalSupply += 1500 * msg.value
    emit LogBuy((1500 * msg.value), arg1);
}

function _fallback() payable {
    require currentState <= 4
    require 1 == currentState
    require msg.value
    require (1500 * msg.value) + totalSupply <= 1749999999999 * 10^13
    balanceOf[address(msg.sender)] += 1500 * msg.value
    totalSupply += 1500 * msg.value
    emit LogBuy((1500 * msg.value), msg.sender);
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

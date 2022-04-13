contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor1;
address stor2;
address stor3;
address stor4;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    stor2 = 0
    stor3 = 0
    stor4 = 0
    require not msg.value
    require code.data[5644 len 20]
    require code.data[5676 len 20]
    stor3 = code.data[5644 len 20]
    stor2 = code.data[5676 len 20]
    return code.data[512 len 5120]
}



// =====================  Runtime code  =====================


const name = 'WealthMan Private Presale Token'

const decimals = 18

const symbol = 'AWM'

const getPrice = 2250

const TOKEN_SUPPLY_LIMIT = (1250 * 10^18 * 3600)

const PRICE = 2250


uint8 currentState;
uint256 totalSupply;
address escrowAddress;
address tokenManagerAddress;
address crowdsaleManagerAddress;
mapping of uint256 balanceOf;
array of struct purchaseAmount;

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

function getNumberOfPurchases() {
    return purchaseAmount.length
}

function getTokenManager() {
    return tokenManagerAddress
}

function getTotalSupply() {
    return totalSupply
}

function getPurchaseAmount(uint256 arg1) {
    require arg1 < purchaseAmount.length
    return purchaseAmount[arg1].field_256
}

function getPurchaseAddress(uint256 arg1) {
    require arg1 < purchaseAmount.length
    return purchaseAmount[arg1].field_0
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

function buyTokens(address arg1) payable {
    require currentState <= 4
    require 1 == currentState
    require msg.value
    require totalSupply + (2250 * msg.value) >= totalSupply
    require totalSupply + (2250 * msg.value) <= 1250 * 10^18 * 3600
    balanceOf[address(arg1)] += 2250 * msg.value
    totalSupply += 2250 * msg.value
    purchaseAmount.length++
    if not purchaseAmount.length <= purchaseAmount.length + 1:
        idx = 2 * purchaseAmount.length + 1
        while 2 * purchaseAmount.length > idx:
            purchaseAmount[idx].field_0 = 0
            purchaseAmount[idx].field_256 = 0
            idx = idx + 2
            continue 
    require purchaseAmount.length < purchaseAmount.length
    purchaseAmount[purchaseAmount.length].field_0 = arg1
    purchaseAmount[purchaseAmount.length].field_256 = 2250 * msg.value
    emit LogBuy((2250 * msg.value), arg1);
}

function _fallback() payable {
    require currentState <= 4
    require 1 == currentState
    require msg.value
    require totalSupply + (2250 * msg.value) >= totalSupply
    require totalSupply + (2250 * msg.value) <= 1250 * 10^18 * 3600
    balanceOf[address(msg.sender)] += 2250 * msg.value
    totalSupply += 2250 * msg.value
    purchaseAmount.length++
    if not purchaseAmount.length <= purchaseAmount.length + 1:
        idx = 2 * purchaseAmount.length + 1
        while 2 * purchaseAmount.length > idx:
            purchaseAmount[idx].field_0 = 0
            purchaseAmount[idx].field_256 = 0
            idx = idx + 2
            continue 
    require purchaseAmount.length < purchaseAmount.length
    purchaseAmount[purchaseAmount.length].field_0 = msg.sender
    purchaseAmount[purchaseAmount.length].field_256 = 2250 * msg.value
    emit LogBuy((2250 * msg.value), msg.sender);
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

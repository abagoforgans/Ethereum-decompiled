contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1;
uint256 stor2;
address stor3;
address stor4;
address stor5;
uint256 stor11;

function _fallback() payable {
    stor0 = 418701 * 3600
    stor1 = 0
    stor2 = 0
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor11 = 0
    require not msg.value
    require code.data[4343 len 20]
    require code.data[4375 len 20]
    stor4 = code.data[4343 len 20]
    stor3 = code.data[4375 len 20]
    return code.data[209 len 4122]
}



// =====================  Runtime code  =====================


const name = 'Remechain Presale Token'

const decimals = 18

const symbol = 'RMC'

const getPrice = 320

const SOFTCAP_LIMIT = 213440 * 10^18

const TOKEN_SUPPLY_LIMIT = 499840 * 10^18

const PRICE = 320


uint256 icoDeadline;
uint8 currentState;
uint256 totalSupply;
address escrowAddress;
address tokenManagerAddress;
address crowdsaleManagerAddress;
mapping of uint256 balances;
mapping of uint256 ethBalances;
array of struct purchaseAmount;
array of address stor9;
mapping of uint8 stor10;
uint256 nextInListToReturn;

function currentState() {
    require currentState <= 4
    return currentState
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function tokenManager() {
    return tokenManagerAddress
}

function icoDeadline() {
    return icoDeadline
}

function crowdsaleManager() {
    return crowdsaleManagerAddress
}

function getCurrentState() {
    require currentState <= 4
    return currentState
}

function ethBalances(address arg1) {
    return ethBalances[arg1]
}

function getCrowdsaleManager() {
    return crowdsaleManagerAddress
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function nextInListToReturn() {
    return nextInListToReturn
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

function isIcoOver() {
    return block.timestamp >= icoDeadline
}

function isIcoSuccessful() {
    return totalSupply >= 213440 * 10^18
}

function setTokenManager(address arg1) {
    require tokenManagerAddress == msg.sender
    tokenManagerAddress = arg1
}

function setCrowdsaleManager(address arg1) {
    require tokenManagerAddress == msg.sender
    require currentState <= 4
    require currentState != 3
    crowdsaleManagerAddress = arg1
}

function burnTokens(address arg1) {
    require crowdsaleManagerAddress == msg.sender
    require currentState <= 4
    require 3 == currentState
    require balances[address(arg1)]
    balances[address(arg1)] = 0
    totalSupply -= balances[address(arg1)]
    emit LogBurn(balances[address(arg1)], arg1);
    if not totalSupply:
        currentState = 4
        emit LogStateSwitch(4);
}

function returnFundsFor(address arg1) {
    require block.timestamp >= icoDeadline
    require totalSupply < 213440 * 10^18
    if arg1 != msg.sender:
        if tokenManagerAddress != msg.sender:
            require msg.sender == this.address
    if ethBalances[address(arg1)] > 0:
        call arg1 with:
           value ethBalances[address(arg1)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        ethBalances[address(arg1)] = 0
}

function returnFunds() {
    require block.timestamp >= icoDeadline
    require totalSupply < 213440 * 10^18
    if msg.sender != msg.sender:
        if tokenManagerAddress != msg.sender:
            require msg.sender == this.address
    if ethBalances[address(msg.sender)] > 0:
        call msg.sender with:
           value ethBalances[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        ethBalances[address(msg.sender)] = 0
}

function buyTokens(address arg1) payable {
    require currentState <= 4
    require 1 == currentState
    require block.timestamp < icoDeadline
    require msg.value
    require (320 * msg.value) + totalSupply >= totalSupply
    require (320 * msg.value) + totalSupply <= 499840 * 10^18
    ethBalances[address(arg1)] += msg.value
    balances[address(arg1)] += 320 * msg.value
    totalSupply += 320 * msg.value
    if not stor10[address(arg1)]:
        stor9.length++
        if not stor9.length <= stor9.length + 1:
            idx = stor9.length + 1
            while stor9.length > idx:
                uint256(stor9[idx]) = 0
                idx = idx + 1
                continue 
        address(stor9[stor9.length]) = arg1
        stor10[address(arg1)] = 1
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
    purchaseAmount[purchaseAmount.length].field_256 = 320 * msg.value
    emit LogBuy((320 * msg.value), arg1);
}

function _fallback() payable {
    require currentState <= 4
    require 1 == currentState
    require block.timestamp < icoDeadline
    require msg.value
    require (320 * msg.value) + totalSupply >= totalSupply
    require (320 * msg.value) + totalSupply <= 499840 * 10^18
    ethBalances[address(msg.sender)] += msg.value
    balances[address(msg.sender)] += 320 * msg.value
    totalSupply += 320 * msg.value
    if not stor10[address(msg.sender)]:
        stor9.length++
        if not stor9.length <= stor9.length + 1:
            idx = stor9.length + 1
            while stor9.length > idx:
                uint256(stor9[idx]) = 0
                idx = idx + 1
                continue 
        address(stor9[stor9.length]) = msg.sender
        stor10[address(msg.sender)] = 1
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
    purchaseAmount[purchaseAmount.length].field_256 = 320 * msg.value
    emit LogBuy((320 * msg.value), msg.sender);
}

function withdrawEther() {
    if totalSupply < 213440 * 10^18:
        if block.timestamp >= icoDeadline:
            if nextInListToReturn + 50 < stor9.length:
                s = 0
                idx = nextInListToReturn
                while idx < nextInListToReturn + 50:
                    require idx < stor9.length
                    mem[0] = address(stor9[idx])
                    mem[32] = 7
                    if ethBalances[address(stor9[idx])] > 0:
                        call address(stor9[idx]) with:
                           value ethBalances[address(stor9[idx])] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        mem[0] = address(stor9[idx])
                        mem[32] = 7
                        ethBalances[address(stor9[idx])] = 0
                    s = address(stor9[idx])
                    idx = idx + 1
                    continue 
                nextInListToReturn += 50
            else:
                s = 0
                idx = nextInListToReturn
                while idx < stor9.length:
                    mem[0] = address(stor9[idx])
                    mem[32] = 7
                    if ethBalances[address(stor9[idx])] > 0:
                        call address(stor9[idx]) with:
                           value ethBalances[address(stor9[idx])] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        mem[0] = address(stor9[idx])
                        mem[32] = 7
                        ethBalances[address(stor9[idx])] = 0
                    s = address(stor9[idx])
                    idx = idx + 1
                    continue 
                nextInListToReturn = stor9.length
    else:
        if tokenManagerAddress == msg.sender:
            if eth.balance(this.address) > 0:
                call escrowAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
}

function setPresaleState(uint8 arg1) {
    require tokenManagerAddress == msg.sender
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

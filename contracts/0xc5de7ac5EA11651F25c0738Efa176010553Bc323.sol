contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;
bool stor3; offset 256
uint8 stor3;
uint8 stor3; offset 8
uint128 stor3; offset 176
address stor3; offset 16
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor2 = 0
    uint8(stor3.field_0) = 0
    uint8(stor3.field_8) = 1
    address(stor3.field_16) = 0
    Mask(80, 0, stor3.field_176) = 0
    stor3.field_256 % 1 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    require not msg.value
    stor5 = code.data[4872 len 20]
    address(stor3.field_16) = code.data[4936 len 20]
    stor4 = code.data[4904 len 20]
    stor0[code.data[4936 len 20]] += 65000000 * 10^18
    stor2 += 65000000 * 10^18
    return code.data[295 len 4565]
}



// =====================  Runtime code  =====================


const name = 'NEO CASH'

const decimals = 18

const symbol = 'NEOC'

const TOTAL_SOLD_TOKEN_SUPPLY_LIMIT = 35000000 * 10^18

const PRESALE_MAX_ETH = 100000

const PRESALE_PRICE = 50

const ICO_PRICE1 = 40

const DEVELOPERS_BONUS = 65000000 * 10^18

const TOTAL_SUPPLY = 100000000 * 10^18

const ICO_PRICE3 = 10

const PRESALE_TOKEN_SUPPLY_LIMIT = 5000000 * 10^18

const ICO_PRICE2 = 30


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 currentState;
uint8 stor3; offset 8
address teamTokenBonusAddress; offset 16
address escrowAddress;
address tokenManagerAddress;
uint256 presaleSoldTokens;
uint256 icoSoldTokens;
uint256 totalSoldTokens;

function supply() {
    return totalSupply
}

function teamTokenBonus() {
    return teamTokenBonusAddress
}

function currentState() {
    require currentState <= 5
    return currentState
}

function totalSupply() {
    return totalSupply
}

function presaleSoldTokens() {
    return presaleSoldTokens
}

function tokenManager() {
    return tokenManagerAddress
}

function icoSoldTokens() {
    return icoSoldTokens
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function enableTransfers() {
    return bool(stor3)
}

function totalSoldTokens() {
    return totalSoldTokens
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function escrow() {
    return escrowAddress
}

function EnableTransfer() {
    require tokenManagerAddress == msg.sender
    stor3 = 1
}

function DisableTransfer() {
    require tokenManagerAddress == msg.sender
    stor3 = 0
}

function ChangeCrowner(address arg1) {
    require escrowAddress == msg.sender
    escrowAddress = arg1
}

function ChangeTokenManager(address arg1) {
    require tokenManagerAddress == msg.sender
    tokenManagerAddress = arg1
}

function setState(uint8 arg1) {
    require tokenManagerAddress == msg.sender
    require currentState <= 5
    require currentState != 5
    require arg1 <= 5
    currentState = arg1
}

function getPrice() {
    require currentState <= 5
    if currentState != 4:
        return 50
    if icoSoldTokens < 10000000 * 10^18:
        return 40
    if icoSoldTokens >= 15000000 * 10^18:
        return 10
    return 30
}

function approve(address arg1, uint256 arg2) {
    require stor3
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrawEther() {
    require tokenManagerAddress == msg.sender
    if eth.balance(this.address) > 0:
        call escrowAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function buyTokensPresale() payable {
    require currentState <= 5
    require 2 == currentState
    require msg.value >= 10^16
    require (50 * msg.value) + presaleSoldTokens <= 5000000 * 10^18
    balanceOf[address(msg.sender)] += 50 * msg.value
    totalSupply += 50 * msg.value
    presaleSoldTokens += 50 * msg.value
    totalSoldTokens += 50 * msg.value
    emit LogBuy((50 * msg.value), msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require stor3
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor3
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buyTokensICO() payable {
    require currentState <= 5
    require 4 == currentState
    require msg.value >= 10^16
    require currentState <= 5
    if currentState != 4:
        require totalSoldTokens + (50 * msg.value) <= 35000000 * 10^18
        balanceOf[address(msg.sender)] += 50 * msg.value
        totalSupply += 50 * msg.value
        icoSoldTokens += 50 * msg.value
        totalSoldTokens += 50 * msg.value
        emit LogBuy((50 * msg.value), msg.sender);
    else:
        if icoSoldTokens < 10000000 * 10^18:
            require totalSoldTokens + (40 * msg.value) <= 35000000 * 10^18
            balanceOf[address(msg.sender)] += 40 * msg.value
            totalSupply += 40 * msg.value
            icoSoldTokens += 40 * msg.value
            totalSoldTokens += 40 * msg.value
            emit LogBuy((40 * msg.value), msg.sender);
        else:
            if icoSoldTokens >= 15000000 * 10^18:
                require totalSoldTokens + (10 * msg.value) <= 35000000 * 10^18
                balanceOf[address(msg.sender)] += 10 * msg.value
                totalSupply += 10 * msg.value
                icoSoldTokens += 10 * msg.value
                totalSoldTokens += 10 * msg.value
                emit LogBuy((10 * msg.value), msg.sender);
            else:
                require totalSoldTokens + (30 * msg.value) <= 35000000 * 10^18
                balanceOf[address(msg.sender)] += 30 * msg.value
                totalSupply += 30 * msg.value
                icoSoldTokens += 30 * msg.value
                totalSoldTokens += 30 * msg.value
                emit LogBuy((30 * msg.value), msg.sender);
}

function buyTokens() payable {
    require currentState <= 5
    require currentState <= 5
    if currentState != 2:
        require currentState == 4
    require currentState <= 5
    if currentState == 2:
        require 2 == currentState
        require msg.value >= 10^16
        require (50 * msg.value) + presaleSoldTokens <= 5000000 * 10^18
        balanceOf[address(msg.sender)] += 50 * msg.value
        totalSupply += 50 * msg.value
        presaleSoldTokens += 50 * msg.value
        totalSoldTokens += 50 * msg.value
        emit LogBuy((50 * msg.value), msg.sender);
    else:
        require 4 == currentState
        require msg.value >= 10^16
        require currentState <= 5
        if currentState != 4:
            require totalSoldTokens + (50 * msg.value) <= 35000000 * 10^18
            balanceOf[address(msg.sender)] += 50 * msg.value
            totalSupply += 50 * msg.value
            icoSoldTokens += 50 * msg.value
            totalSoldTokens += 50 * msg.value
            emit LogBuy((50 * msg.value), msg.sender);
        else:
            if icoSoldTokens < 10000000 * 10^18:
                require totalSoldTokens + (40 * msg.value) <= 35000000 * 10^18
                balanceOf[address(msg.sender)] += 40 * msg.value
                totalSupply += 40 * msg.value
                icoSoldTokens += 40 * msg.value
                totalSoldTokens += 40 * msg.value
                emit LogBuy((40 * msg.value), msg.sender);
            else:
                if icoSoldTokens >= 15000000 * 10^18:
                    require totalSoldTokens + (10 * msg.value) <= 35000000 * 10^18
                    balanceOf[address(msg.sender)] += 10 * msg.value
                    totalSupply += 10 * msg.value
                    icoSoldTokens += 10 * msg.value
                    totalSoldTokens += 10 * msg.value
                    emit LogBuy((10 * msg.value), msg.sender);
                else:
                    require totalSoldTokens + (30 * msg.value) <= 35000000 * 10^18
                    balanceOf[address(msg.sender)] += 30 * msg.value
                    totalSupply += 30 * msg.value
                    icoSoldTokens += 30 * msg.value
                    totalSoldTokens += 30 * msg.value
                    emit LogBuy((30 * msg.value), msg.sender);
}

function _fallback() payable {
    require currentState <= 5
    require currentState <= 5
    if currentState != 2:
        require currentState == 4
    require currentState <= 5
    if currentState == 2:
        require 2 == currentState
        require msg.value >= 10^16
        require (50 * msg.value) + presaleSoldTokens <= 5000000 * 10^18
        balanceOf[address(msg.sender)] += 50 * msg.value
        totalSupply += 50 * msg.value
        presaleSoldTokens += 50 * msg.value
        totalSoldTokens += 50 * msg.value
        emit LogBuy((50 * msg.value), msg.sender);
    else:
        require 4 == currentState
        require msg.value >= 10^16
        require currentState <= 5
        if currentState != 4:
            require totalSoldTokens + (50 * msg.value) <= 35000000 * 10^18
            balanceOf[address(msg.sender)] += 50 * msg.value
            totalSupply += 50 * msg.value
            icoSoldTokens += 50 * msg.value
            totalSoldTokens += 50 * msg.value
            emit LogBuy((50 * msg.value), msg.sender);
        else:
            if icoSoldTokens < 10000000 * 10^18:
                require totalSoldTokens + (40 * msg.value) <= 35000000 * 10^18
                balanceOf[address(msg.sender)] += 40 * msg.value
                totalSupply += 40 * msg.value
                icoSoldTokens += 40 * msg.value
                totalSoldTokens += 40 * msg.value
                emit LogBuy((40 * msg.value), msg.sender);
            else:
                if icoSoldTokens >= 15000000 * 10^18:
                    require totalSoldTokens + (10 * msg.value) <= 35000000 * 10^18
                    balanceOf[address(msg.sender)] += 10 * msg.value
                    totalSupply += 10 * msg.value
                    icoSoldTokens += 10 * msg.value
                    totalSoldTokens += 10 * msg.value
                    emit LogBuy((10 * msg.value), msg.sender);
                else:
                    require totalSoldTokens + (30 * msg.value) <= 35000000 * 10^18
                    balanceOf[address(msg.sender)] += 30 * msg.value
                    totalSupply += 30 * msg.value
                    icoSoldTokens += 30 * msg.value
                    totalSoldTokens += 30 * msg.value
                    emit LogBuy((30 * msg.value), msg.sender);
}



}

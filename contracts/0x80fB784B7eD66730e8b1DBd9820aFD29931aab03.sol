contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;
uint8 stor3;
address stor3; offset 16
uint256 stor3; offset 8
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor2 = 0
    uint8(stor3.field_0) = 0
    Mask(248, 0, stor3.field_8) = 0
    address(stor3.field_16) = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    require not msg.value
    stor5 = code.data[7612 len 20]
    address(stor3.field_16) = code.data[7676 len 20]
    stor4 = code.data[7644 len 20]
    stor0[code.data[7676 len 20]] += 300000000 * 10^18
    stor2 += 300000000 * 10^18
    return code.data[728 len 6872]
}



// =====================  Runtime code  =====================


const name = 'EthLend Token'

const decimals = 18

const symbol = 'LEND'

const TOTAL_SOLD_TOKEN_SUPPLY_LIMIT = 1000000000 * 10^18

const PRESALE_MAX_ETH = 2000

const PRESALE_PRICE = 30000

const ICO_PRICE1 = 27500

const DEVELOPERS_BONUS = 300000000 * 10^18

const TOTAL_SUPPLY = 1300000000 * 10^18

const ICO_PRICE3 = 25000

const PRESALE_TOKEN_SUPPLY_LIMIT = 60000000 * 10^18

const ICO_PRICE2 = 26250


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 currentState;
uint8 enableTransfers; offset 8
address teamTokenBonusAddress; offset 16
uint256 stor3; offset 8
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
    return bool(enableTransfers)
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

function setTokenManager(address arg1) {
    require msg.sender == tokenManagerAddress
    tokenManagerAddress = arg1
}

function getPrice() {
    require currentState <= 5
    if currentState != 4:
        return 30000
    if icoSoldTokens < 200000000 * 10^18:
        return 27500
    if icoSoldTokens >= 300000000 * 10^18:
        return 25000
    return 26250
}

function setState(uint8 arg1) {
    require msg.sender == tokenManagerAddress
    require currentState <= 5
    require currentState != 5
    require arg1 <= 5
    currentState = arg1
    require currentState <= 5
    stor3 = Mask(248, 0, currentState == 5)
}

function approve(address arg1, uint256 arg2) {
    require enableTransfers
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrawEther() {
    require msg.sender == tokenManagerAddress
    if eth.balance(this.address) > 0:
        call escrowAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function buyTokensPresale() payable {
    require currentState <= 5
    require 2 == currentState
    require msg.value >= 10^18
    require presaleSoldTokens + (30000 * msg.value) <= 60000000 * 10^18
    balanceOf[address(msg.sender)] += 30000 * msg.value
    totalSupply += 30000 * msg.value
    presaleSoldTokens += 30000 * msg.value
    totalSoldTokens += 30000 * msg.value
    emit LogBuy((30000 * msg.value), msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require enableTransfers
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require enableTransfers
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
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
        require totalSoldTokens + (30000 * msg.value) <= 1000000000 * 10^18
        balanceOf[address(msg.sender)] += 30000 * msg.value
        totalSupply += 30000 * msg.value
        icoSoldTokens += 30000 * msg.value
        totalSoldTokens += 30000 * msg.value
        emit LogBuy((30000 * msg.value), msg.sender);
    else:
        if icoSoldTokens < 200000000 * 10^18:
            require totalSoldTokens + (27500 * msg.value) <= 1000000000 * 10^18
            balanceOf[address(msg.sender)] += 27500 * msg.value
            totalSupply += 27500 * msg.value
            icoSoldTokens += 27500 * msg.value
            totalSoldTokens += 27500 * msg.value
            emit LogBuy((27500 * msg.value), msg.sender);
        else:
            if icoSoldTokens >= 300000000 * 10^18:
                require totalSoldTokens + (25000 * msg.value) <= 1000000000 * 10^18
                balanceOf[address(msg.sender)] += 25000 * msg.value
                totalSupply += 25000 * msg.value
                icoSoldTokens += 25000 * msg.value
                totalSoldTokens += 25000 * msg.value
                emit LogBuy((25000 * msg.value), msg.sender);
            else:
                require totalSoldTokens + (26250 * msg.value) <= 1000000000 * 10^18
                balanceOf[address(msg.sender)] += 26250 * msg.value
                totalSupply += 26250 * msg.value
                icoSoldTokens += 26250 * msg.value
                totalSoldTokens += 26250 * msg.value
                emit LogBuy((26250 * msg.value), msg.sender);
}

function buyTokens() payable {
    require currentState <= 5
    require currentState <= 5
    if currentState != 2:
        require currentState == 4
    require currentState <= 5
    if currentState == 2:
        require 2 == currentState
        require msg.value >= 10^18
        require presaleSoldTokens + (30000 * msg.value) <= 60000000 * 10^18
        balanceOf[address(msg.sender)] += 30000 * msg.value
        totalSupply += 30000 * msg.value
        presaleSoldTokens += 30000 * msg.value
        totalSoldTokens += 30000 * msg.value
        emit LogBuy((30000 * msg.value), msg.sender);
    else:
        require 4 == currentState
        require msg.value >= 10^16
        require currentState <= 5
        if currentState != 4:
            require totalSoldTokens + (30000 * msg.value) <= 1000000000 * 10^18
            balanceOf[address(msg.sender)] += 30000 * msg.value
            totalSupply += 30000 * msg.value
            icoSoldTokens += 30000 * msg.value
            totalSoldTokens += 30000 * msg.value
            emit LogBuy((30000 * msg.value), msg.sender);
        else:
            if icoSoldTokens < 200000000 * 10^18:
                require totalSoldTokens + (27500 * msg.value) <= 1000000000 * 10^18
                balanceOf[address(msg.sender)] += 27500 * msg.value
                totalSupply += 27500 * msg.value
                icoSoldTokens += 27500 * msg.value
                totalSoldTokens += 27500 * msg.value
                emit LogBuy((27500 * msg.value), msg.sender);
            else:
                if icoSoldTokens >= 300000000 * 10^18:
                    require totalSoldTokens + (25000 * msg.value) <= 1000000000 * 10^18
                    balanceOf[address(msg.sender)] += 25000 * msg.value
                    totalSupply += 25000 * msg.value
                    icoSoldTokens += 25000 * msg.value
                    totalSoldTokens += 25000 * msg.value
                    emit LogBuy((25000 * msg.value), msg.sender);
                else:
                    require totalSoldTokens + (26250 * msg.value) <= 1000000000 * 10^18
                    balanceOf[address(msg.sender)] += 26250 * msg.value
                    totalSupply += 26250 * msg.value
                    icoSoldTokens += 26250 * msg.value
                    totalSoldTokens += 26250 * msg.value
                    emit LogBuy((26250 * msg.value), msg.sender);
}

function _fallback() payable {
    require currentState <= 5
    require currentState <= 5
    if currentState != 2:
        require currentState == 4
    require currentState <= 5
    if currentState == 2:
        require 2 == currentState
        require msg.value >= 10^18
        require presaleSoldTokens + (30000 * msg.value) <= 60000000 * 10^18
        balanceOf[address(msg.sender)] += 30000 * msg.value
        totalSupply += 30000 * msg.value
        presaleSoldTokens += 30000 * msg.value
        totalSoldTokens += 30000 * msg.value
        emit LogBuy((30000 * msg.value), msg.sender);
    else:
        require 4 == currentState
        require msg.value >= 10^16
        require currentState <= 5
        if currentState != 4:
            require totalSoldTokens + (30000 * msg.value) <= 1000000000 * 10^18
            balanceOf[address(msg.sender)] += 30000 * msg.value
            totalSupply += 30000 * msg.value
            icoSoldTokens += 30000 * msg.value
            totalSoldTokens += 30000 * msg.value
            emit LogBuy((30000 * msg.value), msg.sender);
        else:
            if icoSoldTokens < 200000000 * 10^18:
                require totalSoldTokens + (27500 * msg.value) <= 1000000000 * 10^18
                balanceOf[address(msg.sender)] += 27500 * msg.value
                totalSupply += 27500 * msg.value
                icoSoldTokens += 27500 * msg.value
                totalSoldTokens += 27500 * msg.value
                emit LogBuy((27500 * msg.value), msg.sender);
            else:
                if icoSoldTokens >= 300000000 * 10^18:
                    require totalSoldTokens + (25000 * msg.value) <= 1000000000 * 10^18
                    balanceOf[address(msg.sender)] += 25000 * msg.value
                    totalSupply += 25000 * msg.value
                    icoSoldTokens += 25000 * msg.value
                    totalSoldTokens += 25000 * msg.value
                    emit LogBuy((25000 * msg.value), msg.sender);
                else:
                    require totalSoldTokens + (26250 * msg.value) <= 1000000000 * 10^18
                    balanceOf[address(msg.sender)] += 26250 * msg.value
                    totalSupply += 26250 * msg.value
                    icoSoldTokens += 26250 * msg.value
                    totalSoldTokens += 26250 * msg.value
                    emit LogBuy((26250 * msg.value), msg.sender);
}



}

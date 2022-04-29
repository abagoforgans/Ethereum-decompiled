contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;
uint8 stor7;
address stor7; offset 16
uint256 stor7; offset 8
address stor8;
address stor9;
address stor10;
address stor11;
address stor12;
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    stor2 = 0
    bool(stor3.length) = 0
    stor3.length.field_1 = 0
    stor3.length.field_8 = mem[128 len 31]
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = 'EVG' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[224] = 'https://evonine.co'
    bool(stor5.length) = 0
    stor5.length.field_1 = 18
    stor5.length.field_8 = 'https://evonine.co' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 18
    uint8(stor7.field_0) = 0
    Mask(248, 0, stor7.field_8) = 1
    address(stor7.field_16) = 0
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 = 0
    stor13 = 0
    stor14 = 0
    require not msg.value
    mem[256 len -7893] = code.data[9406 len -7893]
    stor3[].field_0 = Array(len=mem[mem[256] + 256], data=mem[mem[256] + 288 len mem[mem[256] + 256]])
    address(stor7.field_16) = mem[300 len 20]
    stor8 = mem[332 len 20]
    stor9 = mem[364 len 20]
    stor10 = mem[396 len 20]
    stor11 = mem[428 len 20]
    stor12 = mem[460 len 20]
    stor0[address(mem[288])] += 19000000 * 10^18
    stor2 += 19000000 * 10^18
    return code.data[1513 len 7893]
}



// =====================  Runtime code  =====================


const ECO_SYSTEM_BONUS = 5700000 * 10^18

const DEVELOPER_BONUS = (1250 * 10^18 * 3600)

const ICO_PRICE5 = 1250

const ICO_PRICE1 = 2000

const ICO_PRICE8 = 666

const TOTAL_SUPPLY = 19000000 * 10^18

const ICO_PRICE6 = 1000

const CONTRACT_HOLDER_BONUS = 5000000 * 10^18

const TEAM_BONUS = 3800000 * 10^18

const ICO_PRICE7 = 800

const ICO_PRICE4 = 1538

const ICO_PRICE3 = 1666

const ICO_PRICE2 = 1818


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
array of uint256 website;
uint256 decimals;
uint8 currentState;
uint8 stor7; offset 8
address tokenManagerAddress; offset 16
uint256 stor7; offset 8
address escrowAddress;
address teamAddress;
address developmentAddress;
address ecoSystemAddress;
address contractHolderAddress;
uint256 icoSoldTokens;
uint256 totalSoldTokens;

function supply() {
    return totalSupply
}

function name() {
    return name[0 len name.length]
}

function currentState() {
    require currentState <= 3
    return currentState
}

function escrowAddress() {
    return escrowAddress
}

function totalSupply() {
    return totalSupply
}

function teamAddress() {
    return teamAddress
}

function decimals() {
    return decimals
}

function icoSoldTokens() {
    return icoSoldTokens
}

function developmentAddress() {
    return developmentAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function enableTransfers() {
    return bool(uint8(stor7.field_8))
}

function tokenManagerAddress() {
    return tokenManagerAddress
}

function website() {
    return website[0 len website.length]
}

function ecoSystemAddress() {
    return ecoSystemAddress
}

function totalSoldTokens() {
    return totalSoldTokens
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function contractHolderAddress() {
    return contractHolderAddress
}

function _fallback() payable {
    revert
}

function ChangeCrowner(address arg1) {
    require msg.sender == escrowAddress
    escrowAddress = arg1
}

function EnableTransfer() {
    require msg.sender == tokenManagerAddress
    Mask(248, 0, stor7.field_8) = 1
}

function DisableTransfer() {
    require msg.sender == tokenManagerAddress
    Mask(248, 0, stor7.field_8) = 0
}

function ChangetokenManagerAddress(address arg1) {
    require msg.sender == tokenManagerAddress
    tokenManagerAddress = arg1
}

function setState(uint8 arg1) {
    require msg.sender == tokenManagerAddress
    require currentState <= 3
    require currentState != 3
    require arg1 <= 3
    currentState = arg1
}

function withdrawEther() {
    require msg.sender == tokenManagerAddress
    if eth.balance(this.address) > 0:
        call escrowAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    require uint8(stor7.field_8)
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function getPrice() {
    if icoSoldTokens < 4100000 * 10^18:
        return 2000
    if icoSoldTokens < 4300000 * 10^18:
        return 1818
    if icoSoldTokens < 4700000 * 10^18:
        return 1666
    if icoSoldTokens < 5200000 * 10^18:
        return 1538
    if icoSoldTokens < 6000000 * 10^18:
        return 1250
    if icoSoldTokens < 7000000 * 10^18:
        return 1000
    if icoSoldTokens >= 8000000 * 10^18:
        return 666
    return 800
}

function transferTo(address arg1, uint256 arg2) {
    require uint8(stor7.field_8)
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
    require uint8(stor7.field_8)
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

function buyTokens() payable {
    require msg.value >= 10^16
    if icoSoldTokens < 4100000 * 10^18:
        balanceOf[address(msg.sender)] += 2000 * msg.value
        totalSupply += 2000 * msg.value
        icoSoldTokens += 2000 * msg.value
        totalSoldTokens += 2000 * msg.value
        emit LogBuy((2000 * msg.value), msg.sender);
    else:
        if icoSoldTokens < 4300000 * 10^18:
            balanceOf[address(msg.sender)] += 1818 * msg.value
            totalSupply += 1818 * msg.value
            icoSoldTokens += 1818 * msg.value
            totalSoldTokens += 1818 * msg.value
            emit LogBuy((1818 * msg.value), msg.sender);
        else:
            if icoSoldTokens < 4700000 * 10^18:
                balanceOf[address(msg.sender)] += 1666 * msg.value
                totalSupply += 1666 * msg.value
                icoSoldTokens += 1666 * msg.value
                totalSoldTokens += 1666 * msg.value
                emit LogBuy((1666 * msg.value), msg.sender);
            else:
                if icoSoldTokens < 5200000 * 10^18:
                    balanceOf[address(msg.sender)] += 1538 * msg.value
                    totalSupply += 1538 * msg.value
                    icoSoldTokens += 1538 * msg.value
                    totalSoldTokens += 1538 * msg.value
                    emit LogBuy((1538 * msg.value), msg.sender);
                else:
                    if icoSoldTokens < 6000000 * 10^18:
                        balanceOf[address(msg.sender)] += 1250 * msg.value
                        totalSupply += 1250 * msg.value
                        icoSoldTokens += 1250 * msg.value
                        totalSoldTokens += 1250 * msg.value
                        emit LogBuy((1250 * msg.value), msg.sender);
                    else:
                        if icoSoldTokens < 7000000 * 10^18:
                            balanceOf[address(msg.sender)] += 1000 * msg.value
                            totalSupply += 1000 * msg.value
                            icoSoldTokens += 1000 * msg.value
                            totalSoldTokens += 1000 * msg.value
                            emit LogBuy((1000 * msg.value), msg.sender);
                        else:
                            if icoSoldTokens >= 8000000 * 10^18:
                                balanceOf[address(msg.sender)] += 666 * msg.value
                                totalSupply += 666 * msg.value
                                icoSoldTokens += 666 * msg.value
                                totalSoldTokens += 666 * msg.value
                                emit LogBuy((666 * msg.value), msg.sender);
                            else:
                                balanceOf[address(msg.sender)] += 800 * msg.value
                                totalSupply += 800 * msg.value
                                icoSoldTokens += 800 * msg.value
                                totalSoldTokens += 800 * msg.value
                                emit LogBuy((800 * msg.value), msg.sender);
    return 0
}



}

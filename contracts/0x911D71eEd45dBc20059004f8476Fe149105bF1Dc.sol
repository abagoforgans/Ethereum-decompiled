contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
address stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor5 = 10
    stor6 = 5
    require not msg.value
    stor4 = msg.sender
    stor0[address(msg.sender)] = 100000
    return code.data[87 len 1584]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 weiWantedOf;
mapping of uint256 tokensOfferedOf;
mapping of uint8 stor3;
address bankAddress;
uint256 ethTaxRate;
uint256 tokenTaxRate;

function weiWantedOf(address arg1) {
    return weiWantedOf[arg1]
}

function tokensOfferedOf(address arg1) {
    return tokensOfferedOf[arg1]
}

function tradeActive(address arg1) {
    return bool(stor3[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function bank() {
    return bankAddress
}

function ethTaxRate() {
    return ethTaxRate
}

function tokenTaxRate() {
    return tokenTaxRate
}

function _fallback() payable {
    revert 
}

function transferOwnership(address arg1) {
    require bankAddress == msg.sender
    bankAddress = arg1
}

function setTaxes(uint256 arg1, uint256 arg2) {
    require bankAddress == msg.sender
    ethTaxRate = arg1
    tokenTaxRate = arg2
}

function offerTrade(uint256 arg1, uint256 arg2) {
    weiWantedOf[address(msg.sender)] = arg1
    tokensOfferedOf[address(msg.sender)] = arg2
    stor3[address(msg.sender)] = 1
}

function extractWei(uint256 arg1) {
    require bankAddress == msg.sender
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function send(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require arg2 >= 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += (100 * arg2) - (tokenTaxRate * arg2) / 100
    balanceOf[stor4] += arg2 * tokenTaxRate / 100
    if arg2 * tokenTaxRate % 100:
        balanceOf[stor4]++
}

function agreeToTrade(address arg1) payable {
    require stor3[address(arg1)]
    require msg.value == weiWantedOf[address(arg1)]
    require balanceOf[address(arg1)] >= tokensOfferedOf[address(arg1)]
    call arg1 with:
       value (100 * msg.value) - (ethTaxRate * msg.value) / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    balanceOf[address(arg1)] -= tokensOfferedOf[address(arg1)]
    balanceOf[msg.sender] += (100 * tokensOfferedOf[address(arg1)]) - (tokenTaxRate * tokensOfferedOf[address(arg1)]) / 100
    balanceOf[stor4] += tokenTaxRate * tokensOfferedOf[address(arg1)] / 100
    stor3[address(arg1)] = 0
    if tokensOfferedOf[address(arg1)] * tokenTaxRate % 100:
        balanceOf[stor4]++
}



}

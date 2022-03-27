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
    return code.data[87 len 2555]
}



// =====================  Runtime code  =====================


const totalSupply = 10000


mapping of uint256 balanceOf;
mapping of uint256 weiWantedOf;
mapping of uint256 tokensOfferedOf;
mapping of uint8 stor3;
address bankAddress;
uint256 ethTaxRate;
uint256 tokenTaxRate;
mapping of uint256 allowance;

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
    return balanceOf[address(arg1)]
}

function bank() {
    return bankAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
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

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require arg2 >= 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += (100 * arg2) - (tokenTaxRate * arg2) / 100
    balanceOf[stor4] += arg2 * tokenTaxRate / 100
    if arg2 * tokenTaxRate % 100:
        balanceOf[stor4]++
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 >= 0
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += (100 * arg3) - (tokenTaxRate * arg3) / 100
    balanceOf[stor4] += arg3 * tokenTaxRate / 100
    if arg3 * tokenTaxRate % 100:
        balanceOf[stor4]++
    emit Transfer(arg3, arg1, arg2);
    return 1
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
    emit Transfer(tokensOfferedOf[address(arg1)], arg1, msg.sender);
    if tokenTaxRate * tokensOfferedOf[address(arg1)] % 100:
        balanceOf[stor4]++
}



}

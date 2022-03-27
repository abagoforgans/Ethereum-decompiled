contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
address stor5;

function _fallback() {
    stor5 = msg.sender
    stor0[address(msg.sender)] = 100000
    return code.data[163 len 3212]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 weiWantedOf;
mapping of uint256 tokensOfferedOf;
mapping of uint8 stor3;
mapping of address tradeIntentOf;
address owner;

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

function tradeIntentOf(address arg1) {
    return tradeIntentOf[arg1]
}

function owner() {
    return owner
}

function signalTradeIntent(address arg1) {
    tradeIntentOf[address(msg.sender)] = arg1
}

function offerTrade(uint256 arg1, uint256 arg2) {
    weiWantedOf[address(msg.sender)] = arg1
    tokensOfferedOf[address(msg.sender)] = arg2
    stor3[address(msg.sender)] = 1
}

function send(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require arg2 >= 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
}

function _fallback() payable {
    require stor3[stor4[address(msg.sender)]]
    require weiWantedOf[stor4[address(msg.sender)]] == msg.value
    require balanceOf[stor4[address(msg.sender)]] >= tokensOfferedOf[stor4[address(msg.sender)]]
    call tradeIntentOf[address(msg.sender)] with:
       value 90 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    balanceOf[stor4[address(msg.sender)]] -= tokensOfferedOf[stor4[address(msg.sender)]]
    balanceOf[address(msg.sender)] += 90 * tokensOfferedOf[stor4[address(msg.sender)]] / 100
}



}

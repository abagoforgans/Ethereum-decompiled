contract main {


// =======================  Init code  ======================


uint8 stor2; offset 160
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    uint8(stor2.field_160) = 0
    stor4 = 1250
    stor5 = 0
    require not msg.value
    address(stor2.field_0) = msg.sender
    require code.data[2506 len 20]
    stor3 = code.data[2506 len 20]
    return code.data[160 len 2334]
}



// =====================  Runtime code  =====================


const name = 'XB Token'

const decimals = 18

const symbol = 'XB'

const TOTAL_XB_TOKEN_FOR_PRE_SALE = 2640000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
uint8 stor2; offset 160
address owner;
address walletAddress;
uint256 rate;
uint256 presaleSoldTokens;
uint256 weiRaised;

function totalSupply() {
    return totalSupply
}

function presaleSoldTokens() {
    return presaleSoldTokens
}

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(stor2)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function unpause() {
    require owner == msg.sender
    require stor2
    stor2 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor2
    stor2 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function buyTokens(address arg1) payable {
    require not stor2
    require arg1
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require (rate * msg.value) + presaleSoldTokens <= 2640000 * 10^18
    require (rate * msg.value) + presaleSoldTokens >= presaleSoldTokens
    presaleSoldTokens += rate * msg.value
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require (rate * msg.value) + totalSupply >= totalSupply
    totalSupply += rate * msg.value
    require (rate * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += rate * msg.value
    emit Mint((rate * msg.value), arg1);
    emit Transfer((rate * msg.value), 0, arg1);
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not stor2
    require msg.sender
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require (rate * msg.value) + presaleSoldTokens <= 2640000 * 10^18
    require (rate * msg.value) + presaleSoldTokens >= presaleSoldTokens
    presaleSoldTokens += rate * msg.value
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require (rate * msg.value) + totalSupply >= totalSupply
    totalSupply += rate * msg.value
    require (rate * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += rate * msg.value
    emit Mint((rate * msg.value), msg.sender);
    emit Transfer((rate * msg.value), 0, msg.sender);
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}

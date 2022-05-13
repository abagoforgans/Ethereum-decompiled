contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address multiSigWalletAddress;
uint256 amountRaised;
uint256 startTime;
uint256 remainingTime;
uint256 hardcap;
uint256 price;
uint8 stor14;
uint256 stor17;

function stopTime() {
    return remainingTime
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function multiSigWallet() {
    return multiSigWalletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function amountRaised() {
    return amountRaised
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getPrice() {
    return price
}

function price() {
    return price
}

function hardcap() {
    return hardcap
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getRemainingTime() {
    return remainingTime
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function stopSale() {
    require msg.sender == owner
    remainingTime = block.timestamp
    stor14 = 1
    return 1
}

function setPrice(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    price = arg1
    return price
}

function setMultiSigWallet(address arg1) {
    require msg.sender == owner
    multiSigWalletAddress = arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setHardCapValue(uint256 arg1) {
    require msg.sender == owner
    if arg1:
        require arg1
        require arg1 * stor17 / arg1 == stor17
    hardcap = arg1 * stor17
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 > 0
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function startSale(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) {
    require msg.sender == owner
    require arg2 > block.timestamp
    startTime = arg1
    remainingTime = arg2
    stor14 = 0
    require msg.sender == owner
    require arg3 > 0
    price = arg3
    require msg.sender == owner
    multiSigWalletAddress = arg4
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require not stor14
    require block.timestamp < remainingTime
    if msg.value:
        require msg.value
        require msg.value * price / msg.value == price
    if msg.value * price:
        require msg.value * price
        require msg.value * price * stor17 / msg.value * price == stor17
    require totalSupply + (msg.value * price * stor17 / 10^18) >= totalSupply
    require totalSupply + (msg.value * price * stor17 / 10^18) <= hardcap
    require amountRaised + (msg.value / 10^18) >= amountRaised
    amountRaised += msg.value / 10^18
    if msg.value:
        require msg.value
        require msg.value * price / msg.value == price
    if msg.value * price:
        require msg.value * price
        require msg.value * price * stor17 / msg.value * price == stor17
    require totalSupply + (msg.value * price * stor17 / 10^18) >= totalSupply
    totalSupply += msg.value * price * stor17 / 10^18
    require balanceOf[address(msg.sender)] + (msg.value * price * stor17 / 10^18) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value * price * stor17 / 10^18
    call multiSigWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer((msg.value * price * stor17 / 10^18), 0, msg.sender);
}



}

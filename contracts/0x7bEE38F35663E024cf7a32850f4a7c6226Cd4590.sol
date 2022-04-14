contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
array of uint256 stor4;
uint8 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
uint256 stor9;
array of uint256 stor11;
array of uint256 stor12;
uint256 stor13;
uint256 stor14;
uint128 stor15; offset 160
address stor15;

function _fallback() payable {
    stor5 = 0
    bool(stor11.length) = 0
    stor11.length.field_1 = 8
    stor11.length.field_8 = 'BurnCoin' / 256
    idx = 0
    while stor11.length + 31 / 32 > idx:
        stor11[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor12.length) = 0
    stor12.length.field_1 = 3
    stor12.length.field_8 = 'BRN' / 256
    idx = 0
    while stor12.length + 31 / 32 > idx:
        stor12[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor13 = 2
    stor14 = 50100
    require not msg.value
    stor3 = msg.sender
    stor6 = block.number
    stor7 = stor6 + 10 * 10^6
    require stor7 >= stor6
    stor9 = 1
    stor8 = msg.sender
    Mask(96, 0, stor15.field_160) = 1
    address(stor15.field_0) = msg.sender
    stor0 = 100000
    stor1[address(stor15.field_0)] = 100000
    mem[256 len 195] = code.data[8791 len 195]
    stor4.length = 391
    s = 0
    idx = 256
    while 451 > idx:
        stor4[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 7
    while stor4.length + 31 / 32 > idx:
        stor4[idx] = 0
        idx = idx + 1
        continue 
    return code.data[851 len 7940]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor3;
array of uint256 contactInformation;
uint8 stor5;
uint256 startBlock;
uint256 endBlock;
address walletAddress;
uint256 rate;
uint256 weiRaised;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 ownerstake;
uint8 stor15; offset 160
uint128 stor15; offset 160
address owner;

function mintingFinished() {
    return bool(stor5)
}

function name() {
    return name[0 len name.length]
}

function endBlock() {
    return endBlock
}

function totalSupply() {
    return totalSupply
}

function rate() {
    return rate
}

function decimals() {
    return decimals
}

function contactInformation() {
    return contactInformation[0 len contactInformation.length]
}

function weiRaised() {
    return weiRaised
}

function startBlock() {
    return startBlock
}

function wallet() {
    return walletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function locked() {
    return bool(uint8(stor15.field_160))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function ownerstake() {
    return ownerstake
}

function destroy() {
    require msg.sender == stor3
    selfdestruct(stor3)
}

function destroyAndSend(address arg1) {
    require msg.sender == stor3
    selfdestruct(arg1)
}

function hasEnded() {
    return (block.number > endBlock)
}

function transferOwnership(address arg1) {
    require msg.sender == stor3
    require arg1
    stor3 = arg1
}

function finishMinting() {
    require msg.sender == stor3
    stor5 = 1
    emit MintFinished()
    return 1
}

function unlock() {
    require msg.sender == stor3
    require uint8(stor15.field_160)
    Mask(96, 0, stor15.field_160) = 0
}

function setContactInformation(string arg1) {
    require msg.sender == stor3
    contactInformation[] = Array(len=arg1.length, data=arg1[all])
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == stor3
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(msg.sender, arg1);
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == stor3
    require not stor5
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require 0 == bool(uint8(stor15.field_160))
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if owner != msg.sender:
        require 0 == bool(uint8(stor15.field_160))
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buyTokens(address arg1) payable {
    require arg1
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require msg.value <= 1000 * 10^18
    require balanceOf[address(stor15.field_0)] > ownerstake
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require msg.value * rate <= balanceOf[address(stor15.field_0)]
    balanceOf[address(stor15.field_0)] += -1 * msg.value * rate
    require balanceOf[address(arg1)] + (msg.value * rate) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += msg.value * rate
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require msg.value <= 1000 * 10^18
    require balanceOf[address(stor15.field_0)] > ownerstake
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require msg.value * rate <= balanceOf[address(stor15.field_0)]
    balanceOf[address(stor15.field_0)] += -1 * msg.value * rate
    require balanceOf[address(msg.sender)] + (msg.value * rate) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value * rate
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}

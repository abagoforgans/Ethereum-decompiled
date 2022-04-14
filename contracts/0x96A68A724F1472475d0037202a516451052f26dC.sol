contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
uint256 stor4;
uint256 stor5;
address stor6;
uint256 stor7;
uint256 stor9;
uint256 stor10;
array of uint256 stor11;
array of uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint8 stor16;

function _fallback() payable {
    bool(stor11.length) = 0
    stor11.length.field_1 = 15
    stor11.length.field_8 = 'Realestateco.in' / 256
    idx = 0
    while stor11.length + 31 / 32 > idx:
        stor11[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor12.length) = 0
    stor12.length.field_1 = 4
    stor12.length.field_8 = 'REAL' / 256
    idx = 0
    while stor12.length + 31 / 32 > idx:
        stor12[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor13 = 4
    stor14 = 8 * 10^13
    require not msg.value
    stor3 = msg.sender
    stor6 = 0x879bf61f63a8c58d802ec612aa8e868882e532c6
    stor7 = 331
    stor5 = block.number + 400000
    stor0 = stor14
    stor1[address(msg.sender)] = stor14
    stor4 = block.number
    stor9 = stor14
    stor10 = 0
    stor15 = 10^14
    stor16 = 1
    return code.data[512 len 3359]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 startBlock;
uint256 endBlock;
address walletAddress;
uint256 tokensPerEther;
uint256 weiRaised;
uint256 cap;
uint256 issuedTokens;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 INITIAL_SUPPLY;
uint256 stor15;
uint8 stor16;

function name() {
    return name[0 len name.length]
}

function endBlock() {
    return endBlock
}

function totalSupply() {
    return totalSupply
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
}

function cap() {
    return cap
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

function issuedTokens() {
    return issuedTokens
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function tokensPerEther() {
    return tokensPerEther
}

function stopCrowdSale() {
    require owner == msg.sender
    stor16 = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function hasEnded() {
    if block.number <= endBlock:
        return (block.number > endBlock)
    return bool(stor16)
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
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
    require stor16
    if msg.value:
        require msg.value
        require tokensPerEther * msg.value / msg.value == tokensPerEther
    require stor15
    require (tokensPerEther * msg.value / stor15) + issuedTokens >= issuedTokens
    require (tokensPerEther * msg.value / stor15) + issuedTokens <= cap
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require (tokensPerEther * msg.value / stor15) + issuedTokens >= issuedTokens
    issuedTokens += tokensPerEther * msg.value / stor15
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require tokensPerEther * msg.value / stor15 <= balanceOf[stor3]
    balanceOf[stor3] -= tokensPerEther * msg.value / stor15
    require (tokensPerEther * msg.value / stor15) + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = (tokensPerEther * msg.value / stor15) + balanceOf[arg1]
    emit TokenPurchase(msg.value, tokensPerEther * msg.value / stor15, msg.sender, arg1);
}

function _fallback() payable {
    require msg.sender
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require stor16
    if msg.value:
        require msg.value
        require tokensPerEther * msg.value / msg.value == tokensPerEther
    require stor15
    require (tokensPerEther * msg.value / stor15) + issuedTokens >= issuedTokens
    require (tokensPerEther * msg.value / stor15) + issuedTokens <= cap
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require (tokensPerEther * msg.value / stor15) + issuedTokens >= issuedTokens
    issuedTokens += tokensPerEther * msg.value / stor15
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require tokensPerEther * msg.value / stor15 <= balanceOf[stor3]
    balanceOf[stor3] -= tokensPerEther * msg.value / stor15
    require (tokensPerEther * msg.value / stor15) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = (tokensPerEther * msg.value / stor15) + balanceOf[msg.sender]
    emit TokenPurchase(msg.value, tokensPerEther * msg.value / stor15, msg.sender, msg.sender);
}



}

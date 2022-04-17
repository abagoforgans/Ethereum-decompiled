contract main {


// =======================  Init code  ======================


uint128 stor3; offset 160
address stor3;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;
uint256 stor7;
address stor8;
uint256 stor9;

function _fallback() payable {
    Mask(96, 0, stor3.field_160) = 0
    require not msg.value
    mem[96 len -5492] = code.data[6092 len -5492]
    mem[64] = -5396
    address(stor3.field_0) = msg.sender
    require mem[96] > 0
    require mem[172 len 20]
    stor9 = mem[96]
    stor7 = mem[128]
    stor8 = mem[172 len 20]
    stor4[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor5[] = Array(len=mem[mem[224] + 96], data=mem[mem[224] + 128 len mem[mem[224] + 96]])
    stor6 = mem[287 len 1]
    return code.data[600 len 5492]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 maxTokensToMint;
address walletAddress;
uint256 rate;

function mintingFinished() {
    return bool(uint8(stor3.field_160))
}

function name() {
    return name[0 len name.length]
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

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function maxTokensToMint() {
    return maxTokensToMint
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function finishMinting() {
    require msg.sender == owner
    Mask(96, 0, stor3.field_160) = 1
    emit MintFinished()
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
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
    require msg.value >= 20 * 10^18
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    if msg.value < 100 * 10^18:
        require totalSupply + (msg.value * rate) + (25 * msg.value * rate / 100) <= maxTokensToMint
        require not uint8(stor3.field_160)
        require totalSupply + (msg.value * rate) + (25 * msg.value * rate / 100) >= totalSupply
        totalSupply = totalSupply + (msg.value * rate) + (25 * msg.value * rate / 100)
        require balanceOf[address(arg1)] + (msg.value * rate) + (25 * msg.value * rate / 100) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate) + (25 * msg.value * rate / 100)
        emit Mint(((msg.value * rate) + (25 * msg.value * rate / 100)), arg1);
        emit TokenPurchase(msg.value, (msg.value * rate) + (25 * msg.value * rate / 100), msg.sender, arg1);
    else:
        if msg.value >= 500 * 10^18:
            require totalSupply + (msg.value * rate) + (40 * msg.value * rate / 100) <= maxTokensToMint
            require not uint8(stor3.field_160)
            require totalSupply + (msg.value * rate) + (40 * msg.value * rate / 100) >= totalSupply
            totalSupply = totalSupply + (msg.value * rate) + (40 * msg.value * rate / 100)
            require balanceOf[address(arg1)] + (msg.value * rate) + (40 * msg.value * rate / 100) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate) + (40 * msg.value * rate / 100)
            emit Mint(((msg.value * rate) + (40 * msg.value * rate / 100)), arg1);
            emit TokenPurchase(msg.value, (msg.value * rate) + (40 * msg.value * rate / 100), msg.sender, arg1);
        else:
            require totalSupply + (msg.value * rate) + (30 * msg.value * rate / 100) <= maxTokensToMint
            require not uint8(stor3.field_160)
            require totalSupply + (msg.value * rate) + (30 * msg.value * rate / 100) >= totalSupply
            totalSupply = totalSupply + (msg.value * rate) + (30 * msg.value * rate / 100)
            require balanceOf[address(arg1)] + (msg.value * rate) + (30 * msg.value * rate / 100) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate) + (30 * msg.value * rate / 100)
            emit Mint(((msg.value * rate) + (30 * msg.value * rate / 100)), arg1);
            emit TokenPurchase(msg.value, (msg.value * rate) + (30 * msg.value * rate / 100), msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    require msg.value >= 20 * 10^18
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    if msg.value < 100 * 10^18:
        require totalSupply + (msg.value * rate) + (25 * msg.value * rate / 100) <= maxTokensToMint
        require not uint8(stor3.field_160)
        require totalSupply + (msg.value * rate) + (25 * msg.value * rate / 100) >= totalSupply
        totalSupply = totalSupply + (msg.value * rate) + (25 * msg.value * rate / 100)
        require balanceOf[address(msg.sender)] + (msg.value * rate) + (25 * msg.value * rate / 100) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate) + (25 * msg.value * rate / 100)
        emit Mint(((msg.value * rate) + (25 * msg.value * rate / 100)), msg.sender);
        emit TokenPurchase(msg.value, (msg.value * rate) + (25 * msg.value * rate / 100), msg.sender, msg.sender);
    else:
        if msg.value >= 500 * 10^18:
            require totalSupply + (msg.value * rate) + (40 * msg.value * rate / 100) <= maxTokensToMint
            require not uint8(stor3.field_160)
            require totalSupply + (msg.value * rate) + (40 * msg.value * rate / 100) >= totalSupply
            totalSupply = totalSupply + (msg.value * rate) + (40 * msg.value * rate / 100)
            require balanceOf[address(msg.sender)] + (msg.value * rate) + (40 * msg.value * rate / 100) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate) + (40 * msg.value * rate / 100)
            emit Mint(((msg.value * rate) + (40 * msg.value * rate / 100)), msg.sender);
            emit TokenPurchase(msg.value, (msg.value * rate) + (40 * msg.value * rate / 100), msg.sender, msg.sender);
        else:
            require totalSupply + (msg.value * rate) + (30 * msg.value * rate / 100) <= maxTokensToMint
            require not uint8(stor3.field_160)
            require totalSupply + (msg.value * rate) + (30 * msg.value * rate / 100) >= totalSupply
            totalSupply = totalSupply + (msg.value * rate) + (30 * msg.value * rate / 100)
            require balanceOf[address(msg.sender)] + (msg.value * rate) + (30 * msg.value * rate / 100) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate) + (30 * msg.value * rate / 100)
            emit Mint(((msg.value * rate) + (30 * msg.value * rate / 100)), msg.sender);
            emit TokenPurchase(msg.value, (msg.value * rate) + (30 * msg.value * rate / 100), msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}

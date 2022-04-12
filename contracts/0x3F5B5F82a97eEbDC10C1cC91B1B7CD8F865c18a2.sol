contract main {


// =======================  Init code  ======================


uint128 stor3; offset 160
address stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
uint8 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint8 stor12;
address stor12; offset 40
uint256 stor12; offset 32
uint256 stor12; offset 24
uint256 stor12; offset 16
uint256 stor12; offset 8
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    Mask(96, 0, stor3.field_160) = 0
    mem[128] = 'Inactive'
    bool(stor5.length) = 0
    stor5.length.field_1 = 8
    stor5.length.field_8 = 'Inactive' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor12.field_0) = 0
    Mask(248, 0, stor12.field_8) = 0
    Mask(240, 0, stor12.field_16) = 0
    Mask(232, 0, stor12.field_24) = 0
    Mask(224, 0, stor12.field_32) = 0
    require not msg.value
    mem[160 len -9024] = code.data[9892 len -9024]
    address(stor3.field_0) = msg.sender
    require mem[192] > 0
    require mem[236 len 20]
    stor14 = mem[192]
    stor13 = mem[160]
    address(stor12.field_40) = mem[236 len 20]
    stor4[] = Array(len=mem[mem[256] + 160], data=mem[mem[256] + 192 len mem[mem[256] + 160]])
    stor9 = mem[352]
    stor6[] = Array(len=mem[mem[288] + 160], data=mem[mem[288] + 192 len mem[mem[288] + 160]])
    stor7 = mem[351 len 1]
    stor8 = mem[384]
    stor10 = mem[416]
    return code.data[868 len 9024]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
array of uint256 name;
array of uint256 currentState;
array of uint256 symbol;
uint8 decimals;
uint256 limitPreIcoTokens;
uint256 weiPerToken;
uint256 limitIcoTokens;
uint256 preIcoTokens;
uint8 stor12;
uint8 stor12; offset 8
uint8 stor12; offset 16
uint8 stor12; offset 24
uint8 stor12; offset 32
address stor12;
address walletAddress; offset 40
uint256 stor12; offset 32
uint256 stor12; offset 24
uint256 stor12; offset 16
uint256 stor12; offset 8
uint256 ratePreIco;
uint256 rateIco;

function mintingFinished() {
    return bool(uint8(stor3.field_160))
}

function name() {
    return name[0 len name.length]
}

function currentState() {
    return currentState[0 len currentState.length].field_0
}

function totalSupply() {
    return totalSupply
}

function ownersStakeAdded() {
    return bool(uint8(stor12.field_32))
}

function icoActive() {
    return bool(uint8(stor12.field_8))
}

function decimals() {
    return decimals
}

function limitIcoTokens() {
    return limitIcoTokens
}

function preBountyAdded() {
    return bool(uint8(stor12.field_16))
}

function limitPreIcoTokens() {
    return limitPreIcoTokens
}

function wallet() {
    return walletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function bountyAdded() {
    return bool(uint8(stor12.field_24))
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function preIcoActive() {
    return bool(uint8(stor12.field_0))
}

function preIcoTokens() {
    return preIcoTokens
}

function weiPerToken() {
    return weiPerToken
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function rateIco() {
    return rateIco
}

function ratePreIco() {
    return ratePreIco
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function changeWallet(address arg1) {
    require msg.sender == owner
    require arg1
    walletAddress = arg1
    return 1
}

function finishMinting() {
    require msg.sender == owner
    Mask(96, 0, stor3.field_160) = 1
    emit MintFinished()
    return 1
}

function changeWeiPerToken(uint256 arg1) {
    require msg.sender == owner
    require weiPerToken
    weiPerToken = arg1
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

function startIco() {
    require msg.sender == owner
    Mask(248, 0, stor12.field_8) = 1
    uint8(stor12.field_0) = 0
    bool(currentState.length) = 0
    currentState.length.field_1 = 3
    currentState.length.field_8 = 'Ico' / 256
    idx = 0
    while currentState.length + 31 / 32 > idx:
        currentState[idx].field_0 = 0
        idx = idx + 1
        continue 
    return 1
}

function startPreIco() {
    require msg.sender == owner
    require not uint8(stor12.field_8)
    Mask(248, 0, stor12.field_8) = 0
    uint8(stor12.field_0) = 1
    bool(currentState.length) = 0
    currentState.length.field_1 = 7
    currentState.length.field_8 = 'Pre Ico' / 256
    idx = 0
    while currentState.length + 31 / 32 > idx:
        currentState[idx].field_0 = 0
        idx = idx + 1
        continue 
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

function stopPreIco() {
    require msg.sender == owner
    require not uint8(stor12.field_16)
    uint8(stor12.field_0) = 0
    bool(currentState.length) = 0
    currentState.length.field_1 = 16
    currentState.length.field_8 = 'Pre Ico finished' / 256
    idx = 0
    while currentState.length + 31 / 32 > idx:
        currentState[idx].field_0 = 0
        idx = idx + 1
        continue 
    require msg.sender == owner
    require not uint8(stor12.field_16)
    Mask(240, 0, stor12.field_16) = 1
    require not uint8(stor3.field_160)
    require totalSupply + (6 * totalSupply / 94) >= totalSupply
    totalSupply += 6 * totalSupply / 94
    require balanceOf[address(stor12.field_0)] + (6 * totalSupply / 94) >= balanceOf[address(stor12.field_0)]
    balanceOf[address(stor12.field_0)] += 6 * totalSupply / 94
    emit Mint((6 * totalSupply / 94), walletAddress);
    preIcoTokens = totalSupply
    return 1
}

function stopIco(address arg1) {
    require msg.sender == owner
    require not uint8(stor12.field_24)
    require not uint8(stor12.field_32)
    require arg1
    Mask(248, 0, stor12.field_8) = 0
    uint8(stor12.field_0) = 0
    bool(currentState.length) = 0
    currentState.length.field_1 = 12
    currentState.length.field_8 = 'Ico finished' / 256
    idx = 0
    while currentState.length + 31 / 32 > idx:
        currentState[idx].field_0 = 0
        idx = idx + 1
        continue 
    require msg.sender == owner
    require not uint8(stor12.field_24)
    require not uint8(stor12.field_32)
    Mask(232, 0, stor12.field_24) = 1
    Mask(224, 0, stor12.field_32) = 1
    require not uint8(stor3.field_160)
    require totalSupply + ((6 * totalSupply) - (6 * preIcoTokens) / 94) >= totalSupply
    totalSupply += (6 * totalSupply) - (6 * preIcoTokens) / 94
    require balanceOf[address(stor12.field_0)] + ((6 * totalSupply) - (6 * preIcoTokens) / 94) >= balanceOf[address(stor12.field_0)]
    balanceOf[address(stor12.field_0)] += (6 * totalSupply) - (6 * preIcoTokens) / 94
    emit Mint(((6 * totalSupply) - (6 * preIcoTokens) / 94), walletAddress);
    require not uint8(stor3.field_160)
    require totalSupply + ((14 * totalSupply) - (14 * preIcoTokens) / 86) >= totalSupply
    totalSupply += (14 * totalSupply) - (14 * preIcoTokens) / 86
    require balanceOf[address(arg1)] + ((14 * totalSupply) - (14 * preIcoTokens) / 86) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += (14 * totalSupply) - (14 * preIcoTokens) / 86
    emit Mint(((14 * totalSupply) - (14 * preIcoTokens) / 86), arg1);
    Mask(96, 0, stor3.field_160) = 1
    emit MintFinished()
    return 1
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value > 0
    require weiPerToken
    if not uint8(stor12.field_8):
        if msg.value / weiPerToken:
            require msg.value / weiPerToken
            require msg.value / weiPerToken * ratePreIco / msg.value / weiPerToken == ratePreIco
        if not uint8(stor12.field_0):
            require uint8(stor12.field_8)
            require totalSupply + (msg.value / weiPerToken * ratePreIco) <= limitIcoTokens
        else:
            if totalSupply + (msg.value / weiPerToken * ratePreIco) > limitPreIcoTokens:
                require uint8(stor12.field_8)
                require totalSupply + (msg.value / weiPerToken * ratePreIco) <= limitIcoTokens
        require not uint8(stor3.field_160)
        require totalSupply + (msg.value / weiPerToken * ratePreIco) >= totalSupply
        totalSupply += msg.value / weiPerToken * ratePreIco
        require balanceOf[address(arg1)] + (msg.value / weiPerToken * ratePreIco) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += msg.value / weiPerToken * ratePreIco
        emit Mint((msg.value / weiPerToken * ratePreIco), arg1);
        emit TokenPurchase(msg.value, msg.value / weiPerToken * ratePreIco, msg.sender, arg1);
    else:
        if msg.value / weiPerToken:
            require msg.value / weiPerToken
            require msg.value / weiPerToken * rateIco / msg.value / weiPerToken == rateIco
        if not uint8(stor12.field_0):
            require uint8(stor12.field_8)
            require totalSupply + (msg.value / weiPerToken * rateIco) <= limitIcoTokens
        else:
            if totalSupply + (msg.value / weiPerToken * rateIco) > limitPreIcoTokens:
                require uint8(stor12.field_8)
                require totalSupply + (msg.value / weiPerToken * rateIco) <= limitIcoTokens
        require not uint8(stor3.field_160)
        require totalSupply + (msg.value / weiPerToken * rateIco) >= totalSupply
        totalSupply += msg.value / weiPerToken * rateIco
        require balanceOf[address(arg1)] + (msg.value / weiPerToken * rateIco) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += msg.value / weiPerToken * rateIco
        emit Mint((msg.value / weiPerToken * rateIco), arg1);
        emit TokenPurchase(msg.value, msg.value / weiPerToken * rateIco, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    require msg.value > 0
    require weiPerToken
    if not uint8(stor12.field_8):
        if msg.value / weiPerToken:
            require msg.value / weiPerToken
            require msg.value / weiPerToken * ratePreIco / msg.value / weiPerToken == ratePreIco
        if not uint8(stor12.field_0):
            require uint8(stor12.field_8)
            require totalSupply + (msg.value / weiPerToken * ratePreIco) <= limitIcoTokens
        else:
            if totalSupply + (msg.value / weiPerToken * ratePreIco) > limitPreIcoTokens:
                require uint8(stor12.field_8)
                require totalSupply + (msg.value / weiPerToken * ratePreIco) <= limitIcoTokens
        require not uint8(stor3.field_160)
        require totalSupply + (msg.value / weiPerToken * ratePreIco) >= totalSupply
        totalSupply += msg.value / weiPerToken * ratePreIco
        require balanceOf[address(msg.sender)] + (msg.value / weiPerToken * ratePreIco) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value / weiPerToken * ratePreIco
        emit Mint((msg.value / weiPerToken * ratePreIco), msg.sender);
        emit TokenPurchase(msg.value, msg.value / weiPerToken * ratePreIco, msg.sender, msg.sender);
    else:
        if msg.value / weiPerToken:
            require msg.value / weiPerToken
            require msg.value / weiPerToken * rateIco / msg.value / weiPerToken == rateIco
        if not uint8(stor12.field_0):
            require uint8(stor12.field_8)
            require totalSupply + (msg.value / weiPerToken * rateIco) <= limitIcoTokens
        else:
            if totalSupply + (msg.value / weiPerToken * rateIco) > limitPreIcoTokens:
                require uint8(stor12.field_8)
                require totalSupply + (msg.value / weiPerToken * rateIco) <= limitIcoTokens
        require not uint8(stor3.field_160)
        require totalSupply + (msg.value / weiPerToken * rateIco) >= totalSupply
        totalSupply += msg.value / weiPerToken * rateIco
        require balanceOf[address(msg.sender)] + (msg.value / weiPerToken * rateIco) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value / weiPerToken * rateIco
        emit Mint((msg.value / weiPerToken * rateIco), msg.sender);
        emit TokenPurchase(msg.value, msg.value / weiPerToken * rateIco, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}

contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor3;
uint8 stor4;
array of uint256 stor5;
array of uint256 stor6;
address stor7;
address stor8;
uint256 stor9;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 13
    stor3.length.field_8 = 'Test123x Coin' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    bool(stor5.length) = 0
    stor5.length.field_1 = 8
    stor5.length.field_8 = 'TEST123X' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 3
    stor6.length.field_8 = '0.3' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 0x84b1fea0178e39ea6291c6b21697a15e750df3a
    stor8 = 0x564f7b85a577f6f31b11857c784b551875ad0721
    stor9 = 0
    require not msg.value
    stor0 = 4200000 * 10^18
    stor1[stor8] = 4200000 * 10^18
    return code.data[544 len 3023]
}



// =====================  Runtime code  =====================


const STARTBLOCKTM = (418315 * 3600)


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
address walletAddress;
address tokensBankAddress;
uint256 circulatingTokens;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function tokensBank() {
    return tokensBankAddress
}

function decimals() {
    return decimals
}

function wallet() {
    return walletAddress
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function circulatingTokens() {
    return circulatingTokens
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getRate() {
    if circulatingTokens <= 37799999999999997902848:
        return 1644
    if circulatingTokens > 462000000000000054525952:
        return 1271
    return 1368
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

function _fallback() payable {
    require msg.sender
    require msg.value
    require tokensBankAddress != msg.sender
    require walletAddress != msg.sender
    require msg.value >= 10^16
    require block.timestamp >= 418315 * 3600
    if circulatingTokens <= 37799999999999997902848:
        if msg.value:
            require msg.value
            require 1644 * msg.value / msg.value == 1644
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require (1644 * msg.value) + circulatingTokens >= circulatingTokens
        require (1644 * msg.value) + circulatingTokens <= totalSupply
        require (1644 * msg.value) + circulatingTokens >= circulatingTokens
        circulatingTokens += 1644 * msg.value
        require not allowance[stor8][address(msg.sender)]
        allowance[stor8][address(msg.sender)] = 1644 * msg.value
        require (1644 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 1644 * msg.value
        require 1644 * msg.value <= balanceOf[stor8]
        balanceOf[stor8] += -1644 * msg.value
        require 1644 * msg.value <= allowance[stor8][address(msg.sender)]
        allowance[stor8][address(msg.sender)] += -1644 * msg.value
        emit Transfer((1644 * msg.value), tokensBankAddress, msg.sender);
    else:
        if circulatingTokens > 462000000000000054525952:
            if msg.value:
                require msg.value
                require 1271 * msg.value / msg.value == 1271
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require (1271 * msg.value) + circulatingTokens >= circulatingTokens
            require (1271 * msg.value) + circulatingTokens <= totalSupply
            require (1271 * msg.value) + circulatingTokens >= circulatingTokens
            circulatingTokens += 1271 * msg.value
            require not allowance[stor8][address(msg.sender)]
            allowance[stor8][address(msg.sender)] = 1271 * msg.value
            require (1271 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 1271 * msg.value
            require 1271 * msg.value <= balanceOf[stor8]
            balanceOf[stor8] += -1271 * msg.value
            require 1271 * msg.value <= allowance[stor8][address(msg.sender)]
            allowance[stor8][address(msg.sender)] += -1271 * msg.value
            emit Transfer((1271 * msg.value), tokensBankAddress, msg.sender);
        else:
            if msg.value:
                require msg.value
                require 1368 * msg.value / msg.value == 1368
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require (1368 * msg.value) + circulatingTokens >= circulatingTokens
            require (1368 * msg.value) + circulatingTokens <= totalSupply
            require (1368 * msg.value) + circulatingTokens >= circulatingTokens
            circulatingTokens += 1368 * msg.value
            require not allowance[stor8][address(msg.sender)]
            allowance[stor8][address(msg.sender)] = 1368 * msg.value
            require (1368 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 1368 * msg.value
            require 1368 * msg.value <= balanceOf[stor8]
            balanceOf[stor8] += -1368 * msg.value
            require 1368 * msg.value <= allowance[stor8][address(msg.sender)]
            allowance[stor8][address(msg.sender)] += -1368 * msg.value
            emit Transfer((1368 * msg.value), tokensBankAddress, msg.sender);
}



}

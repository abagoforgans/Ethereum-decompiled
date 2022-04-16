contract main {


// =======================  Init code  ======================


uint128 stor3; offset 160
address stor3;
uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
uint8 stor7;
address stor7; offset 8
uint256 stor8;
uint8 stor9;
uint256 stor9; offset 8

function _fallback() payable {
    Mask(96, 0, stor3.field_160) = 0
    uint8(stor9.field_0) = 0
    Mask(248, 0, stor9.field_8) = 0
    require not msg.value
    mem[96 len -6642] = code.data[7296 len -6642]
    mem[64] = -6546
    address(stor3.field_0) = msg.sender
    require mem[96] > 0
    require mem[172 len 20]
    stor8 = mem[96]
    stor4 = mem[128]
    address(stor7.field_8) = mem[172 len 20]
    stor5[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor6[] = Array(len=mem[mem[224] + 96], data=mem[mem[224] + 128 len mem[mem[224] + 96]])
    uint8(stor7.field_0) = mem[287 len 1]
    return code.data[654 len 6642]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
uint256 maxTokensToMint;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address walletAddress; offset 8
uint256 rate;
uint8 stor9;
uint8 stor9; offset 8
uint256 stor9; offset 8

function mintingFinished() {
    return bool(uint8(stor3.field_160))
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function ownersStakeAdded() {
    return bool(uint8(stor9.field_8))
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

function bountyAdded() {
    return bool(uint8(stor9.field_0))
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

function sub_848adfeb(?) {
    require msg.sender == owner
    require not uint8(stor9.field_0)
    require not uint8(stor9.field_8)
    require arg1
    require arg2
    uint8(stor9.field_0) = 1
    Mask(248, 0, stor9.field_8) = 1
    require not uint8(stor3.field_160)
    require totalSupply + (3 * totalSupply / 100) >= totalSupply
    totalSupply += 3 * totalSupply / 100
    require balanceOf[address(arg1)] + (3 * totalSupply / 100) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 3 * totalSupply / 100
    emit Mint((3 * totalSupply / 100), arg1);
    require not uint8(stor3.field_160)
    require totalSupply + (15 * totalSupply / 100) >= totalSupply
    totalSupply += 15 * totalSupply / 100
    require balanceOf[address(arg2)] + (15 * totalSupply / 100) >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += 15 * totalSupply / 100
    emit Mint((15 * totalSupply / 100), arg2);
    return 1
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value > 0
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    if block.timestamp < 418481 * 3600:
        if msg.value < 3 * 10^18:
            require totalSupply + (msg.value * rate / 10^13) <= maxTokensToMint
            require not uint8(stor3.field_160)
            require totalSupply + (msg.value * rate / 10^13) >= totalSupply
            totalSupply += msg.value * rate / 10^13
            require balanceOf[address(arg1)] + (msg.value * rate / 10^13) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += msg.value * rate / 10^13
            emit Mint((msg.value * rate / 10^13), arg1);
            emit TokenPurchase(msg.value, msg.value * rate / 10^13, msg.sender, arg1);
        else:
            if msg.value < 5 * 10^18:
                require totalSupply + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                require not uint8(stor3.field_160)
                require totalSupply + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100) >= totalSupply
                totalSupply = totalSupply + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100)
                require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100)
                emit Mint(((msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100)), arg1);
                emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
            else:
                if msg.value < 10 * 10^18:
                    require totalSupply + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                    require not uint8(stor3.field_160)
                    require totalSupply + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100) >= totalSupply
                    totalSupply = totalSupply + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100)
                    require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100)
                    emit Mint(((msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100)), arg1);
                    emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                else:
                    if msg.value < 20 * 10^18:
                        require totalSupply + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                        require not uint8(stor3.field_160)
                        require totalSupply + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100) >= totalSupply
                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100)
                        require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100)
                        emit Mint(((msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100)), arg1);
                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                    else:
                        if msg.value >= 50 * 10^18:
                            require totalSupply + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                            require not uint8(stor3.field_160)
                            require totalSupply + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100) >= totalSupply
                            totalSupply = totalSupply + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100)
                            require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100)
                            emit Mint(((msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100)), arg1);
                            emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                        else:
                            require totalSupply + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                            require not uint8(stor3.field_160)
                            require totalSupply + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100) >= totalSupply
                            totalSupply = totalSupply + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100)
                            require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100)
                            emit Mint(((msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100)), arg1);
                            emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
    else:
        if block.timestamp > 1507075199:
            if block.timestamp < 418632 * 24 * 3600:
                if msg.value < 3 * 10^18:
                    require totalSupply + (msg.value * rate / 10^13) <= maxTokensToMint
                    require not uint8(stor3.field_160)
                    require totalSupply + (msg.value * rate / 10^13) >= totalSupply
                    totalSupply += msg.value * rate / 10^13
                    require balanceOf[address(arg1)] + (msg.value * rate / 10^13) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += msg.value * rate / 10^13
                    emit Mint((msg.value * rate / 10^13), arg1);
                    emit TokenPurchase(msg.value, msg.value * rate / 10^13, msg.sender, arg1);
                else:
                    if msg.value < 5 * 10^18:
                        require totalSupply + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                        require not uint8(stor3.field_160)
                        require totalSupply + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100) >= totalSupply
                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100)
                        require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100)
                        emit Mint(((msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100)), arg1);
                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                    else:
                        if msg.value < 10 * 10^18:
                            require totalSupply + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                            require not uint8(stor3.field_160)
                            require totalSupply + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100) >= totalSupply
                            totalSupply = totalSupply + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100)
                            require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100)
                            emit Mint(((msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100)), arg1);
                            emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                        else:
                            if msg.value < 20 * 10^18:
                                require totalSupply + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                require not uint8(stor3.field_160)
                                require totalSupply + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100) >= totalSupply
                                totalSupply = totalSupply + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100)
                                require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100)
                                emit Mint(((msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100)), arg1);
                                emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                            else:
                                if msg.value >= 50 * 10^18:
                                    require totalSupply + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                    require not uint8(stor3.field_160)
                                    require totalSupply + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100) >= totalSupply
                                    totalSupply = totalSupply + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100)
                                    require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100)
                                    emit Mint(((msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100)), arg1);
                                    emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                                else:
                                    require totalSupply + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                    require not uint8(stor3.field_160)
                                    require totalSupply + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100) >= totalSupply
                                    totalSupply = totalSupply + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100)
                                    require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100)
                                    emit Mint(((msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100)), arg1);
                                    emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
            else:
                if block.timestamp > 1511135999:
                    if msg.value < 3 * 10^18:
                        require totalSupply + (msg.value * rate / 10^13) <= maxTokensToMint
                        require not uint8(stor3.field_160)
                        require totalSupply + (msg.value * rate / 10^13) >= totalSupply
                        totalSupply += msg.value * rate / 10^13
                        require balanceOf[address(arg1)] + (msg.value * rate / 10^13) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += msg.value * rate / 10^13
                        emit Mint((msg.value * rate / 10^13), arg1);
                        emit TokenPurchase(msg.value, msg.value * rate / 10^13, msg.sender, arg1);
                    else:
                        if msg.value < 5 * 10^18:
                            require totalSupply + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                            require not uint8(stor3.field_160)
                            require totalSupply + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100) >= totalSupply
                            totalSupply = totalSupply + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100)
                            require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100)
                            emit Mint(((msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100)), arg1);
                            emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                        else:
                            if msg.value < 10 * 10^18:
                                require totalSupply + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                require not uint8(stor3.field_160)
                                require totalSupply + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100) >= totalSupply
                                totalSupply = totalSupply + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100)
                                require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100)
                                emit Mint(((msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100)), arg1);
                                emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                            else:
                                if msg.value < 20 * 10^18:
                                    require totalSupply + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                    require not uint8(stor3.field_160)
                                    require totalSupply + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100) >= totalSupply
                                    totalSupply = totalSupply + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100)
                                    require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100)
                                    emit Mint(((msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100)), arg1);
                                    emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                                else:
                                    if msg.value >= 50 * 10^18:
                                        require totalSupply + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                        require not uint8(stor3.field_160)
                                        require totalSupply + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100) >= totalSupply
                                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100)
                                        require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100)
                                        emit Mint(((msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100)), arg1);
                                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                                    else:
                                        require totalSupply + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                        require not uint8(stor3.field_160)
                                        require totalSupply + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100) >= totalSupply
                                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100)
                                        require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100)
                                        emit Mint(((msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100)), arg1);
                                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                else:
                    if msg.value < 3 * 10^18:
                        require totalSupply + (msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                        require not uint8(stor3.field_160)
                        require totalSupply + (msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100) >= totalSupply
                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100)
                        require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100)
                        emit Mint(((msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100)), arg1);
                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                    else:
                        if msg.value < 5 * 10^18:
                            require totalSupply + (msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                            require not uint8(stor3.field_160)
                            require totalSupply + (msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100) >= totalSupply
                            totalSupply = totalSupply + (msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100)
                            require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100)
                            emit Mint(((msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100)), arg1);
                            emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                        else:
                            if msg.value < 10 * 10^18:
                                require totalSupply + (msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                require not uint8(stor3.field_160)
                                require totalSupply + (msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100) >= totalSupply
                                totalSupply = totalSupply + (msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100)
                                require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100)
                                emit Mint(((msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100)), arg1);
                                emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                            else:
                                if msg.value < 20 * 10^18:
                                    require totalSupply + (msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                    require not uint8(stor3.field_160)
                                    require totalSupply + (msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100) >= totalSupply
                                    totalSupply = totalSupply + (msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100)
                                    require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100)
                                    emit Mint(((msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100)), arg1);
                                    emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                                else:
                                    if msg.value >= 50 * 10^18:
                                        require totalSupply + (msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                        require not uint8(stor3.field_160)
                                        require totalSupply + (msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100) >= totalSupply
                                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100)
                                        require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100)
                                        emit Mint(((msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100)), arg1);
                                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                                    else:
                                        require totalSupply + (msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                        require not uint8(stor3.field_160)
                                        require totalSupply + (msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100) >= totalSupply
                                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100)
                                        require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100)
                                        emit Mint(((msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100)), arg1);
                                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
        else:
            if block.timestamp < 418632 * 24 * 3600:
                if msg.value < 3 * 10^18:
                    require totalSupply + (msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                    require not uint8(stor3.field_160)
                    require totalSupply + (msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100) >= totalSupply
                    totalSupply = totalSupply + (msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100)
                    require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100)
                    emit Mint(((msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100)), arg1);
                    emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                else:
                    if msg.value < 5 * 10^18:
                        require totalSupply + (msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                        require not uint8(stor3.field_160)
                        require totalSupply + (msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100) >= totalSupply
                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100)
                        require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100)
                        emit Mint(((msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100)), arg1);
                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                    else:
                        if msg.value < 10 * 10^18:
                            require totalSupply + (msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                            require not uint8(stor3.field_160)
                            require totalSupply + (msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100) >= totalSupply
                            totalSupply = totalSupply + (msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100)
                            require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100)
                            emit Mint(((msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100)), arg1);
                            emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                        else:
                            if msg.value < 20 * 10^18:
                                require totalSupply + (msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                require not uint8(stor3.field_160)
                                require totalSupply + (msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100) >= totalSupply
                                totalSupply = totalSupply + (msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100)
                                require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100)
                                emit Mint(((msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100)), arg1);
                                emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                            else:
                                if msg.value >= 50 * 10^18:
                                    require totalSupply + (msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                    require not uint8(stor3.field_160)
                                    require totalSupply + (msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100) >= totalSupply
                                    totalSupply = totalSupply + (msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100)
                                    require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100)
                                    emit Mint(((msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100)), arg1);
                                    emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                                else:
                                    require totalSupply + (msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                    require not uint8(stor3.field_160)
                                    require totalSupply + (msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100) >= totalSupply
                                    totalSupply = totalSupply + (msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100)
                                    require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100)
                                    emit Mint(((msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100)), arg1);
                                    emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
            else:
                if block.timestamp > 1511135999:
                    if msg.value < 3 * 10^18:
                        require totalSupply + (msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                        require not uint8(stor3.field_160)
                        require totalSupply + (msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100) >= totalSupply
                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100)
                        require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100)
                        emit Mint(((msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100)), arg1);
                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                    else:
                        if msg.value < 5 * 10^18:
                            require totalSupply + (msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                            require not uint8(stor3.field_160)
                            require totalSupply + (msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100) >= totalSupply
                            totalSupply = totalSupply + (msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100)
                            require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100)
                            emit Mint(((msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100)), arg1);
                            emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                        else:
                            if msg.value < 10 * 10^18:
                                require totalSupply + (msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                require not uint8(stor3.field_160)
                                require totalSupply + (msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100) >= totalSupply
                                totalSupply = totalSupply + (msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100)
                                require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100)
                                emit Mint(((msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100)), arg1);
                                emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                            else:
                                if msg.value < 20 * 10^18:
                                    require totalSupply + (msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                    require not uint8(stor3.field_160)
                                    require totalSupply + (msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100) >= totalSupply
                                    totalSupply = totalSupply + (msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100)
                                    require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100)
                                    emit Mint(((msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100)), arg1);
                                    emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                                else:
                                    if msg.value >= 50 * 10^18:
                                        require totalSupply + (msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                        require not uint8(stor3.field_160)
                                        require totalSupply + (msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100) >= totalSupply
                                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100)
                                        require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100)
                                        emit Mint(((msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100)), arg1);
                                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                                    else:
                                        require totalSupply + (msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                        require not uint8(stor3.field_160)
                                        require totalSupply + (msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100) >= totalSupply
                                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100)
                                        require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100)
                                        emit Mint(((msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100)), arg1);
                                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                else:
                    if msg.value < 3 * 10^18:
                        require totalSupply + (msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                        require not uint8(stor3.field_160)
                        require totalSupply + (msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100) >= totalSupply
                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100)
                        require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100)
                        emit Mint(((msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100)), arg1);
                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                    else:
                        if msg.value < 5 * 10^18:
                            require totalSupply + (msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                            require not uint8(stor3.field_160)
                            require totalSupply + (msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100) >= totalSupply
                            totalSupply = totalSupply + (msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100)
                            require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100)
                            emit Mint(((msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100)), arg1);
                            emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                        else:
                            if msg.value < 10 * 10^18:
                                require totalSupply + (msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                require not uint8(stor3.field_160)
                                require totalSupply + (msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100) >= totalSupply
                                totalSupply = totalSupply + (msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100)
                                require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100)
                                emit Mint(((msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100)), arg1);
                                emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                            else:
                                if msg.value < 20 * 10^18:
                                    require totalSupply + (msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                    require not uint8(stor3.field_160)
                                    require totalSupply + (msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100) >= totalSupply
                                    totalSupply = totalSupply + (msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100)
                                    require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100)
                                    emit Mint(((msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100)), arg1);
                                    emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                                else:
                                    if msg.value >= 50 * 10^18:
                                        require totalSupply + (msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                        require not uint8(stor3.field_160)
                                        require totalSupply + (msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100) >= totalSupply
                                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100)
                                        require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100)
                                        emit Mint(((msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100)), arg1);
                                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
                                    else:
                                        require totalSupply + (msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                        require not uint8(stor3.field_160)
                                        require totalSupply + (msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100) >= totalSupply
                                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100)
                                        require balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100)
                                        emit Mint(((msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100)), arg1);
                                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100), msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    require msg.value > 0
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    if block.timestamp < 418481 * 3600:
        if msg.value < 3 * 10^18:
            require totalSupply + (msg.value * rate / 10^13) <= maxTokensToMint
            require not uint8(stor3.field_160)
            require totalSupply + (msg.value * rate / 10^13) >= totalSupply
            totalSupply += msg.value * rate / 10^13
            require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value * rate / 10^13
            emit Mint((msg.value * rate / 10^13), msg.sender);
            emit TokenPurchase(msg.value, msg.value * rate / 10^13, msg.sender, msg.sender);
        else:
            if msg.value < 5 * 10^18:
                require totalSupply + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                require not uint8(stor3.field_160)
                require totalSupply + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100) >= totalSupply
                totalSupply = totalSupply + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100)
                require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100)
                emit Mint(((msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100)), msg.sender);
                emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
            else:
                if msg.value < 10 * 10^18:
                    require totalSupply + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                    require not uint8(stor3.field_160)
                    require totalSupply + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100) >= totalSupply
                    totalSupply = totalSupply + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100)
                    require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100)
                    emit Mint(((msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100)), msg.sender);
                    emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                else:
                    if msg.value < 20 * 10^18:
                        require totalSupply + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                        require not uint8(stor3.field_160)
                        require totalSupply + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100) >= totalSupply
                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100)
                        require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100)
                        emit Mint(((msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100)), msg.sender);
                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                    else:
                        if msg.value >= 50 * 10^18:
                            require totalSupply + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                            require not uint8(stor3.field_160)
                            require totalSupply + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100) >= totalSupply
                            totalSupply = totalSupply + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100)
                            emit Mint(((msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100)), msg.sender);
                            emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                        else:
                            require totalSupply + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                            require not uint8(stor3.field_160)
                            require totalSupply + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100) >= totalSupply
                            totalSupply = totalSupply + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100)
                            emit Mint(((msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100)), msg.sender);
                            emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
    else:
        if block.timestamp > 1507075199:
            if block.timestamp < 418632 * 24 * 3600:
                if msg.value < 3 * 10^18:
                    require totalSupply + (msg.value * rate / 10^13) <= maxTokensToMint
                    require not uint8(stor3.field_160)
                    require totalSupply + (msg.value * rate / 10^13) >= totalSupply
                    totalSupply += msg.value * rate / 10^13
                    require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value * rate / 10^13
                    emit Mint((msg.value * rate / 10^13), msg.sender);
                    emit TokenPurchase(msg.value, msg.value * rate / 10^13, msg.sender, msg.sender);
                else:
                    if msg.value < 5 * 10^18:
                        require totalSupply + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                        require not uint8(stor3.field_160)
                        require totalSupply + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100) >= totalSupply
                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100)
                        require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100)
                        emit Mint(((msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100)), msg.sender);
                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                    else:
                        if msg.value < 10 * 10^18:
                            require totalSupply + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                            require not uint8(stor3.field_160)
                            require totalSupply + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100) >= totalSupply
                            totalSupply = totalSupply + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100)
                            emit Mint(((msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100)), msg.sender);
                            emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                        else:
                            if msg.value < 20 * 10^18:
                                require totalSupply + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                require not uint8(stor3.field_160)
                                require totalSupply + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100) >= totalSupply
                                totalSupply = totalSupply + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100)
                                require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100)
                                emit Mint(((msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100)), msg.sender);
                                emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                            else:
                                if msg.value >= 50 * 10^18:
                                    require totalSupply + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                    require not uint8(stor3.field_160)
                                    require totalSupply + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100) >= totalSupply
                                    totalSupply = totalSupply + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100)
                                    require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100)
                                    emit Mint(((msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100)), msg.sender);
                                    emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                                else:
                                    require totalSupply + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                    require not uint8(stor3.field_160)
                                    require totalSupply + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100) >= totalSupply
                                    totalSupply = totalSupply + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100)
                                    require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100)
                                    emit Mint(((msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100)), msg.sender);
                                    emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
            else:
                if block.timestamp > 1511135999:
                    if msg.value < 3 * 10^18:
                        require totalSupply + (msg.value * rate / 10^13) <= maxTokensToMint
                        require not uint8(stor3.field_160)
                        require totalSupply + (msg.value * rate / 10^13) >= totalSupply
                        totalSupply += msg.value * rate / 10^13
                        require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value * rate / 10^13
                        emit Mint((msg.value * rate / 10^13), msg.sender);
                        emit TokenPurchase(msg.value, msg.value * rate / 10^13, msg.sender, msg.sender);
                    else:
                        if msg.value < 5 * 10^18:
                            require totalSupply + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                            require not uint8(stor3.field_160)
                            require totalSupply + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100) >= totalSupply
                            totalSupply = totalSupply + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100)
                            emit Mint(((msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100)), msg.sender);
                            emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (2 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                        else:
                            if msg.value < 10 * 10^18:
                                require totalSupply + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                require not uint8(stor3.field_160)
                                require totalSupply + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100) >= totalSupply
                                totalSupply = totalSupply + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100)
                                require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100)
                                emit Mint(((msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100)), msg.sender);
                                emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (4 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                            else:
                                if msg.value < 20 * 10^18:
                                    require totalSupply + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                    require not uint8(stor3.field_160)
                                    require totalSupply + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100) >= totalSupply
                                    totalSupply = totalSupply + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100)
                                    require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100)
                                    emit Mint(((msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100)), msg.sender);
                                    emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (6 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                                else:
                                    if msg.value >= 50 * 10^18:
                                        require totalSupply + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                        require not uint8(stor3.field_160)
                                        require totalSupply + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100) >= totalSupply
                                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100)
                                        require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100)
                                        emit Mint(((msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100)), msg.sender);
                                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (10 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                                    else:
                                        require totalSupply + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                        require not uint8(stor3.field_160)
                                        require totalSupply + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100) >= totalSupply
                                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100)
                                        require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100)
                                        emit Mint(((msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100)), msg.sender);
                                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (8 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                else:
                    if msg.value < 3 * 10^18:
                        require totalSupply + (msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                        require not uint8(stor3.field_160)
                        require totalSupply + (msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100) >= totalSupply
                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100)
                        require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100)
                        emit Mint(((msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100)), msg.sender);
                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                    else:
                        if msg.value < 5 * 10^18:
                            require totalSupply + (msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                            require not uint8(stor3.field_160)
                            require totalSupply + (msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100) >= totalSupply
                            totalSupply = totalSupply + (msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100)
                            emit Mint(((msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100)), msg.sender);
                            emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                        else:
                            if msg.value < 10 * 10^18:
                                require totalSupply + (msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                require not uint8(stor3.field_160)
                                require totalSupply + (msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100) >= totalSupply
                                totalSupply = totalSupply + (msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100)
                                require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100)
                                emit Mint(((msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100)), msg.sender);
                                emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                            else:
                                if msg.value < 20 * 10^18:
                                    require totalSupply + (msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                    require not uint8(stor3.field_160)
                                    require totalSupply + (msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100) >= totalSupply
                                    totalSupply = totalSupply + (msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100)
                                    require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100)
                                    emit Mint(((msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100)), msg.sender);
                                    emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                                else:
                                    if msg.value >= 50 * 10^18:
                                        require totalSupply + (msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                        require not uint8(stor3.field_160)
                                        require totalSupply + (msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100) >= totalSupply
                                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100)
                                        require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100)
                                        emit Mint(((msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100)), msg.sender);
                                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                                    else:
                                        require totalSupply + (msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                        require not uint8(stor3.field_160)
                                        require totalSupply + (msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100) >= totalSupply
                                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100)
                                        require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100)
                                        emit Mint(((msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100)), msg.sender);
                                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
        else:
            if block.timestamp < 418632 * 24 * 3600:
                if msg.value < 3 * 10^18:
                    require totalSupply + (msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                    require not uint8(stor3.field_160)
                    require totalSupply + (msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100) >= totalSupply
                    totalSupply = totalSupply + (msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100)
                    require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100)
                    emit Mint(((msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100)), msg.sender);
                    emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                else:
                    if msg.value < 5 * 10^18:
                        require totalSupply + (msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                        require not uint8(stor3.field_160)
                        require totalSupply + (msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100) >= totalSupply
                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100)
                        require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100)
                        emit Mint(((msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100)), msg.sender);
                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                    else:
                        if msg.value < 10 * 10^18:
                            require totalSupply + (msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                            require not uint8(stor3.field_160)
                            require totalSupply + (msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100) >= totalSupply
                            totalSupply = totalSupply + (msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100)
                            emit Mint(((msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100)), msg.sender);
                            emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                        else:
                            if msg.value < 20 * 10^18:
                                require totalSupply + (msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                require not uint8(stor3.field_160)
                                require totalSupply + (msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100) >= totalSupply
                                totalSupply = totalSupply + (msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100)
                                require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100)
                                emit Mint(((msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100)), msg.sender);
                                emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                            else:
                                if msg.value >= 50 * 10^18:
                                    require totalSupply + (msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                    require not uint8(stor3.field_160)
                                    require totalSupply + (msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100) >= totalSupply
                                    totalSupply = totalSupply + (msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100)
                                    require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100)
                                    emit Mint(((msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100)), msg.sender);
                                    emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                                else:
                                    require totalSupply + (msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                    require not uint8(stor3.field_160)
                                    require totalSupply + (msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100) >= totalSupply
                                    totalSupply = totalSupply + (msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100)
                                    require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100)
                                    emit Mint(((msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100)), msg.sender);
                                    emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
            else:
                if block.timestamp > 1511135999:
                    if msg.value < 3 * 10^18:
                        require totalSupply + (msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                        require not uint8(stor3.field_160)
                        require totalSupply + (msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100) >= totalSupply
                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100)
                        require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100)
                        emit Mint(((msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100)), msg.sender);
                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (40 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                    else:
                        if msg.value < 5 * 10^18:
                            require totalSupply + (msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                            require not uint8(stor3.field_160)
                            require totalSupply + (msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100) >= totalSupply
                            totalSupply = totalSupply + (msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100)
                            emit Mint(((msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100)), msg.sender);
                            emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (42 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                        else:
                            if msg.value < 10 * 10^18:
                                require totalSupply + (msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                require not uint8(stor3.field_160)
                                require totalSupply + (msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100) >= totalSupply
                                totalSupply = totalSupply + (msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100)
                                require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100)
                                emit Mint(((msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100)), msg.sender);
                                emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (44 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                            else:
                                if msg.value < 20 * 10^18:
                                    require totalSupply + (msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                    require not uint8(stor3.field_160)
                                    require totalSupply + (msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100) >= totalSupply
                                    totalSupply = totalSupply + (msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100)
                                    require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100)
                                    emit Mint(((msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100)), msg.sender);
                                    emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (46 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                                else:
                                    if msg.value >= 50 * 10^18:
                                        require totalSupply + (msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                        require not uint8(stor3.field_160)
                                        require totalSupply + (msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100) >= totalSupply
                                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100)
                                        require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100)
                                        emit Mint(((msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100)), msg.sender);
                                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (50 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                                    else:
                                        require totalSupply + (msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                        require not uint8(stor3.field_160)
                                        require totalSupply + (msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100) >= totalSupply
                                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100)
                                        require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100)
                                        emit Mint(((msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100)), msg.sender);
                                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (48 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                else:
                    if msg.value < 3 * 10^18:
                        require totalSupply + (msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                        require not uint8(stor3.field_160)
                        require totalSupply + (msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100) >= totalSupply
                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100)
                        require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100)
                        emit Mint(((msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100)), msg.sender);
                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (20 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                    else:
                        if msg.value < 5 * 10^18:
                            require totalSupply + (msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                            require not uint8(stor3.field_160)
                            require totalSupply + (msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100) >= totalSupply
                            totalSupply = totalSupply + (msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100)
                            emit Mint(((msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100)), msg.sender);
                            emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (22 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                        else:
                            if msg.value < 10 * 10^18:
                                require totalSupply + (msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                require not uint8(stor3.field_160)
                                require totalSupply + (msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100) >= totalSupply
                                totalSupply = totalSupply + (msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100)
                                require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100)
                                emit Mint(((msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100)), msg.sender);
                                emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (24 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                            else:
                                if msg.value < 20 * 10^18:
                                    require totalSupply + (msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                    require not uint8(stor3.field_160)
                                    require totalSupply + (msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100) >= totalSupply
                                    totalSupply = totalSupply + (msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100)
                                    require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100)
                                    emit Mint(((msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100)), msg.sender);
                                    emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (26 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                                else:
                                    if msg.value >= 50 * 10^18:
                                        require totalSupply + (msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                        require not uint8(stor3.field_160)
                                        require totalSupply + (msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100) >= totalSupply
                                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100)
                                        require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100)
                                        emit Mint(((msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100)), msg.sender);
                                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (30 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
                                    else:
                                        require totalSupply + (msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100) <= maxTokensToMint
                                        require not uint8(stor3.field_160)
                                        require totalSupply + (msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100) >= totalSupply
                                        totalSupply = totalSupply + (msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100)
                                        require balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100)
                                        emit Mint(((msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100)), msg.sender);
                                        emit TokenPurchase(msg.value, (msg.value * rate / 10^13) + (28 * msg.value * rate / 10^13 / 100), msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}

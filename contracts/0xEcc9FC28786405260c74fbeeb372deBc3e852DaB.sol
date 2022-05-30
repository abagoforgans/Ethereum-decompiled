contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 fundsRaised;
uint256 privateSaleTokens;
uint256 preSaleTokens;
uint256 saleTokens;
uint256 teamAdvTokens;
uint256 reserveTokens;
uint256 bountyTokens;
uint256 hardCap;
array of uint256 tokenPrice;
uint256 stor16;
address walletAddress;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
bool stor24; offset 256
uint8 stor24;
uint8 stor24; offset 8
uint8 stor24; offset 16
uint8 stor24; offset 24
uint16 stor24;
uint16 stor24; offset 8
uint32 stor24;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function preSaleTokens() {
    return preSaleTokens
}

function TokenPrice() {
    return tokenPrice[0 len tokenPrice.length]
}

function bountyTokens() {
    return bountyTokens
}

function reserveTokens() {
    return reserveTokens
}

function decimals() {
    return decimals
}

function wallet() {
    return walletAddress
}

function fundsRaised() {
    return fundsRaised
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

function saleTokens() {
    return saleTokens
}

function teamAdvTokens() {
    return teamAdvTokens
}

function privateSaleTokens() {
    return privateSaleTokens
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function hardCap() {
    return hardCap
}

function totalSupply() {
    return (10^decimals * stor16)
}

function stopICO() {
    require msg.sender == owner
    uint8(stor24.field_24) = 0
}

function burnRemainingTokens() {
    require msg.sender == owner
    balanceOf[this.address] = 0
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function freeTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 <= balanceOf[this.address]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require arg2 <= balanceOf[this.address]
    balanceOf[this.address] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, this.address, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function multipleTokensSend(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _18 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require mem[(32 * idx) + 140 len 20]
        require mem[(32 * idx) + (32 * arg1.length) + 160] * 10^decimals <= balanceOf[this.address]
        require balanceOf[address(mem[(32 * idx) + 128])] + (mem[(32 * idx) + (32 * arg1.length) + 160] * 10^decimals) >= balanceOf[address(mem[(32 * idx) + 128])]
        require mem[(32 * idx) + (32 * arg1.length) + 160] * 10^decimals <= balanceOf[this.address]
        balanceOf[this.address] += -1 * mem[(32 * idx) + (32 * arg1.length) + 160] * 10^decimals
        require (mem[(32 * idx) + (32 * arg1.length) + 160] * 10^decimals) + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 25
        balanceOf[address(mem[(32 * idx) + 128])] = (mem[(32 * idx) + (32 * arg1.length) + 160] * 10^decimals) + balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160] * 10^decimals
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], this.address, address(_18));
        idx = idx + 1
        continue 
}

function buyTokens(address arg1) payable {
    require block.timestamp >= stor18
    require block.timestamp <= stor23 + (720 * 24 * 3600)
    require uint8(stor24.field_24)
    require arg1
    require msg.value
    if block.timestamp < stor18:
        if block.timestamp < stor20:
            if block.timestamp < stor22:
                stor24.field_0 % 16777216 = 0
            else:
                if block.timestamp > stor23 + (720 * 24 * 3600):
                    stor24.field_0 % 16777216 = 0
                else:
                    uint16(stor24.field_0) = 0
                    uint8(stor24.field_16) = 1
        else:
            if block.timestamp > stor21:
                if block.timestamp < stor22:
                    stor24.field_0 % 16777216 = 0
                else:
                    if block.timestamp > stor23 + (720 * 24 * 3600):
                        stor24.field_0 % 16777216 = 0
                    else:
                        uint16(stor24.field_0) = 0
                        uint8(stor24.field_16) = 1
            else:
                uint8(stor24.field_0) = 0
                uint8(stor24.field_8) = 1
                uint8(stor24.field_16) = 0
                stor24.field_256 % 1 = 0
    else:
        if block.timestamp <= stor19:
            uint8(stor24.field_0) = 1
            uint16(stor24.field_8) = 0
            stor24.field_256 % 1 = 0
        else:
            if block.timestamp < stor20:
                if block.timestamp < stor22:
                    stor24.field_0 % 16777216 = 0
                else:
                    if block.timestamp > stor23 + (720 * 24 * 3600):
                        stor24.field_0 % 16777216 = 0
                    else:
                        uint16(stor24.field_0) = 0
                        uint8(stor24.field_16) = 1
            else:
                if block.timestamp > stor21:
                    if block.timestamp < stor22:
                        stor24.field_0 % 16777216 = 0
                    else:
                        if block.timestamp > stor23 + (720 * 24 * 3600):
                            stor24.field_0 % 16777216 = 0
                        else:
                            uint16(stor24.field_0) = 0
                            uint8(stor24.field_16) = 1
                else:
                    uint8(stor24.field_0) = 0
                    uint8(stor24.field_8) = 1
                    uint8(stor24.field_16) = 0
                    stor24.field_256 % 1 = 0
    if not uint8(stor24.field_0):
        if msg.value < 10^17:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FUNDS should be MIN 0,1 ETH and Max 5000 ETH'
        if msg.value > 5000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FUNDS should be MIN 0,1 ETH and Max 5000 ETH'
    else:
        if msg.value < 5 * 10^17:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FUNDS should be MIN 0,5 ETH and Max 1000 ETH'
        if msg.value > 1000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FUNDS should be MIN 0,5 ETH and Max 1000 ETH'
    if uint8(stor24.field_0):
        if msg.value:
            require msg.value
            require 10000 * msg.value / msg.value == 10000
        if msg.value <= 50 * 10^18:
            require msg.value + fundsRaised >= fundsRaised
            fundsRaised += msg.value
            require arg1
            require 10000 * msg.value <= balanceOf[this.address]
            require balanceOf[address(arg1)] + (10000 * msg.value) >= balanceOf[address(arg1)]
            require 10000 * msg.value <= balanceOf[this.address]
            balanceOf[this.address] += -10000 * msg.value
            require (10000 * msg.value) + balanceOf[arg1] >= balanceOf[arg1]
            balanceOf[address(arg1)] = (10000 * msg.value) + balanceOf[arg1]
            emit Transfer((10000 * msg.value), this.address, arg1);
            emit TokenPurchase(msg.value, 10000 * msg.value, this.address, arg1);
        else:
            if 10000 * msg.value:
                require 10000 * msg.value
                require 100000 * msg.value / 10000 * msg.value == 10
            require (100000 * msg.value / 100) + (10000 * msg.value) >= 10000 * msg.value
            require msg.value + fundsRaised >= fundsRaised
            fundsRaised += msg.value
            require arg1
            require (100000 * msg.value / 100) + (10000 * msg.value) <= balanceOf[this.address]
            require balanceOf[address(arg1)] + (100000 * msg.value / 100) + (10000 * msg.value) >= balanceOf[address(arg1)]
            require (100000 * msg.value / 100) + (10000 * msg.value) <= balanceOf[this.address]
            balanceOf[this.address] = balanceOf[this.address] - (100000 * msg.value / 100) - (10000 * msg.value)
            require (100000 * msg.value / 100) + (10000 * msg.value) + balanceOf[arg1] >= balanceOf[arg1]
            balanceOf[address(arg1)] = (100000 * msg.value / 100) + (10000 * msg.value) + balanceOf[arg1]
            emit Transfer(((100000 * msg.value / 100) + (10000 * msg.value)), this.address, arg1);
            emit TokenPurchase(msg.value, (100000 * msg.value / 100) + (10000 * msg.value), this.address, arg1);
    else:
        if uint8(stor24.field_8):
            if msg.value:
                require msg.value
                require 8000 * msg.value / msg.value == 8000
            if msg.value <= 50 * 10^18:
                require msg.value + fundsRaised >= fundsRaised
                fundsRaised += msg.value
                require arg1
                require 8000 * msg.value <= balanceOf[this.address]
                require balanceOf[address(arg1)] + (8000 * msg.value) >= balanceOf[address(arg1)]
                require 8000 * msg.value <= balanceOf[this.address]
                balanceOf[this.address] += -8000 * msg.value
                require (8000 * msg.value) + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = (8000 * msg.value) + balanceOf[arg1]
                emit Transfer((8000 * msg.value), this.address, arg1);
                emit TokenPurchase(msg.value, 8000 * msg.value, this.address, arg1);
            else:
                if 8000 * msg.value:
                    require 8000 * msg.value
                    require 80000 * msg.value / 8000 * msg.value == 10
                require (80000 * msg.value / 100) + (8000 * msg.value) >= 8000 * msg.value
                require msg.value + fundsRaised >= fundsRaised
                fundsRaised += msg.value
                require arg1
                require (80000 * msg.value / 100) + (8000 * msg.value) <= balanceOf[this.address]
                require balanceOf[address(arg1)] + (80000 * msg.value / 100) + (8000 * msg.value) >= balanceOf[address(arg1)]
                require (80000 * msg.value / 100) + (8000 * msg.value) <= balanceOf[this.address]
                balanceOf[this.address] = balanceOf[this.address] - (80000 * msg.value / 100) - (8000 * msg.value)
                require (80000 * msg.value / 100) + (8000 * msg.value) + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = (80000 * msg.value / 100) + (8000 * msg.value) + balanceOf[arg1]
                emit Transfer(((80000 * msg.value / 100) + (8000 * msg.value)), this.address, arg1);
                emit TokenPurchase(msg.value, (80000 * msg.value / 100) + (8000 * msg.value), this.address, arg1);
        else:
            if not uint8(stor24.field_16):
                if msg.value:
                    require msg.value
                    require not 0 / msg.value
                require msg.value + fundsRaised >= fundsRaised
                fundsRaised += msg.value
                require arg1
                require 0 <= balanceOf[this.address]
                require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                require 0 <= balanceOf[this.address]
                require balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = balanceOf[arg1]
                emit Transfer(0, this.address, arg1);
                emit TokenPurchase(msg.value, 0, this.address, arg1);
            else:
                if msg.value:
                    require msg.value
                    require 8000 * msg.value / msg.value == 8000
                if msg.value <= 50 * 10^18:
                    require msg.value + fundsRaised >= fundsRaised
                    fundsRaised += msg.value
                    require arg1
                    require 8000 * msg.value <= balanceOf[this.address]
                    require balanceOf[address(arg1)] + (8000 * msg.value) >= balanceOf[address(arg1)]
                    require 8000 * msg.value <= balanceOf[this.address]
                    balanceOf[this.address] += -8000 * msg.value
                    require (8000 * msg.value) + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = (8000 * msg.value) + balanceOf[arg1]
                    emit Transfer((8000 * msg.value), this.address, arg1);
                    emit TokenPurchase(msg.value, 8000 * msg.value, this.address, arg1);
                else:
                    if 8000 * msg.value:
                        require 8000 * msg.value
                        require 80000 * msg.value / 8000 * msg.value == 10
                    require (80000 * msg.value / 100) + (8000 * msg.value) >= 8000 * msg.value
                    require msg.value + fundsRaised >= fundsRaised
                    fundsRaised += msg.value
                    require arg1
                    require (80000 * msg.value / 100) + (8000 * msg.value) <= balanceOf[this.address]
                    require balanceOf[address(arg1)] + (80000 * msg.value / 100) + (8000 * msg.value) >= balanceOf[address(arg1)]
                    require (80000 * msg.value / 100) + (8000 * msg.value) <= balanceOf[this.address]
                    balanceOf[this.address] = balanceOf[this.address] - (80000 * msg.value / 100) - (8000 * msg.value)
                    require (80000 * msg.value / 100) + (8000 * msg.value) + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = (80000 * msg.value / 100) + (8000 * msg.value) + balanceOf[arg1]
                    emit Transfer(((80000 * msg.value / 100) + (8000 * msg.value)), this.address, arg1);
                    emit TokenPurchase(msg.value, (80000 * msg.value / 100) + (8000 * msg.value), this.address, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require block.timestamp >= stor18
    require block.timestamp <= stor23 + (720 * 24 * 3600)
    require uint8(stor24.field_24)
    require msg.sender
    require msg.value
    if block.timestamp < stor18:
        if block.timestamp < stor20:
            if block.timestamp < stor22:
                stor24.field_0 % 16777216 = 0
            else:
                if block.timestamp > stor23 + (720 * 24 * 3600):
                    stor24.field_0 % 16777216 = 0
                else:
                    uint16(stor24.field_0) = 0
                    uint8(stor24.field_16) = 1
        else:
            if block.timestamp > stor21:
                if block.timestamp < stor22:
                    stor24.field_0 % 16777216 = 0
                else:
                    if block.timestamp > stor23 + (720 * 24 * 3600):
                        stor24.field_0 % 16777216 = 0
                    else:
                        uint16(stor24.field_0) = 0
                        uint8(stor24.field_16) = 1
            else:
                uint8(stor24.field_0) = 0
                uint8(stor24.field_8) = 1
                uint8(stor24.field_16) = 0
                stor24.field_256 % 1 = 0
    else:
        if block.timestamp <= stor19:
            uint8(stor24.field_0) = 1
            uint16(stor24.field_8) = 0
            stor24.field_256 % 1 = 0
        else:
            if block.timestamp < stor20:
                if block.timestamp < stor22:
                    stor24.field_0 % 16777216 = 0
                else:
                    if block.timestamp > stor23 + (720 * 24 * 3600):
                        stor24.field_0 % 16777216 = 0
                    else:
                        uint16(stor24.field_0) = 0
                        uint8(stor24.field_16) = 1
            else:
                if block.timestamp > stor21:
                    if block.timestamp < stor22:
                        stor24.field_0 % 16777216 = 0
                    else:
                        if block.timestamp > stor23 + (720 * 24 * 3600):
                            stor24.field_0 % 16777216 = 0
                        else:
                            uint16(stor24.field_0) = 0
                            uint8(stor24.field_16) = 1
                else:
                    uint8(stor24.field_0) = 0
                    uint8(stor24.field_8) = 1
                    uint8(stor24.field_16) = 0
                    stor24.field_256 % 1 = 0
    if not uint8(stor24.field_0):
        if msg.value < 10^17:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FUNDS should be MIN 0,1 ETH and Max 5000 ETH'
        if msg.value > 5000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FUNDS should be MIN 0,1 ETH and Max 5000 ETH'
    else:
        if msg.value < 5 * 10^17:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FUNDS should be MIN 0,5 ETH and Max 1000 ETH'
        if msg.value > 1000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FUNDS should be MIN 0,5 ETH and Max 1000 ETH'
    if uint8(stor24.field_0):
        if msg.value:
            require msg.value
            require 10000 * msg.value / msg.value == 10000
        if msg.value <= 50 * 10^18:
            require msg.value + fundsRaised >= fundsRaised
            fundsRaised += msg.value
            require msg.sender
            require 10000 * msg.value <= balanceOf[this.address]
            require balanceOf[address(msg.sender)] + (10000 * msg.value) >= balanceOf[address(msg.sender)]
            require 10000 * msg.value <= balanceOf[this.address]
            balanceOf[this.address] += -10000 * msg.value
            require (10000 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = (10000 * msg.value) + balanceOf[msg.sender]
            emit Transfer((10000 * msg.value), this.address, msg.sender);
            emit TokenPurchase(msg.value, 10000 * msg.value, this.address, msg.sender);
        else:
            if 10000 * msg.value:
                require 10000 * msg.value
                require 100000 * msg.value / 10000 * msg.value == 10
            require (100000 * msg.value / 100) + (10000 * msg.value) >= 10000 * msg.value
            require msg.value + fundsRaised >= fundsRaised
            fundsRaised += msg.value
            require msg.sender
            require (100000 * msg.value / 100) + (10000 * msg.value) <= balanceOf[this.address]
            require balanceOf[address(msg.sender)] + (100000 * msg.value / 100) + (10000 * msg.value) >= balanceOf[address(msg.sender)]
            require (100000 * msg.value / 100) + (10000 * msg.value) <= balanceOf[this.address]
            balanceOf[this.address] = balanceOf[this.address] - (100000 * msg.value / 100) - (10000 * msg.value)
            require (100000 * msg.value / 100) + (10000 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = (100000 * msg.value / 100) + (10000 * msg.value) + balanceOf[msg.sender]
            emit Transfer(((100000 * msg.value / 100) + (10000 * msg.value)), this.address, msg.sender);
            emit TokenPurchase(msg.value, (100000 * msg.value / 100) + (10000 * msg.value), this.address, msg.sender);
    else:
        if uint8(stor24.field_8):
            if msg.value:
                require msg.value
                require 8000 * msg.value / msg.value == 8000
            if msg.value <= 50 * 10^18:
                require msg.value + fundsRaised >= fundsRaised
                fundsRaised += msg.value
                require msg.sender
                require 8000 * msg.value <= balanceOf[this.address]
                require balanceOf[address(msg.sender)] + (8000 * msg.value) >= balanceOf[address(msg.sender)]
                require 8000 * msg.value <= balanceOf[this.address]
                balanceOf[this.address] += -8000 * msg.value
                require (8000 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                balanceOf[address(msg.sender)] = (8000 * msg.value) + balanceOf[msg.sender]
                emit Transfer((8000 * msg.value), this.address, msg.sender);
                emit TokenPurchase(msg.value, 8000 * msg.value, this.address, msg.sender);
            else:
                if 8000 * msg.value:
                    require 8000 * msg.value
                    require 80000 * msg.value / 8000 * msg.value == 10
                require (80000 * msg.value / 100) + (8000 * msg.value) >= 8000 * msg.value
                require msg.value + fundsRaised >= fundsRaised
                fundsRaised += msg.value
                require msg.sender
                require (80000 * msg.value / 100) + (8000 * msg.value) <= balanceOf[this.address]
                require balanceOf[address(msg.sender)] + (80000 * msg.value / 100) + (8000 * msg.value) >= balanceOf[address(msg.sender)]
                require (80000 * msg.value / 100) + (8000 * msg.value) <= balanceOf[this.address]
                balanceOf[this.address] = balanceOf[this.address] - (80000 * msg.value / 100) - (8000 * msg.value)
                require (80000 * msg.value / 100) + (8000 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                balanceOf[address(msg.sender)] = (80000 * msg.value / 100) + (8000 * msg.value) + balanceOf[msg.sender]
                emit Transfer(((80000 * msg.value / 100) + (8000 * msg.value)), this.address, msg.sender);
                emit TokenPurchase(msg.value, (80000 * msg.value / 100) + (8000 * msg.value), this.address, msg.sender);
        else:
            if not uint8(stor24.field_16):
                if msg.value:
                    require msg.value
                    require not 0 / msg.value
                require msg.value + fundsRaised >= fundsRaised
                fundsRaised += msg.value
                require msg.sender
                require 0 <= balanceOf[this.address]
                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require 0 <= balanceOf[this.address]
                require balanceOf[msg.sender] >= balanceOf[msg.sender]
                balanceOf[address(msg.sender)] = balanceOf[msg.sender]
                emit Transfer(0, this.address, msg.sender);
                emit TokenPurchase(msg.value, 0, this.address, msg.sender);
            else:
                if msg.value:
                    require msg.value
                    require 8000 * msg.value / msg.value == 8000
                if msg.value <= 50 * 10^18:
                    require msg.value + fundsRaised >= fundsRaised
                    fundsRaised += msg.value
                    require msg.sender
                    require 8000 * msg.value <= balanceOf[this.address]
                    require balanceOf[address(msg.sender)] + (8000 * msg.value) >= balanceOf[address(msg.sender)]
                    require 8000 * msg.value <= balanceOf[this.address]
                    balanceOf[this.address] += -8000 * msg.value
                    require (8000 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = (8000 * msg.value) + balanceOf[msg.sender]
                    emit Transfer((8000 * msg.value), this.address, msg.sender);
                    emit TokenPurchase(msg.value, 8000 * msg.value, this.address, msg.sender);
                else:
                    if 8000 * msg.value:
                        require 8000 * msg.value
                        require 80000 * msg.value / 8000 * msg.value == 10
                    require (80000 * msg.value / 100) + (8000 * msg.value) >= 8000 * msg.value
                    require msg.value + fundsRaised >= fundsRaised
                    fundsRaised += msg.value
                    require msg.sender
                    require (80000 * msg.value / 100) + (8000 * msg.value) <= balanceOf[this.address]
                    require balanceOf[address(msg.sender)] + (80000 * msg.value / 100) + (8000 * msg.value) >= balanceOf[address(msg.sender)]
                    require (80000 * msg.value / 100) + (8000 * msg.value) <= balanceOf[this.address]
                    balanceOf[this.address] = balanceOf[this.address] - (80000 * msg.value / 100) - (8000 * msg.value)
                    require (80000 * msg.value / 100) + (8000 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = (80000 * msg.value / 100) + (8000 * msg.value) + balanceOf[msg.sender]
                    emit Transfer(((80000 * msg.value / 100) + (8000 * msg.value)), this.address, msg.sender);
                    emit TokenPurchase(msg.value, (80000 * msg.value / 100) + (8000 * msg.value), this.address, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

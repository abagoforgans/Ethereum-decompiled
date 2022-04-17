contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor5;
uint256 stor6;
address stor7;
address stor8;
address stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;

function _fallback() payable {
    mem[96] = 3000
    mem[128] = 2500
    mem[160] = 0
    mem[192] = 2400
    mem[224] = 2200
    mem[256] = 2000
    s = 0
    idx = 96
    while 288 > idx:
        stor17 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor17
        s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
        idx = idx + 32
        continue 
    idx = 12
    s = 17
    while idx:
        uint256(stor[s]) = !(65535 * 256^idx) and uint256(stor[s])
        idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
        s = (idx + 3 / 32) + s
        continue 
    idx = (Mask(254, 1, None - 9) + 15 / 32 * uint255(None - 9) >> 1) + 17
    while 18 > idx:
        uint16(stor[idx]) = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor7 = msg.sender
    require stor7 != code.data[8748 len 20]
    require stor7 != code.data[8780 len 20]
    require code.data[8748 len 20] != code.data[8780 len 20]
    stor9 = code.data[8748 len 20]
    stor8 = code.data[8780 len 20]
    stor5 = code.data[8812 len 20]
    stor1[stor9] = 10^14
    stor1[stor8] = 3 * 10^14
    stor0 = 4 * 10^14
    if not code.data[8672 len 32]:
        if not code.data[8704 len 32]:
            stor10 = 419037 * 3600
            stor11 = 419061 * 3600
            stor12 = 419109 * 3600
            stor13 = 419445 * 3600
            stor14 = 419469 * 3600
            stor15 = 419613 * 3600
            stor16 = 419781 * 3600
        else:
            require code.data[8704 len 32] > 419109 * 3600
            stor10 = 419037 * 3600
            stor11 = 419061 * 3600
            stor12 = 419109 * 3600
            stor13 = code.data[8704 len 32]
            require code.data[8704 len 32] + (24 * 3600) >= code.data[8704 len 32]
            stor14 = code.data[8704 len 32] + (24 * 3600)
            require code.data[8704 len 32] + (168 * 24 * 3600) >= code.data[8704 len 32]
            stor15 = code.data[8704 len 32] + (168 * 24 * 3600)
            require code.data[8704 len 32] + (336 * 24 * 3600) >= code.data[8704 len 32]
            stor16 = code.data[8704 len 32] + (336 * 24 * 3600)
    else:
        require code.data[8672 len 32] + (72 * 24 * 3600) >= code.data[8672 len 32]
        if not code.data[8704 len 32]:
            require 419445 * 3600 > code.data[8672 len 32] + (72 * 24 * 3600)
            stor10 = code.data[8672 len 32]
            require code.data[8672 len 32] + (24 * 3600) >= code.data[8672 len 32]
            stor11 = code.data[8672 len 32] + (24 * 3600)
            stor12 = code.data[8672 len 32] + (72 * 24 * 3600)
            stor13 = 419445 * 3600
            stor14 = 419469 * 3600
            stor15 = 419613 * 3600
            stor16 = 419781 * 3600
        else:
            require code.data[8704 len 32] > code.data[8672 len 32] + (72 * 24 * 3600)
            stor10 = code.data[8672 len 32]
            require code.data[8672 len 32] + (24 * 3600) >= code.data[8672 len 32]
            stor11 = code.data[8672 len 32] + (24 * 3600)
            stor12 = code.data[8672 len 32] + (72 * 24 * 3600)
            stor13 = code.data[8704 len 32]
            require code.data[8704 len 32] + (24 * 3600) >= code.data[8704 len 32]
            stor14 = code.data[8704 len 32] + (24 * 3600)
            require code.data[8704 len 32] + (168 * 24 * 3600) >= code.data[8704 len 32]
            stor15 = code.data[8704 len 32] + (168 * 24 * 3600)
            require code.data[8704 len 32] + (336 * 24 * 3600) >= code.data[8704 len 32]
            stor16 = code.data[8704 len 32] + (336 * 24 * 3600)
    stor6 = 0
    return code.data[1789 len 6883]
}



// =====================  Runtime code  =====================


const name = 'Skrilla'

const decimals = 6

const symbol = 'SKR'


uint256 totalSupply;
mapping of uint256 tokenSaleBalanceOf;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 stor4;
address stor5;
uint256 ethRaised;
address stor7;
array of uint256 saleStageStartDates;
uint256 preSaleEnd;
uint256 saleStart;
uint256 saleEnd;
array of uint16 tokens;

function tokenSaleBalanceOf(address arg1) {
    return tokenSaleBalanceOf[address(arg1)]
}

function saleStageStartDates(uint256 arg1) {
    require arg1 < 7
    return saleStageStartDates[arg1]
}

function totalSupply() {
    return totalSupply
}

function getSaleEnd() {
    return saleEnd
}

function getPreSaleEnd() {
    return preSaleEnd
}

function tokens(uint256 arg1) {
    require arg1 < 6
    return tokens[uint8(arg1)]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getSaleStart() {
    return saleStart
}

function getPreSaleStart() {
    return saleStageStartDates.length
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function ethRaised() {
    return ethRaised
}

function removeFromWhitelist(address arg1) {
    require msg.sender == stor7
    stor4[address(arg1)] = 0
}

function addToWhitelist(address arg1, uint256 arg2) {
    require msg.sender == stor7
    require arg2 < 10000
    stor4[address(arg1)] = arg2
}

function inSalePeriod() {
    if block.timestamp < saleStart:
        return block.timestamp >= saleStart
    return block.timestamp <= saleEnd
}

function inPreSalePeriod() {
    if block.timestamp < saleStageStartDates.length:
        return block.timestamp >= saleStageStartDates.length
    return block.timestamp <= preSaleEnd
}

function transferEth() {
    require msg.sender == stor7
    call stor5 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getStage() {
    idx = 1
    while idx < 7:
        if block.timestamp >= saleStageStartDates[idx]:
            idx = idx + 1
            continue 
        return (idx - 1)
    return 6
}

function approve(address arg1, uint256 arg2) {
    if allowance[address(msg.sender)][address(arg1)]:
        require not arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdraw() {
    require balanceOf[address(msg.sender)] + tokenSaleBalanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += tokenSaleBalanceOf[address(msg.sender)]
    tokenSaleBalanceOf[address(msg.sender)] = 0
    emit 0x884edad9: tokenSaleBalanceOf[address(msg.sender)], msg.sender
    return 1
}

function getCurrentPrice(address arg1) {
    if stor4[address(arg1)] > 0:
        if 10^6 * stor4[address(arg1)] / 10^6 == stor4[address(arg1)]:
            return (10^6 * stor4[address(arg1)])
    else:
        require 1 < 7
        idx = 1
        while block.timestamp >= saleStageStartDates[idx]:
            require idx + 1 < 7
            idx = idx + 1
            continue 
        if None < 6:
            if 10^6 * tokens[uint8(None)] / 10^6 == tokens[uint8(None)]:
                return (10^6 * tokens[uint8(None)])
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buyTokens() payable {
    require block.timestamp <= saleEnd
    require msg.value > 0
    require ethRaised + msg.value >= ethRaised
    require ethRaised + msg.value <= 150000 * 10^18
    if block.timestamp < saleStageStartDates.length:
        if block.timestamp < saleStart:
            require stor4[address(msg.sender)] > 0
        else:
            if block.timestamp > saleEnd:
                require stor4[address(msg.sender)] > 0
    else:
        if block.timestamp > preSaleEnd:
            if block.timestamp < saleStart:
                require stor4[address(msg.sender)] > 0
            else:
                if block.timestamp > saleEnd:
                    require stor4[address(msg.sender)] > 0
    if block.timestamp >= saleStageStartDates.length:
        if block.timestamp <= preSaleEnd:
            if msg.value < 10 * 10^18:
                require stor4[address(msg.sender)] > 0
    if stor4[address(msg.sender)] > 0:
        require 10^6 * stor4[address(msg.sender)] / 10^6 == stor4[address(msg.sender)]
        require 10^6 * stor4[address(msg.sender)] > 0
        if 10^6 * stor4[address(msg.sender)]:
            require 10^6 * stor4[address(msg.sender)]
            require 10^6 * stor4[address(msg.sender)] * msg.value / 10^6 * stor4[address(msg.sender)] == msg.value
        require 10^6 * stor4[address(msg.sender)] * msg.value / 10^18 > 0
        require totalSupply + (10^6 * stor4[address(msg.sender)] * msg.value / 10^18) >= totalSupply
        require totalSupply + (10^6 * stor4[address(msg.sender)] * msg.value / 10^18) <= 10^15
        require totalSupply + (10^6 * stor4[address(msg.sender)] * msg.value / 10^18) >= totalSupply
        totalSupply += 10^6 * stor4[address(msg.sender)] * msg.value / 10^18
        require ethRaised + msg.value >= ethRaised
        ethRaised += msg.value
        require tokenSaleBalanceOf[address(msg.sender)] + (10^6 * stor4[address(msg.sender)] * msg.value / 10^18) >= tokenSaleBalanceOf[address(msg.sender)]
        tokenSaleBalanceOf[address(msg.sender)] += 10^6 * stor4[address(msg.sender)] * msg.value / 10^18
        emit Transfer((10^6 * stor4[address(msg.sender)] * msg.value / 10^18), 0, msg.sender);
        emit TokenPurchase(msg.value, 10^6 * stor4[address(msg.sender)] * msg.value / 10^18, msg.sender);
    else:
        require 1 < 7
        idx = 1
        while block.timestamp >= saleStageStartDates[idx]:
            require idx + 1 < 7
            idx = idx + 1
            continue 
        require None < 6
        require 10^6 * tokens[uint8(None)] / 10^6 == tokens[uint8(None)]
        require 10^6 * tokens[uint8(None)] > 0
        if 10^6 * tokens[uint8(None)]:
            require 10^6 * tokens[uint8(None)]
            require 10^6 * tokens[uint8(None)] * msg.value / 10^6 * tokens[uint8(None)] == msg.value
        require 10^6 * tokens[uint8(None)] * msg.value / 10^18 > 0
        require totalSupply + (10^6 * tokens[uint8(None)] * msg.value / 10^18) >= totalSupply
        require totalSupply + (10^6 * tokens[uint8(None)] * msg.value / 10^18) <= 10^15
        require totalSupply + (10^6 * tokens[uint8(None)] * msg.value / 10^18) >= totalSupply
        totalSupply += 10^6 * tokens[uint8(None)] * msg.value / 10^18
        require ethRaised + msg.value >= ethRaised
        ethRaised += msg.value
        require tokenSaleBalanceOf[address(msg.sender)] + (10^6 * tokens[uint8(None)] * msg.value / 10^18) >= tokenSaleBalanceOf[address(msg.sender)]
        tokenSaleBalanceOf[address(msg.sender)] += 10^6 * tokens[uint8(None)] * msg.value / 10^18
        emit Transfer((10^6 * tokens[uint8(None)] * msg.value / 10^18), 0, msg.sender);
        emit TokenPurchase(msg.value, 10^6 * tokens[uint8(None)] * msg.value / 10^18, msg.sender);
}

function _fallback() payable {
    require block.timestamp <= saleEnd
    require msg.value > 0
    require ethRaised + msg.value >= ethRaised
    require ethRaised + msg.value <= 150000 * 10^18
    if block.timestamp < saleStageStartDates.length:
        if block.timestamp < saleStart:
            require stor4[address(msg.sender)] > 0
        else:
            if block.timestamp > saleEnd:
                require stor4[address(msg.sender)] > 0
    else:
        if block.timestamp > preSaleEnd:
            if block.timestamp < saleStart:
                require stor4[address(msg.sender)] > 0
            else:
                if block.timestamp > saleEnd:
                    require stor4[address(msg.sender)] > 0
    if block.timestamp >= saleStageStartDates.length:
        if block.timestamp <= preSaleEnd:
            if msg.value < 10 * 10^18:
                require stor4[address(msg.sender)] > 0
    if stor4[address(msg.sender)] > 0:
        require 10^6 * stor4[address(msg.sender)] / 10^6 == stor4[address(msg.sender)]
        require 10^6 * stor4[address(msg.sender)] > 0
        if 10^6 * stor4[address(msg.sender)]:
            require 10^6 * stor4[address(msg.sender)]
            require 10^6 * stor4[address(msg.sender)] * msg.value / 10^6 * stor4[address(msg.sender)] == msg.value
        require 10^6 * stor4[address(msg.sender)] * msg.value / 10^18 > 0
        require totalSupply + (10^6 * stor4[address(msg.sender)] * msg.value / 10^18) >= totalSupply
        require totalSupply + (10^6 * stor4[address(msg.sender)] * msg.value / 10^18) <= 10^15
        require totalSupply + (10^6 * stor4[address(msg.sender)] * msg.value / 10^18) >= totalSupply
        totalSupply += 10^6 * stor4[address(msg.sender)] * msg.value / 10^18
        require ethRaised + msg.value >= ethRaised
        ethRaised += msg.value
        require tokenSaleBalanceOf[address(msg.sender)] + (10^6 * stor4[address(msg.sender)] * msg.value / 10^18) >= tokenSaleBalanceOf[address(msg.sender)]
        tokenSaleBalanceOf[address(msg.sender)] += 10^6 * stor4[address(msg.sender)] * msg.value / 10^18
        emit Transfer((10^6 * stor4[address(msg.sender)] * msg.value / 10^18), 0, msg.sender);
        emit TokenPurchase(msg.value, 10^6 * stor4[address(msg.sender)] * msg.value / 10^18, msg.sender);
    else:
        require 1 < 7
        idx = 1
        while block.timestamp >= saleStageStartDates[idx]:
            require idx + 1 < 7
            idx = idx + 1
            continue 
        require None < 6
        require 10^6 * tokens[uint8(None)] / 10^6 == tokens[uint8(None)]
        require 10^6 * tokens[uint8(None)] > 0
        if 10^6 * tokens[uint8(None)]:
            require 10^6 * tokens[uint8(None)]
            require 10^6 * tokens[uint8(None)] * msg.value / 10^6 * tokens[uint8(None)] == msg.value
        require 10^6 * tokens[uint8(None)] * msg.value / 10^18 > 0
        require totalSupply + (10^6 * tokens[uint8(None)] * msg.value / 10^18) >= totalSupply
        require totalSupply + (10^6 * tokens[uint8(None)] * msg.value / 10^18) <= 10^15
        require totalSupply + (10^6 * tokens[uint8(None)] * msg.value / 10^18) >= totalSupply
        totalSupply += 10^6 * tokens[uint8(None)] * msg.value / 10^18
        require ethRaised + msg.value >= ethRaised
        ethRaised += msg.value
        require tokenSaleBalanceOf[address(msg.sender)] + (10^6 * tokens[uint8(None)] * msg.value / 10^18) >= tokenSaleBalanceOf[address(msg.sender)]
        tokenSaleBalanceOf[address(msg.sender)] += 10^6 * tokens[uint8(None)] * msg.value / 10^18
        emit Transfer((10^6 * tokens[uint8(None)] * msg.value / 10^18), 0, msg.sender);
        emit TokenPurchase(msg.value, 10^6 * tokens[uint8(None)] * msg.value / 10^18, msg.sender);
}



}

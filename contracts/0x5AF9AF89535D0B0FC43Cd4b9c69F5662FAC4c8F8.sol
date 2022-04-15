contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7;
uint256 stor8;
address stor9;
array of uint256 stor10;
array of uint256 stor11;
address stor12;
uint256 stor17;
mapping of uint256 stor18;
mapping of uint256 stor19;
uint256 stor20;
address stor21;
address stor22;
uint256 stor1413;
uint256 storB9D2;
uint256 storD2A6;
uint256 storF36A;
uint256 stor1223;
uint256 stor4542;
uint256 stor709D;
uint256 stor724F;
uint256 stor8BA6;
uint256 stor8E1F;
uint256 storB4FC;
uint256 storF4B2;

function _fallback() payable {
    stor5 = 0
    stor6 = 0
    stor7 = 2
    stor8 = 200 * 10^18
    stor12 = 0x5904957d25d0c6213491882a64765967f88bccc7
    stor17 = 0
    stor20 = 8
    stor21 = 0xa67d97d75ee175e05bb1fb17529fd772ee8e9030
    stor22 = 0xed6c0654cd61de5b1355ae4e9d9c786005e9d5bd
    require not msg.value
    stor18[0] = 418200 * 24 * 3600
    stor18[1] = 418344 * 24 * 3600
    stor8E1F = 418368 * 24 * 3600
    storF36A = 418560 * 24 * 3600
    storB4FC = 418728 * 24 * 3600
    stor4542 = 418920 * 24 * 3600
    stor1223 = 419064 * 24 * 3600
    stor724F = 419112 * 24 * 3600
    stor19[0] = 35000
    stor19[1] = 20000
    storB9D2 = 10000
    storD2A6 = 5000
    stor1413 = 2500
    storF4B2 = 0
    stor709D = 9001
    stor8BA6 = 9001
    stor0 = code.data[5879 len 20]
    stor2 = 100 * code.data[5899 len 32]
    stor1 = 100 * code.data[5899 len 32]
    stor3 = 100 * code.data[5899 len 32]
    stor4 = code.data[5931 len 32]
    stor9 = msg.sender
    bool(stor10.length) = 0
    stor10.length.field_1 = 11
    stor10.length.field_8 = 'Autonio ICO' / 256
    idx = 0
    while stor10.length + 31 / 32 > idx:
        stor10[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor11.length) = 0
    stor11.length.field_1 = 3
    stor11.length.field_8 = 'NIO' / 256
    idx = 0
    while stor11.length + 31 / 32 > idx:
        stor11[idx].field_0 = 0
        idx = idx + 1
        continue 
    require stor9 == msg.sender
    require ext_code.size(stor21)
    call stor21.numberOfTokensLeft() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor21)
    call stor21.numberOfTokens() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor5 = 0
    stor3 += 100 * stor5
    require ext_code.size(stor22)
    call stor22.numberOfTokensLeft() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor22)
    call stor22.numberOfTokens() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor6 = 0
    stor3 += stor6
    return code.data[1881 len 3986]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 totalSupply;
uint256 numberOfTokens;
uint256 numberOfTokensLeft;
uint256 pricePerToken;
uint256 tokensFromPresale;
uint256 tokensFromPreviousTokensale;
uint8 decimals;
uint256 withdrawLimit;
address owner;
array of uint256 name;
array of uint256 symbol;
address finalAddress;
mapping of uint256 balanceOf;
mapping of uint8 stor14;
mapping of address addresses;
mapping of uint256 addressIndex;
uint256 numberOfAddress;
mapping of uint256 dates;
mapping of uint256 percents;
uint256 numberOfDates;
address stor21;
address stor22;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function numberOfTokensLeft() {
    return numberOfTokensLeft
}

function decimals() {
    return decimals
}

function numberOfDates() {
    return numberOfDates
}

function numberOfAddress() {
    return numberOfAddress
}

function finalAddress() {
    return finalAddress
}

function dates(uint256 arg1) {
    return dates[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function pricePerToken() {
    return pricePerToken
}

function tokensFromPreviousTokensale() {
    return tokensFromPreviousTokensale
}

function owner() {
    return owner
}

function percents(uint256 arg1) {
    return percents[arg1]
}

function addressIndex(address arg1) {
    return addressIndex[arg1]
}

function tokensFromPresale() {
    return tokensFromPresale
}

function symbol() {
    return symbol[0 len symbol.length]
}

function addressExists(address arg1) {
    return bool(stor14[arg1])
}

function addresses(uint256 arg1) {
    return addresses[arg1]
}

function withdrawLimit() {
    return withdrawLimit
}

function numberOfTokens() {
    return numberOfTokens
}

function token() {
    return tokenAddress
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    require arg1 <= withdrawLimit
    withdrawLimit -= arg1
    call finalAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function endPresale() {
    require owner == msg.sender
    if block.timestamp <= dates[stor20 - 1]:
        require not numberOfTokensLeft
    call finalAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function updatePresaleNumbers() {
    require owner == msg.sender
    require ext_code.size(stor21)
    call stor21.0x27ea06b8 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor21)
    call stor21.0xf9f16ef2 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    tokensFromPresale = 0
    numberOfTokensLeft += 100 * tokensFromPresale
    require ext_code.size(stor22)
    call stor22.0x27ea06b8 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor22)
    call stor22.0xf9f16ef2 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    tokensFromPreviousTokensale = 0
    numberOfTokensLeft += tokensFromPreviousTokensale
}

function _fallback() payable {
    require ext_code.size(stor21)
    call stor21.0x27ea06b8 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor21)
    call stor21.0xf9f16ef2 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    tokensFromPresale = 0
    numberOfTokensLeft += 100 * tokensFromPresale
    require ext_code.size(stor22)
    call stor22.0x27ea06b8 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor22)
    call stor22.0xf9f16ef2 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    tokensFromPreviousTokensale = 0
    numberOfTokensLeft += tokensFromPreviousTokensale
    require 100 * msg.value
    require numberOfTokensLeft > 0
    require block.timestamp >= dates[0]
    require block.timestamp <= dates[stor20 - 1]
    idx = 0
    s = 9001
    while idx < numberOfDates - 1:
        mem[0] = idx
        mem[32] = 18
        if block.timestamp < dates[idx]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx + 1
        mem[32] = 18
        if block.timestamp > dates[idx + 1]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 19
        idx = numberOfDates
        s = percents[idx]
        continue 
    require s != 9001
    require pricePerToken
    if 100 * msg.value / pricePerToken * pricePerToken <= 100 * msg.value:
        if (100000 * 100 * msg.value / pricePerToken) + (s * 100 * msg.value / pricePerToken) / 100000 <= numberOfTokensLeft:
            numberOfTokensLeft -= (100000 * 100 * msg.value / pricePerToken) + (s * 100 * msg.value / pricePerToken) / 100000
            if stor14[address(msg.sender)]:
                balanceOf[address(msg.sender)] += (100000 * 100 * msg.value / pricePerToken) + (s * 100 * msg.value / pricePerToken) / 100000
            else:
                if not stor14[address(msg.sender)]:
                    addressIndex[address(msg.sender)] = numberOfAddress
                    numberOfAddress++
                    addresses[stor17] = msg.sender
                    stor14[address(msg.sender)] = 1
                balanceOf[address(msg.sender)] = (100000 * 100 * msg.value / pricePerToken) + (s * 100 * msg.value / pricePerToken) / 100000
            emit Transfer(((100000 * 100 * msg.value / pricePerToken) + (s * 100 * msg.value / pricePerToken) / 100000), 0, msg.sender);
        else:
            numberOfTokensLeft = 0
            if stor14[address(msg.sender)]:
                balanceOf[address(msg.sender)] += numberOfTokensLeft
                emit Transfer(numberOfTokensLeft, 0, msg.sender);
                if ((100000 * 100 * msg.value / pricePerToken) + (s * 100 * msg.value / pricePerToken) / 100000 * pricePerToken) - (numberOfTokensLeft * pricePerToken) > 0:
                    call msg.sender with:
                       value ((100000 * 100 * msg.value / pricePerToken) + (s * 100 * msg.value / pricePerToken) / 100000 * pricePerToken) - (numberOfTokensLeft * pricePerToken) wei
                         gas 2300 * is_zero(value) wei
            else:
                if not stor14[address(msg.sender)]:
                    addressIndex[address(msg.sender)] = numberOfAddress
                    numberOfAddress++
                    addresses[stor17] = msg.sender
                    stor14[address(msg.sender)] = 1
                balanceOf[address(msg.sender)] = numberOfTokensLeft
                emit Transfer(numberOfTokensLeft, 0, msg.sender);
                if ((100000 * 100 * msg.value / pricePerToken) + (s * 100 * msg.value / pricePerToken) / 100000 * pricePerToken) - (numberOfTokensLeft * pricePerToken) > 0:
                    call msg.sender with:
                       value ((100000 * 100 * msg.value / pricePerToken) + (s * 100 * msg.value / pricePerToken) / 100000 * pricePerToken) - (numberOfTokensLeft * pricePerToken) wei
                         gas 2300 * is_zero(value) wei
    else:
        if -s + (100000 * 100 * msg.value / pricePerToken) + (s * 100 * msg.value / pricePerToken) - 100000 / 100000 <= numberOfTokensLeft:
            numberOfTokensLeft -= -s + (100000 * 100 * msg.value / pricePerToken) + (s * 100 * msg.value / pricePerToken) - 100000 / 100000
            if stor14[address(msg.sender)]:
                balanceOf[address(msg.sender)] += -s + (100000 * 100 * msg.value / pricePerToken) + (s * 100 * msg.value / pricePerToken) - 100000 / 100000
            else:
                if not stor14[address(msg.sender)]:
                    addressIndex[address(msg.sender)] = numberOfAddress
                    numberOfAddress++
                    addresses[stor17] = msg.sender
                    stor14[address(msg.sender)] = 1
                balanceOf[address(msg.sender)] = -s + (100000 * 100 * msg.value / pricePerToken) + (s * 100 * msg.value / pricePerToken) - 100000 / 100000
            emit Transfer((-s + (100000 * 100 * msg.value / pricePerToken) + (s * 100 * msg.value / pricePerToken) - 100000 / 100000), 0, msg.sender);
        else:
            numberOfTokensLeft = 0
            if stor14[address(msg.sender)]:
                balanceOf[address(msg.sender)] += numberOfTokensLeft
                emit Transfer(numberOfTokensLeft, 0, msg.sender);
                if (-s + (100000 * 100 * msg.value / pricePerToken) + (s * 100 * msg.value / pricePerToken) - 100000 / 100000 * pricePerToken) - (numberOfTokensLeft * pricePerToken) > 0:
                    call msg.sender with:
                       value (-s + (100000 * 100 * msg.value / pricePerToken) + (s * 100 * msg.value / pricePerToken) - 100000 / 100000 * pricePerToken) - (numberOfTokensLeft * pricePerToken) wei
                         gas 2300 * is_zero(value) wei
            else:
                if not stor14[address(msg.sender)]:
                    addressIndex[address(msg.sender)] = numberOfAddress
                    numberOfAddress++
                    addresses[stor17] = msg.sender
                    stor14[address(msg.sender)] = 1
                balanceOf[address(msg.sender)] = numberOfTokensLeft
                emit Transfer(numberOfTokensLeft, 0, msg.sender);
                if (-s + (100000 * 100 * msg.value / pricePerToken) + (s * 100 * msg.value / pricePerToken) - 100000 / 100000 * pricePerToken) - (numberOfTokensLeft * pricePerToken) > 0:
                    call msg.sender with:
                       value (-s + (100000 * 100 * msg.value / pricePerToken) + (s * 100 * msg.value / pricePerToken) - 100000 / 100000 * pricePerToken) - (numberOfTokensLeft * pricePerToken) wei
                         gas 2300 * is_zero(value) wei
}



}

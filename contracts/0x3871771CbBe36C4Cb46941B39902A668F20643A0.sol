contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
address stor14;
address stor15;
address stor16;
uint256 stor17;
uint16 stor18;
uint256 stor21;
uint8 stor22;

function _fallback() payable {
    stor0 = 0
    stor1 = 150 * 10^6
    stor2 = 12500 * 3600
    stor3 = 50 * 10^6
    stor4 = 50 * 10^6
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor9 = 0
    stor15 = this.address
    stor16 = 0
    stor17 = 10^12
    stor18 = 0
    stor21 = 0
    stor22 = 0
    require not msg.value
    stor14 = msg.sender
    return code.data[183 len 5506]
}



// =====================  Runtime code  =====================


const name = 'Speed Mining Service'

const decimals = 3

const symbol = 'SMS'

const UNIT = 1000


uint256 totalSupply;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
bool stor5; offset 256
uint8 stor5;
uint8 stor5; offset 8
uint8 stor5; offset 16
uint8 stor5; offset 24
uint32 stor5;
uint256 saleCounter;
uint256 limitedSale;
uint256 sentBonus;
uint256 soldToken;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of address address;
mapping of address stor13;
address stor14;
address stor15;
address stor16;
uint256 tokenPrice;
uint8 stor18;
uint8 stor18; offset 8
uint256 stor18; offset 8
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint8 stor22;

function saleCounter() {
    return saleCounter
}

function totalSupply() {
    return totalSupply
}

function sentBonus() {
    return sentBonus
}

function soldToken() {
    return soldToken
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function tokenPrice() {
    return tokenPrice
}

function getAddress(uint256 arg1) {
    require arg1 < address.length
    return address(address[arg1])
}

function limitedSale() {
    return limitedSale
}

function getAddressSize() {
    return address.length
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function pausePhase() {
    require stor14 == msg.sender
    uint8(stor18.field_0) = 1
}

function resumePhase() {
    require stor14 == msg.sender
    uint8(stor18.field_0) = 0
}

function setTokenPrice(uint256 arg1) {
    require stor14 == msg.sender
    tokenPrice = 10^18 * arg1 / 10000
}

function endPhase() {
    require stor14 == msg.sender
    uint8(stor18.field_0) = 1
    uint8(stor18.field_8) = 0
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function drainETH() {
    require stor14 == msg.sender
    call stor14 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function start4NormalPeriod() {
    require stor14 == msg.sender
    uint8(stor18.field_0) = 0
    uint8(stor18.field_8) = 1
    Mask(248, 0, stor18.field_8) = 0
    stor21 = 4
    stor19 = block.timestamp
    stor20 = block.timestamp + (744 * 24 * 3600)
    uint32(stor5.field_0) = 0
}

function start2BonusPeriod2() {
    require stor14 == msg.sender
    uint8(stor18.field_0) = 0
    uint8(stor18.field_8) = 1
    Mask(248, 0, stor18.field_8) = 0
    stor21 = 2
    stor19 = block.timestamp
    stor20 = block.timestamp + 986399
    uint8(stor5.field_0) = 3
    uint8(stor5.field_8) = 5
    uint8(stor5.field_16) = 10
    uint8(stor5.field_24) = 15
    stor5.field_256 % 1 = 0
    stor5.field_256 % 1 = 0
    stor5.field_256 % 1 = 0
}

function start3BonusPeriod3() {
    require stor14 == msg.sender
    uint8(stor18.field_0) = 0
    uint8(stor18.field_8) = 1
    Mask(248, 0, stor18.field_8) = 0
    stor21 = 3
    stor19 = block.timestamp
    stor20 = block.timestamp + (1224 * 24 * 3600)
    uint8(stor5.field_0) = 1
    uint8(stor5.field_8) = 3
    uint8(stor5.field_16) = 5
    uint8(stor5.field_24) = 8
    stor5.field_256 % 1 = 0
    stor5.field_256 % 1 = 0
    stor5.field_256 % 1 = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit 0x9cddf252: arg3, arg1, arg2
    return 1
}

function sub_39c5e1c1(?) {
    require stor14 == msg.sender
    require not uint8(stor18.field_8)
    if stor21 >= 4:
        if balanceOf[address(this.address)] > 0:
            emit 0x9cddf252: balanceOf[address(this.address)], this.address, stor16
            balanceOf[address(this.address)] = 0
            totalSupply -= balanceOf[address(this.address)]
            if 4 == stor21:
                if balanceOf[stor14] > soldToken:
                    emit 0x9cddf252: (balanceOf[stor14] - soldToken), stor14, stor16
                    balanceOf[stor14] = soldToken
                    totalSupply = totalSupply - balanceOf[stor14] + soldToken
            stor22 = 0
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit 0x9cddf252: arg2, msg.sender, arg1
    if address.length <= 0:
        stor13[address(arg1)] = arg1
        address.length++
        if not address.length <= address.length + 1:
            idx = address.length + 1
            while address.length > idx:
                uint256(address[idx]) = 0
                idx = idx + 1
                continue 
        address(address[address.length]) = arg1
    else:
        if stor13[address(arg1)] != arg1:
            stor13[address(arg1)] = arg1
            address.length++
            if not address.length <= address.length + 1:
                idx = address.length + 1
                while address.length > idx:
                    uint256(address[idx]) = 0
                    idx = idx + 1
                    continue 
            address(address[address.length]) = arg1
    return 1
}

function start1BonusPeriod1() {
    require stor14 == msg.sender
    if not stor21:
        balanceOf[stor14] = stor1
        balanceOf[this.address] = stor1
        totalSupply = stor1 + balanceOf[stor14]
        saleCounter = 0
        limitedSale = stor1
        if address.length <= 0:
            stor13[stor14] = stor14
            address.length++
            if not address.length <= address.length + 1:
                idx = address.length + 1
                while address.length > idx:
                    uint256(address[idx]) = 0
                    idx = idx + 1
                    continue 
            address(address[address.length]) = stor14
        else:
            if stor13[stor14] != stor14:
                stor13[stor14] = stor14
                address.length++
                if not address.length <= address.length + 1:
                    idx = address.length + 1
                    while address.length > idx:
                        uint256(address[idx]) = 0
                        idx = idx + 1
                        continue 
                address(address[address.length]) = stor14
        emit 0x9cddf252: balanceOf[stor14], this.address, stor14
        stor22 = 1
    uint8(stor18.field_0) = 0
    uint8(stor18.field_8) = 1
    Mask(248, 0, stor18.field_8) = 0
    stor21 = 1
    stor19 = block.timestamp
    stor20 = block.timestamp + 208799
    uint8(stor5.field_0) = 5
    uint8(stor5.field_8) = 10
    uint8(stor5.field_16) = 20
    uint8(stor5.field_24) = 30
    stor5.field_256 % 1 = 0
    stor5.field_256 % 1 = 0
    stor5.field_256 % 1 = 0
}

function start5Phase2020() {
    require stor14 == msg.sender
    if 4 == stor21:
        if stor22:
            if stor21 >= 4:
                if balanceOf[address(this.address)] > 0:
                    emit 0x9cddf252: balanceOf[address(this.address)], this.address, stor16
                    balanceOf[address(this.address)] = 0
                    totalSupply -= balanceOf[address(this.address)]
                    if 4 == stor21:
                        if balanceOf[stor14] > soldToken:
                            emit 0x9cddf252: (balanceOf[stor14] - soldToken), stor14, stor16
                            balanceOf[stor14] = soldToken
                            totalSupply = totalSupply - balanceOf[stor14] + soldToken
                    stor22 = 0
        balanceOf[address(this.address)] = stor3
        totalSupply = 3 * totalSupply
        totalSupply = (3 * totalSupply) + balanceOf[address(this.address)]
        saleCounter = 0
        limitedSale = stor3
        s = 0
        idx = 0
        while idx < address.length:
            mem[32] = 10
            balanceOf[address(stor12[idx])] = 3 * balanceOf[address(stor12[idx])]
            mem[0] = 12
            mem[96] = 2 * balanceOf[address(stor12[idx])]
            emit 0x9cddf252: (2 * balanceOf[address(stor12[idx])]), stor15, address(address[idx])
            sentBonus += 2 * balanceOf[address(stor12[idx])]
            s = balanceOf[address(stor12[idx])]
            idx = idx + 1
            continue 
        emit 0x9cddf252: balanceOf[address(this.address)], stor15, this.address
        stor22 = 1
    uint8(stor18.field_0) = 0
    uint8(stor18.field_8) = 1
    Mask(248, 0, stor18.field_8) = 0
    stor21 = 5
    stor19 = block.timestamp
    stor20 = block.timestamp + (168 * 24 * 3600)
}

function start6Phase2025() {
    require stor14 == msg.sender
    if 5 == stor21:
        if stor22:
            if stor21 >= 4:
                if balanceOf[address(this.address)] > 0:
                    emit 0x9cddf252: balanceOf[address(this.address)], this.address, stor16
                    balanceOf[address(this.address)] = 0
                    totalSupply -= balanceOf[address(this.address)]
                    if 4 == stor21:
                        if balanceOf[stor14] > soldToken:
                            emit 0x9cddf252: (balanceOf[stor14] - soldToken), stor14, stor16
                            balanceOf[stor14] = soldToken
                            totalSupply = totalSupply - balanceOf[stor14] + soldToken
                    stor22 = 0
        balanceOf[address(this.address)] = stor4
        totalSupply = 3 * totalSupply
        totalSupply = balanceOf[address(this.address)] + (3 * totalSupply)
        saleCounter = 0
        limitedSale = stor4
        s = 0
        idx = 0
        while idx < address.length:
            mem[32] = 10
            balanceOf[address(stor12[idx])] = 3 * balanceOf[address(stor12[idx])]
            mem[0] = 12
            mem[96] = 2 * balanceOf[address(stor12[idx])]
            emit 0x9cddf252: (2 * balanceOf[address(stor12[idx])]), stor15, address(address[idx])
            sentBonus += 2 * balanceOf[address(stor12[idx])]
            s = balanceOf[address(stor12[idx])]
            idx = idx + 1
            continue 
        emit 0x9cddf252: balanceOf[address(this.address)], stor15, this.address
        stor22 = 1
    uint8(stor18.field_0) = 0
    uint8(stor18.field_8) = 1
    Mask(248, 0, stor18.field_8) = 0
    stor21 = 6
    stor19 = block.timestamp
    stor20 = block.timestamp + (168 * 24 * 3600)
}

function _fallback() payable {
    emit Log(msg.value);
    require uint8(stor18.field_8)
    require not uint8(stor18.field_0)
    require stor14 != msg.sender
    require block.timestamp <= stor20
    emit Log(stor21);
    require tokenPrice > 0
    require tokenPrice
    require 1000 * msg.value == (tokenPrice * 1000 * msg.value / tokenPrice) + (1000 * msg.value % tokenPrice)
    emit Log((1000 * msg.value / tokenPrice));
    if 1 == stor21:
        if 1000 * msg.value / tokenPrice < 10000:
            emit Log((1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100));
            emit Log((1000 * msg.value / tokenPrice));
            require 1000 * msg.value / tokenPrice > 0
            require balanceOf[address(this.address)] >= 1000 * msg.value / tokenPrice
            require balanceOf[address(this.address)] - (1000 * msg.value / tokenPrice) >= 0
            require soldToken + (1000 * msg.value / tokenPrice) > soldToken
            require saleCounter + (1000 * msg.value / tokenPrice) <= limitedSale
            require balanceOf[address(msg.sender)] + (1000 * msg.value / tokenPrice) > balanceOf[address(msg.sender)]
            balanceOf[address(this.address)] -= 1000 * msg.value / tokenPrice
            soldToken += 1000 * msg.value / tokenPrice
            saleCounter += 1000 * msg.value / tokenPrice
            balanceOf[msg.sender] += 1000 * msg.value / tokenPrice
            emit 0x9cddf252: (1000 * msg.value / tokenPrice), this.address, msg.sender
            if stor21 > 3:
                if address.length <= 0:
                    stor13[address(msg.sender)] = msg.sender
                    address.length++
                    if not address.length <= address.length + 1:
                        idx = address.length + 1
                        while address.length > idx:
                            uint256(address[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(address[address.length]) = msg.sender
                else:
                    if stor13[address(msg.sender)] != msg.sender:
                        stor13[address(msg.sender)] = msg.sender
                        address.length++
                        if not address.length <= address.length + 1:
                            idx = address.length + 1
                            while address.length > idx:
                                uint256(address[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(address[address.length]) = msg.sender
            else:
                if 1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100 <= 0:
                    if address.length <= 0:
                        stor13[address(msg.sender)] = msg.sender
                        address.length++
                        if not address.length <= address.length + 1:
                            idx = address.length + 1
                            while address.length > idx:
                                uint256(address[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(address[address.length]) = msg.sender
                    else:
                        if stor13[address(msg.sender)] != msg.sender:
                            stor13[address(msg.sender)] = msg.sender
                            address.length++
                            if not address.length <= address.length + 1:
                                idx = address.length + 1
                                while address.length > idx:
                                    uint256(address[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(address[address.length]) = msg.sender
                else:
                    if balanceOf[stor14] - (1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100) < 0:
                        if address.length <= 0:
                            stor13[address(msg.sender)] = msg.sender
                            address.length++
                            if not address.length <= address.length + 1:
                                idx = address.length + 1
                                while address.length > idx:
                                    uint256(address[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(address[address.length]) = msg.sender
                        else:
                            if stor13[address(msg.sender)] != msg.sender:
                                stor13[address(msg.sender)] = msg.sender
                                address.length++
                                if not address.length <= address.length + 1:
                                    idx = address.length + 1
                                    while address.length > idx:
                                        uint256(address[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                address(address[address.length]) = msg.sender
                    else:
                        if sentBonus + (1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100) <= sentBonus:
                            if address.length <= 0:
                                stor13[address(msg.sender)] = msg.sender
                                address.length++
                                if not address.length <= address.length + 1:
                                    idx = address.length + 1
                                    while address.length > idx:
                                        uint256(address[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                address(address[address.length]) = msg.sender
                            else:
                                if stor13[address(msg.sender)] != msg.sender:
                                    stor13[address(msg.sender)] = msg.sender
                                    address.length++
                                    if not address.length <= address.length + 1:
                                        idx = address.length + 1
                                        while address.length > idx:
                                            uint256(address[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(address[address.length]) = msg.sender
                        else:
                            if sentBonus + (1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100) > stor2:
                                if address.length <= 0:
                                    stor13[address(msg.sender)] = msg.sender
                                    address.length++
                                    if not address.length <= address.length + 1:
                                        idx = address.length + 1
                                        while address.length > idx:
                                            uint256(address[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(address[address.length]) = msg.sender
                                else:
                                    if stor13[address(msg.sender)] != msg.sender:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
                            else:
                                if balanceOf[address(msg.sender)] + (1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100) > balanceOf[address(msg.sender)]:
                                    balanceOf[stor14] -= 1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100
                                    sentBonus += 1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100
                                    balanceOf[msg.sender] += 1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100
                                    emit 0x9cddf252: (1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100), stor14, msg.sender
                                if address.length <= 0:
                                    stor13[address(msg.sender)] = msg.sender
                                    address.length++
                                    if not address.length <= address.length + 1:
                                        idx = address.length + 1
                                        while address.length > idx:
                                            uint256(address[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(address[address.length]) = msg.sender
                                else:
                                    if stor13[address(msg.sender)] != msg.sender:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
        else:
            if 1000 * msg.value / tokenPrice < 50000:
                emit Log((1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100));
                emit Log((1000 * msg.value / tokenPrice));
                require 1000 * msg.value / tokenPrice > 0
                require balanceOf[address(this.address)] >= 1000 * msg.value / tokenPrice
                require balanceOf[address(this.address)] - (1000 * msg.value / tokenPrice) >= 0
                require soldToken + (1000 * msg.value / tokenPrice) > soldToken
                require saleCounter + (1000 * msg.value / tokenPrice) <= limitedSale
                require balanceOf[address(msg.sender)] + (1000 * msg.value / tokenPrice) > balanceOf[address(msg.sender)]
                balanceOf[address(this.address)] -= 1000 * msg.value / tokenPrice
                soldToken += 1000 * msg.value / tokenPrice
                saleCounter += 1000 * msg.value / tokenPrice
                balanceOf[msg.sender] += 1000 * msg.value / tokenPrice
                emit 0x9cddf252: (1000 * msg.value / tokenPrice), this.address, msg.sender
                if stor21 > 3:
                    if address.length <= 0:
                        stor13[address(msg.sender)] = msg.sender
                        address.length++
                        if not address.length <= address.length + 1:
                            idx = address.length + 1
                            while address.length > idx:
                                uint256(address[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(address[address.length]) = msg.sender
                    else:
                        if stor13[address(msg.sender)] != msg.sender:
                            stor13[address(msg.sender)] = msg.sender
                            address.length++
                            if not address.length <= address.length + 1:
                                idx = address.length + 1
                                while address.length > idx:
                                    uint256(address[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(address[address.length]) = msg.sender
                else:
                    if 1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100 <= 0:
                        if address.length <= 0:
                            stor13[address(msg.sender)] = msg.sender
                            address.length++
                            if not address.length <= address.length + 1:
                                idx = address.length + 1
                                while address.length > idx:
                                    uint256(address[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(address[address.length]) = msg.sender
                        else:
                            if stor13[address(msg.sender)] != msg.sender:
                                stor13[address(msg.sender)] = msg.sender
                                address.length++
                                if not address.length <= address.length + 1:
                                    idx = address.length + 1
                                    while address.length > idx:
                                        uint256(address[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                address(address[address.length]) = msg.sender
                    else:
                        if balanceOf[stor14] - (1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100) < 0:
                            if address.length <= 0:
                                stor13[address(msg.sender)] = msg.sender
                                address.length++
                                if not address.length <= address.length + 1:
                                    idx = address.length + 1
                                    while address.length > idx:
                                        uint256(address[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                address(address[address.length]) = msg.sender
                            else:
                                if stor13[address(msg.sender)] != msg.sender:
                                    stor13[address(msg.sender)] = msg.sender
                                    address.length++
                                    if not address.length <= address.length + 1:
                                        idx = address.length + 1
                                        while address.length > idx:
                                            uint256(address[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(address[address.length]) = msg.sender
                        else:
                            if sentBonus + (1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100) <= sentBonus:
                                if address.length <= 0:
                                    stor13[address(msg.sender)] = msg.sender
                                    address.length++
                                    if not address.length <= address.length + 1:
                                        idx = address.length + 1
                                        while address.length > idx:
                                            uint256(address[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(address[address.length]) = msg.sender
                                else:
                                    if stor13[address(msg.sender)] != msg.sender:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
                            else:
                                if sentBonus + (1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100) > stor2:
                                    if address.length <= 0:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
                                    else:
                                        if stor13[address(msg.sender)] != msg.sender:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
                                else:
                                    if balanceOf[address(msg.sender)] + (1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100) > balanceOf[address(msg.sender)]:
                                        balanceOf[stor14] -= 1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100
                                        sentBonus += 1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100
                                        balanceOf[msg.sender] += 1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100
                                        emit 0x9cddf252: (1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100), stor14, msg.sender
                                    if address.length <= 0:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
                                    else:
                                        if stor13[address(msg.sender)] != msg.sender:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
            else:
                if 1000 * msg.value / tokenPrice >= 100000:
                    emit Log((1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100));
                    emit Log((1000 * msg.value / tokenPrice));
                    require 1000 * msg.value / tokenPrice > 0
                    require balanceOf[address(this.address)] >= 1000 * msg.value / tokenPrice
                    require balanceOf[address(this.address)] - (1000 * msg.value / tokenPrice) >= 0
                    require soldToken + (1000 * msg.value / tokenPrice) > soldToken
                    require saleCounter + (1000 * msg.value / tokenPrice) <= limitedSale
                    require balanceOf[address(msg.sender)] + (1000 * msg.value / tokenPrice) > balanceOf[address(msg.sender)]
                    balanceOf[address(this.address)] -= 1000 * msg.value / tokenPrice
                    soldToken += 1000 * msg.value / tokenPrice
                    saleCounter += 1000 * msg.value / tokenPrice
                    balanceOf[msg.sender] += 1000 * msg.value / tokenPrice
                    emit 0x9cddf252: (1000 * msg.value / tokenPrice), this.address, msg.sender
                    if stor21 > 3:
                        if address.length <= 0:
                            stor13[address(msg.sender)] = msg.sender
                            address.length++
                            if not address.length <= address.length + 1:
                                idx = address.length + 1
                                while address.length > idx:
                                    uint256(address[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(address[address.length]) = msg.sender
                        else:
                            if stor13[address(msg.sender)] != msg.sender:
                                stor13[address(msg.sender)] = msg.sender
                                address.length++
                                if not address.length <= address.length + 1:
                                    idx = address.length + 1
                                    while address.length > idx:
                                        uint256(address[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                address(address[address.length]) = msg.sender
                    else:
                        if 1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100 <= 0:
                            if address.length <= 0:
                                stor13[address(msg.sender)] = msg.sender
                                address.length++
                                if not address.length <= address.length + 1:
                                    idx = address.length + 1
                                    while address.length > idx:
                                        uint256(address[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                address(address[address.length]) = msg.sender
                            else:
                                if stor13[address(msg.sender)] != msg.sender:
                                    stor13[address(msg.sender)] = msg.sender
                                    address.length++
                                    if not address.length <= address.length + 1:
                                        idx = address.length + 1
                                        while address.length > idx:
                                            uint256(address[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(address[address.length]) = msg.sender
                        else:
                            if balanceOf[stor14] - (1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100) < 0:
                                if address.length <= 0:
                                    stor13[address(msg.sender)] = msg.sender
                                    address.length++
                                    if not address.length <= address.length + 1:
                                        idx = address.length + 1
                                        while address.length > idx:
                                            uint256(address[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(address[address.length]) = msg.sender
                                else:
                                    if stor13[address(msg.sender)] != msg.sender:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
                            else:
                                if sentBonus + (1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100) <= sentBonus:
                                    if address.length <= 0:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
                                    else:
                                        if stor13[address(msg.sender)] != msg.sender:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
                                else:
                                    if sentBonus + (1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100) > stor2:
                                        if address.length <= 0:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
                                        else:
                                            if stor13[address(msg.sender)] != msg.sender:
                                                stor13[address(msg.sender)] = msg.sender
                                                address.length++
                                                if not address.length <= address.length + 1:
                                                    idx = address.length + 1
                                                    while address.length > idx:
                                                        uint256(address[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(address[address.length]) = msg.sender
                                    else:
                                        if balanceOf[address(msg.sender)] + (1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100) > balanceOf[address(msg.sender)]:
                                            balanceOf[stor14] -= 1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100
                                            sentBonus += 1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100
                                            balanceOf[msg.sender] += 1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100
                                            emit 0x9cddf252: (1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100), stor14, msg.sender
                                        if address.length <= 0:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
                                        else:
                                            if stor13[address(msg.sender)] != msg.sender:
                                                stor13[address(msg.sender)] = msg.sender
                                                address.length++
                                                if not address.length <= address.length + 1:
                                                    idx = address.length + 1
                                                    while address.length > idx:
                                                        uint256(address[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(address[address.length]) = msg.sender
                else:
                    emit Log((1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100));
                    emit Log((1000 * msg.value / tokenPrice));
                    require 1000 * msg.value / tokenPrice > 0
                    require balanceOf[address(this.address)] >= 1000 * msg.value / tokenPrice
                    require balanceOf[address(this.address)] - (1000 * msg.value / tokenPrice) >= 0
                    require soldToken + (1000 * msg.value / tokenPrice) > soldToken
                    require saleCounter + (1000 * msg.value / tokenPrice) <= limitedSale
                    require balanceOf[address(msg.sender)] + (1000 * msg.value / tokenPrice) > balanceOf[address(msg.sender)]
                    balanceOf[address(this.address)] -= 1000 * msg.value / tokenPrice
                    soldToken += 1000 * msg.value / tokenPrice
                    saleCounter += 1000 * msg.value / tokenPrice
                    balanceOf[msg.sender] += 1000 * msg.value / tokenPrice
                    emit 0x9cddf252: (1000 * msg.value / tokenPrice), this.address, msg.sender
                    if stor21 > 3:
                        if address.length <= 0:
                            stor13[address(msg.sender)] = msg.sender
                            address.length++
                            if not address.length <= address.length + 1:
                                idx = address.length + 1
                                while address.length > idx:
                                    uint256(address[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(address[address.length]) = msg.sender
                        else:
                            if stor13[address(msg.sender)] != msg.sender:
                                stor13[address(msg.sender)] = msg.sender
                                address.length++
                                if not address.length <= address.length + 1:
                                    idx = address.length + 1
                                    while address.length > idx:
                                        uint256(address[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                address(address[address.length]) = msg.sender
                    else:
                        if 1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100 <= 0:
                            if address.length <= 0:
                                stor13[address(msg.sender)] = msg.sender
                                address.length++
                                if not address.length <= address.length + 1:
                                    idx = address.length + 1
                                    while address.length > idx:
                                        uint256(address[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                address(address[address.length]) = msg.sender
                            else:
                                if stor13[address(msg.sender)] != msg.sender:
                                    stor13[address(msg.sender)] = msg.sender
                                    address.length++
                                    if not address.length <= address.length + 1:
                                        idx = address.length + 1
                                        while address.length > idx:
                                            uint256(address[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(address[address.length]) = msg.sender
                        else:
                            if balanceOf[stor14] - (1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100) < 0:
                                if address.length <= 0:
                                    stor13[address(msg.sender)] = msg.sender
                                    address.length++
                                    if not address.length <= address.length + 1:
                                        idx = address.length + 1
                                        while address.length > idx:
                                            uint256(address[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(address[address.length]) = msg.sender
                                else:
                                    if stor13[address(msg.sender)] != msg.sender:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
                            else:
                                if sentBonus + (1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100) <= sentBonus:
                                    if address.length <= 0:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
                                    else:
                                        if stor13[address(msg.sender)] != msg.sender:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
                                else:
                                    if sentBonus + (1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100) > stor2:
                                        if address.length <= 0:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
                                        else:
                                            if stor13[address(msg.sender)] != msg.sender:
                                                stor13[address(msg.sender)] = msg.sender
                                                address.length++
                                                if not address.length <= address.length + 1:
                                                    idx = address.length + 1
                                                    while address.length > idx:
                                                        uint256(address[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(address[address.length]) = msg.sender
                                    else:
                                        if balanceOf[address(msg.sender)] + (1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100) > balanceOf[address(msg.sender)]:
                                            balanceOf[stor14] -= 1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100
                                            sentBonus += 1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100
                                            balanceOf[msg.sender] += 1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100
                                            emit 0x9cddf252: (1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100), stor14, msg.sender
                                        if address.length <= 0:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
                                        else:
                                            if stor13[address(msg.sender)] != msg.sender:
                                                stor13[address(msg.sender)] = msg.sender
                                                address.length++
                                                if not address.length <= address.length + 1:
                                                    idx = address.length + 1
                                                    while address.length > idx:
                                                        uint256(address[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(address[address.length]) = msg.sender
    else:
        if 2 == stor21:
            if 1000 * msg.value / tokenPrice < 10000:
                emit Log((1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100));
                emit Log((1000 * msg.value / tokenPrice));
                require 1000 * msg.value / tokenPrice > 0
                require balanceOf[address(this.address)] >= 1000 * msg.value / tokenPrice
                require balanceOf[address(this.address)] - (1000 * msg.value / tokenPrice) >= 0
                require soldToken + (1000 * msg.value / tokenPrice) > soldToken
                require saleCounter + (1000 * msg.value / tokenPrice) <= limitedSale
                require balanceOf[address(msg.sender)] + (1000 * msg.value / tokenPrice) > balanceOf[address(msg.sender)]
                balanceOf[address(this.address)] -= 1000 * msg.value / tokenPrice
                soldToken += 1000 * msg.value / tokenPrice
                saleCounter += 1000 * msg.value / tokenPrice
                balanceOf[msg.sender] += 1000 * msg.value / tokenPrice
                emit 0x9cddf252: (1000 * msg.value / tokenPrice), this.address, msg.sender
                if stor21 > 3:
                    if address.length <= 0:
                        stor13[address(msg.sender)] = msg.sender
                        address.length++
                        if not address.length <= address.length + 1:
                            idx = address.length + 1
                            while address.length > idx:
                                uint256(address[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(address[address.length]) = msg.sender
                    else:
                        if stor13[address(msg.sender)] != msg.sender:
                            stor13[address(msg.sender)] = msg.sender
                            address.length++
                            if not address.length <= address.length + 1:
                                idx = address.length + 1
                                while address.length > idx:
                                    uint256(address[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(address[address.length]) = msg.sender
                else:
                    if 1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100 <= 0:
                        if address.length <= 0:
                            stor13[address(msg.sender)] = msg.sender
                            address.length++
                            if not address.length <= address.length + 1:
                                idx = address.length + 1
                                while address.length > idx:
                                    uint256(address[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(address[address.length]) = msg.sender
                        else:
                            if stor13[address(msg.sender)] != msg.sender:
                                stor13[address(msg.sender)] = msg.sender
                                address.length++
                                if not address.length <= address.length + 1:
                                    idx = address.length + 1
                                    while address.length > idx:
                                        uint256(address[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                address(address[address.length]) = msg.sender
                    else:
                        if balanceOf[stor14] - (1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100) < 0:
                            if address.length <= 0:
                                stor13[address(msg.sender)] = msg.sender
                                address.length++
                                if not address.length <= address.length + 1:
                                    idx = address.length + 1
                                    while address.length > idx:
                                        uint256(address[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                address(address[address.length]) = msg.sender
                            else:
                                if stor13[address(msg.sender)] != msg.sender:
                                    stor13[address(msg.sender)] = msg.sender
                                    address.length++
                                    if not address.length <= address.length + 1:
                                        idx = address.length + 1
                                        while address.length > idx:
                                            uint256(address[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(address[address.length]) = msg.sender
                        else:
                            if sentBonus + (1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100) <= sentBonus:
                                if address.length <= 0:
                                    stor13[address(msg.sender)] = msg.sender
                                    address.length++
                                    if not address.length <= address.length + 1:
                                        idx = address.length + 1
                                        while address.length > idx:
                                            uint256(address[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(address[address.length]) = msg.sender
                                else:
                                    if stor13[address(msg.sender)] != msg.sender:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
                            else:
                                if sentBonus + (1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100) > stor2:
                                    if address.length <= 0:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
                                    else:
                                        if stor13[address(msg.sender)] != msg.sender:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
                                else:
                                    if balanceOf[address(msg.sender)] + (1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100) > balanceOf[address(msg.sender)]:
                                        balanceOf[stor14] -= 1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100
                                        sentBonus += 1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100
                                        balanceOf[msg.sender] += 1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100
                                        emit 0x9cddf252: (1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100), stor14, msg.sender
                                    if address.length <= 0:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
                                    else:
                                        if stor13[address(msg.sender)] != msg.sender:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
            else:
                if 1000 * msg.value / tokenPrice < 50000:
                    emit Log((1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100));
                    emit Log((1000 * msg.value / tokenPrice));
                    require 1000 * msg.value / tokenPrice > 0
                    require balanceOf[address(this.address)] >= 1000 * msg.value / tokenPrice
                    require balanceOf[address(this.address)] - (1000 * msg.value / tokenPrice) >= 0
                    require soldToken + (1000 * msg.value / tokenPrice) > soldToken
                    require saleCounter + (1000 * msg.value / tokenPrice) <= limitedSale
                    require balanceOf[address(msg.sender)] + (1000 * msg.value / tokenPrice) > balanceOf[address(msg.sender)]
                    balanceOf[address(this.address)] -= 1000 * msg.value / tokenPrice
                    soldToken += 1000 * msg.value / tokenPrice
                    saleCounter += 1000 * msg.value / tokenPrice
                    balanceOf[msg.sender] += 1000 * msg.value / tokenPrice
                    emit 0x9cddf252: (1000 * msg.value / tokenPrice), this.address, msg.sender
                    if stor21 > 3:
                        if address.length <= 0:
                            stor13[address(msg.sender)] = msg.sender
                            address.length++
                            if not address.length <= address.length + 1:
                                idx = address.length + 1
                                while address.length > idx:
                                    uint256(address[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(address[address.length]) = msg.sender
                        else:
                            if stor13[address(msg.sender)] != msg.sender:
                                stor13[address(msg.sender)] = msg.sender
                                address.length++
                                if not address.length <= address.length + 1:
                                    idx = address.length + 1
                                    while address.length > idx:
                                        uint256(address[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                address(address[address.length]) = msg.sender
                    else:
                        if 1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100 <= 0:
                            if address.length <= 0:
                                stor13[address(msg.sender)] = msg.sender
                                address.length++
                                if not address.length <= address.length + 1:
                                    idx = address.length + 1
                                    while address.length > idx:
                                        uint256(address[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                address(address[address.length]) = msg.sender
                            else:
                                if stor13[address(msg.sender)] != msg.sender:
                                    stor13[address(msg.sender)] = msg.sender
                                    address.length++
                                    if not address.length <= address.length + 1:
                                        idx = address.length + 1
                                        while address.length > idx:
                                            uint256(address[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(address[address.length]) = msg.sender
                        else:
                            if balanceOf[stor14] - (1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100) < 0:
                                if address.length <= 0:
                                    stor13[address(msg.sender)] = msg.sender
                                    address.length++
                                    if not address.length <= address.length + 1:
                                        idx = address.length + 1
                                        while address.length > idx:
                                            uint256(address[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(address[address.length]) = msg.sender
                                else:
                                    if stor13[address(msg.sender)] != msg.sender:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
                            else:
                                if sentBonus + (1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100) <= sentBonus:
                                    if address.length <= 0:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
                                    else:
                                        if stor13[address(msg.sender)] != msg.sender:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
                                else:
                                    if sentBonus + (1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100) > stor2:
                                        if address.length <= 0:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
                                        else:
                                            if stor13[address(msg.sender)] != msg.sender:
                                                stor13[address(msg.sender)] = msg.sender
                                                address.length++
                                                if not address.length <= address.length + 1:
                                                    idx = address.length + 1
                                                    while address.length > idx:
                                                        uint256(address[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(address[address.length]) = msg.sender
                                    else:
                                        if balanceOf[address(msg.sender)] + (1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100) > balanceOf[address(msg.sender)]:
                                            balanceOf[stor14] -= 1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100
                                            sentBonus += 1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100
                                            balanceOf[msg.sender] += 1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100
                                            emit 0x9cddf252: (1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100), stor14, msg.sender
                                        if address.length <= 0:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
                                        else:
                                            if stor13[address(msg.sender)] != msg.sender:
                                                stor13[address(msg.sender)] = msg.sender
                                                address.length++
                                                if not address.length <= address.length + 1:
                                                    idx = address.length + 1
                                                    while address.length > idx:
                                                        uint256(address[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(address[address.length]) = msg.sender
                else:
                    if 1000 * msg.value / tokenPrice >= 100000:
                        emit Log((1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100));
                        emit Log((1000 * msg.value / tokenPrice));
                        require 1000 * msg.value / tokenPrice > 0
                        require balanceOf[address(this.address)] >= 1000 * msg.value / tokenPrice
                        require balanceOf[address(this.address)] - (1000 * msg.value / tokenPrice) >= 0
                        require soldToken + (1000 * msg.value / tokenPrice) > soldToken
                        require saleCounter + (1000 * msg.value / tokenPrice) <= limitedSale
                        require balanceOf[address(msg.sender)] + (1000 * msg.value / tokenPrice) > balanceOf[address(msg.sender)]
                        balanceOf[address(this.address)] -= 1000 * msg.value / tokenPrice
                        soldToken += 1000 * msg.value / tokenPrice
                        saleCounter += 1000 * msg.value / tokenPrice
                        balanceOf[msg.sender] += 1000 * msg.value / tokenPrice
                        emit 0x9cddf252: (1000 * msg.value / tokenPrice), this.address, msg.sender
                        if stor21 > 3:
                            if address.length <= 0:
                                stor13[address(msg.sender)] = msg.sender
                                address.length++
                                if not address.length <= address.length + 1:
                                    idx = address.length + 1
                                    while address.length > idx:
                                        uint256(address[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                address(address[address.length]) = msg.sender
                            else:
                                if stor13[address(msg.sender)] != msg.sender:
                                    stor13[address(msg.sender)] = msg.sender
                                    address.length++
                                    if not address.length <= address.length + 1:
                                        idx = address.length + 1
                                        while address.length > idx:
                                            uint256(address[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(address[address.length]) = msg.sender
                        else:
                            if 1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100 <= 0:
                                if address.length <= 0:
                                    stor13[address(msg.sender)] = msg.sender
                                    address.length++
                                    if not address.length <= address.length + 1:
                                        idx = address.length + 1
                                        while address.length > idx:
                                            uint256(address[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(address[address.length]) = msg.sender
                                else:
                                    if stor13[address(msg.sender)] != msg.sender:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
                            else:
                                if balanceOf[stor14] - (1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100) < 0:
                                    if address.length <= 0:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
                                    else:
                                        if stor13[address(msg.sender)] != msg.sender:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
                                else:
                                    if sentBonus + (1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100) <= sentBonus:
                                        if address.length <= 0:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
                                        else:
                                            if stor13[address(msg.sender)] != msg.sender:
                                                stor13[address(msg.sender)] = msg.sender
                                                address.length++
                                                if not address.length <= address.length + 1:
                                                    idx = address.length + 1
                                                    while address.length > idx:
                                                        uint256(address[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(address[address.length]) = msg.sender
                                    else:
                                        if sentBonus + (1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100) > stor2:
                                            if address.length <= 0:
                                                stor13[address(msg.sender)] = msg.sender
                                                address.length++
                                                if not address.length <= address.length + 1:
                                                    idx = address.length + 1
                                                    while address.length > idx:
                                                        uint256(address[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(address[address.length]) = msg.sender
                                            else:
                                                if stor13[address(msg.sender)] != msg.sender:
                                                    stor13[address(msg.sender)] = msg.sender
                                                    address.length++
                                                    if not address.length <= address.length + 1:
                                                        idx = address.length + 1
                                                        while address.length > idx:
                                                            uint256(address[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    address(address[address.length]) = msg.sender
                                        else:
                                            if balanceOf[address(msg.sender)] + (1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100) > balanceOf[address(msg.sender)]:
                                                balanceOf[stor14] -= 1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100
                                                sentBonus += 1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100
                                                balanceOf[msg.sender] += 1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100
                                                emit 0x9cddf252: (1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100), stor14, msg.sender
                                            if address.length <= 0:
                                                stor13[address(msg.sender)] = msg.sender
                                                address.length++
                                                if not address.length <= address.length + 1:
                                                    idx = address.length + 1
                                                    while address.length > idx:
                                                        uint256(address[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(address[address.length]) = msg.sender
                                            else:
                                                if stor13[address(msg.sender)] != msg.sender:
                                                    stor13[address(msg.sender)] = msg.sender
                                                    address.length++
                                                    if not address.length <= address.length + 1:
                                                        idx = address.length + 1
                                                        while address.length > idx:
                                                            uint256(address[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    address(address[address.length]) = msg.sender
                    else:
                        emit Log((1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100));
                        emit Log((1000 * msg.value / tokenPrice));
                        require 1000 * msg.value / tokenPrice > 0
                        require balanceOf[address(this.address)] >= 1000 * msg.value / tokenPrice
                        require balanceOf[address(this.address)] - (1000 * msg.value / tokenPrice) >= 0
                        require soldToken + (1000 * msg.value / tokenPrice) > soldToken
                        require saleCounter + (1000 * msg.value / tokenPrice) <= limitedSale
                        require balanceOf[address(msg.sender)] + (1000 * msg.value / tokenPrice) > balanceOf[address(msg.sender)]
                        balanceOf[address(this.address)] -= 1000 * msg.value / tokenPrice
                        soldToken += 1000 * msg.value / tokenPrice
                        saleCounter += 1000 * msg.value / tokenPrice
                        balanceOf[msg.sender] += 1000 * msg.value / tokenPrice
                        emit 0x9cddf252: (1000 * msg.value / tokenPrice), this.address, msg.sender
                        if stor21 > 3:
                            if address.length <= 0:
                                stor13[address(msg.sender)] = msg.sender
                                address.length++
                                if not address.length <= address.length + 1:
                                    idx = address.length + 1
                                    while address.length > idx:
                                        uint256(address[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                address(address[address.length]) = msg.sender
                            else:
                                if stor13[address(msg.sender)] != msg.sender:
                                    stor13[address(msg.sender)] = msg.sender
                                    address.length++
                                    if not address.length <= address.length + 1:
                                        idx = address.length + 1
                                        while address.length > idx:
                                            uint256(address[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(address[address.length]) = msg.sender
                        else:
                            if 1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100 <= 0:
                                if address.length <= 0:
                                    stor13[address(msg.sender)] = msg.sender
                                    address.length++
                                    if not address.length <= address.length + 1:
                                        idx = address.length + 1
                                        while address.length > idx:
                                            uint256(address[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(address[address.length]) = msg.sender
                                else:
                                    if stor13[address(msg.sender)] != msg.sender:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
                            else:
                                if balanceOf[stor14] - (1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100) < 0:
                                    if address.length <= 0:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
                                    else:
                                        if stor13[address(msg.sender)] != msg.sender:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
                                else:
                                    if sentBonus + (1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100) <= sentBonus:
                                        if address.length <= 0:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
                                        else:
                                            if stor13[address(msg.sender)] != msg.sender:
                                                stor13[address(msg.sender)] = msg.sender
                                                address.length++
                                                if not address.length <= address.length + 1:
                                                    idx = address.length + 1
                                                    while address.length > idx:
                                                        uint256(address[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(address[address.length]) = msg.sender
                                    else:
                                        if sentBonus + (1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100) > stor2:
                                            if address.length <= 0:
                                                stor13[address(msg.sender)] = msg.sender
                                                address.length++
                                                if not address.length <= address.length + 1:
                                                    idx = address.length + 1
                                                    while address.length > idx:
                                                        uint256(address[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(address[address.length]) = msg.sender
                                            else:
                                                if stor13[address(msg.sender)] != msg.sender:
                                                    stor13[address(msg.sender)] = msg.sender
                                                    address.length++
                                                    if not address.length <= address.length + 1:
                                                        idx = address.length + 1
                                                        while address.length > idx:
                                                            uint256(address[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    address(address[address.length]) = msg.sender
                                        else:
                                            if balanceOf[address(msg.sender)] + (1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100) > balanceOf[address(msg.sender)]:
                                                balanceOf[stor14] -= 1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100
                                                sentBonus += 1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100
                                                balanceOf[msg.sender] += 1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100
                                                emit 0x9cddf252: (1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100), stor14, msg.sender
                                            if address.length <= 0:
                                                stor13[address(msg.sender)] = msg.sender
                                                address.length++
                                                if not address.length <= address.length + 1:
                                                    idx = address.length + 1
                                                    while address.length > idx:
                                                        uint256(address[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(address[address.length]) = msg.sender
                                            else:
                                                if stor13[address(msg.sender)] != msg.sender:
                                                    stor13[address(msg.sender)] = msg.sender
                                                    address.length++
                                                    if not address.length <= address.length + 1:
                                                        idx = address.length + 1
                                                        while address.length > idx:
                                                            uint256(address[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    address(address[address.length]) = msg.sender
        else:
            if stor21 != 3:
                emit Log((1000 * msg.value / tokenPrice));
                require 1000 * msg.value / tokenPrice > 0
                require balanceOf[address(this.address)] >= 1000 * msg.value / tokenPrice
                require balanceOf[address(this.address)] - (1000 * msg.value / tokenPrice) >= 0
                require soldToken + (1000 * msg.value / tokenPrice) > soldToken
                require saleCounter + (1000 * msg.value / tokenPrice) <= limitedSale
                require balanceOf[address(msg.sender)] + (1000 * msg.value / tokenPrice) > balanceOf[address(msg.sender)]
                balanceOf[address(this.address)] -= 1000 * msg.value / tokenPrice
                soldToken += 1000 * msg.value / tokenPrice
                saleCounter += 1000 * msg.value / tokenPrice
                balanceOf[msg.sender] += 1000 * msg.value / tokenPrice
                emit 0x9cddf252: (1000 * msg.value / tokenPrice), this.address, msg.sender
                if address.length <= 0:
                    stor13[address(msg.sender)] = msg.sender
                    address.length++
                    if not address.length <= address.length + 1:
                        idx = address.length + 1
                        while address.length > idx:
                            uint256(address[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(address[address.length]) = msg.sender
                else:
                    if stor13[address(msg.sender)] != msg.sender:
                        stor13[address(msg.sender)] = msg.sender
                        address.length++
                        if not address.length <= address.length + 1:
                            idx = address.length + 1
                            while address.length > idx:
                                uint256(address[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(address[address.length]) = msg.sender
            else:
                if 1000 * msg.value / tokenPrice < 10000:
                    emit Log((1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100));
                    emit Log((1000 * msg.value / tokenPrice));
                    require 1000 * msg.value / tokenPrice > 0
                    require balanceOf[address(this.address)] >= 1000 * msg.value / tokenPrice
                    require balanceOf[address(this.address)] - (1000 * msg.value / tokenPrice) >= 0
                    require soldToken + (1000 * msg.value / tokenPrice) > soldToken
                    require saleCounter + (1000 * msg.value / tokenPrice) <= limitedSale
                    require balanceOf[address(msg.sender)] + (1000 * msg.value / tokenPrice) > balanceOf[address(msg.sender)]
                    balanceOf[address(this.address)] -= 1000 * msg.value / tokenPrice
                    soldToken += 1000 * msg.value / tokenPrice
                    saleCounter += 1000 * msg.value / tokenPrice
                    balanceOf[msg.sender] += 1000 * msg.value / tokenPrice
                    emit 0x9cddf252: (1000 * msg.value / tokenPrice), this.address, msg.sender
                    if stor21 > 3:
                        if address.length <= 0:
                            stor13[address(msg.sender)] = msg.sender
                            address.length++
                            if not address.length <= address.length + 1:
                                idx = address.length + 1
                                while address.length > idx:
                                    uint256(address[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(address[address.length]) = msg.sender
                        else:
                            if stor13[address(msg.sender)] != msg.sender:
                                stor13[address(msg.sender)] = msg.sender
                                address.length++
                                if not address.length <= address.length + 1:
                                    idx = address.length + 1
                                    while address.length > idx:
                                        uint256(address[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                address(address[address.length]) = msg.sender
                    else:
                        if 1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100 <= 0:
                            if address.length <= 0:
                                stor13[address(msg.sender)] = msg.sender
                                address.length++
                                if not address.length <= address.length + 1:
                                    idx = address.length + 1
                                    while address.length > idx:
                                        uint256(address[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                address(address[address.length]) = msg.sender
                            else:
                                if stor13[address(msg.sender)] != msg.sender:
                                    stor13[address(msg.sender)] = msg.sender
                                    address.length++
                                    if not address.length <= address.length + 1:
                                        idx = address.length + 1
                                        while address.length > idx:
                                            uint256(address[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(address[address.length]) = msg.sender
                        else:
                            if balanceOf[stor14] - (1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100) < 0:
                                if address.length <= 0:
                                    stor13[address(msg.sender)] = msg.sender
                                    address.length++
                                    if not address.length <= address.length + 1:
                                        idx = address.length + 1
                                        while address.length > idx:
                                            uint256(address[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(address[address.length]) = msg.sender
                                else:
                                    if stor13[address(msg.sender)] != msg.sender:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
                            else:
                                if sentBonus + (1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100) <= sentBonus:
                                    if address.length <= 0:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
                                    else:
                                        if stor13[address(msg.sender)] != msg.sender:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
                                else:
                                    if sentBonus + (1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100) > stor2:
                                        if address.length <= 0:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
                                        else:
                                            if stor13[address(msg.sender)] != msg.sender:
                                                stor13[address(msg.sender)] = msg.sender
                                                address.length++
                                                if not address.length <= address.length + 1:
                                                    idx = address.length + 1
                                                    while address.length > idx:
                                                        uint256(address[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(address[address.length]) = msg.sender
                                    else:
                                        if balanceOf[address(msg.sender)] + (1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100) > balanceOf[address(msg.sender)]:
                                            balanceOf[stor14] -= 1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100
                                            sentBonus += 1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100
                                            balanceOf[msg.sender] += 1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100
                                            emit 0x9cddf252: (1000 * msg.value / tokenPrice * uint8(stor5.field_0) / 100), stor14, msg.sender
                                        if address.length <= 0:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
                                        else:
                                            if stor13[address(msg.sender)] != msg.sender:
                                                stor13[address(msg.sender)] = msg.sender
                                                address.length++
                                                if not address.length <= address.length + 1:
                                                    idx = address.length + 1
                                                    while address.length > idx:
                                                        uint256(address[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(address[address.length]) = msg.sender
                else:
                    if 1000 * msg.value / tokenPrice < 50000:
                        emit Log((1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100));
                        emit Log((1000 * msg.value / tokenPrice));
                        require 1000 * msg.value / tokenPrice > 0
                        require balanceOf[address(this.address)] >= 1000 * msg.value / tokenPrice
                        require balanceOf[address(this.address)] - (1000 * msg.value / tokenPrice) >= 0
                        require soldToken + (1000 * msg.value / tokenPrice) > soldToken
                        require saleCounter + (1000 * msg.value / tokenPrice) <= limitedSale
                        require balanceOf[address(msg.sender)] + (1000 * msg.value / tokenPrice) > balanceOf[address(msg.sender)]
                        balanceOf[address(this.address)] -= 1000 * msg.value / tokenPrice
                        soldToken += 1000 * msg.value / tokenPrice
                        saleCounter += 1000 * msg.value / tokenPrice
                        balanceOf[msg.sender] += 1000 * msg.value / tokenPrice
                        emit 0x9cddf252: (1000 * msg.value / tokenPrice), this.address, msg.sender
                        if stor21 > 3:
                            if address.length <= 0:
                                stor13[address(msg.sender)] = msg.sender
                                address.length++
                                if not address.length <= address.length + 1:
                                    idx = address.length + 1
                                    while address.length > idx:
                                        uint256(address[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                address(address[address.length]) = msg.sender
                            else:
                                if stor13[address(msg.sender)] != msg.sender:
                                    stor13[address(msg.sender)] = msg.sender
                                    address.length++
                                    if not address.length <= address.length + 1:
                                        idx = address.length + 1
                                        while address.length > idx:
                                            uint256(address[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(address[address.length]) = msg.sender
                        else:
                            if 1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100 <= 0:
                                if address.length <= 0:
                                    stor13[address(msg.sender)] = msg.sender
                                    address.length++
                                    if not address.length <= address.length + 1:
                                        idx = address.length + 1
                                        while address.length > idx:
                                            uint256(address[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(address[address.length]) = msg.sender
                                else:
                                    if stor13[address(msg.sender)] != msg.sender:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
                            else:
                                if balanceOf[stor14] - (1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100) < 0:
                                    if address.length <= 0:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
                                    else:
                                        if stor13[address(msg.sender)] != msg.sender:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
                                else:
                                    if sentBonus + (1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100) <= sentBonus:
                                        if address.length <= 0:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
                                        else:
                                            if stor13[address(msg.sender)] != msg.sender:
                                                stor13[address(msg.sender)] = msg.sender
                                                address.length++
                                                if not address.length <= address.length + 1:
                                                    idx = address.length + 1
                                                    while address.length > idx:
                                                        uint256(address[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(address[address.length]) = msg.sender
                                    else:
                                        if sentBonus + (1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100) > stor2:
                                            if address.length <= 0:
                                                stor13[address(msg.sender)] = msg.sender
                                                address.length++
                                                if not address.length <= address.length + 1:
                                                    idx = address.length + 1
                                                    while address.length > idx:
                                                        uint256(address[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(address[address.length]) = msg.sender
                                            else:
                                                if stor13[address(msg.sender)] != msg.sender:
                                                    stor13[address(msg.sender)] = msg.sender
                                                    address.length++
                                                    if not address.length <= address.length + 1:
                                                        idx = address.length + 1
                                                        while address.length > idx:
                                                            uint256(address[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    address(address[address.length]) = msg.sender
                                        else:
                                            if balanceOf[address(msg.sender)] + (1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100) > balanceOf[address(msg.sender)]:
                                                balanceOf[stor14] -= 1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100
                                                sentBonus += 1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100
                                                balanceOf[msg.sender] += 1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100
                                                emit 0x9cddf252: (1000 * msg.value / tokenPrice * uint8(stor5.field_8) / 100), stor14, msg.sender
                                            if address.length <= 0:
                                                stor13[address(msg.sender)] = msg.sender
                                                address.length++
                                                if not address.length <= address.length + 1:
                                                    idx = address.length + 1
                                                    while address.length > idx:
                                                        uint256(address[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(address[address.length]) = msg.sender
                                            else:
                                                if stor13[address(msg.sender)] != msg.sender:
                                                    stor13[address(msg.sender)] = msg.sender
                                                    address.length++
                                                    if not address.length <= address.length + 1:
                                                        idx = address.length + 1
                                                        while address.length > idx:
                                                            uint256(address[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    address(address[address.length]) = msg.sender
                    else:
                        if 1000 * msg.value / tokenPrice >= 100000:
                            emit Log((1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100));
                            emit Log((1000 * msg.value / tokenPrice));
                            require 1000 * msg.value / tokenPrice > 0
                            require balanceOf[address(this.address)] >= 1000 * msg.value / tokenPrice
                            require balanceOf[address(this.address)] - (1000 * msg.value / tokenPrice) >= 0
                            require soldToken + (1000 * msg.value / tokenPrice) > soldToken
                            require saleCounter + (1000 * msg.value / tokenPrice) <= limitedSale
                            require balanceOf[address(msg.sender)] + (1000 * msg.value / tokenPrice) > balanceOf[address(msg.sender)]
                            balanceOf[address(this.address)] -= 1000 * msg.value / tokenPrice
                            soldToken += 1000 * msg.value / tokenPrice
                            saleCounter += 1000 * msg.value / tokenPrice
                            balanceOf[msg.sender] += 1000 * msg.value / tokenPrice
                            emit 0x9cddf252: (1000 * msg.value / tokenPrice), this.address, msg.sender
                            if stor21 > 3:
                                if address.length <= 0:
                                    stor13[address(msg.sender)] = msg.sender
                                    address.length++
                                    if not address.length <= address.length + 1:
                                        idx = address.length + 1
                                        while address.length > idx:
                                            uint256(address[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(address[address.length]) = msg.sender
                                else:
                                    if stor13[address(msg.sender)] != msg.sender:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
                            else:
                                if 1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100 <= 0:
                                    if address.length <= 0:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
                                    else:
                                        if stor13[address(msg.sender)] != msg.sender:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
                                else:
                                    if balanceOf[stor14] - (1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100) < 0:
                                        if address.length <= 0:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
                                        else:
                                            if stor13[address(msg.sender)] != msg.sender:
                                                stor13[address(msg.sender)] = msg.sender
                                                address.length++
                                                if not address.length <= address.length + 1:
                                                    idx = address.length + 1
                                                    while address.length > idx:
                                                        uint256(address[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(address[address.length]) = msg.sender
                                    else:
                                        if sentBonus + (1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100) <= sentBonus:
                                            if address.length <= 0:
                                                stor13[address(msg.sender)] = msg.sender
                                                address.length++
                                                if not address.length <= address.length + 1:
                                                    idx = address.length + 1
                                                    while address.length > idx:
                                                        uint256(address[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(address[address.length]) = msg.sender
                                            else:
                                                if stor13[address(msg.sender)] != msg.sender:
                                                    stor13[address(msg.sender)] = msg.sender
                                                    address.length++
                                                    if not address.length <= address.length + 1:
                                                        idx = address.length + 1
                                                        while address.length > idx:
                                                            uint256(address[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    address(address[address.length]) = msg.sender
                                        else:
                                            if sentBonus + (1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100) > stor2:
                                                if address.length <= 0:
                                                    stor13[address(msg.sender)] = msg.sender
                                                    address.length++
                                                    if not address.length <= address.length + 1:
                                                        idx = address.length + 1
                                                        while address.length > idx:
                                                            uint256(address[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    address(address[address.length]) = msg.sender
                                                else:
                                                    if stor13[address(msg.sender)] != msg.sender:
                                                        stor13[address(msg.sender)] = msg.sender
                                                        address.length++
                                                        if not address.length <= address.length + 1:
                                                            idx = address.length + 1
                                                            while address.length > idx:
                                                                uint256(address[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        address(address[address.length]) = msg.sender
                                            else:
                                                if balanceOf[address(msg.sender)] + (1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100) > balanceOf[address(msg.sender)]:
                                                    balanceOf[stor14] -= 1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100
                                                    sentBonus += 1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100
                                                    balanceOf[msg.sender] += 1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100
                                                    emit 0x9cddf252: (1000 * msg.value / tokenPrice * uint8(stor5.field_24) / 100), stor14, msg.sender
                                                if address.length <= 0:
                                                    stor13[address(msg.sender)] = msg.sender
                                                    address.length++
                                                    if not address.length <= address.length + 1:
                                                        idx = address.length + 1
                                                        while address.length > idx:
                                                            uint256(address[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    address(address[address.length]) = msg.sender
                                                else:
                                                    if stor13[address(msg.sender)] != msg.sender:
                                                        stor13[address(msg.sender)] = msg.sender
                                                        address.length++
                                                        if not address.length <= address.length + 1:
                                                            idx = address.length + 1
                                                            while address.length > idx:
                                                                uint256(address[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        address(address[address.length]) = msg.sender
                        else:
                            emit Log((1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100));
                            emit Log((1000 * msg.value / tokenPrice));
                            require 1000 * msg.value / tokenPrice > 0
                            require balanceOf[address(this.address)] >= 1000 * msg.value / tokenPrice
                            require balanceOf[address(this.address)] - (1000 * msg.value / tokenPrice) >= 0
                            require soldToken + (1000 * msg.value / tokenPrice) > soldToken
                            require saleCounter + (1000 * msg.value / tokenPrice) <= limitedSale
                            require balanceOf[address(msg.sender)] + (1000 * msg.value / tokenPrice) > balanceOf[address(msg.sender)]
                            balanceOf[address(this.address)] -= 1000 * msg.value / tokenPrice
                            soldToken += 1000 * msg.value / tokenPrice
                            saleCounter += 1000 * msg.value / tokenPrice
                            balanceOf[msg.sender] += 1000 * msg.value / tokenPrice
                            emit 0x9cddf252: (1000 * msg.value / tokenPrice), this.address, msg.sender
                            if stor21 > 3:
                                if address.length <= 0:
                                    stor13[address(msg.sender)] = msg.sender
                                    address.length++
                                    if not address.length <= address.length + 1:
                                        idx = address.length + 1
                                        while address.length > idx:
                                            uint256(address[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(address[address.length]) = msg.sender
                                else:
                                    if stor13[address(msg.sender)] != msg.sender:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
                            else:
                                if 1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100 <= 0:
                                    if address.length <= 0:
                                        stor13[address(msg.sender)] = msg.sender
                                        address.length++
                                        if not address.length <= address.length + 1:
                                            idx = address.length + 1
                                            while address.length > idx:
                                                uint256(address[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(address[address.length]) = msg.sender
                                    else:
                                        if stor13[address(msg.sender)] != msg.sender:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
                                else:
                                    if balanceOf[stor14] - (1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100) < 0:
                                        if address.length <= 0:
                                            stor13[address(msg.sender)] = msg.sender
                                            address.length++
                                            if not address.length <= address.length + 1:
                                                idx = address.length + 1
                                                while address.length > idx:
                                                    uint256(address[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(address[address.length]) = msg.sender
                                        else:
                                            if stor13[address(msg.sender)] != msg.sender:
                                                stor13[address(msg.sender)] = msg.sender
                                                address.length++
                                                if not address.length <= address.length + 1:
                                                    idx = address.length + 1
                                                    while address.length > idx:
                                                        uint256(address[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(address[address.length]) = msg.sender
                                    else:
                                        if sentBonus + (1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100) <= sentBonus:
                                            if address.length <= 0:
                                                stor13[address(msg.sender)] = msg.sender
                                                address.length++
                                                if not address.length <= address.length + 1:
                                                    idx = address.length + 1
                                                    while address.length > idx:
                                                        uint256(address[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(address[address.length]) = msg.sender
                                            else:
                                                if stor13[address(msg.sender)] != msg.sender:
                                                    stor13[address(msg.sender)] = msg.sender
                                                    address.length++
                                                    if not address.length <= address.length + 1:
                                                        idx = address.length + 1
                                                        while address.length > idx:
                                                            uint256(address[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    address(address[address.length]) = msg.sender
                                        else:
                                            if sentBonus + (1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100) > stor2:
                                                if address.length <= 0:
                                                    stor13[address(msg.sender)] = msg.sender
                                                    address.length++
                                                    if not address.length <= address.length + 1:
                                                        idx = address.length + 1
                                                        while address.length > idx:
                                                            uint256(address[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    address(address[address.length]) = msg.sender
                                                else:
                                                    if stor13[address(msg.sender)] != msg.sender:
                                                        stor13[address(msg.sender)] = msg.sender
                                                        address.length++
                                                        if not address.length <= address.length + 1:
                                                            idx = address.length + 1
                                                            while address.length > idx:
                                                                uint256(address[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        address(address[address.length]) = msg.sender
                                            else:
                                                if balanceOf[address(msg.sender)] + (1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100) > balanceOf[address(msg.sender)]:
                                                    balanceOf[stor14] -= 1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100
                                                    sentBonus += 1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100
                                                    balanceOf[msg.sender] += 1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100
                                                    emit 0x9cddf252: (1000 * msg.value / tokenPrice * uint8(stor5.field_16) / 100), stor14, msg.sender
                                                if address.length <= 0:
                                                    stor13[address(msg.sender)] = msg.sender
                                                    address.length++
                                                    if not address.length <= address.length + 1:
                                                        idx = address.length + 1
                                                        while address.length > idx:
                                                            uint256(address[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    address(address[address.length]) = msg.sender
                                                else:
                                                    if stor13[address(msg.sender)] != msg.sender:
                                                        stor13[address(msg.sender)] = msg.sender
                                                        address.length++
                                                        if not address.length <= address.length + 1:
                                                            idx = address.length + 1
                                                            while address.length > idx:
                                                                uint256(address[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        address(address[address.length]) = msg.sender
}



}

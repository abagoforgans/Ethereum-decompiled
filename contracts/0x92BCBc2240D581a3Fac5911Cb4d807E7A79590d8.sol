contract main {


// =======================  Init code  ======================


array of uint256 stor0;
address stor3;
uint256 stor4;
uint256 stor1117;
uint256 stor1117;
uint256 stor1117;
uint256 stor1117;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 7
    stor0.length.field_8 = 'IPO 0.9' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor1117 = 10000
    require not msg.value
    stor1117 = stor1117
    stor4 = 10^17
    stor1117 = 1000
    stor1117 = 1000
    stor3 = msg.sender
    return code.data[414 len 12810]
}



// =====================  Runtime code  =====================


const name = 'Initial Pixel Offering'

const decimals = 0

const symbol = 'IPO'


array of uint256 standard;
mapping of uint256 balanceOf;
mapping of uint256 ethBalance;
address stor3;
uint256 ipo_price;
array of address stor5;
array of uint256 sectionPrice;
array of struct stor7;
array of uint256 stor8;
array of struct stor9;
array of uint256 stor10;
array of struct stor11;
uint256 pool;
uint256 mapWidth;
uint256 mapHeight;
uint256 totalSupply;

function pool() {
    return pool
}

function totalSupply() {
    return totalSupply
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function ipo_price() {
    return ipo_price
}

function mapWidth() {
    return mapWidth
}

function ethBalance(address arg1) {
    return ethBalance[arg1]
}

function sectionPrice(uint256 arg1) {
    require arg1 < 10000
    return sectionPrice[arg1]
}

function mapHeight() {
    return mapHeight
}

function _fallback() payable {
    revert
}

function deposit() payable {
    ethBalance[address(msg.sender)] += msg.value
}

function sectionAvailable(uint256 arg1) {
    require arg1 < 10000
    return not bool(uint8(stor7[arg1].field_8))
}

function updateIPOPrice(uint256 arg1) {
    require msg.sender == stor3
    ipo_price = arg1
    emit PriceUpdate(ipo_price);
}

function getIdentifierFromSectionIndex(uint256 arg1) {
    require arg1 <= mapWidth * mapHeight
    return arg1 % 100, arg1 - (arg1 % 100) / 100
}

function getSectionIndexFromRaw(uint256 arg1, uint256 arg2) {
    require arg1 < mapWidth
    require arg2 < mapHeight
    return ((arg1 / 10) + (100 * arg2 / 10))
}

function getSectionIndexFromIdentifier(uint256 arg1, uint256 arg2) {
    require arg1 < mapWidth / 10
    require arg2 < mapHeight / 10
    return (arg1 + (100 * arg2))
}

function unsetSectionForSale(uint256 arg1) {
    require arg1 < 10000
    require stor5[arg1] == msg.sender
    uint8(stor7[arg1].field_0) = 0
    sectionPrice[arg1] = 0
    address(stor11[arg1].field_0) = 0
    emit Delisted(arg1);
}

function sectionForSale(uint256 arg1) {
    require arg1 < 10000
    if not uint8(stor7[arg1].field_0):
        return 0
    if address(stor11[arg1].field_0):
        if address(stor11[arg1].field_0) != msg.sender:
            return 0
    return 1
}

function setSectionForSale(uint256 arg1, uint256 arg2) {
    require arg1 < 10000
    require stor5[arg1] == msg.sender
    sectionPrice[arg1] = arg2
    uint8(stor7[arg1].field_0) = 1
    address(stor11[arg1].field_0) = 0
    emit NewListing(arg1, arg2);
}

function setSectionForSaleToAddress(uint256 arg1, uint256 arg2, address arg3) {
    require arg1 < 10000
    require stor5[arg1] == msg.sender
    sectionPrice[arg1] = arg2
    uint8(stor7[arg1].field_0) = 1
    address(stor11[arg1].field_0) = arg3
    emit NewListing(arg1, arg2);
}

function updatePixelIndex(uint16 arg1, uint16 arg2) {
    require msg.sender == stor3
    require arg2 >= arg1
    idx = arg1
    while uint16(idx) < arg2:
        require uint16(idx) < 10000
        uint16(stor11[uint16(idx)].field_160) = uint16(idx)
        idx = idx + 1
        continue 
}

function setImageDataCloud(uint256 arg1, uint256 arg2, string arg3) {
    require arg1 < 10000
    require stor5[arg1] == msg.sender
    stor8[arg1] = arg2
    uint256(stor[sha3((7 * arg1) + 9)][].field_0) = Array(len=arg3.length, data=arg3[all])
    stor10[arg1] = block.timestamp
    emit NewImage(arg1);
}

function withdraw() {
    if ethBalance[address(msg.sender)] <= 0:
        return 1
    ethBalance[address(msg.sender)] = 0
    emit WithdrawEvent(Array(len=12, data='Reset Sender'));
    call msg.sender with:
       value ethBalance[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= 9999
    require arg2 < 10000
    require stor5[arg2] == msg.sender
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    require arg2 < 10000
    stor5[arg2] = arg1
    uint8(stor7[arg2].field_0) = 0
    balanceOf[address(msg.sender)]--
    balanceOf[address(arg1)]++
}

function setImageData(uint256 arg1) {
    require arg1 < 10000
    require stor5[arg1] == msg.sender
    stor8[arg1] = 0
    bool(stor9[arg1].field_0) = 0
    uint255(stor9[arg1].field_1) = 0
    Mask(248, 0, stor9[arg1].field_8) = mem[128 len 31]
    idx = 0
    while stor[(7 * arg1) + 9].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((7 * arg1) + 9)].field_0) = 0
        idx = idx + 1
        continue 
    stor10[arg1] = block.timestamp
    emit NewImage(arg1);
}

function unsetRegionForSale(uint256 arg1, uint256 arg2) {
    require arg1 <= arg2
    require arg2 <= 9999
    s = 0
    idx = arg1 % 100
    while idx <= arg2 % 100:
        t = 0
        s = arg1 - (arg1 % 100) / 100
        while s <= arg2 - (arg2 % 100) / 100:
            require idx + (100 * s) < 10000
            if address(stor[(7 * idx) + (700 * s) + 5].field_0) == msg.sender:
                uint8(stor[(7 * idx) + (700 * s) + 7].field_0) = 0
                uint256(stor[(7 * idx) + (700 * s) + 6].field_0) = 0
                mem[96] = idx + (100 * s)
                emit Delisted((idx + (100 * s)));
            t = (7 * idx) + (700 * s) + 5
            s = s + 1
            continue 
        s = s
        idx = idx + 1
        continue 
}

function sections(uint256 arg1) {
    require arg1 < 10000
    mem[416] = uint256(stor[sha3((7 * arg1) + 9)].field_0)
    idx = 416
    s = 0
    while stor[(7 * arg1) + 9].length + 416 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((7 * arg1) + 9) + 1].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    return stor5[arg1], 
           sectionPrice[arg1],
           bool(uint8(stor7[arg1].field_0)),
           bool(uint8(stor7[arg1].field_8)),
           stor8[arg1],
           Array(len=stor[(7 * arg1) + 9].length, data=mem[416 len stor[(7 * arg1) + 9].length + (floor32(stor[(7 * arg1) + 9].length - 1) + -stor[(7 * arg1) + 9].length + 32 % 32)]),
           stor10[arg1],
           address(stor11[arg1].field_0),
           uint16(stor11[arg1].field_0)
}

function setRegionForSale(uint256 arg1, uint256 arg2, uint256 arg3) {
    require arg1 <= arg2
    require arg2 <= 9999
    s = 0
    idx = arg1 % 100
    while idx <= arg2 % 100:
        t = 0
        s = arg1 - (arg1 % 100) / 100
        while s <= arg2 - (arg2 % 100) / 100:
            require idx + (100 * s) < 10000
            if address(stor[(7 * idx) + (700 * s) + 5].field_0) == msg.sender:
                uint256(stor[(7 * idx) + (700 * s) + 6].field_0) = arg3
                uint8(stor[(7 * idx) + (700 * s) + 7].field_0) = 1
                address(stor[(7 * idx) + (700 * s) + 11].field_0) = 0
                mem[96] = idx + (100 * s)
                mem[128] = arg3
                emit NewListing(idx + (100 * s), arg3);
            t = (7 * idx) + (700 * s) + 5
            s = s + 1
            continue 
        s = s
        idx = idx + 1
        continue 
}

function setRegionForSaleToAddress(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) {
    require arg1 <= arg2
    require arg2 <= 9999
    s = 0
    idx = arg1 % 100
    while idx <= arg2 % 100:
        t = 0
        s = arg1 - (arg1 % 100) / 100
        while s <= arg2 - (arg2 % 100) / 100:
            require idx + (100 * s) < 10000
            if address(stor[(7 * idx) + (700 * s) + 5].field_0) == msg.sender:
                uint256(stor[(7 * idx) + (700 * s) + 6].field_0) = arg3
                uint8(stor[(7 * idx) + (700 * s) + 7].field_0) = 1
                address(stor[(7 * idx) + (700 * s) + 11].field_0) = arg4
                mem[96] = idx + (100 * s)
                mem[128] = arg3
                emit NewListing(idx + (100 * s), arg3);
            t = (7 * idx) + (700 * s) + 5
            s = s + 1
            continue 
        s = s
        idx = idx + 1
        continue 
}

function transferRegion(uint256 arg1, uint256 arg2, address arg3) {
    require arg1 <= arg2
    require arg2 <= 9999
    s = 0
    idx = arg1 % 100
    while idx <= arg2 % 100:
        t = 0
        s = arg1 - (arg1 % 100) / 100
        while s <= arg2 - (arg2 % 100) / 100:
            require idx + (100 * s) < 10000
            if address(stor[(7 * idx) + (700 * s) + 5].field_0) == msg.sender:
                require balanceOf[address(arg3)] + 1 >= balanceOf[address(arg3)]
                address(stor[(7 * idx) + (700 * s) + 5].field_0) = arg3
                uint8(stor[(7 * idx) + (700 * s) + 7].field_0) = 0
                balanceOf[address(msg.sender)]--
                mem[0] = arg3
                mem[32] = 1
                balanceOf[address(arg3)]++
            t = (7 * idx) + (700 * s) + 5
            s = s + 1
            continue 
        s = s
        idx = idx + 1
        continue 
}

function regionAvailable(uint256 arg1, uint256 arg2) {
    require arg2 >= arg1
    require arg1 <= mapWidth * mapHeight
    require arg2 <= mapWidth * mapHeight
    require arg1 % 100 < mapWidth
    require arg1 - (arg1 % 100) / 100 < mapHeight
    require arg2 % 100 < mapWidth
    require arg2 - (arg2 % 100) / 100 < mapHeight
    s = 0
    idx = arg1 - (arg1 % 100) / 100
    while idx <= arg2 - (arg2 % 100) / 100:
        t = 0
        s = arg1 % 100
        t = 0
        while s <= arg2 % 100:
            require s + (100 * idx) < 10000
            if not uint8(stor[(7 * s) + (700 * idx) + 7].field_8):
                t = s + (100 * idx)
                s = s + 1
                t = t + 1
                continue 
            require s + (100 * idx) < 10000
            if not uint8(stor[(7 * s) + (700 * idx) + 7].field_0):
                return 0
            if address(stor[(7 * s) + (700 * idx) + 11].field_0):
                if address(stor[(7 * s) + (700 * idx) + 11].field_0) != msg.sender:
                    return 0
            require s + (100 * idx) < 10000
            t = s + (100 * idx)
            s = s + 1
            t = t
            continue 
        s = s
        idx = idx + 1
        continue 
    return 1, 0, 0
}

function buySection(uint256 arg1, uint256 arg2, string arg3) payable {
    require arg1 < 10000
    if not uint8(stor7[arg1].field_0):
        require not uint8(stor7[arg1].field_8)
        require msg.value >= ipo_price
        ethBalance[stor3] += msg.value
        ethBalance[address(msg.sender)] = ethBalance[address(msg.sender)] + msg.value - ipo_price
        pool--
    else:
        if not uint8(stor7[arg1].field_8):
            require msg.value >= ipo_price
            ethBalance[stor3] += msg.value
            ethBalance[address(msg.sender)] = ethBalance[address(msg.sender)] + msg.value - ipo_price
            pool--
        else:
            require msg.value >= sectionPrice[arg1]
            if sectionPrice[arg1]:
                ethBalance[stor3] += sectionPrice[arg1] / 100
                ethBalance[stor5[arg1]] = ethBalance[stor5[arg1]] + msg.value - (sectionPrice[arg1] / 100)
            ethBalance[address(msg.sender)] = ethBalance[address(msg.sender)] + msg.value - sectionPrice[arg1]
            balanceOf[stor5[arg1]]--
    balanceOf[address(msg.sender)]++
    stor5[arg1] = msg.sender
    uint256(stor[sha3((7 * arg1) + 9)][].field_0) = Array(len=arg3.length, data=arg3[all])
    stor8[arg1] = arg2
    stor10[arg1] = block.timestamp
    uint8(stor7[arg1].field_0) = 0
    Mask(248, 0, stor7[arg1].field_8) = 1
}

function setRegionImageDataCloud(uint256 arg1, uint256 arg2, uint256 arg3, string arg4) {
    mem[64] = ceil32(arg4.length) + 128
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    require arg2 >= arg1
    require arg1 <= mapWidth * mapHeight
    require arg2 <= mapWidth * mapHeight
    require arg1 % 100 < mapWidth
    require arg1 - (arg1 % 100) / 100 < mapHeight
    require arg2 % 100 < mapWidth
    require arg2 - (arg2 % 100) / 100 < mapHeight
    s = 0
    idx = arg1 - (arg1 % 100) / 100
    while idx <= arg2 - (arg2 % 100) / 100:
        t = 0
        t = 0
        s = arg1 % 100
        while s <= arg2 % 100:
            require s + (100 * idx) < 10000
            if address(stor[(7 * s) + (700 * idx) + 5].field_0) == msg.sender:
                uint256(stor[(7 * s) + (700 * idx) + 8].field_0) = arg3
                mem[0] = (7 * s) + (700 * idx) + 9
                uint256(stor[(7 * s) + (700 * idx) + 9].field_0) = (2 * arg4.length) + 1
                u = sha3((7 * s) + (700 * idx) + 9)
                t = 128
                while arg4.length + 128 > t:
                    uint256(stor[u].field_0) = mem[t]
                    u = u + 1
                    t = t + 32
                    continue 
                t = sha3((7 * s) + (700 * idx) + 9) + (Mask(251, 0, arg4.length + 31) >> 5)
                while sha3((7 * s) + (700 * idx) + 9) + (stor[(7 * s) + (700 * idx) + 9].length + 31 / 32) > t:
                    uint256(stor[t].field_0) = 0
                    t = t + 1
                    continue 
            t = (7 * s) + (700 * idx) + 5
            t = s + (100 * idx)
            s = s + 1
            continue 
        s = s
        idx = idx + 1
        continue 
    emit NewImage(arg1);
}

function buyRegion(uint256 arg1, uint256 arg2, uint256 arg3, string arg4) payable {
    mem[64] = ceil32(arg4.length) + 128
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    require arg2 >= arg1
    require arg1 < 10000
    require arg2 < 10000
    require arg2 >= arg1
    require arg1 <= mapWidth * mapHeight
    require arg2 <= mapWidth * mapHeight
    require arg1 % 100 < mapWidth
    require arg1 - (arg1 % 100) / 100 < mapHeight
    require arg2 % 100 < mapWidth
    require arg2 - (arg2 % 100) / 100 < mapHeight
    s = 0
    idx = arg1 - (arg1 % 100) / 100
    while idx <= arg2 - (arg2 % 100) / 100:
        t = 0
        s = arg1 % 100
        t = 0
        while s <= arg2 % 100:
            require s + (100 * idx) < 10000
            if not uint8(stor[(7 * s) + (700 * idx) + 7].field_8):
                t = s + (100 * idx)
                s = s + 1
                t = t + 1
                continue 
            require s + (100 * idx) < 10000
            require uint8(stor[(7 * s) + (700 * idx) + 7].field_0)
            if address(stor[(7 * s) + (700 * idx) + 11].field_0):
                require address(stor[(7 * s) + (700 * idx) + 11].field_0) == msg.sender
            require s + (100 * idx) < 10000
            t = s + (100 * idx)
            s = s + 1
            t = t
            continue 
        s = s
        idx = idx + 1
        continue 
    mem[ceil32(arg4.length) + 160] = arg2
    mem[ceil32(arg4.length) + 192] = 0
    emit AreaPrice(arg1, arg2, 0);
    mem[ceil32(arg4.length) + 128] = msg.value
    emit SentValue(msg.value);
    require 0 <= msg.value
    s = 0
    idx = arg1 % 100
    while idx <= arg2 % 100:
        t = 0
        s = arg1 - (arg1 % 100) / 100
        t = 0
        while s <= arg2 - (arg2 % 100) / 100:
            require idx + (100 * s) < 10000
            if not uint8(stor[(7 * idx) + (700 * s) + 7].field_8):
                ethBalance[stor3] += ipo_price
                pool--
                mem[32] = 1
                balanceOf[address(msg.sender)]++
                address(stor[(7 * idx) + (700 * s) + 5].field_0) = msg.sender
                mem[0] = (7 * idx) + (700 * s) + 9
                uint256(stor[(7 * idx) + (700 * s) + 9].field_0) = (2 * arg4.length) + 1
                v = sha3((7 * idx) + (700 * s) + 9)
                u = 128
                while arg4.length + 128 > u:
                    uint256(stor[v].field_0) = mem[u]
                    v = v + 1
                    u = u + 32
                    continue 
                u = sha3((7 * idx) + (700 * s) + 9) + (Mask(251, 0, arg4.length + 31) >> 5)
                while sha3((7 * idx) + (700 * s) + 9) + (stor[(7 * idx) + (700 * s) + 9].length + 31 / 32) > u:
                    uint256(stor[u].field_0) = 0
                    u = u + 1
                    continue 
                uint256(stor[(7 * idx) + (700 * s) + 8].field_0) = arg3
                uint8(stor[(7 * idx) + (700 * s) + 7].field_0) = 0
                Mask(248, 0, stor[(7 * idx) + (700 * s) + 7].field_8) = 1
                mem[ceil32(arg4.length) + 128] = idx + (100 * s)
                emit Buy((idx + (100 * s)));
                t = (7 * idx) + (700 * s) + 5
                s = s + 1
                t = t
                continue 
            if uint256(stor[(7 * idx) + (700 * s) + 6].field_0):
                ethBalance[stor3] += uint256(stor[(7 * idx) + (700 * s) + 6].field_0) / 100
                ethBalance[address(stor[(7 * idx) + (700 * s) + 5].field_0)] = ethBalance[address(stor[(7 * idx) + (700 * s) + 5].field_0)] + uint256(stor[(7 * idx) + (700 * s) + 6].field_0) - (uint256(stor[(7 * idx) + (700 * s) + 6].field_0) / 100)
            balanceOf[address(stor[(7 * idx) + (700 * s) + 5].field_0)]--
            mem[32] = 1
            balanceOf[address(msg.sender)]++
            address(stor[(7 * idx) + (700 * s) + 5].field_0) = msg.sender
            mem[0] = (7 * idx) + (700 * s) + 9
            uint256(stor[(7 * idx) + (700 * s) + 9].field_0) = (2 * arg4.length) + 1
            v = sha3((7 * idx) + (700 * s) + 9)
            u = 128
            while arg4.length + 128 > u:
                uint256(stor[v].field_0) = mem[u]
                v = v + 1
                u = u + 32
                continue 
            u = sha3((7 * idx) + (700 * s) + 9) + (Mask(251, 0, arg4.length + 31) >> 5)
            while sha3((7 * idx) + (700 * s) + 9) + (stor[(7 * idx) + (700 * s) + 9].length + 31 / 32) > u:
                uint256(stor[u].field_0) = 0
                u = u + 1
                continue 
            uint256(stor[(7 * idx) + (700 * s) + 8].field_0) = arg3
            uint8(stor[(7 * idx) + (700 * s) + 7].field_0) = 0
            Mask(248, 0, stor[(7 * idx) + (700 * s) + 7].field_8) = 1
            mem[ceil32(arg4.length) + 128] = idx + (100 * s)
            emit Buy((idx + (100 * s)));
            t = (7 * idx) + (700 * s) + 5
            s = s + 1
            t = t + uint256(stor[(7 * idx) + (700 * s) + 6].field_0)
            continue 
        s = s
        idx = idx + 1
        continue 
    ethBalance[address(msg.sender)] += msg.value
    return arg1 - (arg1 % 100) / 100, arg1 % 100, arg2 - (arg2 % 100) / 100, arg2 % 100
}



}

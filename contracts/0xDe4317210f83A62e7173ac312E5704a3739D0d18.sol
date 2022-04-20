contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
mapping of uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9; offset 160
address stor9;
mapping of struct stor10;
uint8 stor11;
uint256 stor12;
uint8 stor16;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    bool(stor3.length) = 0
    stor3.length.field_1 = 4
    stor3.length.field_8 = 'BASE' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 10
    stor4.length.field_8 = 'Base Token' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    stor7 = 10
    stor11 = 1
    stor12 = 1
    stor16 = 1
    require not msg.value
    bool(stor3.length) = 0
    stor3.length.field_1 = 4
    stor3.length.field_8 = 'ALGO' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 15
    stor4.length.field_8 = 'ALGO Land Token' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    stor8 = stor7^stor5
    address(stor0.field_0) = msg.sender
    address(stor9.field_0) = 0xf1dfb2af5dfb683626faa8576ddf83e1f6e96fa6
    stor1[address(stor0.field_0)] = stor6
    uint8(stor9.field_160) = 1
    require msg.sender == address(stor0.field_0)
    stor10[stor11].field_0 = 0
    stor10[stor11].field_1 = 3
    stor10[stor11].field_8 = 'ICO' / 256
    idx = 0
    while stor10[stor11].length + 31 / 32 > idx:
        stor10[stor11][idx].field_0 = 0
        idx = idx + 1
        continue 
    stor10[stor11].field_256 = 10^9 * stor8
    stor10[stor11].field_768 = 100
    stor10[stor11].field_512 = 0
    stor10[stor11].field_1024 = 0
    stor11 = uint8(stor11 + 1)
    return code.data[1507 len 13536]
}



// =====================  Runtime code  =====================


#
#  - sub_28aab45d(?)
#
const dividendBalance = eth.balance(this.address)

const checkBalance = eth.balance(this.address)


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 totalSupply;
uint8 stor9;
uint8 sub_948fd5dc; offset 160
address stor9;
mapping of struct sub_e4218b0b;
uint8 stor11;
uint256 sub_7fe6619d;
array of struct sub_72df54f3;
mapping of uint256 stor14;
mapping of struct voting;
uint8 stor16;
uint256 totalDividendPoints;
mapping of uint256 lastDividendPoints;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function totalDividendPoints() {
    return totalDividendPoints
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_72df54f3(?) {
    mem[224] = sub_72df54f3[arg1].field_0
    idx = 224
    s = 0
    while sub_72df54f3[arg1].length + 224 > idx + 32:
        mem[idx + 32] = sub_72df54f3[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[sub_72df54f3[arg1].length + (floor32(sub_72df54f3[arg1].length - 1) + -sub_72df54f3[arg1].length + 32 % 32) + 224] = sub_72df54f3[arg1][1].length
    mem[sub_72df54f3[arg1].length + (floor32(sub_72df54f3[arg1].length - 1) + -sub_72df54f3[arg1].length + 32 % 32) + 256] = sub_72df54f3[arg1][1].field_0
    idx = sub_72df54f3[arg1].length + (floor32(sub_72df54f3[arg1].length - 1) + -sub_72df54f3[arg1].length + 32 % 32) + 256
    s = 0
    while sub_72df54f3[arg1].length + (floor32(sub_72df54f3[arg1].length - 1) + -sub_72df54f3[arg1].length + 32 % 32) + sub_72df54f3[arg1][1].length + 256 > idx + 32:
        mem[idx + 32] = sub_72df54f3[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[sub_72df54f3[arg1].length + (floor32(sub_72df54f3[arg1].length - 1) + -sub_72df54f3[arg1].length + 32 % 32) + sub_72df54f3[arg1][1].length + (floor32(sub_72df54f3[arg1][1].length - 1) + -sub_72df54f3[arg1][1].length + 32 % 32) + 288] = sub_72df54f3[arg1][2].field_0
    idx = sub_72df54f3[arg1].length + (floor32(sub_72df54f3[arg1].length - 1) + -sub_72df54f3[arg1].length + 32 % 32) + sub_72df54f3[arg1][1].length + (floor32(sub_72df54f3[arg1][1].length - 1) + -sub_72df54f3[arg1][1].length + 32 % 32) + 288
    s = 0
    while sub_72df54f3[arg1].length + (floor32(sub_72df54f3[arg1].length - 1) + -sub_72df54f3[arg1].length + 32 % 32) + sub_72df54f3[arg1][1].length + (floor32(sub_72df54f3[arg1][1].length - 1) + -sub_72df54f3[arg1][1].length + 32 % 32) + sub_72df54f3[arg1][2].length + 288 > idx + 32:
        mem[idx + 32] = sub_72df54f3[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_72df54f3[arg1].length, data=mem[224 len sub_72df54f3[arg1].length + (floor32(sub_72df54f3[arg1].length - 1) + -sub_72df54f3[arg1].length + 32 % 32) + sub_72df54f3[arg1][1].length + (floor32(sub_72df54f3[arg1][1].length - 1) + -sub_72df54f3[arg1][1].length + 32 % 32) + 32], sub_72df54f3[arg1][2].length, mem[sub_72df54f3[arg1].length + (floor32(sub_72df54f3[arg1].length - 1) + -sub_72df54f3[arg1].length + 32 % 32) + sub_72df54f3[arg1][1].length + (floor32(sub_72df54f3[arg1][1].length - 1) + -sub_72df54f3[arg1][1].length + 32 % 32) + 288 len sub_72df54f3[arg1][2].length + (floor32(sub_72df54f3[arg1][2].length - 1) + -sub_72df54f3[arg1][2].length + 32 % 32)]), 
           sub_72df54f3[arg1].length + (floor32(sub_72df54f3[arg1].length - 1) + -sub_72df54f3[arg1].length + 32 % 32) + 128,
           sub_72df54f3[arg1].length + (floor32(sub_72df54f3[arg1].length - 1) + -sub_72df54f3[arg1].length + 32 % 32) + sub_72df54f3[arg1][1].length + (floor32(sub_72df54f3[arg1][1].length - 1) + -sub_72df54f3[arg1][1].length + 32 % 32) + 160
}

function sub_7fe6619d(?) {
    return sub_7fe6619d
}

function lastDividendPoints(address arg1) {
    return lastDividendPoints[arg1]
}

function owner() {
    return owner
}

function sub_948fd5dc(?) {
    return sub_948fd5dc
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokenStatus() {
    return bool(uint8(stor0.field_160))
}

function sub_b985bf0b(?) {
    require block.timestamp > voting[arg1 << 248].field_1280
    mem[160] = voting[arg1 << 248].field_0
    idx = 160
    s = 0
    while voting[arg1 << 248].length + 128 > idx:
        mem[idx + 32] = voting[arg1 << 248][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=voting[arg1 << 248].length, data=mem[160 len voting[arg1 << 248].length]), 
           voting[arg1 << 248].field_256,
           voting[arg1 << 248].field_512,
           voting[arg1 << 248].field_1024,
           voting[arg1 << 248].field_1280,
           voting[arg1 << 248][6][address(msg.sender)].field_0
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e4218b0b(?) {
    mem[288] = sub_e4218b0b[arg1].field_0
    idx = 288
    s = 0
    while sub_e4218b0b[arg1].length + 288 > idx + 32:
        mem[idx + 32] = sub_e4218b0b[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_e4218b0b[arg1].length, data=mem[288 len sub_e4218b0b[arg1].length + (floor32(sub_e4218b0b[arg1].length - 1) + -sub_e4218b0b[arg1].length + 32 % 32)]), 
           sub_e4218b0b[arg1].field_256,
           sub_e4218b0b[arg1].field_512,
           sub_e4218b0b[arg1].field_768,
           bool(sub_e4218b0b[arg1].field_1024)
}

function voting(uint256 arg1) {
    mem[288] = voting[arg1].field_0
    idx = 288
    s = 0
    while voting[arg1].length + 288 > idx + 32:
        mem[idx + 32] = voting[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=voting[arg1].length, data=mem[288 len voting[arg1].length + (floor32(voting[arg1].length - 1) + -voting[arg1].length + 32 % 32)]), 
           voting[arg1].field_256,
           voting[arg1].field_512,
           voting[arg1].field_1024,
           voting[arg1].field_1280
}

function killContract() {
    require msg.sender == owner
    selfdestruct(address(stor9.field_0))
}

function sub_416592ea(?) {
    require msg.sender == owner
    sub_948fd5dc = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function changeRate(uint256 arg1) {
    require msg.sender == owner
    sub_e4218b0b[uint8(stor9.field_0)].field_768 = arg1
}

function sub_9ddc4e67(?) {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = Mask(96, 0, not bool(uint8(stor0.field_160)))
}

function approve(address arg1, uint256 arg2) {
    require bool(uint8(stor0.field_160)) == 1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function toggleSaleStatus() {
    require msg.sender == owner
    sub_e4218b0b[uint8(stor9.field_0)].field_1024 = not bool(sub_e4218b0b[uint8(stor9.field_0)].field_1024) or Mask(248, 8, sub_e4218b0b[uint8(stor9.field_0)].field_1024)
}

function sub_43915755(?) {
    require msg.sender == owner
    sub_72df54f3[stor12][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_72df54f3[stor12][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_72df54f3[stor12][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    sub_7fe6619d++
}

function sub_c20db211(?) {
    require msg.sender == owner
    sub_e4218b0b[stor11][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_e4218b0b[stor11].field_256 = arg2
    sub_e4218b0b[stor11].field_768 = arg3
    sub_e4218b0b[stor11].field_512 = 0
    sub_e4218b0b[stor11].field_1024 = 0
    stor11 = uint8(stor11 + 1)
}

function sub_d1c29a29(?) {
    require bool(uint8(stor0.field_160)) == 1
    require balanceOf[address(msg.sender)] > 0
    voting[stor16].field_1024 = msg.sender
    voting[stor16][].field_0 = Array(len=arg1.length, data=arg1[all])
    voting[stor16].field_256 = 0
    voting[stor16].field_512 = 0
    voting[stor16].field_1280 = block.timestamp + (24 * 3600 * arg2)
    stor16 = uint8(stor16 + 1)
}

function disburse() payable {
    require bool(uint8(stor0.field_160)) == 1
    require msg.sender == owner
    require msg.value > 0
    if msg.value:
        require msg.value
        require 10 * 10^18 * msg.value / msg.value == 10 * 10^18
    require totalSupply
    require totalDividendPoints + (10 * 10^18 * msg.value / totalSupply) >= totalDividendPoints
    totalDividendPoints += 10 * 10^18 * msg.value / totalSupply
}

function claimDividend() {
    require bool(uint8(stor0.field_160)) == 1
    require lastDividendPoints[address(msg.sender)] <= totalDividendPoints
    if balanceOf[address(msg.sender)]:
        require balanceOf[address(msg.sender)]
        require (totalDividendPoints * balanceOf[address(msg.sender)]) - (lastDividendPoints[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == totalDividendPoints - lastDividendPoints[address(msg.sender)]
    if (totalDividendPoints * balanceOf[address(msg.sender)]) - (lastDividendPoints[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18 > 0:
        lastDividendPoints[address(msg.sender)] = totalDividendPoints
        call msg.sender with:
           value (totalDividendPoints * balanceOf[address(msg.sender)]) - (lastDividendPoints[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Dividend(((totalDividendPoints * balanceOf[address(msg.sender)]) - (lastDividendPoints[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18), msg.sender);
}

function vote(uint8 arg1, uint256 arg2) {
    require bool(uint8(stor0.field_160)) == 1
    require balanceOf[address(msg.sender)] > 0
    require voting[arg1 << 248].field_1280 > block.timestamp
    require not voting[arg1 << 248][6][address(msg.sender)].field_0
    if arg2 == 1:
        require voting[arg1 << 248].field_256 + balanceOf[address(msg.sender)] >= voting[arg1 << 248].field_256
        voting[arg1 << 248].field_256 += balanceOf[address(msg.sender)]
        voting[arg1 << 248][6][address(msg.sender)].field_0 = balanceOf[address(msg.sender)]
        if voting[arg1 << 248].field_1280 > stor14[address(msg.sender)]:
            stor14[address(msg.sender)] = voting[arg1 << 248].field_1280
        emit 0xb57ef01e: Array(len=3, data='yes'), msg.sender, arg1
    else:
        if not arg2:
            require voting[arg1 << 248].field_512 + balanceOf[address(msg.sender)] >= voting[arg1 << 248].field_512
            voting[arg1 << 248].field_512 += balanceOf[address(msg.sender)]
            voting[arg1 << 248][6][address(msg.sender)].field_0 = -balanceOf[address(msg.sender)]
            stor14[address(msg.sender)] = voting[arg1 << 248].field_1280
            if voting[arg1 << 248].field_1280 > stor14[address(msg.sender)]:
                stor14[address(msg.sender)] = voting[arg1 << 248].field_1280
            emit 0xb57ef01e: Array(len=2, data='no'), msg.sender, arg1
}

function _fallback() payable {
    require msg.value > 0
    require bool(sub_e4218b0b[uint8(stor9.field_0)].field_1024) == 1
    require lastDividendPoints[address(msg.sender)] <= totalDividendPoints
    if balanceOf[address(msg.sender)]:
        require balanceOf[address(msg.sender)]
        require (totalDividendPoints * balanceOf[address(msg.sender)]) - (lastDividendPoints[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == totalDividendPoints - lastDividendPoints[address(msg.sender)]
    if (totalDividendPoints * balanceOf[address(msg.sender)]) - (lastDividendPoints[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18 > 0:
        lastDividendPoints[address(msg.sender)] = totalDividendPoints
        call msg.sender with:
           value (totalDividendPoints * balanceOf[address(msg.sender)]) - (lastDividendPoints[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Dividend(((totalDividendPoints * balanceOf[address(msg.sender)]) - (lastDividendPoints[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18), msg.sender);
    if msg.value:
        require msg.value
        require msg.value * sub_e4218b0b[uint8(stor9.field_0)].field_768 / msg.value == sub_e4218b0b[uint8(stor9.field_0)].field_768
    call address(stor9.field_0) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require balanceOf[address(msg.sender)] + (msg.value * sub_e4218b0b[uint8(stor9.field_0)].field_768) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value * sub_e4218b0b[uint8(stor9.field_0)].field_768
    require totalSupply + (msg.value * sub_e4218b0b[uint8(stor9.field_0)].field_768) >= totalSupply
    totalSupply += msg.value * sub_e4218b0b[uint8(stor9.field_0)].field_768
    require sub_e4218b0b[uint8(stor9.field_0)].field_512 + (msg.value * sub_e4218b0b[uint8(stor9.field_0)].field_768) >= sub_e4218b0b[uint8(stor9.field_0)].field_512
    sub_e4218b0b[uint8(stor9.field_0)].field_512 += msg.value * sub_e4218b0b[uint8(stor9.field_0)].field_768
    if sub_e4218b0b[uint8(stor9.field_0)].field_512 >= sub_e4218b0b[uint8(stor9.field_0)].field_256:
        sub_e4218b0b[uint8(stor9.field_0)].field_1024 = not bool(sub_e4218b0b[uint8(stor9.field_0)].field_1024) or Mask(248, 8, sub_e4218b0b[uint8(stor9.field_0)].field_1024)
        sub_948fd5dc = uint8(sub_948fd5dc + 1)
}

function createTokens() payable {
    require msg.value > 0
    require bool(sub_e4218b0b[uint8(stor9.field_0)].field_1024) == 1
    require lastDividendPoints[address(msg.sender)] <= totalDividendPoints
    if balanceOf[address(msg.sender)]:
        require balanceOf[address(msg.sender)]
        require (totalDividendPoints * balanceOf[address(msg.sender)]) - (lastDividendPoints[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == totalDividendPoints - lastDividendPoints[address(msg.sender)]
    if (totalDividendPoints * balanceOf[address(msg.sender)]) - (lastDividendPoints[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18 > 0:
        lastDividendPoints[address(msg.sender)] = totalDividendPoints
        call msg.sender with:
           value (totalDividendPoints * balanceOf[address(msg.sender)]) - (lastDividendPoints[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Dividend(((totalDividendPoints * balanceOf[address(msg.sender)]) - (lastDividendPoints[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18), msg.sender);
    if msg.value:
        require msg.value
        require msg.value * sub_e4218b0b[uint8(stor9.field_0)].field_768 / msg.value == sub_e4218b0b[uint8(stor9.field_0)].field_768
    call address(stor9.field_0) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require balanceOf[address(msg.sender)] + (msg.value * sub_e4218b0b[uint8(stor9.field_0)].field_768) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value * sub_e4218b0b[uint8(stor9.field_0)].field_768
    require totalSupply + (msg.value * sub_e4218b0b[uint8(stor9.field_0)].field_768) >= totalSupply
    totalSupply += msg.value * sub_e4218b0b[uint8(stor9.field_0)].field_768
    require sub_e4218b0b[uint8(stor9.field_0)].field_512 + (msg.value * sub_e4218b0b[uint8(stor9.field_0)].field_768) >= sub_e4218b0b[uint8(stor9.field_0)].field_512
    sub_e4218b0b[uint8(stor9.field_0)].field_512 += msg.value * sub_e4218b0b[uint8(stor9.field_0)].field_768
    if sub_e4218b0b[uint8(stor9.field_0)].field_512 >= sub_e4218b0b[uint8(stor9.field_0)].field_256:
        sub_e4218b0b[uint8(stor9.field_0)].field_1024 = not bool(sub_e4218b0b[uint8(stor9.field_0)].field_1024) or Mask(248, 8, sub_e4218b0b[uint8(stor9.field_0)].field_1024)
        sub_948fd5dc = uint8(sub_948fd5dc + 1)
}

function transfer(address arg1, uint256 arg2) {
    require bool(uint8(stor0.field_160)) == 1
    require calldata.size >= 68
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require block.timestamp > stor14[address(msg.sender)]
    require lastDividendPoints[address(msg.sender)] <= totalDividendPoints
    if balanceOf[address(msg.sender)]:
        require balanceOf[address(msg.sender)]
        require (totalDividendPoints * balanceOf[address(msg.sender)]) - (lastDividendPoints[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == totalDividendPoints - lastDividendPoints[address(msg.sender)]
    if (totalDividendPoints * balanceOf[address(msg.sender)]) - (lastDividendPoints[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18 > 0:
        lastDividendPoints[address(msg.sender)] = totalDividendPoints
        call msg.sender with:
           value (totalDividendPoints * balanceOf[address(msg.sender)]) - (lastDividendPoints[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Dividend(((totalDividendPoints * balanceOf[address(msg.sender)]) - (lastDividendPoints[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18), msg.sender);
    require lastDividendPoints[address(arg1)] <= totalDividendPoints
    if balanceOf[address(arg1)]:
        require balanceOf[address(arg1)]
        require (totalDividendPoints * balanceOf[address(arg1)]) - (lastDividendPoints[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == totalDividendPoints - lastDividendPoints[address(arg1)]
    if (totalDividendPoints * balanceOf[address(arg1)]) - (lastDividendPoints[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18 > 0:
        lastDividendPoints[address(arg1)] = totalDividendPoints
        call arg1 with:
           value (totalDividendPoints * balanceOf[address(arg1)]) - (lastDividendPoints[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Dividend(((totalDividendPoints * balanceOf[address(arg1)]) - (lastDividendPoints[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18), arg1);
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require bool(uint8(stor0.field_160)) == 1
    require calldata.size >= 100
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require block.timestamp > stor14[address(arg1)]
    require lastDividendPoints[address(arg1)] <= totalDividendPoints
    if balanceOf[address(arg1)]:
        require balanceOf[address(arg1)]
        require (totalDividendPoints * balanceOf[address(arg1)]) - (lastDividendPoints[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == totalDividendPoints - lastDividendPoints[address(arg1)]
    if (totalDividendPoints * balanceOf[address(arg1)]) - (lastDividendPoints[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18 > 0:
        lastDividendPoints[address(arg1)] = totalDividendPoints
        call arg1 with:
           value (totalDividendPoints * balanceOf[address(arg1)]) - (lastDividendPoints[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Dividend(((totalDividendPoints * balanceOf[address(arg1)]) - (lastDividendPoints[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18), arg1);
    require lastDividendPoints[address(arg2)] <= totalDividendPoints
    if balanceOf[address(arg2)]:
        require balanceOf[address(arg2)]
        require (totalDividendPoints * balanceOf[address(arg2)]) - (lastDividendPoints[address(arg2)] * balanceOf[address(arg2)]) / balanceOf[address(arg2)] == totalDividendPoints - lastDividendPoints[address(arg2)]
    if (totalDividendPoints * balanceOf[address(arg2)]) - (lastDividendPoints[address(arg2)] * balanceOf[address(arg2)]) / 10 * 10^18 > 0:
        lastDividendPoints[address(arg2)] = totalDividendPoints
        call arg2 with:
           value (totalDividendPoints * balanceOf[address(arg2)]) - (lastDividendPoints[address(arg2)] * balanceOf[address(arg2)]) / 10 * 10^18 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Dividend(((totalDividendPoints * balanceOf[address(arg2)]) - (lastDividendPoints[address(arg2)] * balanceOf[address(arg2)]) / 10 * 10^18), arg2);
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}

contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
mapping of uint256 stor11;
uint256 stor13;
uint256 stor14;
uint8 stor15;
uint8 stor15; offset 8
address stor15; offset 16
uint256 stor15; offset 8
address stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;

function _fallback() payable {
    stor0 = 100
    stor1 = 50
    stor2 = 25
    bool(stor3.length) = 0
    stor3.length.field_1 = 12
    stor3.length.field_8 = 'Vector Token' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 4
    stor4.length.field_8 = 'VCTR' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    stor6 = 50000000 * 10^18
    stor7 = 40000000 * 10^18
    stor8 = 10000000 * 10^18
    stor9 = 500000 * 10^18
    stor10 = 9500000 * 10^18
    stor13 = 420204000 * 24 * 3600
    stor14 = 119310 * 3600 * 24 * 3600
    uint8(stor15.field_8) = 0
    stor17 = 250
    stor18 = 10^17
    stor19 = 10^18
    require code.data[6424 len 32] >= block.timestamp
    require code.data[6456 len 32] >= code.data[6424 len 32]
    require code.data[6500 len 20]
    stor13 = code.data[6424 len 32]
    stor14 = code.data[6456 len 32]
    stor16 = code.data[6500 len 20]
    stor11[code.data[6500 len 20]] = stor6
    uint8(stor15.field_0) = 2
    Mask(248, 0, stor15.field_8) = uint8(stor15.field_8)
    address(stor15.field_16) = msg.sender
    return code.data[708 len 5716]
}



// =====================  Runtime code  =====================


const getNow = block.timestamp


uint256 sub_d8786054;
uint256 sub_9812d2ed;
uint256 sub_2531e628;
array of struct name;
array of struct symbol;
uint256 decimals;
uint256 _totalSupply;
uint256 _icoSupply;
uint256 sub_bb94df1c;
uint256 sub_55381d8b;
uint256 sub_0536ac58;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 startTime;
uint256 endTime;
uint8 stage;
uint8 sub_90785f5b; offset 8
address owner; offset 16
address walletAddress;
uint256 price;
uint256 minContribAmount;
uint256 softCap;
uint256 fundRaised;
mapping of struct sub_8051771d;

function sub_0536ac58(?) {
    return sub_0536ac58
}

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return _totalSupply
}

function sub_2531e628(?) {
    return sub_2531e628
}

function decimals() {
    return decimals
}

function endTime() {
    return endTime
}

function _icoSupply() {
    return _icoSupply
}

function _totalSupply() {
    return _totalSupply
}

function sub_55381d8b(?) {
    return sub_55381d8b
}

function minContribAmount() {
    return minContribAmount
}

function walletAddress() {
    return walletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function sub_8051771d(?) {
    return sub_8051771d[arg1].field_0
}

function PRICE() {
    return price
}

function owner() {
    return owner
}

function softCap() {
    return softCap
}

function sub_90785f5b(?) {
    return bool(sub_90785f5b)
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function sub_9812d2ed(?) {
    return sub_9812d2ed
}

function getPrice() {
    return price
}

function sub_bb94df1c(?) {
    return sub_bb94df1c
}

function stage() {
    require stage <= 2
    return stage
}

function fundRaised() {
    return fundRaised
}

function sub_d0aa21e3(?) {
    return sub_8051771d[arg1].field_0, sub_8051771d[arg1].field_256, sub_8051771d[arg1].field_512, sub_8051771d[arg1].field_768
}

function sub_d8786054(?) {
    return sub_d8786054
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function hasEnded() {
    return (block.timestamp > endTime)
}

function sub_81739145(?) {
    return sub_bb94df1c, sub_55381d8b, sub_0536ac58
}

function changeStartDate(uint256 arg1) {
    require owner == msg.sender
    startTime = arg1
}

function sub_7adb2ab8(?) {
    return (block.timestamp - sub_8051771d[arg1].field_0 / 24 * 3600)
}

function changeTotalSupply(uint256 arg1) {
    require owner == msg.sender
    _totalSupply = arg1
}

function burnToken() {
    require owner == msg.sender
    require _icoSupply >= 0
    require endTime < block.timestamp
    require _icoSupply <= balanceOf[stor16]
    balanceOf[stor16] -= _icoSupply
    require _icoSupply <= _totalSupply
    _totalSupply -= _icoSupply
    emit BurnToken(_icoSupply);
    _icoSupply = 0
}

function safeWithdrawal(uint256 arg1) {
    require owner == msg.sender
    require stage <= 2
    require stage == 2
    require balanceOf[address(msg.sender)] >= arg1
    if owner == msg.sender:
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    sub_8051771d[arg2].field_512 = arg2
    sub_8051771d[arg2].field_256 = arg1
    sub_8051771d[arg2].field_0 = block.timestamp
    emit Approval(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function sendFounderAndTeamToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1
    require arg2 > 0
    require sub_bb94df1c >= arg2
    require arg2 <= balanceOf[stor16]
    balanceOf[stor16] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    require arg2 <= sub_bb94df1c
    sub_bb94df1c -= arg2
    emit Transfer(arg2, walletAddress, arg1);
}

function sub_317a5b7a(?) {
    require not sub_90785f5b
    require stage <= 2
    require stage == 2
    if block.timestamp < startTime + (168 * 24 * 3600):
        balanceOf[stor16] += sub_d8786054 / 100 * balanceOf[stor16]
    else:
        if block.timestamp < startTime + (336 * 24 * 3600):
            balanceOf[stor16] += sub_9812d2ed / 100 * balanceOf[stor16]
        else:
            if block.timestamp < startTime + (504 * 24 * 3600):
                balanceOf[stor16] += sub_2531e628 / 100 * balanceOf[stor16]
    sub_90785f5b = 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function tokensale(address arg1) payable {
    require arg1
    if block.timestamp > startTime + (168 * 24 * 3600):
        if block.timestamp < 4 * startTime + (168 * 24 * 3600):
            stage = 2
        if block.timestamp > 4 * startTime + (168 * 24 * 3600):
            stage = 2
    if block.timestamp >= startTime + (168 * 24 * 3600):
        require block.timestamp > 4 * startTime + (168 * 24 * 3600)
        require block.timestamp <= endTime
    require msg.value
    require minContribAmount <= msg.value
    if msg.value:
        require msg.value
        require price * msg.value / msg.value == price
    require _icoSupply >= price * msg.value
    require msg.value + fundRaised >= fundRaised
    fundRaised += msg.value
    require price * msg.value <= balanceOf[stor16]
    balanceOf[stor16] += -1 * price * msg.value
    require (price * msg.value) + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = (price * msg.value) + balanceOf[arg1]
    require price * msg.value <= _icoSupply
    _icoSupply += -1 * price * msg.value
    emit TokenPurchase(msg.value, price * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    if block.timestamp > startTime + (168 * 24 * 3600):
        if block.timestamp < 4 * startTime + (168 * 24 * 3600):
            stage = 2
        if block.timestamp > 4 * startTime + (168 * 24 * 3600):
            stage = 2
    if block.timestamp >= startTime + (168 * 24 * 3600):
        require block.timestamp > 4 * startTime + (168 * 24 * 3600)
        require block.timestamp <= endTime
    require msg.value
    require minContribAmount <= msg.value
    if msg.value:
        require msg.value
        require price * msg.value / msg.value == price
    require _icoSupply >= price * msg.value
    require msg.value + fundRaised >= fundRaised
    fundRaised += msg.value
    require price * msg.value <= balanceOf[stor16]
    balanceOf[stor16] += -1 * price * msg.value
    require (price * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = (price * msg.value) + balanceOf[msg.sender]
    require price * msg.value <= _icoSupply
    _icoSupply += -1 * price * msg.value
    emit TokenPurchase(msg.value, price * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getTokenDetail() {
    mem[96] = 0
    mem[128] = 0
    mem[160] = name.length
    mem[0] = 3
    mem[192] = uint256(name.field_0)
    idx = 192
    s = 0
    while name.length + 160 > idx:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(name.length) + ceil32(symbol.length) + 224
    mem[ceil32(name.length) + 192] = symbol.length
    mem[ceil32(name.length) + 224] = uint256(symbol.field_0)
    idx = ceil32(name.length) + 224
    s = 0
    while ceil32(name.length) + symbol.length + 192 > idx:
        mem[idx + 32] = symbol[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(name.length) + ceil32(symbol.length) + 288] = startTime
    mem[ceil32(name.length) + ceil32(symbol.length) + 320] = endTime
    mem[ceil32(name.length) + ceil32(symbol.length) + 352] = _totalSupply
    mem[ceil32(name.length) + ceil32(symbol.length) + 384] = _icoSupply
    mem[ceil32(name.length) + ceil32(symbol.length) + 416] = sub_bb94df1c
    mem[ceil32(name.length) + ceil32(symbol.length) + 224] = 224
    mem[ceil32(name.length) + ceil32(symbol.length) + 448] = name.length
    mem[ceil32(name.length) + ceil32(symbol.length) + 480 len ceil32(name.length)] = mem[192 len ceil32(name.length)]
    mem[ceil32(name.length) + ceil32(symbol.length) + 256] = name.length + 256
    mem[name.length + ceil32(name.length) + ceil32(symbol.length) + 480] = symbol.length
    mem[name.length + ceil32(name.length) + ceil32(symbol.length) + 512 len ceil32(symbol.length)] = mem[ceil32(name.length) + 224 len ceil32(symbol.length)]
    if not symbol.length % 32:
        return Array(len=name.length, data=mem[192 len ceil32(name.length)], mem[(2 * ceil32(name.length)) + ceil32(symbol.length) + 480 len symbol.length + name.length + -ceil32(name.length) + 32]), 
               name.length + 256,
               startTime,
               endTime,
               _totalSupply,
               _icoSupply,
               sub_bb94df1c
    mem[floor32(symbol.length) + name.length + ceil32(name.length) + ceil32(symbol.length) + 512] = mem[floor32(symbol.length) + name.length + ceil32(name.length) + ceil32(symbol.length) + -symbol.length % 32 + 544 len symbol.length % 32]
    return Array(len=name.length, data=mem[192 len ceil32(name.length)], mem[(2 * ceil32(name.length)) + ceil32(symbol.length) + 480 len floor32(symbol.length) + name.length + -ceil32(name.length) + 64]), 
           name.length + 256,
           startTime,
           endTime,
           _totalSupply,
           _icoSupply,
           sub_bb94df1c
}



}

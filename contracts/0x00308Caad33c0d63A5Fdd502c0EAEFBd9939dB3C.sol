contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
mapping of uint256 stor8;
uint256 stor10;
uint256 stor11;
uint8 stor12;
address stor12; offset 8
uint256 stor12; offset 8
address stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 12
    stor0.length.field_8 = 'Vector Token' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 4
    stor1.length.field_8 = 'VCTR' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor3 = 50000000 * 10^18
    stor4 = 40000000 * 10^18
    stor5 = 10000000 * 10^18
    stor6 = 500000 * 10^18
    stor7 = 9500000 * 10^18
    stor14 = 250
    stor15 = 10^18
    stor16 = 10000 * 10^18
    require code.data[6690 len 32] >= 1000 * block.timestamp
    require code.data[6722 len 32] >= code.data[6690 len 32]
    require code.data[6766 len 20]
    stor10 = code.data[6690 len 32]
    stor11 = code.data[6722 len 32]
    stor13 = code.data[6766 len 20]
    stor8[code.data[6766 len 20]] = stor3
    address(stor12.field_8) = msg.sender
    uint8(stor12.field_0) = 0
    address(stor12.field_8) = msg.sender
    Mask(248, 0, stor12.field_8) = 0
    return code.data[691 len 5999]
}



// =====================  Runtime code  =====================


const getNow = (1000 * block.timestamp)


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
address owner; offset 8
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

function symbol() {
    return symbol[0 len symbol.length].field_0
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

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function hasEnded() {
    return (1000 * block.timestamp > endTime)
}

function sub_81739145(?) {
    return sub_bb94df1c, sub_55381d8b, sub_0536ac58
}

function changeTotalSupply(uint256 arg1) {
    require owner == msg.sender
    _totalSupply = arg1
}

function sub_7adb2ab8(?) {
    return ((1000 * block.timestamp) - sub_8051771d[arg1].field_0 / 24 * 3600)
}

function changeStartDate(uint256 arg1) {
    require owner == msg.sender
    require stage <= 2
    if not stage:
        if 1000 * block.timestamp <= startTime + (168000 * 24 * 3600):
            startTime = arg1
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

function burnToken() {
    require owner == msg.sender
    require _icoSupply >= 0
    require endTime < 1000 * block.timestamp
    require _icoSupply <= balanceOf[stor13]
    balanceOf[stor13] -= _icoSupply
    require _icoSupply <= _totalSupply
    _totalSupply -= _icoSupply
    emit BurnToken(_icoSupply);
    _icoSupply = 0
}

function approve(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    sub_8051771d[arg2].field_512 = arg2
    sub_8051771d[arg2].field_256 = arg1
    sub_8051771d[arg2].field_0 = 1000 * block.timestamp
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
    require arg2 <= balanceOf[stor13]
    balanceOf[stor13] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    require arg2 <= sub_bb94df1c
    sub_bb94df1c -= arg2
    emit Transfer(arg2, walletAddress, arg1);
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

function getTokenDetail() {
    mem[96] = 0
    mem[128] = 0
    mem[160] = name.length
    mem[0] = 0
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

function tokensale(address arg1) payable {
    require arg1
    if 1000 * block.timestamp > startTime + (168000 * 24 * 3600):
        if 1000 * block.timestamp < 4 * startTime + (168000 * 24 * 3600):
            stage = 1
        if 1000 * block.timestamp > 4 * startTime + (168000 * 24 * 3600):
            stage = 2
    if 1000 * block.timestamp >= startTime + (168000 * 24 * 3600):
        require 1000 * block.timestamp > 4 * startTime + (168000 * 24 * 3600)
        require 1000 * block.timestamp <= endTime
    require msg.value
    require minContribAmount <= msg.value
    if msg.value:
        require msg.value
        require price * msg.value / msg.value == price
    require stage <= 2
    if stage:
        require _icoSupply >= price * msg.value
        require msg.value + fundRaised >= fundRaised
        fundRaised += msg.value
        require price * msg.value <= balanceOf[stor13]
        balanceOf[stor13] += -1 * price * msg.value
        require (price * msg.value) + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = (price * msg.value) + balanceOf[arg1]
        require price * msg.value <= _icoSupply
        _icoSupply += -1 * price * msg.value
        emit TokenPurchase(msg.value, price * msg.value, msg.sender, arg1);
    else:
        if 1000 * block.timestamp > startTime + (168000 * 24 * 3600):
            require _icoSupply >= price * msg.value
            require msg.value + fundRaised >= fundRaised
            fundRaised += msg.value
            require price * msg.value <= balanceOf[stor13]
            balanceOf[stor13] += -1 * price * msg.value
            require (price * msg.value) + balanceOf[arg1] >= balanceOf[arg1]
            balanceOf[address(arg1)] = (price * msg.value) + balanceOf[arg1]
            require price * msg.value <= _icoSupply
            _icoSupply += -1 * price * msg.value
            emit TokenPurchase(msg.value, price * msg.value, msg.sender, arg1);
        else:
            if price * msg.value:
                require price * msg.value
                require 2 * price * msg.value / price * msg.value == 2
            require _icoSupply >= 2 * price * msg.value
            require msg.value + fundRaised >= fundRaised
            fundRaised += msg.value
            require 2 * price * msg.value <= balanceOf[stor13]
            balanceOf[stor13] -= 2 * price * msg.value
            require (2 * price * msg.value) + balanceOf[arg1] >= balanceOf[arg1]
            balanceOf[address(arg1)] = (2 * price * msg.value) + balanceOf[arg1]
            require 2 * price * msg.value <= _icoSupply
            _icoSupply -= 2 * price * msg.value
            emit TokenPurchase(msg.value, 2 * price * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    if 1000 * block.timestamp > startTime + (168000 * 24 * 3600):
        if 1000 * block.timestamp < 4 * startTime + (168000 * 24 * 3600):
            stage = 1
        if 1000 * block.timestamp > 4 * startTime + (168000 * 24 * 3600):
            stage = 2
    if 1000 * block.timestamp >= startTime + (168000 * 24 * 3600):
        require 1000 * block.timestamp > 4 * startTime + (168000 * 24 * 3600)
        require 1000 * block.timestamp <= endTime
    require msg.value
    require minContribAmount <= msg.value
    if msg.value:
        require msg.value
        require price * msg.value / msg.value == price
    require stage <= 2
    if stage:
        require _icoSupply >= price * msg.value
        require msg.value + fundRaised >= fundRaised
        fundRaised += msg.value
        require price * msg.value <= balanceOf[stor13]
        balanceOf[stor13] += -1 * price * msg.value
        require (price * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = (price * msg.value) + balanceOf[msg.sender]
        require price * msg.value <= _icoSupply
        _icoSupply += -1 * price * msg.value
        emit TokenPurchase(msg.value, price * msg.value, msg.sender, msg.sender);
    else:
        if 1000 * block.timestamp > startTime + (168000 * 24 * 3600):
            require _icoSupply >= price * msg.value
            require msg.value + fundRaised >= fundRaised
            fundRaised += msg.value
            require price * msg.value <= balanceOf[stor13]
            balanceOf[stor13] += -1 * price * msg.value
            require (price * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = (price * msg.value) + balanceOf[msg.sender]
            require price * msg.value <= _icoSupply
            _icoSupply += -1 * price * msg.value
            emit TokenPurchase(msg.value, price * msg.value, msg.sender, msg.sender);
        else:
            if price * msg.value:
                require price * msg.value
                require 2 * price * msg.value / price * msg.value == 2
            require _icoSupply >= 2 * price * msg.value
            require msg.value + fundRaised >= fundRaised
            fundRaised += msg.value
            require 2 * price * msg.value <= balanceOf[stor13]
            balanceOf[stor13] -= 2 * price * msg.value
            require (2 * price * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = (2 * price * msg.value) + balanceOf[msg.sender]
            require 2 * price * msg.value <= _icoSupply
            _icoSupply -= 2 * price * msg.value
            emit TokenPurchase(msg.value, 2 * price * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}

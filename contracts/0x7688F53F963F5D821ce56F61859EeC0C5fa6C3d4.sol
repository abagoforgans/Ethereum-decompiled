contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor1;
uint256 stor2;
address stor3;
mapping of uint256 stor4;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;

function _fallback() payable {
    stor0 = 0
    stor1 = 10^14
    stor2 = 300 * 10^6
    stor9 = 30
    stor10 = 3 * 10^13
    stor11 = 3 * 10^17
    stor12 = 30 * 10^18
    require not msg.value
    stor3 = msg.sender
    stor4[address(msg.sender)] = stor1
    emit Transfer(stor1, 0, stor3);
    return code.data[211 len 4792]
}



// =====================  Runtime code  =====================


const name = 'GTO'

const decimals = 5

const symbol = 'GTO'


uint8 stor0;
uint256 _totalSupply;
uint256 _originalBuyPrice;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor6;
mapping of uint256 deposit;
array of struct stor8;
uint256 stor9;
uint256 _icoSupply;
uint256 _minimumBuy;
uint256 _maximumBuy;

function totalSupply() {
    return _totalSupply
}

function _icoSupply() {
    return _icoSupply
}

function _totalSupply() {
    return _totalSupply
}

function _minimumBuy() {
    return _minimumBuy
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function _originalBuyPrice() {
    return _originalBuyPrice
}

function _maximumBuy() {
    return _maximumBuy
}

function isSellingNow() {
    return bool(stor0)
}

function owner() {
    return owner
}

function isApprovedInvestor(address arg1) {
    return bool(stor6[address(arg1)])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getDeposit(address arg1) {
    return deposit[address(arg1)]
}

function _selling() {
    return bool(stor0)
}

function turnOnSale() {
    require owner == msg.sender
    stor0 = 1
}

function turnOffSale() {
    require owner == msg.sender
    stor0 = 0
}

function setMaximumBuy(uint256 arg1) {
    require owner == msg.sender
    _maximumBuy = arg1
}

function setMinimumBuy(uint256 arg1) {
    require owner == msg.sender
    _minimumBuy = arg1
}

function setBuyPrice(uint256 arg1) {
    require owner == msg.sender
    _originalBuyPrice = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setIcoPercent(uint256 arg1) {
    require owner == msg.sender
    stor9 = arg1
    _icoSupply = arg1 * _totalSupply / 100
}

function withdraw() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 >= 0
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function addInvestorList(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function removeInvestorList(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
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
    return 1
}

function buyGifto() payable {
    require stor0
    require _icoSupply > 0
    require msg.value >= _minimumBuy
    require msg.value + deposit[address(msg.sender)] <= _maximumBuy
    if not deposit[address(msg.sender)]:
        if msg.value > 0:
            stor8.length++
            if not stor8.length <= stor8.length + 1:
                idx = stor8.length + 1
                while stor8.length > idx:
                    stor8[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor8[stor8.length].field_0 = msg.sender
    deposit[address(msg.sender)] += msg.value
}

function _fallback() payable {
    require stor0
    require _icoSupply > 0
    require msg.value >= _minimumBuy
    require msg.value + deposit[address(msg.sender)] <= _maximumBuy
    if not deposit[address(msg.sender)]:
        if msg.value > 0:
            stor8.length++
            if not stor8.length <= stor8.length + 1:
                idx = stor8.length + 1
                while stor8.length > idx:
                    stor8[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor8[stor8.length].field_0 = msg.sender
    deposit[address(msg.sender)] += msg.value
}

function returnETHforUnqualifiedBuyers(uint256 arg1, uint256 arg2) {
    require arg1 >= 0
    require arg1 <= arg2
    require arg2 < stor8.length
    require owner == msg.sender
    s = 0
    idx = arg1
    while idx <= arg2:
        require idx < stor8.length
        mem[0] = stor8[idx].field_0
        mem[32] = 6
        if stor6[stor8[idx].field_0]:
            s = s
            idx = idx + 1
            continue 
        require idx < stor8.length
        mem[32] = 7
        deposit[stor8[idx].field_0] = 0
        mem[0] = 8
        call stor8[idx].field_0 with:
           value deposit[stor8[idx].field_0] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        s = deposit[stor8[idx].field_0]
        idx = idx + 1
        continue 
}

function getAllBuyers() {
    if not stor8.length:
        mem[(32 * stor8.length) + 160] = 32
        mem[(32 * stor8.length) + 192] = stor8.length
        mem[(32 * stor8.length) + 224 len floor32(stor8.length)] = mem[160 len floor32(stor8.length)]
        return memory
          from (32 * stor8.length) + 160
           len (96 * stor8.length) + 64
    mem[160] = address(stor8.field_0)
    idx = 160
    s = 0
    while (32 * stor8.length) + 128 > idx:
        mem[idx + 32] = stor8[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor8.length) + 224 len floor32(stor8.length)] = mem[160 len floor32(stor8.length)]
    return Array(len=stor8.length, data=mem[160 len floor32(stor8.length)], mem[(32 * stor8.length) + floor32(stor8.length) + 224 len (32 * stor8.length) - floor32(stor8.length)]), 
}

function getNormalBuyers() {
    idx = 0
    s = 0
    while idx < stor8.length:
        mem[0] = stor8[idx].field_0
        mem[32] = 6
        if stor6[stor8[idx].field_0]:
            idx = idx + 1
            s = s
            continue 
        require idx < stor8.length
        mem[0] = 8
        require s < stor8.length
        mem[(32 * s) + 224] = stor8[idx].field_0
        idx = idx + 1
        s = s + 1
        continue 
    if (32 * s) + 256 < (32 * stor8.length) + 224:
        mem[(32 * stor8.length) + 224] = s
        t = 0
        while t < s:
            require t < stor8.length
            if mem[(32 * t) + 236 len 20]:
                require t < stor8.length
                require t < s
                mem[(32 * stor8.length) + (32 * t) + 256] = mem[(32 * t) + 236 len 20]
            t = t + 1
            continue 
        mem[(32 * stor8.length) + (32 * s) + 320 len floor32(s)] = mem[(32 * stor8.length) + 256 len floor32(s)]
        return Array(len=s, data=mem[(32 * stor8.length) + 256 len floor32(s)], mem[(32 * stor8.length) + (32 * s) + floor32(s) + 320 len (32 * s) - floor32(s)]), 
    mem[(32 * s) + 256] = s
    t = 0
    while t < s:
        require t < stor8.length
        if mem[(32 * t) + 236 len 20]:
            require t < stor8.length
            require t < s, None
            mem[(32 * s) + (32 * t) + 288] = mem[(32 * t) + 236 len 20]
        t = t + 1
        continue 
    mem[(64 * s) + 288] = 32
    mem[(64 * s) + 320] = s, None
    mem[(64 * s) + 352 len floor32(s)] = mem[(32 * s) + 288 len floor32(s)]
    return memory
      from (64 * s) + 288
       len (32 * s, None) + 64
}

function getInvestorBuyers() {
    idx = 0
    s = 0
    while idx < stor8.length:
        mem[0] = stor8[idx].field_0
        mem[32] = 6
        if bool(stor6[stor8[idx].field_0]) != 1:
            idx = idx + 1
            s = s
            continue 
        require idx < stor8.length
        mem[0] = 8
        require s < stor8.length
        mem[(32 * s) + 224] = stor8[idx].field_0
        idx = idx + 1
        s = s + 1
        continue 
    if (32 * s) + 256 < (32 * stor8.length) + 224:
        mem[(32 * stor8.length) + 224] = s
        t = 0
        while t < s:
            require t < stor8.length
            if mem[(32 * t) + 236 len 20]:
                require t < stor8.length
                require t < s
                mem[(32 * stor8.length) + (32 * t) + 256] = mem[(32 * t) + 236 len 20]
            t = t + 1
            continue 
        mem[(32 * stor8.length) + (32 * s) + 320 len floor32(s)] = mem[(32 * stor8.length) + 256 len floor32(s)]
        return Array(len=s, data=mem[(32 * stor8.length) + 256 len floor32(s)], mem[(32 * stor8.length) + (32 * s) + floor32(s) + 320 len (32 * s) - floor32(s)]), 
    mem[(32 * s) + 256] = s
    t = 0
    while t < s:
        require t < stor8.length
        if mem[(32 * t) + 236 len 20]:
            require t < stor8.length
            require t < s, None
            mem[(32 * s) + (32 * t) + 288] = mem[(32 * t) + 236 len 20]
        t = t + 1
        continue 
    mem[(64 * s) + 288] = 32
    mem[(64 * s) + 320] = s, None
    mem[(64 * s) + 352 len floor32(s)] = mem[(32 * s) + 288 len floor32(s)]
    return memory
      from (64 * s) + 288
       len (32 * s, None) + 64
}

function deliveryToken(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    require _originalBuyPrice > 0
    require arg1 >= 0
    require arg1 <= arg2
    require arg2 < stor8.length
    require balanceOf[stor3] >= _icoSupply
    s = 0
    idx = arg1
    t = 0
    while idx <= arg2:
        require idx < stor8.length
        mem[0] = stor8[idx].field_0
        mem[32] = 6
        if not stor6[stor8[idx].field_0]:
            s = s
            idx = idx + 1
            t = t
            continue 
        require idx < stor8.length
        mem[0] = stor8[idx].field_0
        mem[32] = 7
        if deposit[stor8[idx].field_0] * _originalBuyPrice / 10^18 > _icoSupply:
            s = deposit[stor8[idx].field_0] * _originalBuyPrice / 10^18
            idx = idx + 1
            t = t
            continue 
        if deposit[stor8[idx].field_0] * _originalBuyPrice / 10^18 <= 0:
            s = deposit[stor8[idx].field_0] * _originalBuyPrice / 10^18
            idx = idx + 1
            t = t
            continue 
        balanceOf[stor3] -= deposit[stor8[idx].field_0] * _originalBuyPrice / 10^18
        require idx < stor8.length
        balanceOf[stor8[idx].field_0] += deposit[stor8[idx].field_0] * _originalBuyPrice / 10^18
        _icoSupply -= deposit[stor8[idx].field_0] * _originalBuyPrice / 10^18
        mem[96] = deposit[stor8[idx].field_0] * _originalBuyPrice / 10^18
        emit Transfer((deposit[stor8[idx].field_0] * _originalBuyPrice / 10^18), owner, stor8[idx].field_0);
        mem[0] = stor8[idx].field_0
        mem[32] = 7
        deposit[stor8[idx].field_0] = 0
        s = deposit[stor8[idx].field_0] * _originalBuyPrice / 10^18
        idx = idx + 1
        t = deposit[stor8[idx].field_0] + t
        continue 
    call owner with:
       value t wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}

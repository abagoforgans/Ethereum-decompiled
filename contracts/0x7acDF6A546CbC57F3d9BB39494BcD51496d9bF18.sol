contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor2; offset 8
uint256 stor2;
uint256 stor3;
uint128 stor4; offset 160
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
mapping of uint256 stor9;

function _fallback() payable {
    Mask(96, 0, stor4.field_160) = 0
    mem[96 len -4059] = code.data[4774 len -4059]
    mem[64] = -3963
    stor0[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor1[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    uint8(stor2.field_0) = mem[223 len 1]
    Mask(248, 0, stor2.field_8) = 0
    address(stor4.field_0) = msg.sender
    if not mem[96]:
        stor3 = 0
    else:
        require mem[96]
        require mem[96] * 10^uint256(stor2.field_0) / mem[96] == 10^uint256(stor2.field_0)
        stor3 = mem[96] * 10^uint256(stor2.field_0)
    stor9[address(msg.sender)] = stor3
    Mask(96, 0, stor4.field_160) = Mask(96, 0, bool(mem[224]))
    stor5 = mem[256]
    stor6 = mem[288]
    stor7 = mem[320]
    stor8 = mem[352]
    require not stor7
    return code.data[715 len 4059]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
uint8 stor4; offset 160
address creatorAddress;
uint256 start;
uint256 end;
uint256 rate;
uint256 freeCount;
mapping of uint256 balanceOf;
mapping of uint8 buyCountOf;

function creator() {
    return creatorAddress
}

function buyCountOf(address arg1) {
    return buyCountOf[arg1]
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function rate() {
    return rate
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function autoSend() {
    return bool(uint8(stor4.field_160))
}

function freeCount() {
    return freeCount
}

function start() {
    return start
}

function end() {
    return end
}

function getETH() {
    require eth.balance(this.address) > 0
    require msg.sender == creatorAddress
    call creatorAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg1 != msg.sender
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
}

function _fallback() payable {
    require uint8(stor4.field_160)
    require block.timestamp >= start
    require block.timestamp <= end
    if not rate:
        require freeCount * 10^decimals > 0
        require creatorAddress != msg.sender
        require balanceOf[address(stor4.field_0)] >= freeCount * 10^decimals
        if not rate:
            require buyCountOf[address(msg.sender)] < 1
        balanceOf[address(msg.sender)] += freeCount * 10^decimals
        balanceOf[address(stor4.field_0)] += -1 * freeCount * 10^decimals
        emit Transfer((freeCount * 10^decimals), creatorAddress, msg.sender);
    else:
        require msg.value
        require msg.value
        require msg.value * rate / msg.value == rate
        require msg.value * rate
        require msg.value * rate
        require msg.value * rate * 10^decimals / msg.value * rate == 10^decimals
        require msg.value * rate * 10^decimals / 10^18 > 0
        require creatorAddress != msg.sender
        require balanceOf[address(stor4.field_0)] >= msg.value * rate * 10^decimals / 10^18
        if not rate:
            require buyCountOf[address(msg.sender)] < 1
        balanceOf[address(msg.sender)] += msg.value * rate * 10^decimals / 10^18
        balanceOf[address(stor4.field_0)] -= msg.value * rate * 10^decimals / 10^18
        emit Transfer((msg.value * rate * 10^decimals / 10^18), creatorAddress, msg.sender);
    require balanceOf[address(msg.sender)] + balanceOf[address(stor4.field_0)] == balanceOf[address(msg.sender)] + balanceOf[address(stor4.field_0)]
    if not rate:
        buyCountOf[address(msg.sender)] = uint8(buyCountOf[address(msg.sender)] + 1)
}



}

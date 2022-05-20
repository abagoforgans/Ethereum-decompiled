contract main {




// =====================  Runtime code  =====================


#
#  - freezeDeliver(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5)
#
const name = 'ODIN'

const decimals = 18

const symbol = 'ODIN'


uint256 stor0;
uint256 stor1;
uint256 totalSupply;
uint256 minInvEth;
uint256 maxInvEth;
uint256 sellStartTime;
uint256 sellDeadline1;
uint256 sellDeadline2;
uint256 freezeDuration;
uint256 ethOdinRate1;
uint256 ethOdinRate2;
uint8 running;
uint8 buyable; offset 8
address stor11;
address stor11; offset 16
mapping of uint256 allowance;
mapping of uint8 stor13;
mapping of uint256 stor14;
array of struct balanceOf;

function totalSupply() {
    return totalSupply
}

function freezeDuration() {
    return freezeDuration
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)].field_0
}

function maxInvEth() {
    return maxInvEth
}

function buyable() {
    return bool(buyable)
}

function sellDeadline2() {
    return sellDeadline2
}

function whitelist(address arg1) {
    return bool(stor13[arg1])
}

function ethOdinRate2() {
    return ethOdinRate2
}

function sellStartTime() {
    return sellStartTime
}

function minInvEth() {
    return minInvEth
}

function running() {
    return bool(running)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function ethOdinRate1() {
    return ethOdinRate1
}

function sellDeadline1() {
    return sellDeadline1
}

function pause() {
    require msg.sender == address(stor11.field_16)
    require running
    running = 0
    emit Pause()
}

function start() {
    require msg.sender == address(stor11.field_16)
    require not running
    running = 1
    emit BeginRunning()
}

function transferOwnership(address arg1) {
    require msg.sender == address(stor11.field_16)
    if arg1:
        address(stor11.field_16) = arg1
}

function setPublicOfferLimit(uint256 arg1, uint256 arg2) {
    require msg.sender == address(stor11.field_16)
    minInvEth = arg1
    maxInvEth = arg2
}

function setPublicOfferPrice(uint256 arg1, uint256 arg2) {
    require msg.sender == address(stor11.field_16)
    ethOdinRate1 = arg1
    ethOdinRate2 = arg2
}

function setPublicOfferDate(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == address(stor11.field_16)
    sellStartTime = arg1
    sellDeadline1 = arg2
    sellDeadline2 = arg3
}

function pauseSell() {
    require msg.sender == address(stor11.field_16)
    require buyable
    require block.timestamp >= sellStartTime
    require block.timestamp <= sellDeadline2
    require running
    buyable = 0
    emit PauseSell()
}

function beginSell() {
    require msg.sender == address(stor11.field_16)
    if buyable:
        if block.timestamp >= sellStartTime:
            require block.timestamp > sellDeadline2
    require running
    buyable = 1
    emit BeginSell()
}

function approve(address arg1, uint256 arg2) {
    require running
    if arg2:
        if allowance[msg.sender][address(arg1)]:
            return 0
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) {
    require msg.sender == address(stor11.field_16)
    require arg2 <= balanceOf[msg.sender].field_0
    require arg2 <= balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)].field_0 -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    require stor0
    stor1 = totalSupply - arg2 / stor0
    emit Burn(arg2, arg1);
}

function withdraw() {
    require msg.sender == address(stor11.field_16)
    require eth.balance(this.address) > 0
    call address(stor11.field_16) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(eth.balance(this.address), this.address, address(stor11.field_16));
}

function freezeOf(address arg1) {
    idx = 0
    s = 0
    while idx < balanceOf[address(arg1)].field_256:
        require idx < balanceOf[address(arg1)].field_512
        mem[0] = sha3(address(arg1), 15) + 2
        if block.timestamp >= balanceOf[address(arg1)][idx + 2].field_0:
            idx = idx + 1
            s = s
            continue 
        require idx < balanceOf[address(arg1)].field_256
        mem[0] = sha3(address(arg1), 15) + 1
        idx = idx + 1
        s = s + balanceOf[address(arg1)][idx + 1].field_0
        continue 
    return s
}

function addWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == address(stor11.field_16)
    require 255 >= arg1.length
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = 13
        if not stor13[mem[(32 * uint8(idx)) + 140 len 20]]:
            require uint8(idx) < arg1.length
            mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
            mem[32] = 13
            stor13[mem[(32 * uint8(idx)) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == address(stor11.field_16)
    if arg1:
        require arg2 + balanceOf[address(arg1)].field_0 >= balanceOf[address(arg1)].field_0
        balanceOf[address(arg1)].field_0 += arg2
        require arg2 + totalSupply >= totalSupply
        totalSupply += arg2
        require stor0
        stor1 = arg2 + totalSupply / stor0
        emit Transfer(arg2, 0, this.address);
        emit Transfer(arg2, 0, arg1);
    else:
        require arg2 + balanceOf[address(stor11.field_0)].field_0 >= balanceOf[address(stor11.field_0)].field_0
        balanceOf[address(stor11.field_0)].field_0 += arg2
        require arg2 + totalSupply >= totalSupply
        totalSupply += arg2
        require stor0
        stor1 = arg2 + totalSupply / stor0
        emit Transfer(arg2, 0, this.address);
        emit Transfer(arg2, 0, address(stor11.field_16));
}

function airDeliver(address arg1, uint256 arg2) {
    require msg.sender == address(stor11.field_16)
    require address(stor11.field_16) != arg1
    require arg2 > 0
    require arg2 <= balanceOf[address(stor11.field_0)].field_0
    if arg2 >= stor1:
        require arg2 <= balanceOf[address(stor11.field_0)].field_0
        balanceOf[address(stor11.field_0)].field_0 -= arg2
        require arg2 + balanceOf[arg1].field_0 >= balanceOf[arg1].field_0
        balanceOf[address(arg1)].field_0 = arg2 + balanceOf[arg1].field_0
        emit Transfer(arg2, address(stor11.field_16), arg1);
    else:
        require stor0 * arg2 <= balanceOf[address(stor11.field_0)].field_0
        balanceOf[address(stor11.field_0)].field_0 += -1 * stor0 * arg2
        require (stor0 * arg2) + balanceOf[arg1].field_0 >= balanceOf[arg1].field_0
        balanceOf[address(arg1)].field_0 = (stor0 * arg2) + balanceOf[arg1].field_0
        emit Transfer((stor0 * arg2), address(stor11.field_16), arg1);
}

function transfer(address arg1, uint256 arg2) {
    require running
    require calldata.size >= 68
    require arg1
    idx = 0
    s = 0
    while idx < balanceOf[address(msg.sender)].field_256:
        require idx < balanceOf[address(msg.sender)].field_512
        mem[0] = sha3(address(msg.sender), 15) + 2
        if block.timestamp >= balanceOf[address(msg.sender)][idx + 2].field_0:
            idx = idx + 1
            s = s
            continue 
        require idx < balanceOf[address(msg.sender)].field_256
        mem[0] = sha3(address(msg.sender), 15) + 1
        idx = idx + 1
        s = s + balanceOf[address(msg.sender)][idx + 1].field_0
        continue 
    require s <= balanceOf[msg.sender].field_0
    require arg2 <= balanceOf[msg.sender].field_0 - s
    require arg2 <= balanceOf[msg.sender].field_0
    balanceOf[msg.sender].field_0 -= arg2
    require arg2 + balanceOf[arg1].field_0 >= balanceOf[arg1].field_0
    balanceOf[address(arg1)].field_0 = arg2 + balanceOf[arg1].field_0
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require running
    require calldata.size >= 100
    require arg1
    require arg2
    require arg3 <= allowance[address(arg1)][msg.sender]
    idx = 0
    s = 0
    while idx < balanceOf[address(arg1)].field_256:
        require idx < balanceOf[address(arg1)].field_512
        mem[0] = sha3(address(arg1), 15) + 2
        if block.timestamp >= balanceOf[address(arg1)][idx + 2].field_0:
            idx = idx + 1
            s = s
            continue 
        require idx < balanceOf[address(arg1)].field_256
        mem[0] = sha3(address(arg1), 15) + 1
        idx = idx + 1
        s = s + balanceOf[address(arg1)][idx + 1].field_0
        continue 
    require s <= balanceOf[address(arg1)].field_0
    require arg3 <= balanceOf[address(arg1)].field_0 - s
    require arg3 <= balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)].field_0 -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 + balanceOf[address(arg2)].field_0 >= balanceOf[address(arg2)].field_0
    balanceOf[address(arg2)].field_0 += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function airDeliverMulti(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == address(stor11.field_16)
    require 255 >= arg1.length
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        _25 = mem[(32 * uint8(idx)) + 128]
        require msg.sender == address(stor11.field_16)
        require address(stor11.field_16) != mem[(32 * uint8(idx)) + 140 len 20]
        require arg2 > 0
        require arg2 <= balanceOf[address(stor11.field_0)].field_0
        if arg2 >= stor1:
            require arg2 <= balanceOf[address(stor11.field_0)].field_0
            balanceOf[address(stor11.field_0)].field_0 -= arg2
            require arg2 + balanceOf[mem[(32 * uint8(idx)) + 140 len 20]].field_0 >= balanceOf[mem[(32 * uint8(idx)) + 140 len 20]].field_0
            mem[32] = 15
            balanceOf[address(mem[(32 * uint8(idx)) + 128])].field_0 = arg2 + balanceOf[mem[(32 * uint8(idx)) + 140 len 20]].field_0
            mem[(32 * arg1.length) + 128] = arg2
            mem[0] = address(_25)
            emit Transfer(arg2, address(stor11.field_16), address(_25));
        else:
            require stor0 * arg2 <= balanceOf[address(stor11.field_0)].field_0
            balanceOf[address(stor11.field_0)].field_0 += -1 * stor0 * arg2
            require (stor0 * arg2) + balanceOf[mem[(32 * uint8(idx)) + 140 len 20]].field_0 >= balanceOf[mem[(32 * uint8(idx)) + 140 len 20]].field_0
            mem[32] = 15
            balanceOf[address(mem[(32 * uint8(idx)) + 128])].field_0 = (stor0 * arg2) + balanceOf[mem[(32 * uint8(idx)) + 140 len 20]].field_0
            mem[(32 * arg1.length) + 128] = stor0 * arg2
            mem[0] = address(_25)
            emit Transfer((stor0 * arg2), address(stor11.field_16), address(_25));
        idx = idx + 1
        continue 
}

function buyTokens() payable {
    require running
    require buyable
    require block.timestamp >= sellStartTime
    require block.timestamp <= sellDeadline2
    require 1 == bool(stor13[msg.sender])
    require msg.sender
    require msg.value >= minInvEth
    require msg.value <= maxInvEth
    require stor14[address(msg.sender)] + msg.value >= msg.value
    require stor14[address(msg.sender)] + msg.value <= maxInvEth
    if block.timestamp <= sellDeadline1:
        if msg.value:
            require msg.value
            require ethOdinRate1 * msg.value / msg.value == ethOdinRate1
        require stor14[address(msg.sender)] + msg.value >= msg.value
        stor14[address(msg.sender)] += msg.value
        require ethOdinRate1 * msg.value <= balanceOf[address(stor11.field_0)].field_0
        balanceOf[address(stor11.field_0)].field_0 += -1 * ethOdinRate1 * msg.value
        require (ethOdinRate1 * msg.value) + balanceOf[msg.sender].field_0 >= balanceOf[msg.sender].field_0
        balanceOf[address(msg.sender)].field_0 = (ethOdinRate1 * msg.value) + balanceOf[msg.sender].field_0
        emit Transfer((ethOdinRate1 * msg.value), address(stor11.field_16), msg.sender);
    else:
        if msg.value:
            require msg.value
            require ethOdinRate2 * msg.value / msg.value == ethOdinRate2
        require stor14[address(msg.sender)] + msg.value >= msg.value
        stor14[address(msg.sender)] += msg.value
        require ethOdinRate2 * msg.value <= balanceOf[address(stor11.field_0)].field_0
        balanceOf[address(stor11.field_0)].field_0 += -1 * ethOdinRate2 * msg.value
        require (ethOdinRate2 * msg.value) + balanceOf[msg.sender].field_0 >= balanceOf[msg.sender].field_0
        balanceOf[address(msg.sender)].field_0 = (ethOdinRate2 * msg.value) + balanceOf[msg.sender].field_0
        emit Transfer((ethOdinRate2 * msg.value), address(stor11.field_16), msg.sender);
}

function _fallback() payable {
    require running
    require buyable
    require block.timestamp >= sellStartTime
    require block.timestamp <= sellDeadline2
    require 1 == bool(stor13[msg.sender])
    require msg.sender
    require msg.value >= minInvEth
    require msg.value <= maxInvEth
    require stor14[address(msg.sender)] + msg.value >= msg.value
    require stor14[address(msg.sender)] + msg.value <= maxInvEth
    if block.timestamp <= sellDeadline1:
        if msg.value:
            require msg.value
            require ethOdinRate1 * msg.value / msg.value == ethOdinRate1
        require stor14[address(msg.sender)] + msg.value >= msg.value
        stor14[address(msg.sender)] += msg.value
        require ethOdinRate1 * msg.value <= balanceOf[address(stor11.field_0)].field_0
        balanceOf[address(stor11.field_0)].field_0 += -1 * ethOdinRate1 * msg.value
        require (ethOdinRate1 * msg.value) + balanceOf[msg.sender].field_0 >= balanceOf[msg.sender].field_0
        balanceOf[address(msg.sender)].field_0 = (ethOdinRate1 * msg.value) + balanceOf[msg.sender].field_0
        emit Transfer((ethOdinRate1 * msg.value), address(stor11.field_16), msg.sender);
    else:
        if msg.value:
            require msg.value
            require ethOdinRate2 * msg.value / msg.value == ethOdinRate2
        require stor14[address(msg.sender)] + msg.value >= msg.value
        stor14[address(msg.sender)] += msg.value
        require ethOdinRate2 * msg.value <= balanceOf[address(stor11.field_0)].field_0
        balanceOf[address(stor11.field_0)].field_0 += -1 * ethOdinRate2 * msg.value
        require (ethOdinRate2 * msg.value) + balanceOf[msg.sender].field_0 >= balanceOf[msg.sender].field_0
        balanceOf[address(msg.sender)].field_0 = (ethOdinRate2 * msg.value) + balanceOf[msg.sender].field_0
        emit Transfer((ethOdinRate2 * msg.value), address(stor11.field_16), msg.sender);
}

function airDeliverStandalone(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == address(stor11.field_16)
    require 255 >= arg1.length
    require arg1.length == arg2.length
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        _30 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < arg2.length
        require msg.sender == address(stor11.field_16)
        require address(stor11.field_16) != mem[(32 * uint8(idx)) + 140 len 20]
        require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] > 0
        require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] <= balanceOf[address(stor11.field_0)].field_0
        if mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] >= stor1:
            require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] <= balanceOf[address(stor11.field_0)].field_0
            balanceOf[address(stor11.field_0)].field_0 -= mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
            require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * uint8(idx)) + 140 len 20]].field_0 >= balanceOf[mem[(32 * uint8(idx)) + 140 len 20]].field_0
            mem[32] = 15
            balanceOf[address(mem[(32 * uint8(idx)) + 128])].field_0 = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * uint8(idx)) + 140 len 20]].field_0
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        else:
            require stor0 * mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] <= balanceOf[address(stor11.field_0)].field_0
            balanceOf[address(stor11.field_0)].field_0 += -1 * stor0 * mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
            require (stor0 * mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]) + balanceOf[mem[(32 * uint8(idx)) + 140 len 20]].field_0 >= balanceOf[mem[(32 * uint8(idx)) + 140 len 20]].field_0
            mem[32] = 15
            balanceOf[address(mem[(32 * uint8(idx)) + 128])].field_0 = (stor0 * mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]) + balanceOf[mem[(32 * uint8(idx)) + 140 len 20]].field_0
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = stor0 * mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        mem[0] = address(_30)
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], address(stor11.field_16), address(_30));
        idx = idx + 1
        continue 
}



}

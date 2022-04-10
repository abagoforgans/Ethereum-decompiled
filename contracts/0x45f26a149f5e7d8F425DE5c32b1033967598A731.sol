contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint8 stor3; offset 160
address stor3;

function _fallback() payable {
    uint8(stor3.field_160) = 0
    require not msg.value
    address(stor3.field_0) = msg.sender
    stor0 = 100000000 * 10^18
    stor1[address(stor3.field_0)] = 100000000 * 10^18
    return code.data[116 len 3284]
}



// =====================  Runtime code  =====================


const name = ' Studios Token'

const decimals = 18

const symbol = ''


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
uint256 cap;
uint256 rate;
uint256 startBlock;
uint256 endBlock;
uint256 sold;

function sold() {
    return sold
}

function endBlock() {
    return endBlock
}

function totalSupply() {
    return totalSupply
}

function rate() {
    return rate
}

function cap() {
    return cap
}

function startBlock() {
    return startBlock
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function endSale() {
    require owner == msg.sender
    cap = 0
    rate = 0
    startBlock = 0
    endBlock = 0
    sold = 0
}

function unpause() {
    require owner == msg.sender
    require uint8(stor3.field_160)
    uint8(stor3.field_160) = 0
    emit Unpause()
    return 1
}

function pause() {
    require owner == msg.sender
    require not uint8(stor3.field_160)
    uint8(stor3.field_160) = 1
    emit Pause()
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function startSale(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require owner == msg.sender
    require not cap
    require arg1 > 0
    require balanceOf[address(stor3.field_0)] >= arg1
    require arg2 > 0
    require block.number <= arg3
    require arg4 >= arg3
    cap = arg1
    rate = arg2
    startBlock = arg3
    endBlock = arg4
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function buy(address arg1) payable {
    require not uint8(stor3.field_160)
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value > 0
    require arg1
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require (rate * msg.value) + sold >= sold
    sold += rate * msg.value
    require (rate * msg.value) + sold <= cap
    require rate * msg.value <= balanceOf[address(stor3.field_0)]
    balanceOf[address(stor3.field_0)] += -1 * rate * msg.value
    require (rate * msg.value) + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = (rate * msg.value) + balanceOf[arg1]
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Sale(rate * msg.value, msg.value, owner, arg1);
}

function _fallback() payable {
    require not uint8(stor3.field_160)
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value > 0
    require msg.sender
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require (rate * msg.value) + sold >= sold
    sold += rate * msg.value
    require (rate * msg.value) + sold <= cap
    require rate * msg.value <= balanceOf[address(stor3.field_0)]
    balanceOf[address(stor3.field_0)] += -1 * rate * msg.value
    require (rate * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = (rate * msg.value) + balanceOf[msg.sender]
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Sale(rate * msg.value, msg.value, owner, msg.sender);
}



}

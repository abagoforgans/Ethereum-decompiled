contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint8 stor4; offset 160
address stor4;

function _fallback() payable {
    uint8(stor4.field_160) = 0
    require not msg.value
    require code.data[2294 len 20]
    require code.data[2314 len 32] > block.number
    require code.data[2346 len 32] > code.data[2314 len 32]
    address(stor4.field_0) = code.data[2294 len 20]
    stor0 = code.data[2314 len 32]
    stor1 = code.data[2346 len 32]
    return code.data[164 len 2118]
}



// =====================  Runtime code  =====================


const name = ' Token'

const decimals = 18

const symbol = ''

const firstTokenCap = 50000 * 10^18

const tokenCreationRate = 5000

const secondTokenCap = 4600000 * 10^18


uint256 fundingStartBlock;
uint256 fundingEndBlock;
uint256 locked_allocation;
uint256 unlockingBlock;
uint8 stor4; offset 160
address foundersAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;

function totalSupply() {
    return totalSupply
}

function founders() {
    return foundersAddress
}

function funding_ended() {
    return bool(uint8(stor4.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function fundingEndBlock() {
    return fundingEndBlock
}

function unlockingBlock() {
    return unlockingBlock
}

function fundingStartBlock() {
    return fundingStartBlock
}

function locked_allocation() {
    return locked_allocation
}

function finalize() {
    require block.number > fundingEndBlock
    locked_allocation = 10 * totalSupply / 100
    balanceOf[address(stor4.field_0)] = 10 * totalSupply / 100
    totalSupply += 10 * totalSupply / 100
    unlockingBlock = block.number + (240 * 24 * 3600)
    uint8(stor4.field_160) = 1
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor4.field_160)
    require foundersAddress != msg.sender
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFounders(address arg1, uint256 arg2) {
    require uint8(stor4.field_160)
    require block.number > unlockingBlock
    require foundersAddress == msg.sender
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require not uint8(stor4.field_160)
    require block.number >= fundingStartBlock
    require block.number <= fundingEndBlock
    require msg.value
    totalSupply += 5000 * msg.value
    balanceOf[address(msg.sender)] += 5000 * msg.value
    call foundersAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer((5000 * msg.value), 0, msg.sender);
}



}

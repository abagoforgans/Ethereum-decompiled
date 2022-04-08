contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint8 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
uint256 stor10;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor10 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor5 = code.data[3429 len 32]
    stor6 = code.data[3429 len 32] + 5663
    stor7 = code.data[3429 len 32] + 79282
    return code.data[164 len 3265]
}



// =====================  Runtime code  =====================


const name = 'Etch Reward Token'

const decimals = 18

const symbol = 'ETCHR'

const BENEFICIARY = 0x651a3731f717a17777c9d8d6f152aa9284978ea3

const PRICE = 8

const AVG_BLOCKS_24H = 5663

const MAX_ETHER_24H = 40 * 10^18

const ETHER_CAP = 2660 * 10^18

const AVG_BLOCKS_02W = 79282


uint8 stor0; offset 160
address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
uint8 stor3;
uint256 totalEther;
uint256 blockStart;
uint256 block24h;
uint256 block02w;
address icoContractAddress;
mapping of uint8 stor9;
uint256 blockNumber;

function totalSupply() {
    return totalSupply
}

function isContributor(address arg1) {
    return bool(stor9[address(arg1)])
}

function block02w() {
    return block02w
}

function blockNumber() {
    return blockNumber
}

function block24h() {
    return block24h
}

function paused() {
    return bool(stor0)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function blockStart() {
    return blockStart
}

function owner() {
    return owner
}

function totalEther() {
    return totalEther
}

function icoContract() {
    return icoContractAddress
}

function transfer(address arg1, uint256 arg2) {
    revert
}

function getBlock() {
    if not blockNumber:
        return block.number
    return blockNumber
}

function addContributor(address arg1) {
    require owner == msg.sender
    stor9[address(arg1)] = 1
}

function setIcoContract(address arg1) {
    require owner == msg.sender
    icoContractAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function unpause() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
    return 1
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
    return 1
}

function migrate(address arg1) {
    require icoContractAddress
    require icoContractAddress == msg.sender
    require not stor0
    if not blockNumber:
        require block.number >= block02w
    else:
        require blockNumber >= block02w
    require balanceOf[address(arg1)] <= totalSupply
    totalSupply -= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
}

function buy() payable {
    require not stor3
    stor3 = 1
    require bool(stor9[address(msg.sender)]) == 1
    require not stor0
    if not blockNumber:
        require block.number >= blockStart
        require block02w > block.number
        if block.number < block24h:
            require balanceOf[address(msg.sender)] <= 0
            require msg.value <= 40 * 10^18
    else:
        require blockNumber >= blockStart
        require block02w > blockNumber
        if blockNumber < block24h:
            require balanceOf[address(msg.sender)] <= 0
            require msg.value <= 40 * 10^18
    require msg.value + totalEther >= totalEther
    require msg.value + totalEther <= 2660 * 10^18
    if msg.value:
        require msg.value
        require 8 * msg.value / msg.value == 8
    require (8 * msg.value) + totalSupply >= totalSupply
    totalSupply += 8 * msg.value
    require (8 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 8 * msg.value
    require msg.value + totalEther >= totalEther
    call 0x651a3731f717a17777c9d8d6f152aa9284978ea3 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor3 = 0
}

function _fallback() payable {
    require not stor3
    stor3 = 1
    require bool(stor9[address(msg.sender)]) == 1
    require not stor0
    if not blockNumber:
        require block.number >= blockStart
        require block02w > block.number
        if block.number < block24h:
            require balanceOf[address(msg.sender)] <= 0
            require msg.value <= 40 * 10^18
    else:
        require blockNumber >= blockStart
        require block02w > blockNumber
        if blockNumber < block24h:
            require balanceOf[address(msg.sender)] <= 0
            require msg.value <= 40 * 10^18
    require msg.value + totalEther >= totalEther
    require msg.value + totalEther <= 2660 * 10^18
    if msg.value:
        require msg.value
        require 8 * msg.value / msg.value == 8
    require (8 * msg.value) + totalSupply >= totalSupply
    totalSupply += 8 * msg.value
    require (8 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 8 * msg.value
    require msg.value + totalEther >= totalEther
    call 0x651a3731f717a17777c9d8d6f152aa9284978ea3 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor3 = 0
}



}

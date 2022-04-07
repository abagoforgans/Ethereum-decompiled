contract main {


// =======================  Init code  ======================


address stor1;
uint256 stor2;
uint256 stor3;
uint8 stor4;
uint256 stor5;

function _fallback() payable {
    stor3 = 10000
    stor4 = 0
    require not msg.value
    stor1 = msg.sender
    stor2 = 0
    stor4 = 0
    stor5 = block.number + 100000
    return code.data[99 len 2662]
}



// =====================  Runtime code  =====================


const name = 'A'

const decimals = 18

const symbol = ''


address owner;
uint256 totalSupply;
uint256 exchangeRate;
uint8 stor4;
uint256 saleEndBlock;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function exchangeRate() {
    return exchangeRate
}

function saleEndBlock() {
    return saleEndBlock
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

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function lock() {
    if owner != msg.sender:
        return 0
    stor4 = 1
    return 1
}

function unlock() {
    if owner == msg.sender:
        stor4 = 0
        return 0
    else:
        return 0
}

function transferOwnership(address arg1) {
    if owner == msg.sender:
        if arg1:
            owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function buy() payable {
    require not stor4
    require msg.value >= 10^15
    require block.number <= saleEndBlock
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if msg.value:
        require msg.value
        require exchangeRate * msg.value / msg.value == exchangeRate
    if exchangeRate > 5000:
        exchangeRate -= 100
    require (exchangeRate * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += exchangeRate * msg.value
    require (exchangeRate * msg.value) + totalSupply >= totalSupply
    totalSupply += exchangeRate * msg.value
    emit Minted((exchangeRate * msg.value), msg.sender);
    emit Transfer((exchangeRate * msg.value), this.address, msg.sender);
}

function _fallback() payable {
    require not stor4
    require msg.value >= 10^15
    require block.number <= saleEndBlock
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if msg.value:
        require msg.value
        require exchangeRate * msg.value / msg.value == exchangeRate
    if exchangeRate > 5000:
        exchangeRate -= 100
    require (exchangeRate * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += exchangeRate * msg.value
    require (exchangeRate * msg.value) + totalSupply >= totalSupply
    totalSupply += exchangeRate * msg.value
    emit Minted((exchangeRate * msg.value), msg.sender);
    emit Transfer((exchangeRate * msg.value), this.address, msg.sender);
}



}

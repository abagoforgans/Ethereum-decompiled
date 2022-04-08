contract main {


// =======================  Init code  ======================


address stor1;
uint256 stor2;
uint8 stor3;

function _fallback() payable {
    stor3 = 1
    require not msg.value
    stor1 = code.data[1841 len 20]
    stor2 = code.data[1861 len 32]
    return code.data[101 len 1728]
}



// =====================  Runtime code  =====================


const name = 'Meme Network Token'

const decimals = 18

const tokenCreationCap = 1000000 * 10^18

const symbol = 'MNT'

const tokenCreationRate = 10


uint256 totalSupply;
address devAddress;
uint256 endingBlock;
uint8 stor3;
mapping of uint256 balanceOf;

function totalSupply() {
    return totalSupply
}

function devAddress() {
    return devAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function endingBlock() {
    return endingBlock
}

function funding() {
    return bool(stor3)
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function create() payable {
    require stor3
    require block.number <= endingBlock
    require msg.value
    require msg.value <= -totalSupply + 1000000 * 10^18 / 10
    totalSupply += 10 * msg.value
    balanceOf[address(msg.sender)] += 10 * msg.value
    emit Transfer((10 * msg.value), 0, msg.sender);
}

function finalize() {
    require stor3
    if block.number <= endingBlock:
        require totalSupply >= 1000000 * 10^18
    stor3 = 0
    balanceOf[stor1] = -totalSupply + balanceOf[stor1] + 1200000 * 10^18
    emit Transfer((-totalSupply + 1200000 * 10^18), 0, devAddress);
    call devAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}

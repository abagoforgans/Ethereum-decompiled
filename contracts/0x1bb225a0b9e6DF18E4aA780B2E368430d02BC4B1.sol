contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor2;
address stor2; offset 8
address stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    uint8(stor2.field_0) = 0
    require not msg.value
    stor3 = code.data[1367 len 20]
    stor4 = code.data[1387 len 32]
    stor5 = code.data[1419 len 32]
    address(stor2.field_8) = code.data[1367 len 20]
    stor0 = 0
    return code.data[149 len 1206]
}



// =====================  Runtime code  =====================


const decimals = 18

const tokenExchangeRate = 13 * 10^14

const tokenCap = 13000000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
uint8 stor2;
address contractOwner; offset 8
address massEthFundAddress;
uint256 presaleStartBlock;
uint256 presaleEndBlock;

function totalSupply() {
    return totalSupply
}

function presaleStartBlock() {
    return presaleStartBlock
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function presaleEndBlock() {
    return presaleEndBlock
}

function isEnded() {
    return bool(stor2)
}

function contractOwner() {
    return contractOwner
}

function massEthFund() {
    return massEthFundAddress
}

function endPreSale() {
    require contractOwner == msg.sender
    require not stor2
    if block.number < presaleEndBlock:
        require 13000000 * 10^18 == totalSupply
    stor2 = 1
    call massEthFundAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not stor2
    require block.number >= presaleStartBlock
    require block.number <= presaleEndBlock
    require msg.value
    require msg.value
    require 13 * 10^14 * msg.value / msg.value == 13 * 10^14
    require (13 * 10^14 * msg.value) + totalSupply >= totalSupply
    require 13000000 * 10^18 >= (13 * 10^14 * msg.value) + totalSupply
    totalSupply += 13 * 10^14 * msg.value
    balanceOf[address(msg.sender)] += 13 * 10^14 * msg.value
    emit CreatePreSale((13 * 10^14 * msg.value), msg.sender);
}



}

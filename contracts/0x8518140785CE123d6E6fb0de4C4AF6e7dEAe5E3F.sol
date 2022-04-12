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
    stor3 = code.data[1390 len 20]
    stor4 = code.data[1410 len 32]
    stor5 = code.data[1442 len 32]
    address(stor2.field_8) = code.data[1390 len 20]
    stor0 = 0
    return code.data[158 len 1220]
}



// =====================  Runtime code  =====================


const decimals = 18

const tokenExchangeRate = 220

const tokenCap = 10000000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
uint8 stor2;
address contractOwner; offset 8
address sub_ccbb1e40Address;
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

function sub_ccbb1e40(?) {
    return sub_ccbb1e40Address
}

function contractOwner() {
    return contractOwner
}

function endPreSale() {
    require contractOwner == msg.sender
    require not stor2
    if block.number < presaleEndBlock:
        require 10000000 * 10^18 == totalSupply
    stor2 = 1
    call sub_ccbb1e40Address with:
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
    require 220 * msg.value / msg.value == 220
    require (220 * msg.value) + totalSupply >= totalSupply
    require 10000000 * 10^18 >= (220 * msg.value) + totalSupply
    totalSupply += 220 * msg.value
    balanceOf[address(msg.sender)] += 220 * msg.value
    emit CreatePreSale((220 * msg.value), msg.sender);
}



}

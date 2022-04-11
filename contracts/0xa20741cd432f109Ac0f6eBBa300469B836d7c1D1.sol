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
    stor3 = code.data[999 len 20]
    stor4 = code.data[1019 len 32]
    stor5 = code.data[1051 len 32]
    address(stor2.field_8) = code.data[999 len 20]
    stor0 = 0
    return code.data[149 len 838]
}



// =====================  Runtime code  =====================


const decimals = 18


uint256 totalSupply;
mapping of uint256 balanceOf;
uint8 stor2;
address stor2; offset 8
address massEthFundAddress;
uint256 stor4;
uint256 stor5;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function isEnded() {
    return bool(uint8(stor2.field_0))
}

function massEthFund() {
    return massEthFundAddress
}

function endPreSale() {
    require address(stor2.field_8) == msg.sender
    require not uint8(stor2.field_0)
    if block.number < stor5:
        require 5628548823637467037500 * 3600 == totalSupply
    uint8(stor2.field_0) = 1
    call massEthFundAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not uint8(stor2.field_0)
    require block.number >= stor4
    require block.number <= stor5
    if msg.value:
        require msg.value
        require 6232 * msg.value / msg.value == 6232
    require (6232 * msg.value) + totalSupply >= totalSupply
    require 5628548823637467037500 * 3600 >= (6232 * msg.value) + totalSupply
    totalSupply += 6232 * msg.value
    balanceOf[address(msg.sender)] += 6232 * msg.value
}



}

contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 3803]




// =====================  Runtime code  =====================


const name = 'IcoDigitalFund'

const decimals = 0

const multisig = 0x6f277a0c36184ad4d1c26fdf8c97637c38733b29

const symbol = 'IDF'

const getPrice = 5000

const INITIAL_SUPPLY = 10 * 10^6

const PRICE = 5000


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function CrowdsaleToken() {
    totalSupply = 10 * 10^6
    balanceOf[address(msg.sender)] = 10 * 10^6
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 0
}

function createTokens(address arg1) payable {
    require msg.value
    require msg.value
    require 5000 * msg.value / msg.value == 5000
    require 5000 * msg.value == (10^18 * 5000 * msg.value / 10^18) + (5000 * msg.value % 10^18)
    require totalSupply + (5000 * msg.value / 10^18) >= totalSupply
    totalSupply += 5000 * msg.value / 10^18
    require balanceOf[address(arg1)] + (5000 * msg.value / 10^18) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 5000 * msg.value / 10^18
    call 0x6f277a0c36184ad4d1c26fdf8c97637c38733b29 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.value
    require msg.value
    require 5000 * msg.value / msg.value == 5000
    require 5000 * msg.value == (10^18 * 5000 * msg.value / 10^18) + (5000 * msg.value % 10^18)
    require totalSupply + (5000 * msg.value / 10^18) >= totalSupply
    totalSupply += 5000 * msg.value / 10^18
    require balanceOf[address(msg.sender)] + (5000 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 5000 * msg.value / 10^18
    call 0x6f277a0c36184ad4d1c26fdf8c97637c38733b29 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}

contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 3453]




// =====================  Runtime code  =====================


const name = 'Cryoto Apartments'

const decimals = 8

const multisig = 0x2cf810a10b84fbf0c2051b7cb4c32ac8fa641753

const symbol = 'CADE'

const getPrice = 50

const PRICE = 50


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

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function createTokens(address arg1) payable {
    require msg.value
    require msg.value
    require 50 * msg.value / msg.value == 50
    require 50 * msg.value == (10^18 * 50 * msg.value / 10^18) + (50 * msg.value % 10^18)
    require totalSupply + (50 * msg.value / 10^18) >= totalSupply
    require totalSupply + (50 * msg.value / 10^18) >= 50 * msg.value / 10^18
    totalSupply += 50 * msg.value / 10^18
    require balanceOf[address(arg1)] + (50 * msg.value / 10^18) >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + (50 * msg.value / 10^18) >= 50 * msg.value / 10^18
    balanceOf[address(arg1)] += 50 * msg.value / 10^18
    call 0x2cf810a10b84fbf0c2051b7cb4c32ac8fa641753 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.value
    require msg.value
    require 50 * msg.value / msg.value == 50
    require 50 * msg.value == (10^18 * 50 * msg.value / 10^18) + (50 * msg.value % 10^18)
    require totalSupply + (50 * msg.value / 10^18) >= totalSupply
    require totalSupply + (50 * msg.value / 10^18) >= 50 * msg.value / 10^18
    totalSupply += 50 * msg.value / 10^18
    require balanceOf[address(msg.sender)] + (50 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + (50 * msg.value / 10^18) >= 50 * msg.value / 10^18
    balanceOf[address(msg.sender)] += 50 * msg.value / 10^18
    call 0x2cf810a10b84fbf0c2051b7cb4c32ac8fa641753 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}

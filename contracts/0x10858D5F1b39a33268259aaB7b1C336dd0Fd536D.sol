contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 3519]




// =====================  Runtime code  =====================


const name = 'Akca Coin'

const decimals = 8

const multisig = 0x2ca1bb1bc35b4cc23de5d1320aacd44f1c6b31c4

const symbol = 'AKA'

const getPrice = 1000

const PRICE = 1000


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
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function createTokens(address arg1) payable {
    require msg.value
    require msg.value
    require 1000 * msg.value / msg.value == 1000
    require totalSupply + (1000 * msg.value) >= totalSupply
    totalSupply += 1000 * msg.value
    require balanceOf[address(arg1)] + (1000 * msg.value) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 1000 * msg.value
    call 0x2ca1bb1bc35b4cc23de5d1320aacd44f1c6b31c4 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.value
    require msg.value
    require 1000 * msg.value / msg.value == 1000
    require totalSupply + (1000 * msg.value) >= totalSupply
    totalSupply += 1000 * msg.value
    require balanceOf[address(msg.sender)] + (1000 * msg.value) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 1000 * msg.value
    call 0x2ca1bb1bc35b4cc23de5d1320aacd44f1c6b31c4 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}

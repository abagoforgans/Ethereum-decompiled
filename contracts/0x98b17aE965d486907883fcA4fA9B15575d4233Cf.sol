contract main {


// =======================  Init code  ======================


address stor3;

function _fallback() payable {
    stor3 = 0x8de3e8ec6b55a7659c3a4aa699433d090224e57
    require not msg.value
    return code.data[66 len 2160]
}



// =====================  Runtime code  =====================


const name = 'Hyperlyth'

const decimals = 4

const symbol = 'HL'

const getPrice = 800

const PRICE = 800


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address multisigAddress;

function totalSupply() {
    return totalSupply
}

function multisig() {
    return multisigAddress
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
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function createTokens(address arg1) payable {
    require msg.value
    require msg.value
    require 800 * msg.value / msg.value == 800
    require (800 * msg.value / 10^14) + totalSupply >= totalSupply
    totalSupply += 800 * msg.value / 10^14
    require (800 * msg.value / 10^14) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 800 * msg.value / 10^14
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.value
    require msg.value
    require 800 * msg.value / msg.value == 800
    require (800 * msg.value / 10^14) + totalSupply >= totalSupply
    totalSupply += 800 * msg.value / 10^14
    require (800 * msg.value / 10^14) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 800 * msg.value / 10^14
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}

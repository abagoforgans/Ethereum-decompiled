contract main {


// =======================  Init code  ======================


uint256 stor3;

function _fallback() payable {
    stor3 = 1
    require not msg.value
    return code.data[36 len 3755]
}



// =====================  Runtime code  =====================


const name = 'OneMore'

const decimals = 3

const multisig = 0x83bbccef5bed609f030e61e48a7808f1dc7df3b

const symbol = 'OM'

const getPrice = 50000

const PRICE = 50000


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 maximumEther;
uint256 totalEther;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totalEther() {
    return totalEther
}

function maximumEther() {
    return maximumEther
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
    return 1
}

function createTokens(address arg1) payable {
    require msg.value
    require msg.value
    require 50000 * msg.value / msg.value == 50000
    require totalSupply + (50000 * msg.value) >= totalSupply
    totalSupply += 50000 * msg.value
    require balanceOf[address(arg1)] + (50000 * msg.value) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 50000 * msg.value
    call 0x083bbccef5bed609f030e61e48a7808f1dc7df3b with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.value
    require msg.value
    require 50000 * msg.value / msg.value == 50000
    require totalSupply + (50000 * msg.value) >= totalSupply
    totalSupply += 50000 * msg.value
    require balanceOf[address(msg.sender)] + (50000 * msg.value) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 50000 * msg.value
    call 0x083bbccef5bed609f030e61e48a7808f1dc7df3b with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require totalEther < maximumEther
    totalEther += msg.value
}



}

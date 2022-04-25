contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 3837]




// =====================  Runtime code  =====================


const name = 'Ether Token'

const decimals = 18

const version = '2.0.0'

const symbol = 'WETH'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;

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

function deposit() payable {
    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value
    require totalSupply + msg.value >= totalSupply
    totalSupply += msg.value
    emit Transfer(msg.value, 0, msg.sender);
}

function _fallback() payable {
    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value
    require totalSupply + msg.value >= totalSupply
    totalSupply += msg.value
    emit Transfer(msg.value, 0, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdraw(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(arg1, msg.sender, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    if allowance[address(arg1)][address(msg.sender)] < -1:
        allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}

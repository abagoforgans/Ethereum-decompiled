contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;

function _fallback() {
    require code.data[2486 len 20]
    stor0 = 5 * 10^15
    stor1[code.data[2486 len 20]] = 5 * 10^15
    emit Transfer(5 * 10^15, 0, code.data[2486 len 20]);
    return code.data[164 len 2310]
}



// =====================  Runtime code  =====================


const name = 'REAL FUND Token'

const decimals = 8

const symbol = 'REF'


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

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require arg1
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 > 0
    require balanceOf[address(msg.sender)] >= arg1
    require totalSupply >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burnt(msg.sender, arg1, totalSupply - arg1);
    emit Transfer(arg1, msg.sender, 0);
    require balanceOf[address(msg.sender)] - arg1 == balanceOf[address(msg.sender)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    require arg2 != this.address
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require arg1
    require arg1 != this.address
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        require ext_call.success
    return 1
}



}

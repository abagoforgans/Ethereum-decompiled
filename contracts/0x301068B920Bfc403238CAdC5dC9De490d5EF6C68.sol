contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() {
    stor0[address(msg.sender)] = 10^15
    return code.data[104 len 3583]
}



// =====================  Runtime code  =====================


const name = 'Litechanger.com investment token'

const totalSupply = 10^15

const decimals = 8

const symbol = 'ITN'


mapping of uint256 balanceOf;
mapping of uint256 allowed;

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require not ext_code.size(arg1)
    require balanceOf[address(msg.sender)] - arg2 < balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg2 != this.address
    if arg3 > allowed[address(arg1)][address(msg.sender)]:
        require arg1 == msg.sender
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require balanceOf[address(arg1)] - arg3 < balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    if allowed[address(arg1)][address(msg.sender)] != -1:
        if arg1 != msg.sender:
            require allowed[address(arg1)][address(msg.sender)] - arg3 < allowed[address(arg1)][address(msg.sender)]
            allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}

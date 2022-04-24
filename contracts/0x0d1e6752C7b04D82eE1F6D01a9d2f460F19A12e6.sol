contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[57 len 1188]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
address tokenAddress;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function replaceOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
    return 1
}

function changeTokenAddress(address arg1) {
    require owner == msg.sender
    tokenAddress = arg1
}

function increase(address arg1, uint256 arg2) {
    require tokenAddress == msg.sender
    if arg2 <= 0:
        balanceOf[address(arg1)] += arg2
    else:
        require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        if arg2 > 0:
            require totalSupply + arg2 > totalSupply
    totalSupply += arg2
    return 1
}

function decrease(address arg1, uint256 arg2) {
    require tokenAddress == msg.sender
    if arg2 <= 0:
        balanceOf[address(arg1)] -= arg2
    else:
        require balanceOf[address(arg1)] - arg2 < balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg2
        if arg2 > 0:
            require totalSupply - arg2 < totalSupply
    totalSupply -= arg2
    return 1
}

function transfer(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require tokenAddress == msg.sender
    if arg4 > 0:
        require arg3 + arg4 > arg3
    if arg4 + arg3 > 0:
        require balanceOf[address(arg1)] - arg4 - arg3 < balanceOf[address(arg1)]
    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg4 - arg3
    if arg3 > 0:
        require balanceOf[arg2] + arg3 > balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    if arg4 > 0:
        require totalSupply - arg4 < totalSupply
    totalSupply -= arg4
    return 1
}



}

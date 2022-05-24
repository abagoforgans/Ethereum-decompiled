contract main {




// =====================  Runtime code  =====================


const name = 'Token'

const decimals = 18

const symbol = 'TOKEN'


uint256 totalSupply;
address ownerAddr;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function ownerAddr() {
    return ownerAddr
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg2 != this.address
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[msg.sender]
    require arg1 != this.address
    if not arg2:
        require 0 <= balanceOf[msg.sender]
    else:
        require 10^18 * arg2 / arg2 == 10^18
        require 10^18 * arg2 <= balanceOf[msg.sender]
        balanceOf[msg.sender] += -1 * 10^18 * arg2
    if not arg2:
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    else:
        require 10^18 * arg2 / arg2 == 10^18
        require (10^18 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 10^18 * arg2
    if not arg2:
        emit Transfer(0, msg.sender, arg1);
    else:
        require 10^18 * arg2 / arg2 == 10^18
        emit Transfer((10^18 * arg2), msg.sender, arg1);
    return 1
}



}

contract main {




// =====================  Runtime code  =====================


const name = 'XRT Token'

const decimals = 18

const symbol = 'XRT'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
array of uint256 version;
uint256 stor5;
uint256 maximumToken;
uint256 totalSupply;
uint8 stor8;

function mintingFinished() {
    return bool(stor8)
}

function totalSupply() {
    return totalSupply
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function maximumToken() {
    require msg.sender == owner
    return maximumToken
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function finishMinting() {
    require msg.sender == owner
    require not stor8
    require totalSupply <= maximumToken
    stor8 = 1
    emit MintFinished()
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size == 68
    require arg2 <= balanceOf[address(msg.sender)]
    require msg.sender
    require arg1 != msg.sender
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require arg1
    require arg1 != arg2
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor8
    require totalSupply <= maximumToken
    if not arg2:
        require 0 <= maximumToken
        require totalSupply <= maximumToken
        require totalSupply >= totalSupply
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        emit Mint(0, arg1);
        emit Transfer(0, 0, arg1);
    else:
        require arg2
        require arg2 * 10^18 * stor5 / 100 / arg2 == 10^18 * stor5 / 100
        require arg2 * 10^18 * stor5 / 100 <= maximumToken
        require totalSupply <= maximumToken - (arg2 * 10^18 * stor5 / 100)
        require totalSupply + (arg2 * 10^18 * stor5 / 100) >= totalSupply
        totalSupply += arg2 * 10^18 * stor5 / 100
        require balanceOf[address(arg1)] + (arg2 * 10^18 * stor5 / 100) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2 * 10^18 * stor5 / 100
        emit Mint((arg2 * 10^18 * stor5 / 100), arg1);
        emit Transfer((arg2 * 10^18 * stor5 / 100), 0, arg1);
    return 1
}



}

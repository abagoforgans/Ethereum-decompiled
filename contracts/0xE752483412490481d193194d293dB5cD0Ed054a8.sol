contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
mapping of uint256 stor2;

function _fallback() {
    stor1 = msg.sender
    stor0 = 200000000 * 10^18
    stor2[address(this.address)] = stor0
    return code.data[183 len 3501]
}



// =====================  Runtime code  =====================


const name = 'HODL Religion Token'

const decimals = 18

const symbol = 'HODL'


uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    if arg1 != this.address:
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        require balanceOf[stor1] + arg2 >= balanceOf[stor1]
        balanceOf[stor1] += arg2
        emit Transfer(arg2, msg.sender, owner);
}

function faucet() payable {
    if msg.value > 0:
        require calldata.size >= 68
        require 10^18 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= 10^18
        if this.address != msg.sender:
            require balanceOf[address(msg.sender)] + 10^18 >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 10^18
            emit Transfer(10^18, msg.sender, msg.sender);
        else:
            require balanceOf[stor1] + 10^18 >= balanceOf[stor1]
            balanceOf[stor1] += 10^18
            emit Transfer(10^18, msg.sender, owner);
}

function _fallback() payable {
    if msg.value > 0:
        require calldata.size >= 68
        require 10^18 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= 10^18
        if this.address != msg.sender:
            require balanceOf[address(msg.sender)] + 10^18 >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 10^18
            emit Transfer(10^18, msg.sender, msg.sender);
        else:
            require balanceOf[stor1] + 10^18 >= balanceOf[stor1]
            balanceOf[stor1] += 10^18
            emit Transfer(10^18, msg.sender, owner);
}



}

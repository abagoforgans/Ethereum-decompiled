contract main {




// =====================  Runtime code  =====================


const name = 'CryptomLive'

const duration = 183

const decimals = 18

const symbol = 'XCRLIVE'

const start = 1555067814

const sub_d025c071(?) = 10^6

const COIN = 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
address sub_8de1dab4Address;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_8de1dab4(?) {
    return sub_8de1dab4Address
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
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

function buyTokens() payable {
    require block.timestamp > 1555067814
    require block.timestamp < 1570879014
    require totalSupply > 0
    if totalSupply > 19000000 * 10^18:
        if 1000 * msg.value < totalSupply - 19000000 * 10^18:
            require 1000 * msg.value > 0
            balanceOf[address(msg.sender)] += 1000 * msg.value
            totalSupply += -1000 * msg.value
            emit Transfer((1000 * msg.value), 0, msg.sender);
        else:
            require totalSupply - 19000000 * 10^18 > 0
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + totalSupply - 19000000 * 10^18
            totalSupply = 19000000 * 10^18
            emit Transfer((totalSupply - 19000000 * 10^18), 0, msg.sender);
    else:
        if totalSupply <= 5000 * 10^18 * 3600:
            if 100 * msg.value < totalSupply:
                require 100 * msg.value > 0
                balanceOf[address(msg.sender)] += 100 * msg.value
                totalSupply += -100 * msg.value
                emit Transfer((100 * msg.value), 0, msg.sender);
            else:
                require totalSupply > 0
                balanceOf[address(msg.sender)] += totalSupply
                totalSupply = 0
                emit Transfer(totalSupply, 0, msg.sender);
        else:
            if 150 * msg.value < totalSupply - (5000 * 10^18 * 3600):
                require 150 * msg.value > 0
                balanceOf[address(msg.sender)] += 150 * msg.value
                totalSupply += -150 * msg.value
                emit Transfer((150 * msg.value), 0, msg.sender);
            else:
                require totalSupply - (5000 * 10^18 * 3600) > 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + totalSupply - (5000 * 10^18 * 3600)
                totalSupply = 5000 * 10^18 * 3600
                emit Transfer((totalSupply - (5000 * 10^18 * 3600)), 0, msg.sender);
}

function _fallback() payable {
    require block.timestamp > 1555067814
    require block.timestamp < 1570879014
    require totalSupply > 0
    if totalSupply > 19000000 * 10^18:
        if 1000 * msg.value < totalSupply - 19000000 * 10^18:
            require 1000 * msg.value > 0
            balanceOf[address(msg.sender)] += 1000 * msg.value
            totalSupply += -1000 * msg.value
            emit Transfer((1000 * msg.value), 0, msg.sender);
        else:
            require totalSupply - 19000000 * 10^18 > 0
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + totalSupply - 19000000 * 10^18
            totalSupply = 19000000 * 10^18
            emit Transfer((totalSupply - 19000000 * 10^18), 0, msg.sender);
    else:
        if totalSupply <= 5000 * 10^18 * 3600:
            if 100 * msg.value < totalSupply:
                require 100 * msg.value > 0
                balanceOf[address(msg.sender)] += 100 * msg.value
                totalSupply += -100 * msg.value
                emit Transfer((100 * msg.value), 0, msg.sender);
            else:
                require totalSupply > 0
                balanceOf[address(msg.sender)] += totalSupply
                totalSupply = 0
                emit Transfer(totalSupply, 0, msg.sender);
        else:
            if 150 * msg.value < totalSupply - (5000 * 10^18 * 3600):
                require 150 * msg.value > 0
                balanceOf[address(msg.sender)] += 150 * msg.value
                totalSupply += -150 * msg.value
                emit Transfer((150 * msg.value), 0, msg.sender);
            else:
                require totalSupply - (5000 * 10^18 * 3600) > 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + totalSupply - (5000 * 10^18 * 3600)
                totalSupply = 5000 * 10^18 * 3600
                emit Transfer((totalSupply - (5000 * 10^18 * 3600)), 0, msg.sender);
}



}

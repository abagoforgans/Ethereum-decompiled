contract main {




// =====================  Runtime code  =====================


const name = 'CryptomLive'

const duration = 183

const decimals = 18

const symbol = 'CRXLV'

const start = (431940 * 3600)

const sub_d025c071(?) = 10^6

const COIN = 10^18


mapping of uint256 stor0;
mapping of uint256 allowance;
address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
array of uint256 standard;

function totalSupply() {
    return totalSupply
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function killMe() {
    require msg.sender == owner
    selfdestruct(owner)
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

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= stor0[address(msg.sender)]
    require arg1
    require arg2 <= stor0[address(msg.sender)]
    stor0[address(msg.sender)] -= arg2
    require stor0[address(arg1)] + arg2 >= stor0[address(arg1)]
    stor0[address(arg1)] += arg2
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
    require arg3 <= stor0[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    require arg3 <= stor0[address(arg1)]
    stor0[address(arg1)] -= arg3
    require stor0[address(arg2)] + arg3 >= stor0[address(arg2)]
    stor0[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require block.timestamp > 431940 * 3600
    require block.timestamp < 436332 * 3600
    require balanceOf[address(this.address)] > 0
    if balanceOf[address(this.address)] <= 19000000 * 10^18:
        if balanceOf[address(this.address)] <= 5000 * 10^18 * 3600:
            if not msg.value:
                require 0 >= balanceOf[address(this.address)]
                require balanceOf[address(this.address)] > 0
                balanceOf[address(this.address)] = 0
                require balanceOf[address(this.address)] > 0
                balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
            else:
                require msg.value
                require 100 * msg.value / msg.value == 100
                if 100 * msg.value < balanceOf[address(this.address)]:
                    require 100 * msg.value > 0
                    balanceOf[address(this.address)] += -100 * msg.value
                    require 100 * msg.value > 0
                    balanceOf[address(msg.sender)] += 100 * msg.value
                    emit Transfer((100 * msg.value), this.address, msg.sender);
                else:
                    require balanceOf[address(this.address)] > 0
                    balanceOf[address(this.address)] = 0
                    require balanceOf[address(this.address)] > 0
                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
        else:
            if not msg.value:
                if 0 < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                    require 0 >= balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                    if not msg.value:
                        require 0 >= balanceOf[address(this.address)]
                        require balanceOf[address(this.address)] > 0
                        balanceOf[address(this.address)] = 0
                        require balanceOf[address(this.address)] > 0
                        balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                        emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                    else:
                        require msg.value
                        require 100 * msg.value / msg.value == 100
                        if 100 * msg.value < balanceOf[address(this.address)]:
                            require 100 * msg.value > 0
                            balanceOf[address(this.address)] += -100 * msg.value
                            require 100 * msg.value > 0
                            balanceOf[address(msg.sender)] += 100 * msg.value
                            emit Transfer((100 * msg.value), this.address, msg.sender);
                        else:
                            require balanceOf[address(this.address)] > 0
                            balanceOf[address(this.address)] = 0
                            require balanceOf[address(this.address)] > 0
                            balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                else:
                    if balanceOf[address(this.address)] - (5000 * 10^18 * 3600) <= 0:
                        require 0 >= balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                        if not msg.value:
                            require 0 >= balanceOf[address(this.address)]
                            require balanceOf[address(this.address)] > 0
                            balanceOf[address(this.address)] = 0
                            require balanceOf[address(this.address)] > 0
                            balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                        else:
                            require msg.value
                            require 100 * msg.value / msg.value == 100
                            if 100 * msg.value < balanceOf[address(this.address)]:
                                require 100 * msg.value > 0
                                balanceOf[address(this.address)] += -100 * msg.value
                                require 100 * msg.value > 0
                                balanceOf[address(msg.sender)] += 100 * msg.value
                                emit Transfer((100 * msg.value), this.address, msg.sender);
                            else:
                                require balanceOf[address(this.address)] > 0
                                balanceOf[address(this.address)] = 0
                                require balanceOf[address(this.address)] > 0
                                balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                    else:
                        balanceOf[address(this.address)] = 5000 * 10^18 * 3600
                        if 0 < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                            require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                            emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                        else:
                            if not msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150):
                                if 0 < balanceOf[address(this.address)]:
                                    require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                    emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                else:
                                    if balanceOf[address(this.address)] <= 0:
                                        require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                        emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = 0
                                        require (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600) > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)
                                        emit Transfer(((2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                            else:
                                require msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) / msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) == 100
                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) < balanceOf[address(this.address)]:
                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) <= 0:
                                        require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                        emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                        require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600) > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600)
                                        emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                else:
                                    if balanceOf[address(this.address)] <= 0:
                                        require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                        emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = 0
                                        require (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600) > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)
                                        emit Transfer(((2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)), this.address, msg.sender);
            else:
                require msg.value
                require 150 * msg.value / msg.value == 150
                if 150 * msg.value < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                    if 150 * msg.value <= 0:
                        require 150 * msg.value >= balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                        if not msg.value:
                            require 0 >= balanceOf[address(this.address)]
                            require balanceOf[address(this.address)] > 0
                            balanceOf[address(this.address)] = 0
                            require balanceOf[address(this.address)] > 0
                            balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                        else:
                            require msg.value
                            require 100 * msg.value / msg.value == 100
                            if 100 * msg.value < balanceOf[address(this.address)]:
                                require 100 * msg.value > 0
                                balanceOf[address(this.address)] += -100 * msg.value
                                require 100 * msg.value > 0
                                balanceOf[address(msg.sender)] += 100 * msg.value
                                emit Transfer((100 * msg.value), this.address, msg.sender);
                            else:
                                require balanceOf[address(this.address)] > 0
                                balanceOf[address(this.address)] = 0
                                require balanceOf[address(this.address)] > 0
                                balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                    else:
                        balanceOf[address(this.address)] += -150 * msg.value
                        if 150 * msg.value < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                            require 150 * msg.value > 0
                            balanceOf[address(msg.sender)] += 150 * msg.value
                            emit Transfer((150 * msg.value), this.address, msg.sender);
                        else:
                            if not msg.value - (150 * msg.value / 150):
                                if 0 < balanceOf[address(this.address)]:
                                    require 150 * msg.value > 0
                                    balanceOf[address(msg.sender)] += 150 * msg.value
                                    emit Transfer((150 * msg.value), this.address, msg.sender);
                                else:
                                    if balanceOf[address(this.address)] <= 0:
                                        require 150 * msg.value > 0
                                        balanceOf[address(msg.sender)] += 150 * msg.value
                                        emit Transfer((150 * msg.value), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = 0
                                        require (150 * msg.value) + balanceOf[address(this.address)] > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (150 * msg.value) + balanceOf[address(this.address)]
                                        emit Transfer(((150 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                            else:
                                require msg.value - (150 * msg.value / 150)
                                require (100 * msg.value) - (100 * 150 * msg.value / 150) / msg.value - (150 * msg.value / 150) == 100
                                if (100 * msg.value) - (100 * 150 * msg.value / 150) < balanceOf[address(this.address)]:
                                    if (100 * msg.value) - (100 * 150 * msg.value / 150) <= 0:
                                        require 150 * msg.value > 0
                                        balanceOf[address(msg.sender)] += 150 * msg.value
                                        emit Transfer((150 * msg.value), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 150 * msg.value / 150)
                                        require (250 * msg.value) - (100 * 150 * msg.value / 150) > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (250 * msg.value) - (100 * 150 * msg.value / 150)
                                        emit Transfer(((250 * msg.value) - (100 * 150 * msg.value / 150)), this.address, msg.sender);
                                else:
                                    if balanceOf[address(this.address)] <= 0:
                                        require 150 * msg.value > 0
                                        balanceOf[address(msg.sender)] += 150 * msg.value
                                        emit Transfer((150 * msg.value), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = 0
                                        require (150 * msg.value) + balanceOf[address(this.address)] > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (150 * msg.value) + balanceOf[address(this.address)]
                                        emit Transfer(((150 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                else:
                    if balanceOf[address(this.address)] - (5000 * 10^18 * 3600) <= 0:
                        require 150 * msg.value >= balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                        if not msg.value:
                            require 0 >= balanceOf[address(this.address)]
                            require balanceOf[address(this.address)] > 0
                            balanceOf[address(this.address)] = 0
                            require balanceOf[address(this.address)] > 0
                            balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                        else:
                            require msg.value
                            require 100 * msg.value / msg.value == 100
                            if 100 * msg.value < balanceOf[address(this.address)]:
                                require 100 * msg.value > 0
                                balanceOf[address(this.address)] += -100 * msg.value
                                require 100 * msg.value > 0
                                balanceOf[address(msg.sender)] += 100 * msg.value
                                emit Transfer((100 * msg.value), this.address, msg.sender);
                            else:
                                require balanceOf[address(this.address)] > 0
                                balanceOf[address(this.address)] = 0
                                require balanceOf[address(this.address)] > 0
                                balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                    else:
                        balanceOf[address(this.address)] = 5000 * 10^18 * 3600
                        if 150 * msg.value < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                            require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                            emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                        else:
                            if not msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150):
                                if 0 < balanceOf[address(this.address)]:
                                    require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                    emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                else:
                                    if balanceOf[address(this.address)] <= 0:
                                        require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                        emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = 0
                                        require (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600) > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)
                                        emit Transfer(((2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                            else:
                                require msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) / msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) == 100
                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) < balanceOf[address(this.address)]:
                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) <= 0:
                                        require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                        emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                        require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600) > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600)
                                        emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                else:
                                    if balanceOf[address(this.address)] <= 0:
                                        require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                        emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = 0
                                        require (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600) > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)
                                        emit Transfer(((2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)), this.address, msg.sender);
    else:
        if not msg.value:
            if 0 < balanceOf[address(this.address)] - 19000000 * 10^18:
                require 0 >= balanceOf[address(this.address)] - 19000000 * 10^18
                if balanceOf[address(this.address)] <= 5000 * 10^18 * 3600:
                    require 0 >= balanceOf[address(this.address)] - 19000000 * 10^18
                    if not msg.value:
                        require 0 >= balanceOf[address(this.address)]
                        require balanceOf[address(this.address)] > 0
                        balanceOf[address(this.address)] = 0
                        require balanceOf[address(this.address)] > 0
                        balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                        emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                    else:
                        require msg.value
                        require 100 * msg.value / msg.value == 100
                        if 100 * msg.value < balanceOf[address(this.address)]:
                            require 100 * msg.value > 0
                            balanceOf[address(this.address)] += -100 * msg.value
                            require 100 * msg.value > 0
                            balanceOf[address(msg.sender)] += 100 * msg.value
                            emit Transfer((100 * msg.value), this.address, msg.sender);
                        else:
                            require balanceOf[address(this.address)] > 0
                            balanceOf[address(this.address)] = 0
                            require balanceOf[address(this.address)] > 0
                            balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                else:
                    if not msg.value:
                        if 0 < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                            require 0 >= balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                            if not msg.value:
                                require 0 >= balanceOf[address(this.address)]
                                require balanceOf[address(this.address)] > 0
                                balanceOf[address(this.address)] = 0
                                require balanceOf[address(this.address)] > 0
                                balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                            else:
                                require msg.value
                                require 100 * msg.value / msg.value == 100
                                if 100 * msg.value < balanceOf[address(this.address)]:
                                    require 100 * msg.value > 0
                                    balanceOf[address(this.address)] += -100 * msg.value
                                    require 100 * msg.value > 0
                                    balanceOf[address(msg.sender)] += 100 * msg.value
                                    emit Transfer((100 * msg.value), this.address, msg.sender);
                                else:
                                    require balanceOf[address(this.address)] > 0
                                    balanceOf[address(this.address)] = 0
                                    require balanceOf[address(this.address)] > 0
                                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                        else:
                            if balanceOf[address(this.address)] - (5000 * 10^18 * 3600) <= 0:
                                require 0 >= balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                if not msg.value:
                                    require 0 >= balanceOf[address(this.address)]
                                    require balanceOf[address(this.address)] > 0
                                    balanceOf[address(this.address)] = 0
                                    require balanceOf[address(this.address)] > 0
                                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                                else:
                                    require msg.value
                                    require 100 * msg.value / msg.value == 100
                                    if 100 * msg.value < balanceOf[address(this.address)]:
                                        require 100 * msg.value > 0
                                        balanceOf[address(this.address)] += -100 * msg.value
                                        require 100 * msg.value > 0
                                        balanceOf[address(msg.sender)] += 100 * msg.value
                                        emit Transfer((100 * msg.value), this.address, msg.sender);
                                    else:
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(this.address)] = 0
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                        emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                            else:
                                balanceOf[address(this.address)] = 5000 * 10^18 * 3600
                                if 0 < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                    require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                    emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                else:
                                    if not msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150):
                                        if 0 < balanceOf[address(this.address)]:
                                            require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                            emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                        else:
                                            if balanceOf[address(this.address)] <= 0:
                                                require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                            else:
                                                balanceOf[address(this.address)] = 0
                                                require (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600) > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)
                                                emit Transfer(((2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                    else:
                                        require msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                        require (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) / msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) == 100
                                        if (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) < balanceOf[address(this.address)]:
                                            if (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) <= 0:
                                                require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                            else:
                                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                                require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600) > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600)
                                                emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                        else:
                                            if balanceOf[address(this.address)] <= 0:
                                                require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                            else:
                                                balanceOf[address(this.address)] = 0
                                                require (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600) > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)
                                                emit Transfer(((2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                    else:
                        require msg.value
                        require 150 * msg.value / msg.value == 150
                        if 150 * msg.value < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                            if 150 * msg.value <= 0:
                                require 150 * msg.value >= balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                if not msg.value:
                                    require 0 >= balanceOf[address(this.address)]
                                    require balanceOf[address(this.address)] > 0
                                    balanceOf[address(this.address)] = 0
                                    require balanceOf[address(this.address)] > 0
                                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                                else:
                                    require msg.value
                                    require 100 * msg.value / msg.value == 100
                                    if 100 * msg.value < balanceOf[address(this.address)]:
                                        require 100 * msg.value > 0
                                        balanceOf[address(this.address)] += -100 * msg.value
                                        require 100 * msg.value > 0
                                        balanceOf[address(msg.sender)] += 100 * msg.value
                                        emit Transfer((100 * msg.value), this.address, msg.sender);
                                    else:
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(this.address)] = 0
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                        emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                            else:
                                balanceOf[address(this.address)] += -150 * msg.value
                                if 150 * msg.value < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                    require 150 * msg.value > 0
                                    balanceOf[address(msg.sender)] += 150 * msg.value
                                    emit Transfer((150 * msg.value), this.address, msg.sender);
                                else:
                                    if not msg.value - (150 * msg.value / 150):
                                        if 0 < balanceOf[address(this.address)]:
                                            require 150 * msg.value > 0
                                            balanceOf[address(msg.sender)] += 150 * msg.value
                                            emit Transfer((150 * msg.value), this.address, msg.sender);
                                        else:
                                            if balanceOf[address(this.address)] <= 0:
                                                require 150 * msg.value > 0
                                                balanceOf[address(msg.sender)] += 150 * msg.value
                                                emit Transfer((150 * msg.value), this.address, msg.sender);
                                            else:
                                                balanceOf[address(this.address)] = 0
                                                require (150 * msg.value) + balanceOf[address(this.address)] > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (150 * msg.value) + balanceOf[address(this.address)]
                                                emit Transfer(((150 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                    else:
                                        require msg.value - (150 * msg.value / 150)
                                        require (100 * msg.value) - (100 * 150 * msg.value / 150) / msg.value - (150 * msg.value / 150) == 100
                                        if (100 * msg.value) - (100 * 150 * msg.value / 150) < balanceOf[address(this.address)]:
                                            if (100 * msg.value) - (100 * 150 * msg.value / 150) <= 0:
                                                require 150 * msg.value > 0
                                                balanceOf[address(msg.sender)] += 150 * msg.value
                                                emit Transfer((150 * msg.value), this.address, msg.sender);
                                            else:
                                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 150 * msg.value / 150)
                                                require (250 * msg.value) - (100 * 150 * msg.value / 150) > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (250 * msg.value) - (100 * 150 * msg.value / 150)
                                                emit Transfer(((250 * msg.value) - (100 * 150 * msg.value / 150)), this.address, msg.sender);
                                        else:
                                            if balanceOf[address(this.address)] <= 0:
                                                require 150 * msg.value > 0
                                                balanceOf[address(msg.sender)] += 150 * msg.value
                                                emit Transfer((150 * msg.value), this.address, msg.sender);
                                            else:
                                                balanceOf[address(this.address)] = 0
                                                require (150 * msg.value) + balanceOf[address(this.address)] > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (150 * msg.value) + balanceOf[address(this.address)]
                                                emit Transfer(((150 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                        else:
                            if balanceOf[address(this.address)] - (5000 * 10^18 * 3600) <= 0:
                                require 150 * msg.value >= balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                if not msg.value:
                                    require 0 >= balanceOf[address(this.address)]
                                    require balanceOf[address(this.address)] > 0
                                    balanceOf[address(this.address)] = 0
                                    require balanceOf[address(this.address)] > 0
                                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                                else:
                                    require msg.value
                                    require 100 * msg.value / msg.value == 100
                                    if 100 * msg.value < balanceOf[address(this.address)]:
                                        require 100 * msg.value > 0
                                        balanceOf[address(this.address)] += -100 * msg.value
                                        require 100 * msg.value > 0
                                        balanceOf[address(msg.sender)] += 100 * msg.value
                                        emit Transfer((100 * msg.value), this.address, msg.sender);
                                    else:
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(this.address)] = 0
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                        emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                            else:
                                balanceOf[address(this.address)] = 5000 * 10^18 * 3600
                                if 150 * msg.value < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                    require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                    emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                else:
                                    if not msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150):
                                        if 0 < balanceOf[address(this.address)]:
                                            require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                            emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                        else:
                                            if balanceOf[address(this.address)] <= 0:
                                                require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                            else:
                                                balanceOf[address(this.address)] = 0
                                                require (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600) > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)
                                                emit Transfer(((2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                    else:
                                        require msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                        require (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) / msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) == 100
                                        if (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) < balanceOf[address(this.address)]:
                                            if (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) <= 0:
                                                require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                            else:
                                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                                require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600) > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600)
                                                emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                        else:
                                            if balanceOf[address(this.address)] <= 0:
                                                require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                            else:
                                                balanceOf[address(this.address)] = 0
                                                require (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600) > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)
                                                emit Transfer(((2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)), this.address, msg.sender);
            else:
                if balanceOf[address(this.address)] - 19000000 * 10^18 <= 0:
                    require 0 >= balanceOf[address(this.address)] - 19000000 * 10^18
                    if balanceOf[address(this.address)] <= 5000 * 10^18 * 3600:
                        require 0 >= balanceOf[address(this.address)] - 19000000 * 10^18
                        if not msg.value:
                            require 0 >= balanceOf[address(this.address)]
                            require balanceOf[address(this.address)] > 0
                            balanceOf[address(this.address)] = 0
                            require balanceOf[address(this.address)] > 0
                            balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                        else:
                            require msg.value
                            require 100 * msg.value / msg.value == 100
                            if 100 * msg.value < balanceOf[address(this.address)]:
                                require 100 * msg.value > 0
                                balanceOf[address(this.address)] += -100 * msg.value
                                require 100 * msg.value > 0
                                balanceOf[address(msg.sender)] += 100 * msg.value
                                emit Transfer((100 * msg.value), this.address, msg.sender);
                            else:
                                require balanceOf[address(this.address)] > 0
                                balanceOf[address(this.address)] = 0
                                require balanceOf[address(this.address)] > 0
                                balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                    else:
                        if not msg.value:
                            if 0 < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                require 0 >= balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                if not msg.value:
                                    require 0 >= balanceOf[address(this.address)]
                                    require balanceOf[address(this.address)] > 0
                                    balanceOf[address(this.address)] = 0
                                    require balanceOf[address(this.address)] > 0
                                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                                else:
                                    require msg.value
                                    require 100 * msg.value / msg.value == 100
                                    if 100 * msg.value < balanceOf[address(this.address)]:
                                        require 100 * msg.value > 0
                                        balanceOf[address(this.address)] += -100 * msg.value
                                        require 100 * msg.value > 0
                                        balanceOf[address(msg.sender)] += 100 * msg.value
                                        emit Transfer((100 * msg.value), this.address, msg.sender);
                                    else:
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(this.address)] = 0
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                        emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                            else:
                                if balanceOf[address(this.address)] - (5000 * 10^18 * 3600) <= 0:
                                    require 0 >= balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                    if not msg.value:
                                        require 0 >= balanceOf[address(this.address)]
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(this.address)] = 0
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                        emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                                    else:
                                        require msg.value
                                        require 100 * msg.value / msg.value == 100
                                        if 100 * msg.value < balanceOf[address(this.address)]:
                                            require 100 * msg.value > 0
                                            balanceOf[address(this.address)] += -100 * msg.value
                                            require 100 * msg.value > 0
                                            balanceOf[address(msg.sender)] += 100 * msg.value
                                            emit Transfer((100 * msg.value), this.address, msg.sender);
                                        else:
                                            require balanceOf[address(this.address)] > 0
                                            balanceOf[address(this.address)] = 0
                                            require balanceOf[address(this.address)] > 0
                                            balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                                else:
                                    balanceOf[address(this.address)] = 5000 * 10^18 * 3600
                                    if 0 < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                        require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                        emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                    else:
                                        if not msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150):
                                            if 0 < balanceOf[address(this.address)]:
                                                require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                    emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                        else:
                                            require msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                            require (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) / msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) == 100
                                            if (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) < balanceOf[address(this.address)]:
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) <= 0:
                                                    require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                    emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                                    require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600)
                                                    emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                    emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                        else:
                            require msg.value
                            require 150 * msg.value / msg.value == 150
                            if 150 * msg.value < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                if 150 * msg.value <= 0:
                                    require 150 * msg.value >= balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                    if not msg.value:
                                        require 0 >= balanceOf[address(this.address)]
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(this.address)] = 0
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                        emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                                    else:
                                        require msg.value
                                        require 100 * msg.value / msg.value == 100
                                        if 100 * msg.value < balanceOf[address(this.address)]:
                                            require 100 * msg.value > 0
                                            balanceOf[address(this.address)] += -100 * msg.value
                                            require 100 * msg.value > 0
                                            balanceOf[address(msg.sender)] += 100 * msg.value
                                            emit Transfer((100 * msg.value), this.address, msg.sender);
                                        else:
                                            require balanceOf[address(this.address)] > 0
                                            balanceOf[address(this.address)] = 0
                                            require balanceOf[address(this.address)] > 0
                                            balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                                else:
                                    balanceOf[address(this.address)] += -150 * msg.value
                                    if 150 * msg.value < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                        require 150 * msg.value > 0
                                        balanceOf[address(msg.sender)] += 150 * msg.value
                                        emit Transfer((150 * msg.value), this.address, msg.sender);
                                    else:
                                        if not msg.value - (150 * msg.value / 150):
                                            if 0 < balanceOf[address(this.address)]:
                                                require 150 * msg.value > 0
                                                balanceOf[address(msg.sender)] += 150 * msg.value
                                                emit Transfer((150 * msg.value), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require 150 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 150 * msg.value
                                                    emit Transfer((150 * msg.value), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (150 * msg.value) + balanceOf[address(this.address)] > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (150 * msg.value) + balanceOf[address(this.address)]
                                                    emit Transfer(((150 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                        else:
                                            require msg.value - (150 * msg.value / 150)
                                            require (100 * msg.value) - (100 * 150 * msg.value / 150) / msg.value - (150 * msg.value / 150) == 100
                                            if (100 * msg.value) - (100 * 150 * msg.value / 150) < balanceOf[address(this.address)]:
                                                if (100 * msg.value) - (100 * 150 * msg.value / 150) <= 0:
                                                    require 150 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 150 * msg.value
                                                    emit Transfer((150 * msg.value), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 150 * msg.value / 150)
                                                    require (250 * msg.value) - (100 * 150 * msg.value / 150) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (250 * msg.value) - (100 * 150 * msg.value / 150)
                                                    emit Transfer(((250 * msg.value) - (100 * 150 * msg.value / 150)), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require 150 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 150 * msg.value
                                                    emit Transfer((150 * msg.value), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (150 * msg.value) + balanceOf[address(this.address)] > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (150 * msg.value) + balanceOf[address(this.address)]
                                                    emit Transfer(((150 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                            else:
                                if balanceOf[address(this.address)] - (5000 * 10^18 * 3600) <= 0:
                                    require 150 * msg.value >= balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                    if not msg.value:
                                        require 0 >= balanceOf[address(this.address)]
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(this.address)] = 0
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                        emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                                    else:
                                        require msg.value
                                        require 100 * msg.value / msg.value == 100
                                        if 100 * msg.value < balanceOf[address(this.address)]:
                                            require 100 * msg.value > 0
                                            balanceOf[address(this.address)] += -100 * msg.value
                                            require 100 * msg.value > 0
                                            balanceOf[address(msg.sender)] += 100 * msg.value
                                            emit Transfer((100 * msg.value), this.address, msg.sender);
                                        else:
                                            require balanceOf[address(this.address)] > 0
                                            balanceOf[address(this.address)] = 0
                                            require balanceOf[address(this.address)] > 0
                                            balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                                else:
                                    balanceOf[address(this.address)] = 5000 * 10^18 * 3600
                                    if 150 * msg.value < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                        require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                        emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                    else:
                                        if not msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150):
                                            if 0 < balanceOf[address(this.address)]:
                                                require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                    emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                        else:
                                            require msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                            require (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) / msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) == 100
                                            if (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) < balanceOf[address(this.address)]:
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) <= 0:
                                                    require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                    emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                                    require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600)
                                                    emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                    emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                else:
                    balanceOf[address(this.address)] = 19000000 * 10^18
                    if 0 < balanceOf[address(this.address)] - 19000000 * 10^18:
                        require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                        emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                    else:
                        if balanceOf[address(this.address)] <= 5000 * 10^18 * 3600:
                            if 0 < balanceOf[address(this.address)] - 19000000 * 10^18:
                                require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                            else:
                                if not msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000):
                                    if 0 < balanceOf[address(this.address)]:
                                        require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                        emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                    else:
                                        if balanceOf[address(this.address)] <= 0:
                                            require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                        else:
                                            balanceOf[address(this.address)] = 0
                                            require (2 * balanceOf[address(this.address)]) - 19000000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 19000000 * 10^18
                                            emit Transfer(((2 * balanceOf[address(this.address)]) - 19000000 * 10^18), this.address, msg.sender);
                                else:
                                    require msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000)
                                    require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) == 100
                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) < balanceOf[address(this.address)]:
                                        if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) <= 0:
                                            require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                        else:
                                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000)
                                            require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18), this.address, msg.sender);
                                    else:
                                        if balanceOf[address(this.address)] <= 0:
                                            require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                        else:
                                            balanceOf[address(this.address)] = 0
                                            require (2 * balanceOf[address(this.address)]) - 19000000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 19000000 * 10^18
                                            emit Transfer(((2 * balanceOf[address(this.address)]) - 19000000 * 10^18), this.address, msg.sender);
                        else:
                            if not msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000):
                                if 0 < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                    if 0 < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                        require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                        emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                    else:
                                        if not msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000):
                                            if 0 < balanceOf[address(this.address)]:
                                                require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - 19000000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 19000000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 19000000 * 10^18), this.address, msg.sender);
                                        else:
                                            require msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000)
                                            require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) == 100
                                            if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) < balanceOf[address(this.address)]:
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) <= 0:
                                                    require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000)
                                                    require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - 19000000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 19000000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 19000000 * 10^18), this.address, msg.sender);
                                else:
                                    if balanceOf[address(this.address)] - (5000 * 10^18 * 3600) <= 0:
                                        if 0 < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                            require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 19000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 19000000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000)
                                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) == 100
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) <= 0:
                                                        require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000)
                                                        require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 19000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 19000000 * 10^18), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = 5000 * 10^18 * 3600
                                        if 0 < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                            require (2 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                            emit Transfer(((2 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require (2 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (2 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (3 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                                        emit Transfer(((3 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) / msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) == 100
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) <= 0:
                                                        require (2 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) + (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                                        require (2 * balanceOf[address(this.address)]) + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - 37000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - 37000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - 37000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (2 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (3 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                                        emit Transfer(((3 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                            else:
                                require msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000)
                                require (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) == 150
                                if (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                    if (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) <= 0:
                                        if (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                            require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 19000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 19000000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000)
                                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) == 100
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) <= 0:
                                                        require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000)
                                                        require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 19000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 19000000 * 10^18), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (150 * msg.value) + (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000)
                                        if (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                            require balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - ((150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / 150):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - ((150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / 150)
                                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (100 * (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / 150) / msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - ((150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / 150) == 100
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (100 * (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / 150) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (100 * (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / 150) <= 0:
                                                        require balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) + (100 * (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / 150)
                                                        require balanceOf[address(this.address)] + (250 * msg.value) + (-250 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) + (-100 * (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / 150) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (250 * msg.value) + (-250 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) + (-100 * (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / 150) - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (250 * msg.value) + (-250 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) + (-100 * (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / 150) - 19000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18), this.address, msg.sender);
                                else:
                                    if balanceOf[address(this.address)] - (5000 * 10^18 * 3600) <= 0:
                                        if (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                            require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 19000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 19000000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000)
                                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) == 100
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) <= 0:
                                                        require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000)
                                                        require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 19000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 19000000 * 10^18), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = 5000 * 10^18 * 3600
                                        if (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                            require (2 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                            emit Transfer(((2 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require (2 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (2 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (3 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                                        emit Transfer(((3 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) / msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) == 100
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) <= 0:
                                                        require (2 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) + (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                                        require (2 * balanceOf[address(this.address)]) + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - 37000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - 37000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - 37000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (2 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (3 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                                        emit Transfer(((3 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
        else:
            require msg.value
            require 1000 * msg.value / msg.value == 1000
            if 1000 * msg.value < balanceOf[address(this.address)] - 19000000 * 10^18:
                if 1000 * msg.value <= 0:
                    require 1000 * msg.value >= balanceOf[address(this.address)] - 19000000 * 10^18
                    if balanceOf[address(this.address)] <= 5000 * 10^18 * 3600:
                        require 1000 * msg.value >= balanceOf[address(this.address)] - 19000000 * 10^18
                        if not msg.value:
                            require 0 >= balanceOf[address(this.address)]
                            require balanceOf[address(this.address)] > 0
                            balanceOf[address(this.address)] = 0
                            require balanceOf[address(this.address)] > 0
                            balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                        else:
                            require msg.value
                            require 100 * msg.value / msg.value == 100
                            if 100 * msg.value < balanceOf[address(this.address)]:
                                require 100 * msg.value > 0
                                balanceOf[address(this.address)] += -100 * msg.value
                                require 100 * msg.value > 0
                                balanceOf[address(msg.sender)] += 100 * msg.value
                                emit Transfer((100 * msg.value), this.address, msg.sender);
                            else:
                                require balanceOf[address(this.address)] > 0
                                balanceOf[address(this.address)] = 0
                                require balanceOf[address(this.address)] > 0
                                balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                    else:
                        if not msg.value:
                            if 0 < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                require 0 >= balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                if not msg.value:
                                    require 0 >= balanceOf[address(this.address)]
                                    require balanceOf[address(this.address)] > 0
                                    balanceOf[address(this.address)] = 0
                                    require balanceOf[address(this.address)] > 0
                                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                                else:
                                    require msg.value
                                    require 100 * msg.value / msg.value == 100
                                    if 100 * msg.value < balanceOf[address(this.address)]:
                                        require 100 * msg.value > 0
                                        balanceOf[address(this.address)] += -100 * msg.value
                                        require 100 * msg.value > 0
                                        balanceOf[address(msg.sender)] += 100 * msg.value
                                        emit Transfer((100 * msg.value), this.address, msg.sender);
                                    else:
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(this.address)] = 0
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                        emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                            else:
                                if balanceOf[address(this.address)] - (5000 * 10^18 * 3600) <= 0:
                                    require 0 >= balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                    if not msg.value:
                                        require 0 >= balanceOf[address(this.address)]
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(this.address)] = 0
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                        emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                                    else:
                                        require msg.value
                                        require 100 * msg.value / msg.value == 100
                                        if 100 * msg.value < balanceOf[address(this.address)]:
                                            require 100 * msg.value > 0
                                            balanceOf[address(this.address)] += -100 * msg.value
                                            require 100 * msg.value > 0
                                            balanceOf[address(msg.sender)] += 100 * msg.value
                                            emit Transfer((100 * msg.value), this.address, msg.sender);
                                        else:
                                            require balanceOf[address(this.address)] > 0
                                            balanceOf[address(this.address)] = 0
                                            require balanceOf[address(this.address)] > 0
                                            balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                                else:
                                    balanceOf[address(this.address)] = 5000 * 10^18 * 3600
                                    if 0 < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                        require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                        emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                    else:
                                        if not msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150):
                                            if 0 < balanceOf[address(this.address)]:
                                                require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                    emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                        else:
                                            require msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                            require (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) / msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) == 100
                                            if (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) < balanceOf[address(this.address)]:
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) <= 0:
                                                    require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                    emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                                    require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600)
                                                    emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                    emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                        else:
                            require msg.value
                            require 150 * msg.value / msg.value == 150
                            if 150 * msg.value < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                if 150 * msg.value <= 0:
                                    require 150 * msg.value >= balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                    if not msg.value:
                                        require 0 >= balanceOf[address(this.address)]
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(this.address)] = 0
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                        emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                                    else:
                                        require msg.value
                                        require 100 * msg.value / msg.value == 100
                                        if 100 * msg.value < balanceOf[address(this.address)]:
                                            require 100 * msg.value > 0
                                            balanceOf[address(this.address)] += -100 * msg.value
                                            require 100 * msg.value > 0
                                            balanceOf[address(msg.sender)] += 100 * msg.value
                                            emit Transfer((100 * msg.value), this.address, msg.sender);
                                        else:
                                            require balanceOf[address(this.address)] > 0
                                            balanceOf[address(this.address)] = 0
                                            require balanceOf[address(this.address)] > 0
                                            balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                                else:
                                    balanceOf[address(this.address)] += -150 * msg.value
                                    if 150 * msg.value < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                        require 150 * msg.value > 0
                                        balanceOf[address(msg.sender)] += 150 * msg.value
                                        emit Transfer((150 * msg.value), this.address, msg.sender);
                                    else:
                                        if not msg.value - (150 * msg.value / 150):
                                            if 0 < balanceOf[address(this.address)]:
                                                require 150 * msg.value > 0
                                                balanceOf[address(msg.sender)] += 150 * msg.value
                                                emit Transfer((150 * msg.value), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require 150 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 150 * msg.value
                                                    emit Transfer((150 * msg.value), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (150 * msg.value) + balanceOf[address(this.address)] > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (150 * msg.value) + balanceOf[address(this.address)]
                                                    emit Transfer(((150 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                        else:
                                            require msg.value - (150 * msg.value / 150)
                                            require (100 * msg.value) - (100 * 150 * msg.value / 150) / msg.value - (150 * msg.value / 150) == 100
                                            if (100 * msg.value) - (100 * 150 * msg.value / 150) < balanceOf[address(this.address)]:
                                                if (100 * msg.value) - (100 * 150 * msg.value / 150) <= 0:
                                                    require 150 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 150 * msg.value
                                                    emit Transfer((150 * msg.value), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 150 * msg.value / 150)
                                                    require (250 * msg.value) - (100 * 150 * msg.value / 150) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (250 * msg.value) - (100 * 150 * msg.value / 150)
                                                    emit Transfer(((250 * msg.value) - (100 * 150 * msg.value / 150)), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require 150 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 150 * msg.value
                                                    emit Transfer((150 * msg.value), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (150 * msg.value) + balanceOf[address(this.address)] > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (150 * msg.value) + balanceOf[address(this.address)]
                                                    emit Transfer(((150 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                            else:
                                if balanceOf[address(this.address)] - (5000 * 10^18 * 3600) <= 0:
                                    require 150 * msg.value >= balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                    if not msg.value:
                                        require 0 >= balanceOf[address(this.address)]
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(this.address)] = 0
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                        emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                                    else:
                                        require msg.value
                                        require 100 * msg.value / msg.value == 100
                                        if 100 * msg.value < balanceOf[address(this.address)]:
                                            require 100 * msg.value > 0
                                            balanceOf[address(this.address)] += -100 * msg.value
                                            require 100 * msg.value > 0
                                            balanceOf[address(msg.sender)] += 100 * msg.value
                                            emit Transfer((100 * msg.value), this.address, msg.sender);
                                        else:
                                            require balanceOf[address(this.address)] > 0
                                            balanceOf[address(this.address)] = 0
                                            require balanceOf[address(this.address)] > 0
                                            balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                                else:
                                    balanceOf[address(this.address)] = 5000 * 10^18 * 3600
                                    if 150 * msg.value < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                        require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                        emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                    else:
                                        if not msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150):
                                            if 0 < balanceOf[address(this.address)]:
                                                require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                    emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                        else:
                                            require msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                            require (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) / msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) == 100
                                            if (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) < balanceOf[address(this.address)]:
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) <= 0:
                                                    require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                    emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                                    require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600)
                                                    emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                    emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                else:
                    balanceOf[address(this.address)] += -1000 * msg.value
                    if 1000 * msg.value < balanceOf[address(this.address)] - 19000000 * 10^18:
                        require 1000 * msg.value > 0
                        balanceOf[address(msg.sender)] += 1000 * msg.value
                        emit Transfer((1000 * msg.value), this.address, msg.sender);
                    else:
                        if balanceOf[address(this.address)] <= 5000 * 10^18 * 3600:
                            if 1000 * msg.value < balanceOf[address(this.address)] - 19000000 * 10^18:
                                require 1000 * msg.value > 0
                                balanceOf[address(msg.sender)] += 1000 * msg.value
                                emit Transfer((1000 * msg.value), this.address, msg.sender);
                            else:
                                if not msg.value - (1000 * msg.value / 1000):
                                    if 0 < balanceOf[address(this.address)]:
                                        require 1000 * msg.value > 0
                                        balanceOf[address(msg.sender)] += 1000 * msg.value
                                        emit Transfer((1000 * msg.value), this.address, msg.sender);
                                    else:
                                        if balanceOf[address(this.address)] <= 0:
                                            require 1000 * msg.value > 0
                                            balanceOf[address(msg.sender)] += 1000 * msg.value
                                            emit Transfer((1000 * msg.value), this.address, msg.sender);
                                        else:
                                            balanceOf[address(this.address)] = 0
                                            require (1000 * msg.value) + balanceOf[address(this.address)] > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + balanceOf[address(this.address)]
                                            emit Transfer(((1000 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                else:
                                    require msg.value - (1000 * msg.value / 1000)
                                    require (100 * msg.value) - (100 * 1000 * msg.value / 1000) / msg.value - (1000 * msg.value / 1000) == 100
                                    if (100 * msg.value) - (100 * 1000 * msg.value / 1000) < balanceOf[address(this.address)]:
                                        if (100 * msg.value) - (100 * 1000 * msg.value / 1000) <= 0:
                                            require 1000 * msg.value > 0
                                            balanceOf[address(msg.sender)] += 1000 * msg.value
                                            emit Transfer((1000 * msg.value), this.address, msg.sender);
                                        else:
                                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 1000 * msg.value / 1000)
                                            require (1100 * msg.value) - (100 * 1000 * msg.value / 1000) > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1100 * msg.value) - (100 * 1000 * msg.value / 1000)
                                            emit Transfer(((1100 * msg.value) - (100 * 1000 * msg.value / 1000)), this.address, msg.sender);
                                    else:
                                        if balanceOf[address(this.address)] <= 0:
                                            require 1000 * msg.value > 0
                                            balanceOf[address(msg.sender)] += 1000 * msg.value
                                            emit Transfer((1000 * msg.value), this.address, msg.sender);
                                        else:
                                            balanceOf[address(this.address)] = 0
                                            require (1000 * msg.value) + balanceOf[address(this.address)] > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + balanceOf[address(this.address)]
                                            emit Transfer(((1000 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                        else:
                            if not msg.value - (1000 * msg.value / 1000):
                                if 0 < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                    if 0 < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                        require 1000 * msg.value > 0
                                        balanceOf[address(msg.sender)] += 1000 * msg.value
                                        emit Transfer((1000 * msg.value), this.address, msg.sender);
                                    else:
                                        if not msg.value - (1000 * msg.value / 1000):
                                            if 0 < balanceOf[address(this.address)]:
                                                require 1000 * msg.value > 0
                                                balanceOf[address(msg.sender)] += 1000 * msg.value
                                                emit Transfer((1000 * msg.value), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require 1000 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 1000 * msg.value
                                                    emit Transfer((1000 * msg.value), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (1000 * msg.value) + balanceOf[address(this.address)] > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + balanceOf[address(this.address)]
                                                    emit Transfer(((1000 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                        else:
                                            require msg.value - (1000 * msg.value / 1000)
                                            require (100 * msg.value) - (100 * 1000 * msg.value / 1000) / msg.value - (1000 * msg.value / 1000) == 100
                                            if (100 * msg.value) - (100 * 1000 * msg.value / 1000) < balanceOf[address(this.address)]:
                                                if (100 * msg.value) - (100 * 1000 * msg.value / 1000) <= 0:
                                                    require 1000 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 1000 * msg.value
                                                    emit Transfer((1000 * msg.value), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 1000 * msg.value / 1000)
                                                    require (1100 * msg.value) - (100 * 1000 * msg.value / 1000) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1100 * msg.value) - (100 * 1000 * msg.value / 1000)
                                                    emit Transfer(((1100 * msg.value) - (100 * 1000 * msg.value / 1000)), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require 1000 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 1000 * msg.value
                                                    emit Transfer((1000 * msg.value), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (1000 * msg.value) + balanceOf[address(this.address)] > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + balanceOf[address(this.address)]
                                                    emit Transfer(((1000 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                else:
                                    if balanceOf[address(this.address)] - (5000 * 10^18 * 3600) <= 0:
                                        if 0 < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                            require 1000 * msg.value > 0
                                            balanceOf[address(msg.sender)] += 1000 * msg.value
                                            emit Transfer((1000 * msg.value), this.address, msg.sender);
                                        else:
                                            if not msg.value - (1000 * msg.value / 1000):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require 1000 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 1000 * msg.value
                                                    emit Transfer((1000 * msg.value), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require 1000 * msg.value > 0
                                                        balanceOf[address(msg.sender)] += 1000 * msg.value
                                                        emit Transfer((1000 * msg.value), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (1000 * msg.value) + balanceOf[address(this.address)] > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + balanceOf[address(this.address)]
                                                        emit Transfer(((1000 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                            else:
                                                require msg.value - (1000 * msg.value / 1000)
                                                require (100 * msg.value) - (100 * 1000 * msg.value / 1000) / msg.value - (1000 * msg.value / 1000) == 100
                                                if (100 * msg.value) - (100 * 1000 * msg.value / 1000) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * 1000 * msg.value / 1000) <= 0:
                                                        require 1000 * msg.value > 0
                                                        balanceOf[address(msg.sender)] += 1000 * msg.value
                                                        emit Transfer((1000 * msg.value), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 1000 * msg.value / 1000)
                                                        require (1100 * msg.value) - (100 * 1000 * msg.value / 1000) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1100 * msg.value) - (100 * 1000 * msg.value / 1000)
                                                        emit Transfer(((1100 * msg.value) - (100 * 1000 * msg.value / 1000)), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require 1000 * msg.value > 0
                                                        balanceOf[address(msg.sender)] += 1000 * msg.value
                                                        emit Transfer((1000 * msg.value), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (1000 * msg.value) + balanceOf[address(this.address)] > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + balanceOf[address(this.address)]
                                                        emit Transfer(((1000 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = 5000 * 10^18 * 3600
                                        if 0 < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                            require (1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                            emit Transfer(((1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                        else:
                                            if not msg.value - (1000 * msg.value / 1000) - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require (1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                    emit Transfer(((1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                        emit Transfer(((1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (1000 * msg.value) + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)
                                                        emit Transfer(((1000 * msg.value) + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                            else:
                                                require msg.value - (1000 * msg.value / 1000) - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                                require (100 * msg.value) - (100 * 1000 * msg.value / 1000) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) / msg.value - (1000 * msg.value / 1000) - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) == 100
                                                if (100 * msg.value) - (100 * 1000 * msg.value / 1000) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * 1000 * msg.value / 1000) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) <= 0:
                                                        require (1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                        emit Transfer(((1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 1000 * msg.value / 1000) + (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                                        require (1100 * msg.value) + balanceOf[address(this.address)] + (-100 * 1000 * msg.value / 1000) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1100 * msg.value) + balanceOf[address(this.address)] + (-100 * 1000 * msg.value / 1000) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600)
                                                        emit Transfer(((1100 * msg.value) + balanceOf[address(this.address)] + (-100 * 1000 * msg.value / 1000) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                        emit Transfer(((1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (1000 * msg.value) + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)
                                                        emit Transfer(((1000 * msg.value) + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                            else:
                                require msg.value - (1000 * msg.value / 1000)
                                require (150 * msg.value) - (150 * 1000 * msg.value / 1000) / msg.value - (1000 * msg.value / 1000) == 150
                                if (150 * msg.value) - (150 * 1000 * msg.value / 1000) < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                    if (150 * msg.value) - (150 * 1000 * msg.value / 1000) <= 0:
                                        if (150 * msg.value) - (150 * 1000 * msg.value / 1000) < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                            require 1000 * msg.value > 0
                                            balanceOf[address(msg.sender)] += 1000 * msg.value
                                            emit Transfer((1000 * msg.value), this.address, msg.sender);
                                        else:
                                            if not msg.value - (1000 * msg.value / 1000):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require 1000 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 1000 * msg.value
                                                    emit Transfer((1000 * msg.value), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require 1000 * msg.value > 0
                                                        balanceOf[address(msg.sender)] += 1000 * msg.value
                                                        emit Transfer((1000 * msg.value), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (1000 * msg.value) + balanceOf[address(this.address)] > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + balanceOf[address(this.address)]
                                                        emit Transfer(((1000 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                            else:
                                                require msg.value - (1000 * msg.value / 1000)
                                                require (100 * msg.value) - (100 * 1000 * msg.value / 1000) / msg.value - (1000 * msg.value / 1000) == 100
                                                if (100 * msg.value) - (100 * 1000 * msg.value / 1000) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * 1000 * msg.value / 1000) <= 0:
                                                        require 1000 * msg.value > 0
                                                        balanceOf[address(msg.sender)] += 1000 * msg.value
                                                        emit Transfer((1000 * msg.value), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 1000 * msg.value / 1000)
                                                        require (1100 * msg.value) - (100 * 1000 * msg.value / 1000) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1100 * msg.value) - (100 * 1000 * msg.value / 1000)
                                                        emit Transfer(((1100 * msg.value) - (100 * 1000 * msg.value / 1000)), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require 1000 * msg.value > 0
                                                        balanceOf[address(msg.sender)] += 1000 * msg.value
                                                        emit Transfer((1000 * msg.value), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (1000 * msg.value) + balanceOf[address(this.address)] > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + balanceOf[address(this.address)]
                                                        emit Transfer(((1000 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (150 * msg.value) + (150 * 1000 * msg.value / 1000)
                                        if (150 * msg.value) - (150 * 1000 * msg.value / 1000) < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                            require (1150 * msg.value) - (150 * 1000 * msg.value / 1000) > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1150 * msg.value) - (150 * 1000 * msg.value / 1000)
                                            emit Transfer(((1150 * msg.value) - (150 * 1000 * msg.value / 1000)), this.address, msg.sender);
                                        else:
                                            if not msg.value - (1000 * msg.value / 1000) - ((150 * msg.value) - (150 * 1000 * msg.value / 1000) / 150):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require (1150 * msg.value) - (150 * 1000 * msg.value / 1000) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1150 * msg.value) - (150 * 1000 * msg.value / 1000)
                                                    emit Transfer(((1150 * msg.value) - (150 * 1000 * msg.value / 1000)), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (1150 * msg.value) - (150 * 1000 * msg.value / 1000) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1150 * msg.value) - (150 * 1000 * msg.value / 1000)
                                                        emit Transfer(((1150 * msg.value) - (150 * 1000 * msg.value / 1000)), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (1150 * msg.value) - (150 * 1000 * msg.value / 1000) + balanceOf[address(this.address)] > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1150 * msg.value) - (150 * 1000 * msg.value / 1000) + balanceOf[address(this.address)]
                                                        emit Transfer(((1150 * msg.value) - (150 * 1000 * msg.value / 1000) + balanceOf[address(this.address)]), this.address, msg.sender);
                                            else:
                                                require msg.value - (1000 * msg.value / 1000) - ((150 * msg.value) - (150 * 1000 * msg.value / 1000) / 150)
                                                require (100 * msg.value) - (100 * 1000 * msg.value / 1000) - (100 * (150 * msg.value) - (150 * 1000 * msg.value / 1000) / 150) / msg.value - (1000 * msg.value / 1000) - ((150 * msg.value) - (150 * 1000 * msg.value / 1000) / 150) == 100
                                                if (100 * msg.value) - (100 * 1000 * msg.value / 1000) - (100 * (150 * msg.value) - (150 * 1000 * msg.value / 1000) / 150) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * 1000 * msg.value / 1000) - (100 * (150 * msg.value) - (150 * 1000 * msg.value / 1000) / 150) <= 0:
                                                        require (1150 * msg.value) - (150 * 1000 * msg.value / 1000) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1150 * msg.value) - (150 * 1000 * msg.value / 1000)
                                                        emit Transfer(((1150 * msg.value) - (150 * 1000 * msg.value / 1000)), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 1000 * msg.value / 1000) + (100 * (150 * msg.value) - (150 * 1000 * msg.value / 1000) / 150)
                                                        require (1250 * msg.value) - (250 * 1000 * msg.value / 1000) - (100 * (150 * msg.value) - (150 * 1000 * msg.value / 1000) / 150) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1250 * msg.value) - (250 * 1000 * msg.value / 1000) - (100 * (150 * msg.value) - (150 * 1000 * msg.value / 1000) / 150)
                                                        emit Transfer(((1250 * msg.value) - (250 * 1000 * msg.value / 1000) - (100 * (150 * msg.value) - (150 * 1000 * msg.value / 1000) / 150)), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (1150 * msg.value) - (150 * 1000 * msg.value / 1000) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1150 * msg.value) - (150 * 1000 * msg.value / 1000)
                                                        emit Transfer(((1150 * msg.value) - (150 * 1000 * msg.value / 1000)), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (1150 * msg.value) - (150 * 1000 * msg.value / 1000) + balanceOf[address(this.address)] > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1150 * msg.value) - (150 * 1000 * msg.value / 1000) + balanceOf[address(this.address)]
                                                        emit Transfer(((1150 * msg.value) - (150 * 1000 * msg.value / 1000) + balanceOf[address(this.address)]), this.address, msg.sender);
                                else:
                                    if balanceOf[address(this.address)] - (5000 * 10^18 * 3600) <= 0:
                                        if (150 * msg.value) - (150 * 1000 * msg.value / 1000) < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                            require 1000 * msg.value > 0
                                            balanceOf[address(msg.sender)] += 1000 * msg.value
                                            emit Transfer((1000 * msg.value), this.address, msg.sender);
                                        else:
                                            if not msg.value - (1000 * msg.value / 1000):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require 1000 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 1000 * msg.value
                                                    emit Transfer((1000 * msg.value), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require 1000 * msg.value > 0
                                                        balanceOf[address(msg.sender)] += 1000 * msg.value
                                                        emit Transfer((1000 * msg.value), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (1000 * msg.value) + balanceOf[address(this.address)] > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + balanceOf[address(this.address)]
                                                        emit Transfer(((1000 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                            else:
                                                require msg.value - (1000 * msg.value / 1000)
                                                require (100 * msg.value) - (100 * 1000 * msg.value / 1000) / msg.value - (1000 * msg.value / 1000) == 100
                                                if (100 * msg.value) - (100 * 1000 * msg.value / 1000) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * 1000 * msg.value / 1000) <= 0:
                                                        require 1000 * msg.value > 0
                                                        balanceOf[address(msg.sender)] += 1000 * msg.value
                                                        emit Transfer((1000 * msg.value), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 1000 * msg.value / 1000)
                                                        require (1100 * msg.value) - (100 * 1000 * msg.value / 1000) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1100 * msg.value) - (100 * 1000 * msg.value / 1000)
                                                        emit Transfer(((1100 * msg.value) - (100 * 1000 * msg.value / 1000)), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require 1000 * msg.value > 0
                                                        balanceOf[address(msg.sender)] += 1000 * msg.value
                                                        emit Transfer((1000 * msg.value), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (1000 * msg.value) + balanceOf[address(this.address)] > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + balanceOf[address(this.address)]
                                                        emit Transfer(((1000 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = 5000 * 10^18 * 3600
                                        if (150 * msg.value) - (150 * 1000 * msg.value / 1000) < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                            require (1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                            emit Transfer(((1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                        else:
                                            if not msg.value - (1000 * msg.value / 1000) - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require (1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                    emit Transfer(((1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                        emit Transfer(((1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (1000 * msg.value) + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)
                                                        emit Transfer(((1000 * msg.value) + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                            else:
                                                require msg.value - (1000 * msg.value / 1000) - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                                require (100 * msg.value) - (100 * 1000 * msg.value / 1000) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) / msg.value - (1000 * msg.value / 1000) - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) == 100
                                                if (100 * msg.value) - (100 * 1000 * msg.value / 1000) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * 1000 * msg.value / 1000) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) <= 0:
                                                        require (1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                        emit Transfer(((1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 1000 * msg.value / 1000) + (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                                        require (1100 * msg.value) + balanceOf[address(this.address)] + (-100 * 1000 * msg.value / 1000) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1100 * msg.value) + balanceOf[address(this.address)] + (-100 * 1000 * msg.value / 1000) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600)
                                                        emit Transfer(((1100 * msg.value) + balanceOf[address(this.address)] + (-100 * 1000 * msg.value / 1000) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                        emit Transfer(((1000 * msg.value) + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (1000 * msg.value) + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)
                                                        emit Transfer(((1000 * msg.value) + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)), this.address, msg.sender);
            else:
                if balanceOf[address(this.address)] - 19000000 * 10^18 <= 0:
                    require 1000 * msg.value >= balanceOf[address(this.address)] - 19000000 * 10^18
                    if balanceOf[address(this.address)] <= 5000 * 10^18 * 3600:
                        require 1000 * msg.value >= balanceOf[address(this.address)] - 19000000 * 10^18
                        if not msg.value:
                            require 0 >= balanceOf[address(this.address)]
                            require balanceOf[address(this.address)] > 0
                            balanceOf[address(this.address)] = 0
                            require balanceOf[address(this.address)] > 0
                            balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                        else:
                            require msg.value
                            require 100 * msg.value / msg.value == 100
                            if 100 * msg.value < balanceOf[address(this.address)]:
                                require 100 * msg.value > 0
                                balanceOf[address(this.address)] += -100 * msg.value
                                require 100 * msg.value > 0
                                balanceOf[address(msg.sender)] += 100 * msg.value
                                emit Transfer((100 * msg.value), this.address, msg.sender);
                            else:
                                require balanceOf[address(this.address)] > 0
                                balanceOf[address(this.address)] = 0
                                require balanceOf[address(this.address)] > 0
                                balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                    else:
                        if not msg.value:
                            if 0 < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                require 0 >= balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                if not msg.value:
                                    require 0 >= balanceOf[address(this.address)]
                                    require balanceOf[address(this.address)] > 0
                                    balanceOf[address(this.address)] = 0
                                    require balanceOf[address(this.address)] > 0
                                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                                else:
                                    require msg.value
                                    require 100 * msg.value / msg.value == 100
                                    if 100 * msg.value < balanceOf[address(this.address)]:
                                        require 100 * msg.value > 0
                                        balanceOf[address(this.address)] += -100 * msg.value
                                        require 100 * msg.value > 0
                                        balanceOf[address(msg.sender)] += 100 * msg.value
                                        emit Transfer((100 * msg.value), this.address, msg.sender);
                                    else:
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(this.address)] = 0
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                        emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                            else:
                                if balanceOf[address(this.address)] - (5000 * 10^18 * 3600) <= 0:
                                    require 0 >= balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                    if not msg.value:
                                        require 0 >= balanceOf[address(this.address)]
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(this.address)] = 0
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                        emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                                    else:
                                        require msg.value
                                        require 100 * msg.value / msg.value == 100
                                        if 100 * msg.value < balanceOf[address(this.address)]:
                                            require 100 * msg.value > 0
                                            balanceOf[address(this.address)] += -100 * msg.value
                                            require 100 * msg.value > 0
                                            balanceOf[address(msg.sender)] += 100 * msg.value
                                            emit Transfer((100 * msg.value), this.address, msg.sender);
                                        else:
                                            require balanceOf[address(this.address)] > 0
                                            balanceOf[address(this.address)] = 0
                                            require balanceOf[address(this.address)] > 0
                                            balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                                else:
                                    balanceOf[address(this.address)] = 5000 * 10^18 * 3600
                                    if 0 < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                        require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                        emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                    else:
                                        if not msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150):
                                            if 0 < balanceOf[address(this.address)]:
                                                require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                    emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                        else:
                                            require msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                            require (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) / msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) == 100
                                            if (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) < balanceOf[address(this.address)]:
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) <= 0:
                                                    require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                    emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                                    require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600)
                                                    emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                    emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                        else:
                            require msg.value
                            require 150 * msg.value / msg.value == 150
                            if 150 * msg.value < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                if 150 * msg.value <= 0:
                                    require 150 * msg.value >= balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                    if not msg.value:
                                        require 0 >= balanceOf[address(this.address)]
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(this.address)] = 0
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                        emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                                    else:
                                        require msg.value
                                        require 100 * msg.value / msg.value == 100
                                        if 100 * msg.value < balanceOf[address(this.address)]:
                                            require 100 * msg.value > 0
                                            balanceOf[address(this.address)] += -100 * msg.value
                                            require 100 * msg.value > 0
                                            balanceOf[address(msg.sender)] += 100 * msg.value
                                            emit Transfer((100 * msg.value), this.address, msg.sender);
                                        else:
                                            require balanceOf[address(this.address)] > 0
                                            balanceOf[address(this.address)] = 0
                                            require balanceOf[address(this.address)] > 0
                                            balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                                else:
                                    balanceOf[address(this.address)] += -150 * msg.value
                                    if 150 * msg.value < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                        require 150 * msg.value > 0
                                        balanceOf[address(msg.sender)] += 150 * msg.value
                                        emit Transfer((150 * msg.value), this.address, msg.sender);
                                    else:
                                        if not msg.value - (150 * msg.value / 150):
                                            if 0 < balanceOf[address(this.address)]:
                                                require 150 * msg.value > 0
                                                balanceOf[address(msg.sender)] += 150 * msg.value
                                                emit Transfer((150 * msg.value), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require 150 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 150 * msg.value
                                                    emit Transfer((150 * msg.value), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (150 * msg.value) + balanceOf[address(this.address)] > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (150 * msg.value) + balanceOf[address(this.address)]
                                                    emit Transfer(((150 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                        else:
                                            require msg.value - (150 * msg.value / 150)
                                            require (100 * msg.value) - (100 * 150 * msg.value / 150) / msg.value - (150 * msg.value / 150) == 100
                                            if (100 * msg.value) - (100 * 150 * msg.value / 150) < balanceOf[address(this.address)]:
                                                if (100 * msg.value) - (100 * 150 * msg.value / 150) <= 0:
                                                    require 150 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 150 * msg.value
                                                    emit Transfer((150 * msg.value), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 150 * msg.value / 150)
                                                    require (250 * msg.value) - (100 * 150 * msg.value / 150) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (250 * msg.value) - (100 * 150 * msg.value / 150)
                                                    emit Transfer(((250 * msg.value) - (100 * 150 * msg.value / 150)), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require 150 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 150 * msg.value
                                                    emit Transfer((150 * msg.value), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (150 * msg.value) + balanceOf[address(this.address)] > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (150 * msg.value) + balanceOf[address(this.address)]
                                                    emit Transfer(((150 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                            else:
                                if balanceOf[address(this.address)] - (5000 * 10^18 * 3600) <= 0:
                                    require 150 * msg.value >= balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                    if not msg.value:
                                        require 0 >= balanceOf[address(this.address)]
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(this.address)] = 0
                                        require balanceOf[address(this.address)] > 0
                                        balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                        emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                                    else:
                                        require msg.value
                                        require 100 * msg.value / msg.value == 100
                                        if 100 * msg.value < balanceOf[address(this.address)]:
                                            require 100 * msg.value > 0
                                            balanceOf[address(this.address)] += -100 * msg.value
                                            require 100 * msg.value > 0
                                            balanceOf[address(msg.sender)] += 100 * msg.value
                                            emit Transfer((100 * msg.value), this.address, msg.sender);
                                        else:
                                            require balanceOf[address(this.address)] > 0
                                            balanceOf[address(this.address)] = 0
                                            require balanceOf[address(this.address)] > 0
                                            balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                                else:
                                    balanceOf[address(this.address)] = 5000 * 10^18 * 3600
                                    if 150 * msg.value < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                        require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                        emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                    else:
                                        if not msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150):
                                            if 0 < balanceOf[address(this.address)]:
                                                require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                    emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                        else:
                                            require msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                            require (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) / msg.value - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) == 100
                                            if (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) < balanceOf[address(this.address)]:
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) <= 0:
                                                    require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                    emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                                    require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600)
                                                    emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - (5000 * 10^18 * 3600)
                                                    emit Transfer((balanceOf[address(this.address)] - (5000 * 10^18 * 3600)), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - (5000 * 10^18 * 3600)), this.address, msg.sender);
                else:
                    balanceOf[address(this.address)] = 19000000 * 10^18
                    if 1000 * msg.value < balanceOf[address(this.address)] - 19000000 * 10^18:
                        require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                        emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                    else:
                        if balanceOf[address(this.address)] <= 5000 * 10^18 * 3600:
                            if 1000 * msg.value < balanceOf[address(this.address)] - 19000000 * 10^18:
                                require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                            else:
                                if not msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000):
                                    if 0 < balanceOf[address(this.address)]:
                                        require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                        emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                    else:
                                        if balanceOf[address(this.address)] <= 0:
                                            require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                        else:
                                            balanceOf[address(this.address)] = 0
                                            require (2 * balanceOf[address(this.address)]) - 19000000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 19000000 * 10^18
                                            emit Transfer(((2 * balanceOf[address(this.address)]) - 19000000 * 10^18), this.address, msg.sender);
                                else:
                                    require msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000)
                                    require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) == 100
                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) < balanceOf[address(this.address)]:
                                        if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) <= 0:
                                            require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                        else:
                                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000)
                                            require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18), this.address, msg.sender);
                                    else:
                                        if balanceOf[address(this.address)] <= 0:
                                            require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                        else:
                                            balanceOf[address(this.address)] = 0
                                            require (2 * balanceOf[address(this.address)]) - 19000000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 19000000 * 10^18
                                            emit Transfer(((2 * balanceOf[address(this.address)]) - 19000000 * 10^18), this.address, msg.sender);
                        else:
                            if not msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000):
                                if 0 < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                    if 0 < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                        require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                        emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                    else:
                                        if not msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000):
                                            if 0 < balanceOf[address(this.address)]:
                                                require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - 19000000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 19000000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 19000000 * 10^18), this.address, msg.sender);
                                        else:
                                            require msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000)
                                            require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) == 100
                                            if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) < balanceOf[address(this.address)]:
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) <= 0:
                                                    require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000)
                                                    require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - 19000000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 19000000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 19000000 * 10^18), this.address, msg.sender);
                                else:
                                    if balanceOf[address(this.address)] - (5000 * 10^18 * 3600) <= 0:
                                        if 0 < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                            require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 19000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 19000000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000)
                                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) == 100
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) <= 0:
                                                        require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000)
                                                        require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 19000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 19000000 * 10^18), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = 5000 * 10^18 * 3600
                                        if 0 < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                            require (2 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                            emit Transfer(((2 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require (2 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (2 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (3 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                                        emit Transfer(((3 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) / msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) == 100
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) <= 0:
                                                        require (2 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) + (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                                        require (2 * balanceOf[address(this.address)]) + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - 37000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - 37000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - 37000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (2 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (3 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                                        emit Transfer(((3 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                            else:
                                require msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000)
                                require (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) == 150
                                if (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                    if (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) <= 0:
                                        if (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                            require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 19000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 19000000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000)
                                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) == 100
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) <= 0:
                                                        require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000)
                                                        require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 19000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 19000000 * 10^18), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (150 * msg.value) + (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000)
                                        if (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                            require balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - ((150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / 150):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - ((150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / 150)
                                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (100 * (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / 150) / msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - ((150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / 150) == 100
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (100 * (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / 150) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (100 * (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / 150) <= 0:
                                                        require balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) + (100 * (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / 150)
                                                        require balanceOf[address(this.address)] + (250 * msg.value) + (-250 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) + (-100 * (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / 150) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (250 * msg.value) + (-250 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) + (-100 * (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / 150) - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (250 * msg.value) + (-250 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) + (-100 * (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / 150) - 19000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) + (150 * msg.value) + (-150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18), this.address, msg.sender);
                                else:
                                    if balanceOf[address(this.address)] - (5000 * 10^18 * 3600) <= 0:
                                        if (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                            require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 19000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 19000000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000)
                                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) / msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) == 100
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) <= 0:
                                                        require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000)
                                                        require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - 19000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 19000000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 19000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) - 19000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 19000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 19000000 * 10^18), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = 5000 * 10^18 * 3600
                                        if (150 * msg.value) - (150 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) < balanceOf[address(this.address)] - (5000 * 10^18 * 3600):
                                            require (2 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                            emit Transfer(((2 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require (2 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (2 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (3 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                                        emit Transfer(((3 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) / msg.value - (balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) == 100
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) - (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) <= 0:
                                                        require (2 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) + (100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150)
                                                        require (2 * balanceOf[address(this.address)]) + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - 37000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - 37000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 19000000 * 10^18 / 1000) + (-100 * balanceOf[address(this.address)] - (5000 * 10^18 * 3600) / 150) - 37000000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (2 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (3 * balanceOf[address(this.address)]) - 37000000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3 * balanceOf[address(this.address)]) - 37000000 * 10^18
                                                        emit Transfer(((3 * balanceOf[address(this.address)]) - 37000000 * 10^18), this.address, msg.sender);
}



}

contract main {




// =====================  Runtime code  =====================


const name = 'FXsoscoin'

const duration = 365

const decimals = 18

const sub_361ce97e(?) = 1000

const symbol = 'FXSOS'

const start = 1555505555

const COIN = 10^18


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

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg1
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require block.timestamp > 1555505555
    require block.timestamp < 1587041555
    require balanceOf[address(this.address)] > 0
    if balanceOf[address(this.address)] <= 3999000 * 10^18:
        if balanceOf[address(this.address)] <= 3998000 * 10^18:
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
                if 0 < balanceOf[address(this.address)] - 3998000 * 10^18:
                    require 0 >= balanceOf[address(this.address)] - 3998000 * 10^18
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
                    if balanceOf[address(this.address)] - 3998000 * 10^18 <= 0:
                        require 0 >= balanceOf[address(this.address)] - 3998000 * 10^18
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
                        balanceOf[address(this.address)] = 3998000 * 10^18
                        if 0 < balanceOf[address(this.address)] - 3998000 * 10^18:
                            require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                            emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                        else:
                            if not msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3):
                                if 0 < balanceOf[address(this.address)]:
                                    require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                    emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                else:
                                    if balanceOf[address(this.address)] <= 0:
                                        require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                        emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = 0
                                        require (2 * balanceOf[address(this.address)]) - 3998000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18
                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 3998000 * 10^18), this.address, msg.sender);
                            else:
                                require msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) / msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3) == 100
                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) < balanceOf[address(this.address)]:
                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) <= 0:
                                        require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                        emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                        require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18
                                        emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18), this.address, msg.sender);
                                else:
                                    if balanceOf[address(this.address)] <= 0:
                                        require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                        emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = 0
                                        require (2 * balanceOf[address(this.address)]) - 3998000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18
                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 3998000 * 10^18), this.address, msg.sender);
            else:
                require msg.value
                require 200 * msg.value / msg.value == 200
                if 200 * msg.value < balanceOf[address(this.address)] - 3998000 * 10^18:
                    if 200 * msg.value <= 0:
                        require 200 * msg.value >= balanceOf[address(this.address)] - 3998000 * 10^18
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
                        balanceOf[address(this.address)] += -200 * msg.value
                        if 200 * msg.value < balanceOf[address(this.address)] - 3998000 * 10^18:
                            require 200 * msg.value > 0
                            balanceOf[address(msg.sender)] += 200 * msg.value
                            emit Transfer((200 * msg.value), this.address, msg.sender);
                        else:
                            if not msg.value - (200 * msg.value / 3):
                                if 0 < balanceOf[address(this.address)]:
                                    require 200 * msg.value > 0
                                    balanceOf[address(msg.sender)] += 200 * msg.value
                                    emit Transfer((200 * msg.value), this.address, msg.sender);
                                else:
                                    if balanceOf[address(this.address)] <= 0:
                                        require 200 * msg.value > 0
                                        balanceOf[address(msg.sender)] += 200 * msg.value
                                        emit Transfer((200 * msg.value), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = 0
                                        require (200 * msg.value) + balanceOf[address(this.address)] > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (200 * msg.value) + balanceOf[address(this.address)]
                                        emit Transfer(((200 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                            else:
                                require msg.value - (200 * msg.value / 3)
                                require (100 * msg.value) - (100 * 200 * msg.value / 3) / msg.value - (200 * msg.value / 3) == 100
                                if (100 * msg.value) - (100 * 200 * msg.value / 3) < balanceOf[address(this.address)]:
                                    if (100 * msg.value) - (100 * 200 * msg.value / 3) <= 0:
                                        require 200 * msg.value > 0
                                        balanceOf[address(msg.sender)] += 200 * msg.value
                                        emit Transfer((200 * msg.value), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 200 * msg.value / 3)
                                        require (300 * msg.value) - (100 * 200 * msg.value / 3) > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) - (100 * 200 * msg.value / 3)
                                        emit Transfer(((300 * msg.value) - (100 * 200 * msg.value / 3)), this.address, msg.sender);
                                else:
                                    if balanceOf[address(this.address)] <= 0:
                                        require 200 * msg.value > 0
                                        balanceOf[address(msg.sender)] += 200 * msg.value
                                        emit Transfer((200 * msg.value), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = 0
                                        require (200 * msg.value) + balanceOf[address(this.address)] > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (200 * msg.value) + balanceOf[address(this.address)]
                                        emit Transfer(((200 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                else:
                    if balanceOf[address(this.address)] - 3998000 * 10^18 <= 0:
                        require 200 * msg.value >= balanceOf[address(this.address)] - 3998000 * 10^18
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
                        balanceOf[address(this.address)] = 3998000 * 10^18
                        if 200 * msg.value < balanceOf[address(this.address)] - 3998000 * 10^18:
                            require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                            emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                        else:
                            if not msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3):
                                if 0 < balanceOf[address(this.address)]:
                                    require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                    emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                else:
                                    if balanceOf[address(this.address)] <= 0:
                                        require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                        emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = 0
                                        require (2 * balanceOf[address(this.address)]) - 3998000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18
                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 3998000 * 10^18), this.address, msg.sender);
                            else:
                                require msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) / msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3) == 100
                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) < balanceOf[address(this.address)]:
                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) <= 0:
                                        require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                        emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                        require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18
                                        emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18), this.address, msg.sender);
                                else:
                                    if balanceOf[address(this.address)] <= 0:
                                        require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                        emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = 0
                                        require (2 * balanceOf[address(this.address)]) - 3998000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18
                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 3998000 * 10^18), this.address, msg.sender);
    else:
        if not msg.value:
            if 0 < balanceOf[address(this.address)] - 3999000 * 10^18:
                require 0 >= balanceOf[address(this.address)] - 3999000 * 10^18
                if balanceOf[address(this.address)] <= 3998000 * 10^18:
                    require 0 >= balanceOf[address(this.address)] - 3999000 * 10^18
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
                        if 0 < balanceOf[address(this.address)] - 3998000 * 10^18:
                            require 0 >= balanceOf[address(this.address)] - 3998000 * 10^18
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
                            if balanceOf[address(this.address)] - 3998000 * 10^18 <= 0:
                                require 0 >= balanceOf[address(this.address)] - 3998000 * 10^18
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
                                balanceOf[address(this.address)] = 3998000 * 10^18
                                if 0 < balanceOf[address(this.address)] - 3998000 * 10^18:
                                    require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                    emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                else:
                                    if not msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3):
                                        if 0 < balanceOf[address(this.address)]:
                                            require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                        else:
                                            if balanceOf[address(this.address)] <= 0:
                                                require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                            else:
                                                balanceOf[address(this.address)] = 0
                                                require (2 * balanceOf[address(this.address)]) - 3998000 * 10^18 > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18
                                                emit Transfer(((2 * balanceOf[address(this.address)]) - 3998000 * 10^18), this.address, msg.sender);
                                    else:
                                        require msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                        require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) / msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3) == 100
                                        if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) < balanceOf[address(this.address)]:
                                            if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) <= 0:
                                                require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                            else:
                                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                                require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18 > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18
                                                emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18), this.address, msg.sender);
                                        else:
                                            if balanceOf[address(this.address)] <= 0:
                                                require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                            else:
                                                balanceOf[address(this.address)] = 0
                                                require (2 * balanceOf[address(this.address)]) - 3998000 * 10^18 > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18
                                                emit Transfer(((2 * balanceOf[address(this.address)]) - 3998000 * 10^18), this.address, msg.sender);
                    else:
                        require msg.value
                        require 200 * msg.value / msg.value == 200
                        if 200 * msg.value < balanceOf[address(this.address)] - 3998000 * 10^18:
                            if 200 * msg.value <= 0:
                                require 200 * msg.value >= balanceOf[address(this.address)] - 3998000 * 10^18
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
                                balanceOf[address(this.address)] += -200 * msg.value
                                if 200 * msg.value < balanceOf[address(this.address)] - 3998000 * 10^18:
                                    require 200 * msg.value > 0
                                    balanceOf[address(msg.sender)] += 200 * msg.value
                                    emit Transfer((200 * msg.value), this.address, msg.sender);
                                else:
                                    if not msg.value - (200 * msg.value / 3):
                                        if 0 < balanceOf[address(this.address)]:
                                            require 200 * msg.value > 0
                                            balanceOf[address(msg.sender)] += 200 * msg.value
                                            emit Transfer((200 * msg.value), this.address, msg.sender);
                                        else:
                                            if balanceOf[address(this.address)] <= 0:
                                                require 200 * msg.value > 0
                                                balanceOf[address(msg.sender)] += 200 * msg.value
                                                emit Transfer((200 * msg.value), this.address, msg.sender);
                                            else:
                                                balanceOf[address(this.address)] = 0
                                                require (200 * msg.value) + balanceOf[address(this.address)] > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (200 * msg.value) + balanceOf[address(this.address)]
                                                emit Transfer(((200 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                    else:
                                        require msg.value - (200 * msg.value / 3)
                                        require (100 * msg.value) - (100 * 200 * msg.value / 3) / msg.value - (200 * msg.value / 3) == 100
                                        if (100 * msg.value) - (100 * 200 * msg.value / 3) < balanceOf[address(this.address)]:
                                            if (100 * msg.value) - (100 * 200 * msg.value / 3) <= 0:
                                                require 200 * msg.value > 0
                                                balanceOf[address(msg.sender)] += 200 * msg.value
                                                emit Transfer((200 * msg.value), this.address, msg.sender);
                                            else:
                                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 200 * msg.value / 3)
                                                require (300 * msg.value) - (100 * 200 * msg.value / 3) > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) - (100 * 200 * msg.value / 3)
                                                emit Transfer(((300 * msg.value) - (100 * 200 * msg.value / 3)), this.address, msg.sender);
                                        else:
                                            if balanceOf[address(this.address)] <= 0:
                                                require 200 * msg.value > 0
                                                balanceOf[address(msg.sender)] += 200 * msg.value
                                                emit Transfer((200 * msg.value), this.address, msg.sender);
                                            else:
                                                balanceOf[address(this.address)] = 0
                                                require (200 * msg.value) + balanceOf[address(this.address)] > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (200 * msg.value) + balanceOf[address(this.address)]
                                                emit Transfer(((200 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                        else:
                            if balanceOf[address(this.address)] - 3998000 * 10^18 <= 0:
                                require 200 * msg.value >= balanceOf[address(this.address)] - 3998000 * 10^18
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
                                balanceOf[address(this.address)] = 3998000 * 10^18
                                if 200 * msg.value < balanceOf[address(this.address)] - 3998000 * 10^18:
                                    require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                    emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                else:
                                    if not msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3):
                                        if 0 < balanceOf[address(this.address)]:
                                            require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                        else:
                                            if balanceOf[address(this.address)] <= 0:
                                                require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                            else:
                                                balanceOf[address(this.address)] = 0
                                                require (2 * balanceOf[address(this.address)]) - 3998000 * 10^18 > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18
                                                emit Transfer(((2 * balanceOf[address(this.address)]) - 3998000 * 10^18), this.address, msg.sender);
                                    else:
                                        require msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                        require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) / msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3) == 100
                                        if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) < balanceOf[address(this.address)]:
                                            if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) <= 0:
                                                require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                            else:
                                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                                require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18 > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18
                                                emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18), this.address, msg.sender);
                                        else:
                                            if balanceOf[address(this.address)] <= 0:
                                                require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                            else:
                                                balanceOf[address(this.address)] = 0
                                                require (2 * balanceOf[address(this.address)]) - 3998000 * 10^18 > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18
                                                emit Transfer(((2 * balanceOf[address(this.address)]) - 3998000 * 10^18), this.address, msg.sender);
            else:
                if balanceOf[address(this.address)] - 3999000 * 10^18 <= 0:
                    require 0 >= balanceOf[address(this.address)] - 3999000 * 10^18
                    if balanceOf[address(this.address)] <= 3998000 * 10^18:
                        require 0 >= balanceOf[address(this.address)] - 3999000 * 10^18
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
                            if 0 < balanceOf[address(this.address)] - 3998000 * 10^18:
                                require 0 >= balanceOf[address(this.address)] - 3998000 * 10^18
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
                                if balanceOf[address(this.address)] - 3998000 * 10^18 <= 0:
                                    require 0 >= balanceOf[address(this.address)] - 3998000 * 10^18
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
                                    balanceOf[address(this.address)] = 3998000 * 10^18
                                    if 0 < balanceOf[address(this.address)] - 3998000 * 10^18:
                                        require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                        emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                    else:
                                        if not msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3):
                                            if 0 < balanceOf[address(this.address)]:
                                                require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 3998000 * 10^18), this.address, msg.sender);
                                        else:
                                            require msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                            require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) / msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3) == 100
                                            if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) < balanceOf[address(this.address)]:
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) <= 0:
                                                    require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                                    require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 3998000 * 10^18), this.address, msg.sender);
                        else:
                            require msg.value
                            require 200 * msg.value / msg.value == 200
                            if 200 * msg.value < balanceOf[address(this.address)] - 3998000 * 10^18:
                                if 200 * msg.value <= 0:
                                    require 200 * msg.value >= balanceOf[address(this.address)] - 3998000 * 10^18
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
                                    balanceOf[address(this.address)] += -200 * msg.value
                                    if 200 * msg.value < balanceOf[address(this.address)] - 3998000 * 10^18:
                                        require 200 * msg.value > 0
                                        balanceOf[address(msg.sender)] += 200 * msg.value
                                        emit Transfer((200 * msg.value), this.address, msg.sender);
                                    else:
                                        if not msg.value - (200 * msg.value / 3):
                                            if 0 < balanceOf[address(this.address)]:
                                                require 200 * msg.value > 0
                                                balanceOf[address(msg.sender)] += 200 * msg.value
                                                emit Transfer((200 * msg.value), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require 200 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 200 * msg.value
                                                    emit Transfer((200 * msg.value), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (200 * msg.value) + balanceOf[address(this.address)] > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (200 * msg.value) + balanceOf[address(this.address)]
                                                    emit Transfer(((200 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                        else:
                                            require msg.value - (200 * msg.value / 3)
                                            require (100 * msg.value) - (100 * 200 * msg.value / 3) / msg.value - (200 * msg.value / 3) == 100
                                            if (100 * msg.value) - (100 * 200 * msg.value / 3) < balanceOf[address(this.address)]:
                                                if (100 * msg.value) - (100 * 200 * msg.value / 3) <= 0:
                                                    require 200 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 200 * msg.value
                                                    emit Transfer((200 * msg.value), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 200 * msg.value / 3)
                                                    require (300 * msg.value) - (100 * 200 * msg.value / 3) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) - (100 * 200 * msg.value / 3)
                                                    emit Transfer(((300 * msg.value) - (100 * 200 * msg.value / 3)), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require 200 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 200 * msg.value
                                                    emit Transfer((200 * msg.value), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (200 * msg.value) + balanceOf[address(this.address)] > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (200 * msg.value) + balanceOf[address(this.address)]
                                                    emit Transfer(((200 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                            else:
                                if balanceOf[address(this.address)] - 3998000 * 10^18 <= 0:
                                    require 200 * msg.value >= balanceOf[address(this.address)] - 3998000 * 10^18
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
                                    balanceOf[address(this.address)] = 3998000 * 10^18
                                    if 200 * msg.value < balanceOf[address(this.address)] - 3998000 * 10^18:
                                        require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                        emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                    else:
                                        if not msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3):
                                            if 0 < balanceOf[address(this.address)]:
                                                require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 3998000 * 10^18), this.address, msg.sender);
                                        else:
                                            require msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                            require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) / msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3) == 100
                                            if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) < balanceOf[address(this.address)]:
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) <= 0:
                                                    require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                                    require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 3998000 * 10^18), this.address, msg.sender);
                else:
                    balanceOf[address(this.address)] = 3999000 * 10^18
                    if 0 < balanceOf[address(this.address)] - 3999000 * 10^18:
                        require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                        emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                    else:
                        if balanceOf[address(this.address)] <= 3998000 * 10^18:
                            if 0 < balanceOf[address(this.address)] - 3999000 * 10^18:
                                require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                            else:
                                if not msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4):
                                    if 0 < balanceOf[address(this.address)]:
                                        require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                        emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                    else:
                                        if balanceOf[address(this.address)] <= 0:
                                            require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                        else:
                                            balanceOf[address(this.address)] = 0
                                            require (2 * balanceOf[address(this.address)]) - 3999000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3999000 * 10^18
                                            emit Transfer(((2 * balanceOf[address(this.address)]) - 3999000 * 10^18), this.address, msg.sender);
                                else:
                                    require msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4)
                                    require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) == 100
                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) < balanceOf[address(this.address)]:
                                        if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) <= 0:
                                            require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                        else:
                                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4)
                                            require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18), this.address, msg.sender);
                                    else:
                                        if balanceOf[address(this.address)] <= 0:
                                            require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                        else:
                                            balanceOf[address(this.address)] = 0
                                            require (2 * balanceOf[address(this.address)]) - 3999000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3999000 * 10^18
                                            emit Transfer(((2 * balanceOf[address(this.address)]) - 3999000 * 10^18), this.address, msg.sender);
                        else:
                            if not msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4):
                                if 0 < balanceOf[address(this.address)] - 3998000 * 10^18:
                                    if 0 < balanceOf[address(this.address)] - 3998000 * 10^18:
                                        require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                        emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                    else:
                                        if not msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4):
                                            if 0 < balanceOf[address(this.address)]:
                                                require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - 3999000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3999000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 3999000 * 10^18), this.address, msg.sender);
                                        else:
                                            require msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4)
                                            require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) == 100
                                            if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) < balanceOf[address(this.address)]:
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) <= 0:
                                                    require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4)
                                                    require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - 3999000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3999000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 3999000 * 10^18), this.address, msg.sender);
                                else:
                                    if balanceOf[address(this.address)] - 3998000 * 10^18 <= 0:
                                        if 0 < balanceOf[address(this.address)] - 3998000 * 10^18:
                                            require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3999000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 3999000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4)
                                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) == 100
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) <= 0:
                                                        require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4)
                                                        require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3999000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 3999000 * 10^18), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = 3998000 * 10^18
                                        if 0 < balanceOf[address(this.address)] - 3998000 * 10^18:
                                            require (2 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                            emit Transfer(((2 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require (2 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (2 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (3 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                                        emit Transfer(((3 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) / msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3) == 100
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) <= 0:
                                                        require (2 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) + (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                                        require (2 * balanceOf[address(this.address)]) + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 7997000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 7997000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 7997000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (2 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (3 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                                        emit Transfer(((3 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                            else:
                                require msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4)
                                require (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) == 200
                                if (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) < balanceOf[address(this.address)] - 3998000 * 10^18:
                                    if (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) <= 0:
                                        if (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) < balanceOf[address(this.address)] - 3998000 * 10^18:
                                            require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3999000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 3999000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4)
                                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) == 100
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) <= 0:
                                                        require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4)
                                                        require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3999000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 3999000 * 10^18), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (200 * msg.value) + (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4)
                                        if (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) < balanceOf[address(this.address)] - 3998000 * 10^18:
                                            require balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - ((200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / 3):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - ((200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / 3)
                                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (100 * (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / 3) / msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - ((200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / 3) == 100
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (100 * (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / 3) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (100 * (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / 3) <= 0:
                                                        require balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) + (100 * (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / 3)
                                                        require balanceOf[address(this.address)] + (300 * msg.value) + (-300 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) + (-100 * (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / 3) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (300 * msg.value) + (-300 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) + (-100 * (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / 3) - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (300 * msg.value) + (-300 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) + (-100 * (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / 3) - 3999000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18), this.address, msg.sender);
                                else:
                                    if balanceOf[address(this.address)] - 3998000 * 10^18 <= 0:
                                        if (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) < balanceOf[address(this.address)] - 3998000 * 10^18:
                                            require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3999000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 3999000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4)
                                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) == 100
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) <= 0:
                                                        require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4)
                                                        require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3999000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 3999000 * 10^18), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = 3998000 * 10^18
                                        if (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) < balanceOf[address(this.address)] - 3998000 * 10^18:
                                            require (2 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                            emit Transfer(((2 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require (2 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (2 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (3 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                                        emit Transfer(((3 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) / msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3) == 100
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) <= 0:
                                                        require (2 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) + (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                                        require (2 * balanceOf[address(this.address)]) + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 7997000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 7997000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 7997000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (2 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (3 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                                        emit Transfer(((3 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
        else:
            require msg.value
            require 300 * msg.value / msg.value == 300
            if 300 * msg.value < balanceOf[address(this.address)] - 3999000 * 10^18:
                if 300 * msg.value <= 0:
                    require 300 * msg.value >= balanceOf[address(this.address)] - 3999000 * 10^18
                    if balanceOf[address(this.address)] <= 3998000 * 10^18:
                        require 300 * msg.value >= balanceOf[address(this.address)] - 3999000 * 10^18
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
                            if 0 < balanceOf[address(this.address)] - 3998000 * 10^18:
                                require 0 >= balanceOf[address(this.address)] - 3998000 * 10^18
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
                                if balanceOf[address(this.address)] - 3998000 * 10^18 <= 0:
                                    require 0 >= balanceOf[address(this.address)] - 3998000 * 10^18
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
                                    balanceOf[address(this.address)] = 3998000 * 10^18
                                    if 0 < balanceOf[address(this.address)] - 3998000 * 10^18:
                                        require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                        emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                    else:
                                        if not msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3):
                                            if 0 < balanceOf[address(this.address)]:
                                                require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 3998000 * 10^18), this.address, msg.sender);
                                        else:
                                            require msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                            require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) / msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3) == 100
                                            if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) < balanceOf[address(this.address)]:
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) <= 0:
                                                    require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                                    require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 3998000 * 10^18), this.address, msg.sender);
                        else:
                            require msg.value
                            require 200 * msg.value / msg.value == 200
                            if 200 * msg.value < balanceOf[address(this.address)] - 3998000 * 10^18:
                                if 200 * msg.value <= 0:
                                    require 200 * msg.value >= balanceOf[address(this.address)] - 3998000 * 10^18
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
                                    balanceOf[address(this.address)] += -200 * msg.value
                                    if 200 * msg.value < balanceOf[address(this.address)] - 3998000 * 10^18:
                                        require 200 * msg.value > 0
                                        balanceOf[address(msg.sender)] += 200 * msg.value
                                        emit Transfer((200 * msg.value), this.address, msg.sender);
                                    else:
                                        if not msg.value - (200 * msg.value / 3):
                                            if 0 < balanceOf[address(this.address)]:
                                                require 200 * msg.value > 0
                                                balanceOf[address(msg.sender)] += 200 * msg.value
                                                emit Transfer((200 * msg.value), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require 200 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 200 * msg.value
                                                    emit Transfer((200 * msg.value), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (200 * msg.value) + balanceOf[address(this.address)] > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (200 * msg.value) + balanceOf[address(this.address)]
                                                    emit Transfer(((200 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                        else:
                                            require msg.value - (200 * msg.value / 3)
                                            require (100 * msg.value) - (100 * 200 * msg.value / 3) / msg.value - (200 * msg.value / 3) == 100
                                            if (100 * msg.value) - (100 * 200 * msg.value / 3) < balanceOf[address(this.address)]:
                                                if (100 * msg.value) - (100 * 200 * msg.value / 3) <= 0:
                                                    require 200 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 200 * msg.value
                                                    emit Transfer((200 * msg.value), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 200 * msg.value / 3)
                                                    require (300 * msg.value) - (100 * 200 * msg.value / 3) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) - (100 * 200 * msg.value / 3)
                                                    emit Transfer(((300 * msg.value) - (100 * 200 * msg.value / 3)), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require 200 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 200 * msg.value
                                                    emit Transfer((200 * msg.value), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (200 * msg.value) + balanceOf[address(this.address)] > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (200 * msg.value) + balanceOf[address(this.address)]
                                                    emit Transfer(((200 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                            else:
                                if balanceOf[address(this.address)] - 3998000 * 10^18 <= 0:
                                    require 200 * msg.value >= balanceOf[address(this.address)] - 3998000 * 10^18
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
                                    balanceOf[address(this.address)] = 3998000 * 10^18
                                    if 200 * msg.value < balanceOf[address(this.address)] - 3998000 * 10^18:
                                        require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                        emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                    else:
                                        if not msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3):
                                            if 0 < balanceOf[address(this.address)]:
                                                require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 3998000 * 10^18), this.address, msg.sender);
                                        else:
                                            require msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                            require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) / msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3) == 100
                                            if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) < balanceOf[address(this.address)]:
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) <= 0:
                                                    require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                                    require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 3998000 * 10^18), this.address, msg.sender);
                else:
                    balanceOf[address(this.address)] += -300 * msg.value
                    if 300 * msg.value < balanceOf[address(this.address)] - 3999000 * 10^18:
                        require 300 * msg.value > 0
                        balanceOf[address(msg.sender)] += 300 * msg.value
                        emit Transfer((300 * msg.value), this.address, msg.sender);
                    else:
                        if balanceOf[address(this.address)] <= 3998000 * 10^18:
                            if 300 * msg.value < balanceOf[address(this.address)] - 3999000 * 10^18:
                                require 300 * msg.value > 0
                                balanceOf[address(msg.sender)] += 300 * msg.value
                                emit Transfer((300 * msg.value), this.address, msg.sender);
                            else:
                                if not msg.value - (300 * msg.value / 4):
                                    if 0 < balanceOf[address(this.address)]:
                                        require 300 * msg.value > 0
                                        balanceOf[address(msg.sender)] += 300 * msg.value
                                        emit Transfer((300 * msg.value), this.address, msg.sender);
                                    else:
                                        if balanceOf[address(this.address)] <= 0:
                                            require 300 * msg.value > 0
                                            balanceOf[address(msg.sender)] += 300 * msg.value
                                            emit Transfer((300 * msg.value), this.address, msg.sender);
                                        else:
                                            balanceOf[address(this.address)] = 0
                                            require (300 * msg.value) + balanceOf[address(this.address)] > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) + balanceOf[address(this.address)]
                                            emit Transfer(((300 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                else:
                                    require msg.value - (300 * msg.value / 4)
                                    require (100 * msg.value) - (100 * 300 * msg.value / 4) / msg.value - (300 * msg.value / 4) == 100
                                    if (100 * msg.value) - (100 * 300 * msg.value / 4) < balanceOf[address(this.address)]:
                                        if (100 * msg.value) - (100 * 300 * msg.value / 4) <= 0:
                                            require 300 * msg.value > 0
                                            balanceOf[address(msg.sender)] += 300 * msg.value
                                            emit Transfer((300 * msg.value), this.address, msg.sender);
                                        else:
                                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 300 * msg.value / 4)
                                            require (400 * msg.value) - (100 * 300 * msg.value / 4) > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (400 * msg.value) - (100 * 300 * msg.value / 4)
                                            emit Transfer(((400 * msg.value) - (100 * 300 * msg.value / 4)), this.address, msg.sender);
                                    else:
                                        if balanceOf[address(this.address)] <= 0:
                                            require 300 * msg.value > 0
                                            balanceOf[address(msg.sender)] += 300 * msg.value
                                            emit Transfer((300 * msg.value), this.address, msg.sender);
                                        else:
                                            balanceOf[address(this.address)] = 0
                                            require (300 * msg.value) + balanceOf[address(this.address)] > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) + balanceOf[address(this.address)]
                                            emit Transfer(((300 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                        else:
                            if not msg.value - (300 * msg.value / 4):
                                if 0 < balanceOf[address(this.address)] - 3998000 * 10^18:
                                    if 0 < balanceOf[address(this.address)] - 3998000 * 10^18:
                                        require 300 * msg.value > 0
                                        balanceOf[address(msg.sender)] += 300 * msg.value
                                        emit Transfer((300 * msg.value), this.address, msg.sender);
                                    else:
                                        if not msg.value - (300 * msg.value / 4):
                                            if 0 < balanceOf[address(this.address)]:
                                                require 300 * msg.value > 0
                                                balanceOf[address(msg.sender)] += 300 * msg.value
                                                emit Transfer((300 * msg.value), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require 300 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 300 * msg.value
                                                    emit Transfer((300 * msg.value), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (300 * msg.value) + balanceOf[address(this.address)] > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) + balanceOf[address(this.address)]
                                                    emit Transfer(((300 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                        else:
                                            require msg.value - (300 * msg.value / 4)
                                            require (100 * msg.value) - (100 * 300 * msg.value / 4) / msg.value - (300 * msg.value / 4) == 100
                                            if (100 * msg.value) - (100 * 300 * msg.value / 4) < balanceOf[address(this.address)]:
                                                if (100 * msg.value) - (100 * 300 * msg.value / 4) <= 0:
                                                    require 300 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 300 * msg.value
                                                    emit Transfer((300 * msg.value), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 300 * msg.value / 4)
                                                    require (400 * msg.value) - (100 * 300 * msg.value / 4) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (400 * msg.value) - (100 * 300 * msg.value / 4)
                                                    emit Transfer(((400 * msg.value) - (100 * 300 * msg.value / 4)), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require 300 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 300 * msg.value
                                                    emit Transfer((300 * msg.value), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (300 * msg.value) + balanceOf[address(this.address)] > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) + balanceOf[address(this.address)]
                                                    emit Transfer(((300 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                else:
                                    if balanceOf[address(this.address)] - 3998000 * 10^18 <= 0:
                                        if 0 < balanceOf[address(this.address)] - 3998000 * 10^18:
                                            require 300 * msg.value > 0
                                            balanceOf[address(msg.sender)] += 300 * msg.value
                                            emit Transfer((300 * msg.value), this.address, msg.sender);
                                        else:
                                            if not msg.value - (300 * msg.value / 4):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require 300 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 300 * msg.value
                                                    emit Transfer((300 * msg.value), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require 300 * msg.value > 0
                                                        balanceOf[address(msg.sender)] += 300 * msg.value
                                                        emit Transfer((300 * msg.value), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (300 * msg.value) + balanceOf[address(this.address)] > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) + balanceOf[address(this.address)]
                                                        emit Transfer(((300 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                            else:
                                                require msg.value - (300 * msg.value / 4)
                                                require (100 * msg.value) - (100 * 300 * msg.value / 4) / msg.value - (300 * msg.value / 4) == 100
                                                if (100 * msg.value) - (100 * 300 * msg.value / 4) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * 300 * msg.value / 4) <= 0:
                                                        require 300 * msg.value > 0
                                                        balanceOf[address(msg.sender)] += 300 * msg.value
                                                        emit Transfer((300 * msg.value), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 300 * msg.value / 4)
                                                        require (400 * msg.value) - (100 * 300 * msg.value / 4) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (400 * msg.value) - (100 * 300 * msg.value / 4)
                                                        emit Transfer(((400 * msg.value) - (100 * 300 * msg.value / 4)), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require 300 * msg.value > 0
                                                        balanceOf[address(msg.sender)] += 300 * msg.value
                                                        emit Transfer((300 * msg.value), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (300 * msg.value) + balanceOf[address(this.address)] > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) + balanceOf[address(this.address)]
                                                        emit Transfer(((300 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = 3998000 * 10^18
                                        if 0 < balanceOf[address(this.address)] - 3998000 * 10^18:
                                            require (300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18
                                            emit Transfer(((300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (300 * msg.value / 4) - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require (300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18
                                                    emit Transfer(((300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18
                                                        emit Transfer(((300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (300 * msg.value) + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18
                                                        emit Transfer(((300 * msg.value) + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (300 * msg.value / 4) - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                                require (100 * msg.value) - (100 * 300 * msg.value / 4) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) / msg.value - (300 * msg.value / 4) - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3) == 100
                                                if (100 * msg.value) - (100 * 300 * msg.value / 4) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * 300 * msg.value / 4) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) <= 0:
                                                        require (300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18
                                                        emit Transfer(((300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 300 * msg.value / 4) + (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                                        require (400 * msg.value) + balanceOf[address(this.address)] + (-100 * 300 * msg.value / 4) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (400 * msg.value) + balanceOf[address(this.address)] + (-100 * 300 * msg.value / 4) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18
                                                        emit Transfer(((400 * msg.value) + balanceOf[address(this.address)] + (-100 * 300 * msg.value / 4) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18
                                                        emit Transfer(((300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (300 * msg.value) + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18
                                                        emit Transfer(((300 * msg.value) + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18), this.address, msg.sender);
                            else:
                                require msg.value - (300 * msg.value / 4)
                                require (200 * msg.value) - (200 * 300 * msg.value / 4) / msg.value - (300 * msg.value / 4) == 200
                                if (200 * msg.value) - (200 * 300 * msg.value / 4) < balanceOf[address(this.address)] - 3998000 * 10^18:
                                    if (200 * msg.value) - (200 * 300 * msg.value / 4) <= 0:
                                        if (200 * msg.value) - (200 * 300 * msg.value / 4) < balanceOf[address(this.address)] - 3998000 * 10^18:
                                            require 300 * msg.value > 0
                                            balanceOf[address(msg.sender)] += 300 * msg.value
                                            emit Transfer((300 * msg.value), this.address, msg.sender);
                                        else:
                                            if not msg.value - (300 * msg.value / 4):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require 300 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 300 * msg.value
                                                    emit Transfer((300 * msg.value), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require 300 * msg.value > 0
                                                        balanceOf[address(msg.sender)] += 300 * msg.value
                                                        emit Transfer((300 * msg.value), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (300 * msg.value) + balanceOf[address(this.address)] > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) + balanceOf[address(this.address)]
                                                        emit Transfer(((300 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                            else:
                                                require msg.value - (300 * msg.value / 4)
                                                require (100 * msg.value) - (100 * 300 * msg.value / 4) / msg.value - (300 * msg.value / 4) == 100
                                                if (100 * msg.value) - (100 * 300 * msg.value / 4) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * 300 * msg.value / 4) <= 0:
                                                        require 300 * msg.value > 0
                                                        balanceOf[address(msg.sender)] += 300 * msg.value
                                                        emit Transfer((300 * msg.value), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 300 * msg.value / 4)
                                                        require (400 * msg.value) - (100 * 300 * msg.value / 4) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (400 * msg.value) - (100 * 300 * msg.value / 4)
                                                        emit Transfer(((400 * msg.value) - (100 * 300 * msg.value / 4)), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require 300 * msg.value > 0
                                                        balanceOf[address(msg.sender)] += 300 * msg.value
                                                        emit Transfer((300 * msg.value), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (300 * msg.value) + balanceOf[address(this.address)] > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) + balanceOf[address(this.address)]
                                                        emit Transfer(((300 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (200 * msg.value) + (200 * 300 * msg.value / 4)
                                        if (200 * msg.value) - (200 * 300 * msg.value / 4) < balanceOf[address(this.address)] - 3998000 * 10^18:
                                            require (500 * msg.value) - (200 * 300 * msg.value / 4) > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * msg.value) - (200 * 300 * msg.value / 4)
                                            emit Transfer(((500 * msg.value) - (200 * 300 * msg.value / 4)), this.address, msg.sender);
                                        else:
                                            if not msg.value - (300 * msg.value / 4) - ((200 * msg.value) - (200 * 300 * msg.value / 4) / 3):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require (500 * msg.value) - (200 * 300 * msg.value / 4) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * msg.value) - (200 * 300 * msg.value / 4)
                                                    emit Transfer(((500 * msg.value) - (200 * 300 * msg.value / 4)), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (500 * msg.value) - (200 * 300 * msg.value / 4) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * msg.value) - (200 * 300 * msg.value / 4)
                                                        emit Transfer(((500 * msg.value) - (200 * 300 * msg.value / 4)), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (500 * msg.value) - (200 * 300 * msg.value / 4) + balanceOf[address(this.address)] > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * msg.value) - (200 * 300 * msg.value / 4) + balanceOf[address(this.address)]
                                                        emit Transfer(((500 * msg.value) - (200 * 300 * msg.value / 4) + balanceOf[address(this.address)]), this.address, msg.sender);
                                            else:
                                                require msg.value - (300 * msg.value / 4) - ((200 * msg.value) - (200 * 300 * msg.value / 4) / 3)
                                                require (100 * msg.value) - (100 * 300 * msg.value / 4) - (100 * (200 * msg.value) - (200 * 300 * msg.value / 4) / 3) / msg.value - (300 * msg.value / 4) - ((200 * msg.value) - (200 * 300 * msg.value / 4) / 3) == 100
                                                if (100 * msg.value) - (100 * 300 * msg.value / 4) - (100 * (200 * msg.value) - (200 * 300 * msg.value / 4) / 3) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * 300 * msg.value / 4) - (100 * (200 * msg.value) - (200 * 300 * msg.value / 4) / 3) <= 0:
                                                        require (500 * msg.value) - (200 * 300 * msg.value / 4) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * msg.value) - (200 * 300 * msg.value / 4)
                                                        emit Transfer(((500 * msg.value) - (200 * 300 * msg.value / 4)), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 300 * msg.value / 4) + (100 * (200 * msg.value) - (200 * 300 * msg.value / 4) / 3)
                                                        require (600 * msg.value) - (300 * 300 * msg.value / 4) - (100 * (200 * msg.value) - (200 * 300 * msg.value / 4) / 3) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (600 * msg.value) - (300 * 300 * msg.value / 4) - (100 * (200 * msg.value) - (200 * 300 * msg.value / 4) / 3)
                                                        emit Transfer(((600 * msg.value) - (300 * 300 * msg.value / 4) - (100 * (200 * msg.value) - (200 * 300 * msg.value / 4) / 3)), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (500 * msg.value) - (200 * 300 * msg.value / 4) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * msg.value) - (200 * 300 * msg.value / 4)
                                                        emit Transfer(((500 * msg.value) - (200 * 300 * msg.value / 4)), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (500 * msg.value) - (200 * 300 * msg.value / 4) + balanceOf[address(this.address)] > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * msg.value) - (200 * 300 * msg.value / 4) + balanceOf[address(this.address)]
                                                        emit Transfer(((500 * msg.value) - (200 * 300 * msg.value / 4) + balanceOf[address(this.address)]), this.address, msg.sender);
                                else:
                                    if balanceOf[address(this.address)] - 3998000 * 10^18 <= 0:
                                        if (200 * msg.value) - (200 * 300 * msg.value / 4) < balanceOf[address(this.address)] - 3998000 * 10^18:
                                            require 300 * msg.value > 0
                                            balanceOf[address(msg.sender)] += 300 * msg.value
                                            emit Transfer((300 * msg.value), this.address, msg.sender);
                                        else:
                                            if not msg.value - (300 * msg.value / 4):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require 300 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 300 * msg.value
                                                    emit Transfer((300 * msg.value), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require 300 * msg.value > 0
                                                        balanceOf[address(msg.sender)] += 300 * msg.value
                                                        emit Transfer((300 * msg.value), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (300 * msg.value) + balanceOf[address(this.address)] > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) + balanceOf[address(this.address)]
                                                        emit Transfer(((300 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                            else:
                                                require msg.value - (300 * msg.value / 4)
                                                require (100 * msg.value) - (100 * 300 * msg.value / 4) / msg.value - (300 * msg.value / 4) == 100
                                                if (100 * msg.value) - (100 * 300 * msg.value / 4) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * 300 * msg.value / 4) <= 0:
                                                        require 300 * msg.value > 0
                                                        balanceOf[address(msg.sender)] += 300 * msg.value
                                                        emit Transfer((300 * msg.value), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 300 * msg.value / 4)
                                                        require (400 * msg.value) - (100 * 300 * msg.value / 4) > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (400 * msg.value) - (100 * 300 * msg.value / 4)
                                                        emit Transfer(((400 * msg.value) - (100 * 300 * msg.value / 4)), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require 300 * msg.value > 0
                                                        balanceOf[address(msg.sender)] += 300 * msg.value
                                                        emit Transfer((300 * msg.value), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (300 * msg.value) + balanceOf[address(this.address)] > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) + balanceOf[address(this.address)]
                                                        emit Transfer(((300 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = 3998000 * 10^18
                                        if (200 * msg.value) - (200 * 300 * msg.value / 4) < balanceOf[address(this.address)] - 3998000 * 10^18:
                                            require (300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18
                                            emit Transfer(((300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (300 * msg.value / 4) - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require (300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18
                                                    emit Transfer(((300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18
                                                        emit Transfer(((300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (300 * msg.value) + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18
                                                        emit Transfer(((300 * msg.value) + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (300 * msg.value / 4) - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                                require (100 * msg.value) - (100 * 300 * msg.value / 4) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) / msg.value - (300 * msg.value / 4) - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3) == 100
                                                if (100 * msg.value) - (100 * 300 * msg.value / 4) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * 300 * msg.value / 4) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) <= 0:
                                                        require (300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18
                                                        emit Transfer(((300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 300 * msg.value / 4) + (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                                        require (400 * msg.value) + balanceOf[address(this.address)] + (-100 * 300 * msg.value / 4) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (400 * msg.value) + balanceOf[address(this.address)] + (-100 * 300 * msg.value / 4) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18
                                                        emit Transfer(((400 * msg.value) + balanceOf[address(this.address)] + (-100 * 300 * msg.value / 4) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18
                                                        emit Transfer(((300 * msg.value) + balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (300 * msg.value) + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18
                                                        emit Transfer(((300 * msg.value) + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18), this.address, msg.sender);
            else:
                if balanceOf[address(this.address)] - 3999000 * 10^18 <= 0:
                    require 300 * msg.value >= balanceOf[address(this.address)] - 3999000 * 10^18
                    if balanceOf[address(this.address)] <= 3998000 * 10^18:
                        require 300 * msg.value >= balanceOf[address(this.address)] - 3999000 * 10^18
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
                            if 0 < balanceOf[address(this.address)] - 3998000 * 10^18:
                                require 0 >= balanceOf[address(this.address)] - 3998000 * 10^18
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
                                if balanceOf[address(this.address)] - 3998000 * 10^18 <= 0:
                                    require 0 >= balanceOf[address(this.address)] - 3998000 * 10^18
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
                                    balanceOf[address(this.address)] = 3998000 * 10^18
                                    if 0 < balanceOf[address(this.address)] - 3998000 * 10^18:
                                        require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                        emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                    else:
                                        if not msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3):
                                            if 0 < balanceOf[address(this.address)]:
                                                require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 3998000 * 10^18), this.address, msg.sender);
                                        else:
                                            require msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                            require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) / msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3) == 100
                                            if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) < balanceOf[address(this.address)]:
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) <= 0:
                                                    require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                                    require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 3998000 * 10^18), this.address, msg.sender);
                        else:
                            require msg.value
                            require 200 * msg.value / msg.value == 200
                            if 200 * msg.value < balanceOf[address(this.address)] - 3998000 * 10^18:
                                if 200 * msg.value <= 0:
                                    require 200 * msg.value >= balanceOf[address(this.address)] - 3998000 * 10^18
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
                                    balanceOf[address(this.address)] += -200 * msg.value
                                    if 200 * msg.value < balanceOf[address(this.address)] - 3998000 * 10^18:
                                        require 200 * msg.value > 0
                                        balanceOf[address(msg.sender)] += 200 * msg.value
                                        emit Transfer((200 * msg.value), this.address, msg.sender);
                                    else:
                                        if not msg.value - (200 * msg.value / 3):
                                            if 0 < balanceOf[address(this.address)]:
                                                require 200 * msg.value > 0
                                                balanceOf[address(msg.sender)] += 200 * msg.value
                                                emit Transfer((200 * msg.value), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require 200 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 200 * msg.value
                                                    emit Transfer((200 * msg.value), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (200 * msg.value) + balanceOf[address(this.address)] > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (200 * msg.value) + balanceOf[address(this.address)]
                                                    emit Transfer(((200 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                                        else:
                                            require msg.value - (200 * msg.value / 3)
                                            require (100 * msg.value) - (100 * 200 * msg.value / 3) / msg.value - (200 * msg.value / 3) == 100
                                            if (100 * msg.value) - (100 * 200 * msg.value / 3) < balanceOf[address(this.address)]:
                                                if (100 * msg.value) - (100 * 200 * msg.value / 3) <= 0:
                                                    require 200 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 200 * msg.value
                                                    emit Transfer((200 * msg.value), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * 200 * msg.value / 3)
                                                    require (300 * msg.value) - (100 * 200 * msg.value / 3) > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (300 * msg.value) - (100 * 200 * msg.value / 3)
                                                    emit Transfer(((300 * msg.value) - (100 * 200 * msg.value / 3)), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require 200 * msg.value > 0
                                                    balanceOf[address(msg.sender)] += 200 * msg.value
                                                    emit Transfer((200 * msg.value), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (200 * msg.value) + balanceOf[address(this.address)] > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (200 * msg.value) + balanceOf[address(this.address)]
                                                    emit Transfer(((200 * msg.value) + balanceOf[address(this.address)]), this.address, msg.sender);
                            else:
                                if balanceOf[address(this.address)] - 3998000 * 10^18 <= 0:
                                    require 200 * msg.value >= balanceOf[address(this.address)] - 3998000 * 10^18
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
                                    balanceOf[address(this.address)] = 3998000 * 10^18
                                    if 200 * msg.value < balanceOf[address(this.address)] - 3998000 * 10^18:
                                        require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                        emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                    else:
                                        if not msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3):
                                            if 0 < balanceOf[address(this.address)]:
                                                require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 3998000 * 10^18), this.address, msg.sender);
                                        else:
                                            require msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                            require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) / msg.value - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3) == 100
                                            if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) < balanceOf[address(this.address)]:
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) <= 0:
                                                    require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                                    require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 3998000 * 10^18), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3998000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3998000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - 3998000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3998000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 3998000 * 10^18), this.address, msg.sender);
                else:
                    balanceOf[address(this.address)] = 3999000 * 10^18
                    if 300 * msg.value < balanceOf[address(this.address)] - 3999000 * 10^18:
                        require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                        emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                    else:
                        if balanceOf[address(this.address)] <= 3998000 * 10^18:
                            if 300 * msg.value < balanceOf[address(this.address)] - 3999000 * 10^18:
                                require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                            else:
                                if not msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4):
                                    if 0 < balanceOf[address(this.address)]:
                                        require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                        emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                    else:
                                        if balanceOf[address(this.address)] <= 0:
                                            require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                        else:
                                            balanceOf[address(this.address)] = 0
                                            require (2 * balanceOf[address(this.address)]) - 3999000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3999000 * 10^18
                                            emit Transfer(((2 * balanceOf[address(this.address)]) - 3999000 * 10^18), this.address, msg.sender);
                                else:
                                    require msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4)
                                    require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) == 100
                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) < balanceOf[address(this.address)]:
                                        if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) <= 0:
                                            require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                        else:
                                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4)
                                            require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18), this.address, msg.sender);
                                    else:
                                        if balanceOf[address(this.address)] <= 0:
                                            require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                        else:
                                            balanceOf[address(this.address)] = 0
                                            require (2 * balanceOf[address(this.address)]) - 3999000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3999000 * 10^18
                                            emit Transfer(((2 * balanceOf[address(this.address)]) - 3999000 * 10^18), this.address, msg.sender);
                        else:
                            if not msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4):
                                if 0 < balanceOf[address(this.address)] - 3998000 * 10^18:
                                    if 0 < balanceOf[address(this.address)] - 3998000 * 10^18:
                                        require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                        emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                    else:
                                        if not msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4):
                                            if 0 < balanceOf[address(this.address)]:
                                                require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - 3999000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3999000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 3999000 * 10^18), this.address, msg.sender);
                                        else:
                                            require msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4)
                                            require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) == 100
                                            if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) < balanceOf[address(this.address)]:
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) <= 0:
                                                    require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4)
                                                    require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18), this.address, msg.sender);
                                            else:
                                                if balanceOf[address(this.address)] <= 0:
                                                    require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                else:
                                                    balanceOf[address(this.address)] = 0
                                                    require (2 * balanceOf[address(this.address)]) - 3999000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3999000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 3999000 * 10^18), this.address, msg.sender);
                                else:
                                    if balanceOf[address(this.address)] - 3998000 * 10^18 <= 0:
                                        if 0 < balanceOf[address(this.address)] - 3998000 * 10^18:
                                            require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3999000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 3999000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4)
                                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) == 100
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) <= 0:
                                                        require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4)
                                                        require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3999000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 3999000 * 10^18), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = 3998000 * 10^18
                                        if 0 < balanceOf[address(this.address)] - 3998000 * 10^18:
                                            require (2 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                            emit Transfer(((2 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require (2 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (2 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (3 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                                        emit Transfer(((3 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) / msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3) == 100
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) <= 0:
                                                        require (2 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) + (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                                        require (2 * balanceOf[address(this.address)]) + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 7997000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 7997000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 7997000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (2 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (3 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                                        emit Transfer(((3 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                            else:
                                require msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4)
                                require (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) == 200
                                if (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) < balanceOf[address(this.address)] - 3998000 * 10^18:
                                    if (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) <= 0:
                                        if (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) < balanceOf[address(this.address)] - 3998000 * 10^18:
                                            require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3999000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 3999000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4)
                                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) == 100
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) <= 0:
                                                        require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4)
                                                        require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3999000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 3999000 * 10^18), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (200 * msg.value) + (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4)
                                        if (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) < balanceOf[address(this.address)] - 3998000 * 10^18:
                                            require balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - ((200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / 3):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - ((200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / 3)
                                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (100 * (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / 3) / msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - ((200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / 3) == 100
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (100 * (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / 3) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (100 * (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / 3) <= 0:
                                                        require balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) + (100 * (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / 3)
                                                        require balanceOf[address(this.address)] + (300 * msg.value) + (-300 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) + (-100 * (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / 3) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (300 * msg.value) + (-300 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) + (-100 * (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / 3) - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (300 * msg.value) + (-300 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) + (-100 * (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / 3) - 3999000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) + (200 * msg.value) + (-200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18), this.address, msg.sender);
                                else:
                                    if balanceOf[address(this.address)] - 3998000 * 10^18 <= 0:
                                        if (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) < balanceOf[address(this.address)] - 3998000 * 10^18:
                                            require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                            emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                    emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3999000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 3999000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4)
                                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) / msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) == 100
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) <= 0:
                                                        require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4)
                                                        require balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - 3999000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require balanceOf[address(this.address)] - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + balanceOf[address(this.address)] - 3999000 * 10^18
                                                        emit Transfer((balanceOf[address(this.address)] - 3999000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (2 * balanceOf[address(this.address)]) - 3999000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 3999000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 3999000 * 10^18), this.address, msg.sender);
                                    else:
                                        balanceOf[address(this.address)] = 3998000 * 10^18
                                        if (200 * msg.value) - (200 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) < balanceOf[address(this.address)] - 3998000 * 10^18:
                                            require (2 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                            emit Transfer(((2 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                                        else:
                                            if not msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3):
                                                if 0 < balanceOf[address(this.address)]:
                                                    require (2 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                                    emit Transfer(((2 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (2 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (3 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                                        emit Transfer(((3 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                                            else:
                                                require msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                                require (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) / msg.value - (balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (balanceOf[address(this.address)] - 3998000 * 10^18 / 3) == 100
                                                if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) < balanceOf[address(this.address)]:
                                                    if (100 * msg.value) - (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) - (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) <= 0:
                                                        require (2 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (100 * msg.value) + (100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) + (100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3)
                                                        require (2 * balanceOf[address(this.address)]) + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 7997000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 7997000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) + (100 * msg.value) + (-100 * balanceOf[address(this.address)] - 3999000 * 10^18 / 4) + (-100 * balanceOf[address(this.address)] - 3998000 * 10^18 / 3) - 7997000 * 10^18), this.address, msg.sender);
                                                else:
                                                    if balanceOf[address(this.address)] <= 0:
                                                        require (2 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                                        emit Transfer(((2 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
                                                    else:
                                                        balanceOf[address(this.address)] = 0
                                                        require (3 * balanceOf[address(this.address)]) - 7997000 * 10^18 > 0
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3 * balanceOf[address(this.address)]) - 7997000 * 10^18
                                                        emit Transfer(((3 * balanceOf[address(this.address)]) - 7997000 * 10^18), this.address, msg.sender);
}



}

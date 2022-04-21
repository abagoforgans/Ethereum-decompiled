contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
uint8 stor5;
uint256 stor6;

function _fallback() payable {
    stor5 = 0
    stor0 = msg.sender
    require stor5 <= 2
    require not stor5
    stor3 = 0
    stor6 = 419604 * 3600
    stor5 = 1
    require stor5 <= 2
    emit NewState(stor5);
    return code.data[207 len 3668]
}



// =====================  Runtime code  =====================


const name = 'Sublicoin'

const decimals = 18

const version = '1.0'

const symbol = 'SBC'


address owner;
address candidateAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
uint8 contract_state;
uint256 startTime;
mapping of uint256 allowed;

function totalSupply() {
    return totalSupply
}

function contract_state() {
    require contract_state <= 2
    return contract_state
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function candidate() {
    return candidateAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function changeOwner(address arg1) {
    require owner == msg.sender
    require arg1
    candidateAddress = arg1
}

function confirmOwner() {
    require candidateAddress
    require candidateAddress == msg.sender
    owner = candidateAddress
    candidateAddress = 0
}

function withdrawEther() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function finishCrowdsale() {
    require contract_state <= 2
    require contract_state == 1
    require owner == msg.sender
    require (40 * totalSupply / 60) + balanceOf[stor0] >= balanceOf[stor0]
    require (40 * totalSupply / 60) + balanceOf[stor0] >= 40 * totalSupply / 60
    balanceOf[stor0] += 40 * totalSupply / 60
    emit Transfer((40 * totalSupply / 60), this.address, owner);
    require (40 * totalSupply / 60) + totalSupply >= totalSupply
    require (40 * totalSupply / 60) + totalSupply >= 40 * totalSupply / 60
    totalSupply += 40 * totalSupply / 60
    contract_state = 2
    require contract_state <= 2
    emit NewState(contract_state);
    return 1
}

function _fallback() payable {
    require contract_state <= 2
    require contract_state == 1
    require msg.value >= 10^16
    require 10^18 * msg.value / 12 * 10^13 > 0
    require -(totalSupply / 10^18) + 100 * 10^6 > 0
    if block.timestamp < startTime + (264 * 24 * 3600):
        if msg.value < 5 * 10^18:
            if (10^18 * msg.value / 12 * 10^13) + (40 * 10^18 * msg.value / 12 * 10^13 / 100) / 10^18 <= -(totalSupply / 10^18) + 100 * 10^6:
                require (10^18 * msg.value / 12 * 10^13) + (40 * 10^18 * msg.value / 12 * 10^13 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = (10^18 * msg.value / 12 * 10^13) + (40 * 10^18 * msg.value / 12 * 10^13 / 100) + balanceOf[address(msg.sender)]
                emit Transfer(((10^18 * msg.value / 12 * 10^13) + (40 * 10^18 * msg.value / 12 * 10^13 / 100)), this.address, msg.sender);
                require (10^18 * msg.value / 12 * 10^13) + (40 * 10^18 * msg.value / 12 * 10^13 / 100) + totalSupply >= totalSupply
                require totalSupply >= 0
                totalSupply = (10^18 * msg.value / 12 * 10^13) + (40 * 10^18 * msg.value / 12 * 10^13 / 100) + totalSupply
            else:
                require totalSupply + -(totalSupply / 10^18) + 100 * 10^6 == 100 * 10^6
                require (-12 * 10^13 * totalSupply / 10^18) + (-12 * 10^13 * (-40 * totalSupply / 10^18) + 4 * 10^9 / 100) + 12000 * 10^18 < msg.value
                call msg.sender with:
                   value msg.value + (12 * 10^13 * totalSupply / 10^18) + (12 * 10^13 * (-40 * totalSupply / 10^18) + 4 * 10^9 / 100) - 12000 * 10^18 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require (-1 * 10^18 * totalSupply / 10^18) + balanceOf[address(msg.sender)] + 100000000 * 10^18 >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = (-1 * 10^18 * totalSupply / 10^18) + balanceOf[address(msg.sender)] + 100000000 * 10^18
                emit Transfer(((-1 * 10^18 * totalSupply / 10^18) + 100000000 * 10^18), this.address, msg.sender);
                require (-1 * 10^18 * totalSupply / 10^18) + totalSupply + 100000000 * 10^18 >= totalSupply
                require totalSupply >= 0
                totalSupply = (-1 * 10^18 * totalSupply / 10^18) + totalSupply + 100000000 * 10^18
        else:
            if msg.value >= 100 * 10^18:
                if (10^18 * msg.value / 12 * 10^13) + (100 * 10^18 * msg.value / 12 * 10^13 / 100) / 10^18 <= -(totalSupply / 10^18) + 100 * 10^6:
                    require (10^18 * msg.value / 12 * 10^13) + (100 * 10^18 * msg.value / 12 * 10^13 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] >= 0
                    balanceOf[address(msg.sender)] = (10^18 * msg.value / 12 * 10^13) + (100 * 10^18 * msg.value / 12 * 10^13 / 100) + balanceOf[address(msg.sender)]
                    emit Transfer(((10^18 * msg.value / 12 * 10^13) + (100 * 10^18 * msg.value / 12 * 10^13 / 100)), this.address, msg.sender);
                    require (10^18 * msg.value / 12 * 10^13) + (100 * 10^18 * msg.value / 12 * 10^13 / 100) + totalSupply >= totalSupply
                    require totalSupply >= 0
                    totalSupply = (10^18 * msg.value / 12 * 10^13) + (100 * 10^18 * msg.value / 12 * 10^13 / 100) + totalSupply
                else:
                    require totalSupply + -(totalSupply / 10^18) + 100 * 10^6 == 100 * 10^6
                    require (-12 * 10^13 * totalSupply / 10^18) + (-12 * 10^13 * (-100 * totalSupply / 10^18) + 10^10 / 100) + 12000 * 10^18 < msg.value
                    call msg.sender with:
                       value msg.value + (12 * 10^13 * totalSupply / 10^18) + (12 * 10^13 * (-100 * totalSupply / 10^18) + 10^10 / 100) - 12000 * 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (-1 * 10^18 * totalSupply / 10^18) + balanceOf[address(msg.sender)] + 100000000 * 10^18 >= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] >= 0
                    balanceOf[address(msg.sender)] = (-1 * 10^18 * totalSupply / 10^18) + balanceOf[address(msg.sender)] + 100000000 * 10^18
                    emit Transfer(((-1 * 10^18 * totalSupply / 10^18) + 100000000 * 10^18), this.address, msg.sender);
                    require (-1 * 10^18 * totalSupply / 10^18) + totalSupply + 100000000 * 10^18 >= totalSupply
                    require totalSupply >= 0
                    totalSupply = (-1 * 10^18 * totalSupply / 10^18) + totalSupply + 100000000 * 10^18
            else:
                if (10^18 * msg.value / 12 * 10^13) + (60 * 10^18 * msg.value / 12 * 10^13 / 100) / 10^18 <= -(totalSupply / 10^18) + 100 * 10^6:
                    require (10^18 * msg.value / 12 * 10^13) + (60 * 10^18 * msg.value / 12 * 10^13 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] >= 0
                    balanceOf[address(msg.sender)] = (10^18 * msg.value / 12 * 10^13) + (60 * 10^18 * msg.value / 12 * 10^13 / 100) + balanceOf[address(msg.sender)]
                    emit Transfer(((10^18 * msg.value / 12 * 10^13) + (60 * 10^18 * msg.value / 12 * 10^13 / 100)), this.address, msg.sender);
                    require (10^18 * msg.value / 12 * 10^13) + (60 * 10^18 * msg.value / 12 * 10^13 / 100) + totalSupply >= totalSupply
                    require totalSupply >= 0
                    totalSupply = (10^18 * msg.value / 12 * 10^13) + (60 * 10^18 * msg.value / 12 * 10^13 / 100) + totalSupply
                else:
                    require totalSupply + -(totalSupply / 10^18) + 100 * 10^6 == 100 * 10^6
                    require (-12 * 10^13 * totalSupply / 10^18) + (-12 * 10^13 * (-60 * totalSupply / 10^18) + 6 * 10^9 / 100) + 12000 * 10^18 < msg.value
                    call msg.sender with:
                       value msg.value + (12 * 10^13 * totalSupply / 10^18) + (12 * 10^13 * (-60 * totalSupply / 10^18) + 6 * 10^9 / 100) - 12000 * 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (-1 * 10^18 * totalSupply / 10^18) + balanceOf[address(msg.sender)] + 100000000 * 10^18 >= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] >= 0
                    balanceOf[address(msg.sender)] = (-1 * 10^18 * totalSupply / 10^18) + balanceOf[address(msg.sender)] + 100000000 * 10^18
                    emit Transfer(((-1 * 10^18 * totalSupply / 10^18) + 100000000 * 10^18), this.address, msg.sender);
                    require (-1 * 10^18 * totalSupply / 10^18) + totalSupply + 100000000 * 10^18 >= totalSupply
                    require totalSupply >= 0
                    totalSupply = (-1 * 10^18 * totalSupply / 10^18) + totalSupply + 100000000 * 10^18
    else:
        if block.timestamp < startTime + (624 * 24 * 3600):
            if 10^18 * msg.value / 12 * 10^13 / 10^18 <= -(totalSupply / 10^18) + 100 * 10^6:
                require (10^18 * msg.value / 12 * 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require (10^18 * msg.value / 12 * 10^13) + balanceOf[address(msg.sender)] >= 10^18 * msg.value / 12 * 10^13
                balanceOf[address(msg.sender)] += 10^18 * msg.value / 12 * 10^13
                emit Transfer((10^18 * msg.value / 12 * 10^13), this.address, msg.sender);
                require (10^18 * msg.value / 12 * 10^13) + totalSupply >= totalSupply
                require (10^18 * msg.value / 12 * 10^13) + totalSupply >= 10^18 * msg.value / 12 * 10^13
                totalSupply += 10^18 * msg.value / 12 * 10^13
            else:
                require totalSupply + -(totalSupply / 10^18) + 100 * 10^6 == 100 * 10^6
                require (-12 * 10^13 * totalSupply / 10^18) + 12000 * 10^18 < msg.value
                call msg.sender with:
                   value msg.value + (12 * 10^13 * totalSupply / 10^18) - 12000 * 10^18 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require (-1 * 10^18 * totalSupply / 10^18) + balanceOf[address(msg.sender)] + 100000000 * 10^18 >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = (-1 * 10^18 * totalSupply / 10^18) + balanceOf[address(msg.sender)] + 100000000 * 10^18
                emit Transfer(((-1 * 10^18 * totalSupply / 10^18) + 100000000 * 10^18), this.address, msg.sender);
                require (-1 * 10^18 * totalSupply / 10^18) + totalSupply + 100000000 * 10^18 >= totalSupply
                require totalSupply >= 0
                totalSupply = (-1 * 10^18 * totalSupply / 10^18) + totalSupply + 100000000 * 10^18
        else:
            if block.timestamp < startTime + (648 * 24 * 3600):
                if (10^18 * msg.value / 12 * 10^13) + (25 * 10^18 * msg.value / 12 * 10^13 / 100) / 10^18 <= -(totalSupply / 10^18) + 100 * 10^6:
                    require (10^18 * msg.value / 12 * 10^13) + (25 * 10^18 * msg.value / 12 * 10^13 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] >= 0
                    balanceOf[address(msg.sender)] = (10^18 * msg.value / 12 * 10^13) + (25 * 10^18 * msg.value / 12 * 10^13 / 100) + balanceOf[address(msg.sender)]
                    emit Transfer(((10^18 * msg.value / 12 * 10^13) + (25 * 10^18 * msg.value / 12 * 10^13 / 100)), this.address, msg.sender);
                    require (10^18 * msg.value / 12 * 10^13) + (25 * 10^18 * msg.value / 12 * 10^13 / 100) + totalSupply >= totalSupply
                    require totalSupply >= 0
                    totalSupply = (10^18 * msg.value / 12 * 10^13) + (25 * 10^18 * msg.value / 12 * 10^13 / 100) + totalSupply
                else:
                    require totalSupply + -(totalSupply / 10^18) + 100 * 10^6 == 100 * 10^6
                    require (-12 * 10^13 * totalSupply / 10^18) + (-12 * 10^13 * (-25 * totalSupply / 10^18) + 2500 * 10^6 / 100) + 12000 * 10^18 < msg.value
                    call msg.sender with:
                       value msg.value + (12 * 10^13 * totalSupply / 10^18) + (12 * 10^13 * (-25 * totalSupply / 10^18) + 2500 * 10^6 / 100) - 12000 * 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (-1 * 10^18 * totalSupply / 10^18) + balanceOf[address(msg.sender)] + 100000000 * 10^18 >= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] >= 0
                    balanceOf[address(msg.sender)] = (-1 * 10^18 * totalSupply / 10^18) + balanceOf[address(msg.sender)] + 100000000 * 10^18
                    emit Transfer(((-1 * 10^18 * totalSupply / 10^18) + 100000000 * 10^18), this.address, msg.sender);
                    require (-1 * 10^18 * totalSupply / 10^18) + totalSupply + 100000000 * 10^18 >= totalSupply
                    require totalSupply >= 0
                    totalSupply = (-1 * 10^18 * totalSupply / 10^18) + totalSupply + 100000000 * 10^18
            else:
                if block.timestamp <= startTime + (816 * 24 * 3600):
                    if (10^18 * msg.value / 12 * 10^13) + (20 * 10^18 * msg.value / 12 * 10^13 / 100) / 10^18 <= -(totalSupply / 10^18) + 100 * 10^6:
                        require (10^18 * msg.value / 12 * 10^13) + (20 * 10^18 * msg.value / 12 * 10^13 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        require balanceOf[address(msg.sender)] >= 0
                        balanceOf[address(msg.sender)] = (10^18 * msg.value / 12 * 10^13) + (20 * 10^18 * msg.value / 12 * 10^13 / 100) + balanceOf[address(msg.sender)]
                        emit Transfer(((10^18 * msg.value / 12 * 10^13) + (20 * 10^18 * msg.value / 12 * 10^13 / 100)), this.address, msg.sender);
                        require (10^18 * msg.value / 12 * 10^13) + (20 * 10^18 * msg.value / 12 * 10^13 / 100) + totalSupply >= totalSupply
                        require totalSupply >= 0
                        totalSupply = (10^18 * msg.value / 12 * 10^13) + (20 * 10^18 * msg.value / 12 * 10^13 / 100) + totalSupply
                    else:
                        require totalSupply + -(totalSupply / 10^18) + 100 * 10^6 == 100 * 10^6
                        require (-12 * 10^13 * totalSupply / 10^18) + (-12 * 10^13 * (-20 * totalSupply / 10^18) + 2 * 10^9 / 100) + 12000 * 10^18 < msg.value
                        call msg.sender with:
                           value msg.value + (12 * 10^13 * totalSupply / 10^18) + (12 * 10^13 * (-20 * totalSupply / 10^18) + 2 * 10^9 / 100) - 12000 * 10^18 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (-1 * 10^18 * totalSupply / 10^18) + balanceOf[address(msg.sender)] + 100000000 * 10^18 >= balanceOf[address(msg.sender)]
                        require balanceOf[address(msg.sender)] >= 0
                        balanceOf[address(msg.sender)] = (-1 * 10^18 * totalSupply / 10^18) + balanceOf[address(msg.sender)] + 100000000 * 10^18
                        emit Transfer(((-1 * 10^18 * totalSupply / 10^18) + 100000000 * 10^18), this.address, msg.sender);
                        require (-1 * 10^18 * totalSupply / 10^18) + totalSupply + 100000000 * 10^18 >= totalSupply
                        require totalSupply >= 0
                        totalSupply = (-1 * 10^18 * totalSupply / 10^18) + totalSupply + 100000000 * 10^18
                else:
                    if block.timestamp <= startTime + (984 * 24 * 3600):
                        if (10^18 * msg.value / 12 * 10^13) + (15 * 10^18 * msg.value / 12 * 10^13 / 100) / 10^18 <= -(totalSupply / 10^18) + 100 * 10^6:
                            require (10^18 * msg.value / 12 * 10^13) + (15 * 10^18 * msg.value / 12 * 10^13 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            require balanceOf[address(msg.sender)] >= 0
                            balanceOf[address(msg.sender)] = (10^18 * msg.value / 12 * 10^13) + (15 * 10^18 * msg.value / 12 * 10^13 / 100) + balanceOf[address(msg.sender)]
                            emit Transfer(((10^18 * msg.value / 12 * 10^13) + (15 * 10^18 * msg.value / 12 * 10^13 / 100)), this.address, msg.sender);
                            require (10^18 * msg.value / 12 * 10^13) + (15 * 10^18 * msg.value / 12 * 10^13 / 100) + totalSupply >= totalSupply
                            require totalSupply >= 0
                            totalSupply = (10^18 * msg.value / 12 * 10^13) + (15 * 10^18 * msg.value / 12 * 10^13 / 100) + totalSupply
                        else:
                            require totalSupply + -(totalSupply / 10^18) + 100 * 10^6 == 100 * 10^6
                            require (-12 * 10^13 * totalSupply / 10^18) + (-12 * 10^13 * (-15 * totalSupply / 10^18) + 1500 * 10^6 / 100) + 12000 * 10^18 < msg.value
                            call msg.sender with:
                               value msg.value + (12 * 10^13 * totalSupply / 10^18) + (12 * 10^13 * (-15 * totalSupply / 10^18) + 1500 * 10^6 / 100) - 12000 * 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require (-1 * 10^18 * totalSupply / 10^18) + balanceOf[address(msg.sender)] + 100000000 * 10^18 >= balanceOf[address(msg.sender)]
                            require balanceOf[address(msg.sender)] >= 0
                            balanceOf[address(msg.sender)] = (-1 * 10^18 * totalSupply / 10^18) + balanceOf[address(msg.sender)] + 100000000 * 10^18
                            emit Transfer(((-1 * 10^18 * totalSupply / 10^18) + 100000000 * 10^18), this.address, msg.sender);
                            require (-1 * 10^18 * totalSupply / 10^18) + totalSupply + 100000000 * 10^18 >= totalSupply
                            require totalSupply >= 0
                            totalSupply = (-1 * 10^18 * totalSupply / 10^18) + totalSupply + 100000000 * 10^18
                    else:
                        if block.timestamp <= startTime + (1152 * 24 * 3600):
                            if (10^18 * msg.value / 12 * 10^13) + (10 * 10^18 * msg.value / 12 * 10^13 / 100) / 10^18 <= -(totalSupply / 10^18) + 100 * 10^6:
                                require (10^18 * msg.value / 12 * 10^13) + (10 * 10^18 * msg.value / 12 * 10^13 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                require balanceOf[address(msg.sender)] >= 0
                                balanceOf[address(msg.sender)] = (10^18 * msg.value / 12 * 10^13) + (10 * 10^18 * msg.value / 12 * 10^13 / 100) + balanceOf[address(msg.sender)]
                                emit Transfer(((10^18 * msg.value / 12 * 10^13) + (10 * 10^18 * msg.value / 12 * 10^13 / 100)), this.address, msg.sender);
                                require (10^18 * msg.value / 12 * 10^13) + (10 * 10^18 * msg.value / 12 * 10^13 / 100) + totalSupply >= totalSupply
                                require totalSupply >= 0
                                totalSupply = (10^18 * msg.value / 12 * 10^13) + (10 * 10^18 * msg.value / 12 * 10^13 / 100) + totalSupply
                            else:
                                require totalSupply + -(totalSupply / 10^18) + 100 * 10^6 == 100 * 10^6
                                require (-12 * 10^13 * totalSupply / 10^18) + (-12 * 10^13 * (-10 * totalSupply / 10^18) + 10^9 / 100) + 12000 * 10^18 < msg.value
                                call msg.sender with:
                                   value msg.value + (12 * 10^13 * totalSupply / 10^18) + (12 * 10^13 * (-10 * totalSupply / 10^18) + 10^9 / 100) - 12000 * 10^18 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require (-1 * 10^18 * totalSupply / 10^18) + balanceOf[address(msg.sender)] + 100000000 * 10^18 >= balanceOf[address(msg.sender)]
                                require balanceOf[address(msg.sender)] >= 0
                                balanceOf[address(msg.sender)] = (-1 * 10^18 * totalSupply / 10^18) + balanceOf[address(msg.sender)] + 100000000 * 10^18
                                emit Transfer(((-1 * 10^18 * totalSupply / 10^18) + 100000000 * 10^18), this.address, msg.sender);
                                require (-1 * 10^18 * totalSupply / 10^18) + totalSupply + 100000000 * 10^18 >= totalSupply
                                require totalSupply >= 0
                                totalSupply = (-1 * 10^18 * totalSupply / 10^18) + totalSupply + 100000000 * 10^18
                        else:
                            if block.timestamp > startTime + (1320 * 24 * 3600):
                                if 10^18 * msg.value / 12 * 10^13 / 10^18 <= -(totalSupply / 10^18) + 100 * 10^6:
                                    require (10^18 * msg.value / 12 * 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    require (10^18 * msg.value / 12 * 10^13) + balanceOf[address(msg.sender)] >= 10^18 * msg.value / 12 * 10^13
                                    balanceOf[address(msg.sender)] += 10^18 * msg.value / 12 * 10^13
                                    emit Transfer((10^18 * msg.value / 12 * 10^13), this.address, msg.sender);
                                    require (10^18 * msg.value / 12 * 10^13) + totalSupply >= totalSupply
                                    require (10^18 * msg.value / 12 * 10^13) + totalSupply >= 10^18 * msg.value / 12 * 10^13
                                    totalSupply += 10^18 * msg.value / 12 * 10^13
                                else:
                                    require totalSupply + -(totalSupply / 10^18) + 100 * 10^6 == 100 * 10^6
                                    require (-12 * 10^13 * totalSupply / 10^18) + 12000 * 10^18 < msg.value
                                    call msg.sender with:
                                       value msg.value + (12 * 10^13 * totalSupply / 10^18) - 12000 * 10^18 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require (-1 * 10^18 * totalSupply / 10^18) + balanceOf[address(msg.sender)] + 100000000 * 10^18 >= balanceOf[address(msg.sender)]
                                    require balanceOf[address(msg.sender)] >= 0
                                    balanceOf[address(msg.sender)] = (-1 * 10^18 * totalSupply / 10^18) + balanceOf[address(msg.sender)] + 100000000 * 10^18
                                    emit Transfer(((-1 * 10^18 * totalSupply / 10^18) + 100000000 * 10^18), this.address, msg.sender);
                                    require (-1 * 10^18 * totalSupply / 10^18) + totalSupply + 100000000 * 10^18 >= totalSupply
                                    require totalSupply >= 0
                                    totalSupply = (-1 * 10^18 * totalSupply / 10^18) + totalSupply + 100000000 * 10^18
                            else:
                                if (10^18 * msg.value / 12 * 10^13) + (5 * 10^18 * msg.value / 12 * 10^13 / 100) / 10^18 <= -(totalSupply / 10^18) + 100 * 10^6:
                                    require (10^18 * msg.value / 12 * 10^13) + (5 * 10^18 * msg.value / 12 * 10^13 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    require balanceOf[address(msg.sender)] >= 0
                                    balanceOf[address(msg.sender)] = (10^18 * msg.value / 12 * 10^13) + (5 * 10^18 * msg.value / 12 * 10^13 / 100) + balanceOf[address(msg.sender)]
                                    emit Transfer(((10^18 * msg.value / 12 * 10^13) + (5 * 10^18 * msg.value / 12 * 10^13 / 100)), this.address, msg.sender);
                                    require (10^18 * msg.value / 12 * 10^13) + (5 * 10^18 * msg.value / 12 * 10^13 / 100) + totalSupply >= totalSupply
                                    require totalSupply >= 0
                                    totalSupply = (10^18 * msg.value / 12 * 10^13) + (5 * 10^18 * msg.value / 12 * 10^13 / 100) + totalSupply
                                else:
                                    require totalSupply + -(totalSupply / 10^18) + 100 * 10^6 == 100 * 10^6
                                    require (-12 * 10^13 * totalSupply / 10^18) + (-12 * 10^13 * (-5 * totalSupply / 10^18) + 500 * 10^6 / 100) + 12000 * 10^18 < msg.value
                                    call msg.sender with:
                                       value msg.value + (12 * 10^13 * totalSupply / 10^18) + (12 * 10^13 * (-5 * totalSupply / 10^18) + 500 * 10^6 / 100) - 12000 * 10^18 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    require (-1 * 10^18 * totalSupply / 10^18) + balanceOf[address(msg.sender)] + 100000000 * 10^18 >= balanceOf[address(msg.sender)]
                                    require balanceOf[address(msg.sender)] >= 0
                                    balanceOf[address(msg.sender)] = (-1 * 10^18 * totalSupply / 10^18) + balanceOf[address(msg.sender)] + 100000000 * 10^18
                                    emit Transfer(((-1 * 10^18 * totalSupply / 10^18) + 100000000 * 10^18), this.address, msg.sender);
                                    require (-1 * 10^18 * totalSupply / 10^18) + totalSupply + 100000000 * 10^18 >= totalSupply
                                    require totalSupply >= 0
                                    totalSupply = (-1 * 10^18 * totalSupply / 10^18) + totalSupply + 100000000 * 10^18
}



}

contract main {




// =====================  Runtime code  =====================


const supply = 8 * 10^18

const name = 'Reaction'

const totalSupply = 8 * 10^18

const decimals = 8

const symbol = 'RCTN'


address owner;
address newOwner;
address contractAddress;
mapping of uint8 stor3;
mapping of uint256 balanceOf;
mapping of uint256 _allowed;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function _allowed(address arg1, address arg2) {
    return _allowed[arg1][arg2]
}

function claimed(address arg1) {
    return bool(stor3[arg1])
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return _allowed[address(arg1)][address(arg2)]
}

function contractAddress() {
    return contractAddress
}

function acceptOwnership() {
    require msg.sender == newOwner
    owner = newOwner
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function approve(address arg1, uint256 arg2) {
    _allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function collectETH() {
    require msg.sender == owner
    call owner with:
       value eth.balance(contractAddress) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= _allowed[address(arg1)][address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= _allowed[address(arg1)][address(arg2)]
    _allowed[address(arg1)][address(arg2)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    if msg.value:
        if msg.value == 10^16:
            require balanceOf[stor2] >= 4 * 10^13
            balanceOf[stor2] -= 4 * 10^13
            balanceOf[address(msg.sender)] += 4 * 10^13
            emit Transfer(4 * 10^13, contractAddress, msg.sender);
        else:
            if msg.value == 10^17:
                require balanceOf[stor2] >= 125 * 10^9 * 3600
                balanceOf[stor2] -= 125 * 10^9 * 3600
                balanceOf[address(msg.sender)] += 125 * 10^9 * 3600
                emit Transfer((125 * 10^9 * 3600), contractAddress, msg.sender);
            else:
                require msg.value == 10^18
                require balanceOf[stor2] >= 5 * 10^15
                balanceOf[stor2] -= 5 * 10^15
                balanceOf[address(msg.sender)] += 5 * 10^15
                emit Transfer(5 * 10^15, contractAddress, msg.sender);
    else:
        if not stor3[address(msg.sender)]:
            require balanceOf[stor2] >= 5 * 10^12
            balanceOf[stor2] -= 5 * 10^12
            balanceOf[address(msg.sender)] += 5 * 10^12
            stor3[address(msg.sender)] = 1
            emit Transfer(5 * 10^12, contractAddress, msg.sender);
        else:
            if msg.value == 10^16:
                require balanceOf[stor2] >= 4 * 10^13
                balanceOf[stor2] -= 4 * 10^13
                balanceOf[address(msg.sender)] += 4 * 10^13
                emit Transfer(4 * 10^13, contractAddress, msg.sender);
            else:
                if msg.value == 10^17:
                    require balanceOf[stor2] >= 125 * 10^9 * 3600
                    balanceOf[stor2] -= 125 * 10^9 * 3600
                    balanceOf[address(msg.sender)] += 125 * 10^9 * 3600
                    emit Transfer((125 * 10^9 * 3600), contractAddress, msg.sender);
                else:
                    require msg.value == 10^18
                    require balanceOf[stor2] >= 5 * 10^15
                    balanceOf[stor2] -= 5 * 10^15
                    balanceOf[address(msg.sender)] += 5 * 10^15
                    emit Transfer(5 * 10^15, contractAddress, msg.sender);
}



}

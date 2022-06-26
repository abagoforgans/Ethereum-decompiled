contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
mapping of uint256 stor10;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] -= arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_f9b6a796(?) {
    require block.timestamp >= stor6 + (720 * 24 * 3600)
    require stor8 <= stor7
    call owner with:
       value stor7 - stor8 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor7 = eth.balance(this.address)
    stor6 = block.timestamp
    stor8 = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getDividends(address arg1) {
    require calldata.size - 4 >= 32
    if stor6 < stor10[address(arg1)]:
        return 0
    if not stor7:
        require stor9 * 10^decimals > 0
        if stor9 * 10^decimals:
            return (0 / stor9 * 10^decimals)
    else:
        require balanceOf[address(arg1)] * stor7 / stor7 == balanceOf[address(arg1)]
        require stor9 * 10^decimals > 0
        if stor9 * 10^decimals:
            return (balanceOf[address(arg1)] * stor7 / stor9 * 10^decimals)
    ('iszero', ('mul', ('stor', ('name', 'stor9', 9)), ('exp', 10, ('stor', ('name', 'decimals', 5)))))
    revert
}

function withdrawDividends(address arg1) {
    require calldata.size - 4 >= 32
    if stor6 < stor10[address(arg1)]:
        stor10[address(arg1)] = block.timestamp
        require stor8 >= stor8
        call arg1 with:
             gas 2300 wei
    else:
        if not stor7:
            require stor9 * 10^decimals > 0
            require stor9 * 10^decimals
            stor10[address(arg1)] = block.timestamp
            require (0 / stor9 * 10^decimals) + stor8 >= stor8
            stor8 += 0 / stor9 * 10^decimals
            call arg1 with:
               value 0 / stor9 * 10^decimals wei
                 gas 2300 * is_zero(value) wei
        else:
            require balanceOf[address(arg1)] * stor7 / stor7 == balanceOf[address(arg1)]
            require stor9 * 10^decimals > 0
            require stor9 * 10^decimals
            stor10[address(arg1)] = block.timestamp
            require (balanceOf[address(arg1)] * stor7 / stor9 * 10^decimals) + stor8 >= stor8
            stor8 += balanceOf[address(arg1)] * stor7 / stor9 * 10^decimals
            call arg1 with:
               value balanceOf[address(arg1)] * stor7 / stor9 * 10^decimals wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function _fallback() payable {
    if not msg.value:
        if stor6 < stor10[address(msg.sender)]:
            stor10[address(msg.sender)] = block.timestamp
            require stor8 >= stor8
            call msg.sender with:
                 gas 2300 wei
        else:
            if not stor7:
                require stor9 * 10^decimals > 0
                require stor9 * 10^decimals
                stor10[address(msg.sender)] = block.timestamp
                require (0 / stor9 * 10^decimals) + stor8 >= stor8
                stor8 += 0 / stor9 * 10^decimals
                call msg.sender with:
                   value 0 / stor9 * 10^decimals wei
                     gas 2300 * is_zero(value) wei
            else:
                require balanceOf[address(msg.sender)] * stor7 / stor7 == balanceOf[address(msg.sender)]
                require stor9 * 10^decimals > 0
                require stor9 * 10^decimals
                stor10[address(msg.sender)] = block.timestamp
                require (balanceOf[address(msg.sender)] * stor7 / stor9 * 10^decimals) + stor8 >= stor8
                stor8 += balanceOf[address(msg.sender)] * stor7 / stor9 * 10^decimals
                call msg.sender with:
                   value balanceOf[address(msg.sender)] * stor7 / stor9 * 10^decimals wei
                     gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}

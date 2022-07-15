contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 stor8;
mapping of uint256 stor9;
mapping of uint256 stor10;
mapping of uint256 stor11;
mapping of uint256 stor12;

function owners(address arg1) {
    return bool(stor1[arg1])
}

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
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function addOwner(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 1
}

function removeOwner(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
    stor1[address(arg1)] = 1
    stor1[stor0] = 0
}

function approve(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[msg.sender]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function extractEth(uint256 arg1) {
    require bool(stor1[msg.sender]) == 1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function extract(address arg1, address arg2, uint256 arg3) {
    require bool(stor1[msg.sender]) == 1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] > balanceOf[address(arg1)]
    if stor10[address(msg.sender)] > 0:
        if block.timestamp >= stor12[address(msg.sender)]:
            stor10[address(msg.sender)] = 0
        else:
            if block.timestamp >= stor11[address(msg.sender)]:
                if 1 == stor8[address(msg.sender)]:
                    stor10[address(msg.sender)] = (12 * stor9[address(msg.sender)]) - (block.timestamp - stor11[address(msg.sender)] / 720 * 24 * 3600 * stor9[address(msg.sender)]) / 12
                else:
                    if 2 == stor8[address(msg.sender)]:
                        stor10[address(msg.sender)] = (10 * stor9[address(msg.sender)]) - (block.timestamp - stor11[address(msg.sender)] / 720 * 24 * 3600 * stor9[address(msg.sender)]) / 10
                    else:
                        if 3 == stor8[address(msg.sender)]:
                            stor10[address(msg.sender)] = (36 * stor9[address(msg.sender)]) - (block.timestamp - stor11[address(msg.sender)] / 720 * 24 * 3600 * stor9[address(msg.sender)]) / 36
        require arg2 <= balanceOf[address(msg.sender)] - stor10[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 <= balanceOf[address(arg1)]
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] > balanceOf[address(arg2)]
    if stor10[address(arg1)] > 0:
        if block.timestamp >= stor12[address(arg1)]:
            stor10[address(arg1)] = 0
        else:
            if block.timestamp >= stor11[address(arg1)]:
                if 1 == stor8[address(arg1)]:
                    stor10[address(arg1)] = (12 * stor9[address(arg1)]) - (block.timestamp - stor11[address(arg1)] / 720 * 24 * 3600 * stor9[address(arg1)]) / 12
                else:
                    if 2 == stor8[address(arg1)]:
                        stor10[address(arg1)] = (10 * stor9[address(arg1)]) - (block.timestamp - stor11[address(arg1)] / 720 * 24 * 3600 * stor9[address(arg1)]) / 10
                    else:
                        if 3 == stor8[address(arg1)]:
                            stor10[address(arg1)] = (36 * stor9[address(arg1)]) - (block.timestamp - stor11[address(arg1)] / 720 * 24 * 3600 * stor9[address(arg1)]) / 36
        require arg3 <= balanceOf[address(arg1)] - stor10[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function lock(uint256 arg1, address arg2, uint256 arg3) {
    require bool(stor1[msg.sender]) == 1
    if stor8[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Each address can only be locked once and only accepts one lock mode.'
    stor8[address(arg2)] = arg1
    stor9[address(arg2)] = arg3
    if arg1 == 1:
        stor11[address(arg2)] = block.timestamp
        if not stor9[address(arg2)]:
            stor10[address(arg2)] = 0
        else:
            require 100 * stor9[address(arg2)] / stor9[address(arg2)] == 100
            stor10[address(arg2)] = 100 * stor9[address(arg2)] / 100
        stor12[address(arg2)] = stor11[address(arg2)] + (8640 * 24 * 3600)
    else:
        if 2 == arg1:
            stor11[address(arg2)] = block.timestamp
            if not stor9[address(arg2)]:
                stor10[address(arg2)] = 0
            else:
                require 100 * stor9[address(arg2)] / stor9[address(arg2)] == 100
                stor10[address(arg2)] = 100 * stor9[address(arg2)] / 100
            stor12[address(arg2)] = stor11[address(arg2)] + (2 * 3600 * 24 * 3600)
        else:
            if 3 == arg1:
                stor11[address(arg2)] = block.timestamp
                if not stor9[address(arg2)]:
                    stor10[address(arg2)] = 0
                else:
                    require 100 * stor9[address(arg2)] / stor9[address(arg2)] == 100
                    stor10[address(arg2)] = 100 * stor9[address(arg2)] / 100
                stor12[address(arg2)] = stor11[address(arg2)] + (25920 * 24 * 3600)
    require arg3 <= balanceOf[address(msg.sender)]
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] > balanceOf[address(arg2)]
    if stor10[address(msg.sender)] > 0:
        if block.timestamp >= stor12[address(msg.sender)]:
            stor10[address(msg.sender)] = 0
        else:
            if block.timestamp >= stor11[address(msg.sender)]:
                if 1 == stor8[address(msg.sender)]:
                    stor10[address(msg.sender)] = (12 * stor9[address(msg.sender)]) - (block.timestamp - stor11[address(msg.sender)] / 720 * 24 * 3600 * stor9[address(msg.sender)]) / 12
                else:
                    if 2 == stor8[address(msg.sender)]:
                        stor10[address(msg.sender)] = (10 * stor9[address(msg.sender)]) - (block.timestamp - stor11[address(msg.sender)] / 720 * 24 * 3600 * stor9[address(msg.sender)]) / 10
                    else:
                        if 3 == stor8[address(msg.sender)]:
                            stor10[address(msg.sender)] = (36 * stor9[address(msg.sender)]) - (block.timestamp - stor11[address(msg.sender)] / 720 * 24 * 3600 * stor9[address(msg.sender)]) / 36
        require arg3 <= balanceOf[address(msg.sender)] - stor10[address(msg.sender)]
    require arg3 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, msg.sender, arg2);
}



}

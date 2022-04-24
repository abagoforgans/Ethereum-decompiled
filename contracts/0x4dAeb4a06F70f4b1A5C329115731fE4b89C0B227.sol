contract main {


// =======================  Init code  ======================


address stor4;
array of uint256 stor5;
array of uint256 stor6;
uint256 stor7;
uint8 stor8;

function _fallback() payable {
    bool(stor5.length) = 0
    stor5.length.field_1 = 9
    stor5.length.field_8 = 'Quasacoin' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 3
    stor6.length.field_8 = 'QUA' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 18
    stor8 = 0
    stor4 = msg.sender
    return code.data[454 len 6886]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 frozenTimeOf;
mapping of uint256 allowance;
address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint8 stor8;

function mintingFinished() {
    return bool(stor8)
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
    return balanceOf[address(arg1)]
}

function frozenTimeOf(address arg1) {
    return frozenTimeOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function finishMinting() {
    require msg.sender == owner
    stor8 = 1
    emit MintFinished()
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isUnfrozen(address arg1) {
    if block.timestamp <= 425256 * 24 * 3600:
        return (frozenTimeOf[address(arg1)] < block.timestamp)
    return 1
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

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    if block.timestamp <= 425256 * 24 * 3600:
        require frozenTimeOf[address(msg.sender)] < block.timestamp
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    if block.timestamp <= 425256 * 24 * 3600:
        require frozenTimeOf[address(arg1)] < block.timestamp
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
    require arg1
    require arg2 > 0
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if block.timestamp < 425256 * 24 * 3600:
        if block.timestamp < 421104 * 24 * 3600:
            frozenTimeOf[address(arg1)] = 422880 * 24 * 3600
        else:
            if block.timestamp < 421848 * 24 * 3600:
                frozenTimeOf[address(arg1)] = 424344 * 24 * 3600
            else:
                if block.timestamp < 422784 * 24 * 3600:
                    frozenTimeOf[address(arg1)] = 425088 * 24 * 3600
                else:
                    if block.timestamp < 423264 * 24 * 3600:
                        frozenTimeOf[address(arg1)] = 425112 * 24 * 3600
                    else:
                        if block.timestamp < 423984 * 24 * 3600:
                            frozenTimeOf[address(arg1)] = 425256 * 24 * 3600
                        else:
                            if block.timestamp >= 424728 * 24 * 3600:
                                frozenTimeOf[address(arg1)] = 425256 * 24 * 3600
                            else:
                                frozenTimeOf[address(arg1)] = 425088 * 24 * 3600
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}



}

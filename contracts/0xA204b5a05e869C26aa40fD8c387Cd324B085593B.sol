contract main {




// =====================  Runtime code  =====================


const ownerBalance = eth.balance(this.address)


address owner;
uint256 totalSupply;
uint256 sub_2b9bf45c;
uint256 sub_749e63d7;
uint256 sub_e98ea4aa;
uint8 paused;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor11;

function totalSupply() {
    return totalSupply
}

function sub_2b9bf45c(?) {
    return sub_2b9bf45c
}

function paused() {
    return bool(paused)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_749e63d7(?) {
    return sub_749e63d7
}

function owner() {
    return owner
}

function frozenAccount(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_e98ea4aa(?) {
    return sub_e98ea4aa
}

function isOwner() {
    return (msg.sender == owner)
}

function unpause() {
    require msg.sender == owner
    require paused
    paused = 0
    emit Unpaused(msg.sender);
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause() {
    require msg.sender == owner
    require not paused
    paused = 1
    emit Paused(msg.sender);
}

function sub_f10c3711(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_e98ea4aa = arg1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    sub_2b9bf45c = arg1
    sub_749e63d7 = arg2
}

function sub_19f46cec(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function freezeAccount(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor11[address(arg1)] = 1
    emit FrozenFunds(address(arg1), 1);
}

function unfreezeAccount(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor11[address(arg1)] = 0
    emit FrozenFunds(address(arg1), 0);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require msg.sender
    require balanceOf[address(msg.sender)] >= arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_ccf61228(?) {
    require calldata.size - 4 >= 32
    require not paused
    require msg.sender
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function sub_74d7137a(?) {
    require calldata.size - 4 >= 32
    require not paused
    require msg.sender == owner
    require msg.sender
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function sub_4b13a0e0(?) payable {
    require not paused
    require not stor11[address(msg.sender)]
    require sub_749e63d7 > 0
    require sub_749e63d7
    require balanceOf[address(msg.sender)] + (msg.value / sub_749e63d7) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value / sub_749e63d7
    require msg.value / sub_749e63d7 <= balanceOf[stor0]
    balanceOf[stor0] -= msg.value / sub_749e63d7
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    require balanceOf[address(msg.sender)] >= allowance[address(msg.sender)][address(arg1)] - arg2
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    require balanceOf[address(msg.sender)] >= allowance[address(msg.sender)][address(arg1)] + arg2
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require msg.sender
    require arg1
    require balanceOf[address(arg1)] >= allowance[address(arg1)][address(msg.sender)] - arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    return 1
}

function _fallback() payable {
    if msg.sender == owner:
        call this.address with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require not paused
        require not stor11[address(msg.sender)]
        require sub_749e63d7 > 0
        require sub_749e63d7
        require balanceOf[address(msg.sender)] + (msg.value / sub_749e63d7) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value / sub_749e63d7
        require msg.value / sub_749e63d7 <= balanceOf[stor0]
        balanceOf[stor0] -= msg.value / sub_749e63d7
}

function sub_8b65e7b5(?) {
    require calldata.size - 4 >= 64
    require not paused
    require balanceOf[address(msg.sender)] >= arg2
    require arg1
    require arg1 != msg.sender
    require arg2 <= balanceOf[address(msg.sender)]
    require not stor11[address(msg.sender)]
    require not stor11[address(arg1)]
    if msg.sender == owner:
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
    else:
        require arg2 + sub_e98ea4aa >= arg2
        require arg2 + sub_e98ea4aa <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 - sub_e98ea4aa
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        require balanceOf[stor0] + sub_e98ea4aa >= balanceOf[stor0]
        balanceOf[stor0] += sub_e98ea4aa
        call msg.sender with:
           value sub_e98ea4aa wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not paused
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg2
    require arg2 != arg1
    require arg3 <= balanceOf[address(arg1)]
    require not stor11[address(arg1)]
    require not stor11[address(arg2)]
    if arg1 == owner:
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
    else:
        require arg3 + sub_e98ea4aa >= arg3
        require arg3 + sub_e98ea4aa <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 - sub_e98ea4aa
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
        require balanceOf[stor0] + sub_e98ea4aa >= balanceOf[stor0]
        balanceOf[stor0] += sub_e98ea4aa
        call msg.sender with:
           value sub_e98ea4aa wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require msg.sender
    require arg1
    require balanceOf[address(arg1)] >= allowance[address(arg1)][address(msg.sender)] - arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_530bb233(?) payable {
    require calldata.size - 4 >= 32
    require not paused
    if not arg1:
        require not stor11[address(msg.sender)]
        require balanceOf[address(msg.sender)] >= 0
        require eth.balance(this.address) > 0
        require 0 <= balanceOf[address(msg.sender)]
        require balanceOf[stor0] >= balanceOf[stor0]
        if not arg1:
            call msg.sender with:
                 gas 2300 wei
        else:
            require arg1
            require arg1 * sub_2b9bf45c / arg1 == sub_2b9bf45c
            call msg.sender with:
               value arg1 * sub_2b9bf45c wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x43c820d6: msg.sender, arg1, 0
    else:
        require arg1
        require arg1 * sub_2b9bf45c / arg1 == sub_2b9bf45c
        require not stor11[address(msg.sender)]
        require balanceOf[address(msg.sender)] >= arg1 * sub_2b9bf45c
        require eth.balance(this.address) > arg1 * sub_2b9bf45c
        require arg1 * sub_2b9bf45c <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += -1 * arg1 * sub_2b9bf45c
        require balanceOf[stor0] + (arg1 * sub_2b9bf45c) >= balanceOf[stor0]
        balanceOf[stor0] += arg1 * sub_2b9bf45c
        if not arg1:
            call msg.sender with:
                 gas 2300 wei
        else:
            require arg1
            require arg1 * sub_2b9bf45c / arg1 == sub_2b9bf45c
            call msg.sender with:
               value arg1 * sub_2b9bf45c wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x43c820d6: msg.sender, arg1, arg1 * sub_2b9bf45c
}



}

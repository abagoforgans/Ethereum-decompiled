contract main {




// =====================  Runtime code  =====================


const INITIAL_SUPPLY = 12000000000 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor3;
uint8 stor4;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
address taxRecipientAddr;
uint256 currentTaxAmount;
uint256 currentTaxShift;
address stor11;
mapping of uint8 stor12;

function name() {
    return name[0 len name.length]
}

function currentTaxAmount() {
    return currentTaxAmount
}

function isBchHandled(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor12[address(arg1)])
}

function currentTaxShift() {
    return currentTaxShift
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor3[address(arg1)])
}

function paused() {
    return bool(stor4)
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

function taxRecipientAddr() {
    return taxRecipientAddr
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function bchRevoke() {
    stor12[address(msg.sender)] = 0
    emit BchApproval(0, msg.sender);
    return 1
}

function bchAuthorize() {
    stor12[address(msg.sender)] = 1
    emit BchApproval(1, msg.sender);
    return 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function unpause() {
    require msg.sender
    require stor3[address(msg.sender)]
    require stor4
    stor4 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor3[address(msg.sender)]
    require not stor4
    stor4 = 1
    emit Paused(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor3[address(msg.sender)]
    stor3[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor4
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor3[address(msg.sender)]
    require arg1
    require not stor3[address(arg1)]
    stor3[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor4
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor4
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
}

function changeTax(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if not arg2:
        if arg1 > 3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can't set a tax greater than 3%'
    if arg2 < 0:
        revert with 0, 'You can't set more than 2 decimal places'
    if arg2 > 2:
        revert with 0, 'You can't set more than 2 decimal places'
    require 100 * 10^arg2 / 100 == 10^arg2
    currentTaxAmount = arg1
    currentTaxShift = 100 * 10^arg2
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if taxRecipientAddr != msg.sender:
        if arg1 != taxRecipientAddr:
            if not arg2:
                require currentTaxShift > 0
                require currentTaxShift
                require taxRecipientAddr
                require 0 / currentTaxShift <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= 0 / currentTaxShift
                require balanceOf[stor8] + (0 / currentTaxShift) >= balanceOf[stor8]
                balanceOf[stor8] += 0 / currentTaxShift
                emit Transfer((0 / currentTaxShift), msg.sender, taxRecipientAddr);
            else:
                require arg2
                require arg2 * currentTaxAmount / arg2 == currentTaxAmount
                require currentTaxShift > 0
                require currentTaxShift
                require taxRecipientAddr
                require arg2 * currentTaxAmount / currentTaxShift <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2 * currentTaxAmount / currentTaxShift
                require balanceOf[stor8] + (arg2 * currentTaxAmount / currentTaxShift) >= balanceOf[stor8]
                balanceOf[stor8] += arg2 * currentTaxAmount / currentTaxShift
                emit Transfer((arg2 * currentTaxAmount / currentTaxShift), msg.sender, taxRecipientAddr);
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor12[address(arg1)]:
        if arg1 != taxRecipientAddr:
            if arg2 != taxRecipientAddr:
                if not arg3:
                    require currentTaxShift > 0
                    require currentTaxShift
                    require not stor4
                    require 0 / currentTaxShift <= allowance[address(arg1)][address(msg.sender)]
                    allowance[address(arg1)][address(msg.sender)] -= 0 / currentTaxShift
                    require taxRecipientAddr
                    require 0 / currentTaxShift <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= 0 / currentTaxShift
                    require balanceOf[stor8] + (0 / currentTaxShift) >= balanceOf[stor8]
                    balanceOf[stor8] += 0 / currentTaxShift
                    emit Transfer((0 / currentTaxShift), arg1, taxRecipientAddr);
                else:
                    require arg3
                    require arg3 * currentTaxAmount / arg3 == currentTaxAmount
                    require currentTaxShift > 0
                    require currentTaxShift
                    require not stor4
                    require arg3 * currentTaxAmount / currentTaxShift <= allowance[address(arg1)][address(msg.sender)]
                    allowance[address(arg1)][address(msg.sender)] -= arg3 * currentTaxAmount / currentTaxShift
                    require taxRecipientAddr
                    require arg3 * currentTaxAmount / currentTaxShift <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= arg3 * currentTaxAmount / currentTaxShift
                    require balanceOf[stor8] + (arg3 * currentTaxAmount / currentTaxShift) >= balanceOf[stor8]
                    balanceOf[stor8] += arg3 * currentTaxAmount / currentTaxShift
                    emit Transfer((arg3 * currentTaxAmount / currentTaxShift), arg1, taxRecipientAddr);
                emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
        require not stor4
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        allowance[address(arg1)][address(msg.sender)] -= arg3
        require arg2
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
        emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
    else:
        if msg.sender == stor11:
            if arg1 != taxRecipientAddr:
                if arg2 != taxRecipientAddr:
                    if not arg3:
                        require currentTaxShift > 0
                        require currentTaxShift
                        require taxRecipientAddr
                        require 0 / currentTaxShift <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= 0 / currentTaxShift
                        require balanceOf[stor8] + (0 / currentTaxShift) >= balanceOf[stor8]
                        balanceOf[stor8] += 0 / currentTaxShift
                        emit Transfer((0 / currentTaxShift), arg1, taxRecipientAddr);
                    else:
                        require arg3
                        require arg3 * currentTaxAmount / arg3 == currentTaxAmount
                        require currentTaxShift > 0
                        require currentTaxShift
                        require taxRecipientAddr
                        require arg3 * currentTaxAmount / currentTaxShift <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= arg3 * currentTaxAmount / currentTaxShift
                        require balanceOf[stor8] + (arg3 * currentTaxAmount / currentTaxShift) >= balanceOf[stor8]
                        balanceOf[stor8] += arg3 * currentTaxAmount / currentTaxShift
                        emit Transfer((arg3 * currentTaxAmount / currentTaxShift), arg1, taxRecipientAddr);
            require arg2
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if arg1 != taxRecipientAddr:
                if arg2 != taxRecipientAddr:
                    if not arg3:
                        require currentTaxShift > 0
                        require currentTaxShift
                        require not stor4
                        require 0 / currentTaxShift <= allowance[address(arg1)][address(msg.sender)]
                        allowance[address(arg1)][address(msg.sender)] -= 0 / currentTaxShift
                        require taxRecipientAddr
                        require 0 / currentTaxShift <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= 0 / currentTaxShift
                        require balanceOf[stor8] + (0 / currentTaxShift) >= balanceOf[stor8]
                        balanceOf[stor8] += 0 / currentTaxShift
                        emit Transfer((0 / currentTaxShift), arg1, taxRecipientAddr);
                    else:
                        require arg3
                        require arg3 * currentTaxAmount / arg3 == currentTaxAmount
                        require currentTaxShift > 0
                        require currentTaxShift
                        require not stor4
                        require arg3 * currentTaxAmount / currentTaxShift <= allowance[address(arg1)][address(msg.sender)]
                        allowance[address(arg1)][address(msg.sender)] -= arg3 * currentTaxAmount / currentTaxShift
                        require taxRecipientAddr
                        require arg3 * currentTaxAmount / currentTaxShift <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= arg3 * currentTaxAmount / currentTaxShift
                        require balanceOf[stor8] + (arg3 * currentTaxAmount / currentTaxShift) >= balanceOf[stor8]
                        balanceOf[stor8] += arg3 * currentTaxAmount / currentTaxShift
                        emit Transfer((arg3 * currentTaxAmount / currentTaxShift), arg1, taxRecipientAddr);
                    emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
            require not stor4
            require arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            require arg2
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
    return 1
}

function sub_33237989(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if arg1.length > 100:
        revert with 0, 'Max transaction count violated'
    if arg1.length != arg2.length:
        revert with 0, 'Wrong data'
    if arg3 != msg.sender:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _264 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _268 = mem[(32 * idx) + (32 * arg1.length) + 160]
            if not stor12[address(arg3)]:
                if arg3 == taxRecipientAddr:
                    require not stor4
                    require mem[(32 * idx) + (32 * arg1.length) + 160] <= allowance[address(arg3)][address(msg.sender)]
                    allowance[address(arg3)][address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                    require mem[(32 * idx) + 140 len 20]
                    require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(arg3)]
                    balanceOf[address(arg3)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                    require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
                    balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                    emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], arg3, address(_264));
                else:
                    if mem[(32 * idx) + 140 len 20] == taxRecipientAddr:
                        require not stor4
                        require mem[(32 * idx) + (32 * arg1.length) + 160] <= allowance[address(arg3)][address(msg.sender)]
                        allowance[address(arg3)][address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                        require mem[(32 * idx) + 140 len 20]
                        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(arg3)]
                        balanceOf[address(arg3)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                        require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
                        balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], arg3, address(_264));
                    else:
                        if not mem[(32 * idx) + (32 * arg1.length) + 160]:
                            require currentTaxShift > 0
                            require currentTaxShift
                            require not stor4
                            require 0 / currentTaxShift <= allowance[address(arg3)][address(msg.sender)]
                            allowance[address(arg3)][address(msg.sender)] -= 0 / currentTaxShift
                            require taxRecipientAddr
                            require 0 / currentTaxShift <= balanceOf[address(arg3)]
                            balanceOf[address(arg3)] -= 0 / currentTaxShift
                            require balanceOf[stor8] + (0 / currentTaxShift) >= balanceOf[stor8]
                            balanceOf[stor8] += 0 / currentTaxShift
                            emit Transfer((0 / currentTaxShift), arg3, taxRecipientAddr);
                            emit Approval(allowance[address(arg3)][address(msg.sender)], arg3, msg.sender);
                            require not stor4
                            require mem[(32 * idx) + (32 * arg1.length) + 160] <= allowance[address(arg3)][address(msg.sender)]
                            allowance[address(arg3)][address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                            require mem[(32 * idx) + 140 len 20]
                            require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(arg3)]
                            balanceOf[address(arg3)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                            require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
                            balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                            emit Transfer(mem[(32 * idx) + (32 * arg1.length) + 160], arg3, mem[(32 * idx) + 140 len 20]);
                        else:
                            require mem[(32 * idx) + (32 * arg1.length) + 160]
                            require mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / mem[(32 * idx) + (32 * arg1.length) + 160] == currentTaxAmount
                            require currentTaxShift > 0
                            require currentTaxShift
                            require not stor4
                            require mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / currentTaxShift <= allowance[address(arg3)][address(msg.sender)]
                            allowance[address(arg3)][address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / currentTaxShift
                            require taxRecipientAddr
                            require mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / currentTaxShift <= balanceOf[address(arg3)]
                            balanceOf[address(arg3)] -= mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / currentTaxShift
                            require balanceOf[stor8] + (mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / currentTaxShift) >= balanceOf[stor8]
                            balanceOf[stor8] += mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / currentTaxShift
                            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / currentTaxShift
                            emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], arg3, taxRecipientAddr);
                            emit Approval(allowance[address(arg3)][address(msg.sender)], arg3, msg.sender);
                            require not stor4
                            require _268 <= allowance[address(arg3)][address(msg.sender)]
                            allowance[address(arg3)][address(msg.sender)] -= _268
                            require address(_264)
                            require _268 <= balanceOf[address(arg3)]
                            balanceOf[address(arg3)] -= _268
                            require balanceOf[address(_264)] + _268 >= balanceOf[address(_264)]
                            balanceOf[address(_264)] += _268
                            emit Transfer(_268, arg3, address(_264));
                mem[0] = msg.sender
                mem[32] = sha3(address(arg3), 1)
                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = allowance[address(arg3)][address(msg.sender)]
                emit Approval(allowance[address(arg3)][address(msg.sender)], arg3, msg.sender);
            else:
                if msg.sender == stor11:
                    if arg3 == taxRecipientAddr:
                        require mem[(32 * idx) + 140 len 20]
                        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(arg3)]
                        balanceOf[address(arg3)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                        require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 0
                        balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], arg3, address(_264));
                    else:
                        if mem[(32 * idx) + 140 len 20] == taxRecipientAddr:
                            require mem[(32 * idx) + 140 len 20]
                            require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(arg3)]
                            balanceOf[address(arg3)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                            require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 0
                            balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], arg3, address(_264));
                        else:
                            if not mem[(32 * idx) + (32 * arg1.length) + 160]:
                                require currentTaxShift > 0
                                require currentTaxShift
                                require taxRecipientAddr
                                require 0 / currentTaxShift <= balanceOf[address(arg3)]
                                balanceOf[address(arg3)] -= 0 / currentTaxShift
                                require balanceOf[stor8] + (0 / currentTaxShift) >= balanceOf[stor8]
                                balanceOf[stor8] += 0 / currentTaxShift
                                emit Transfer((0 / currentTaxShift), arg3, taxRecipientAddr);
                                require mem[(32 * idx) + 140 len 20]
                                require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(arg3)]
                                balanceOf[address(arg3)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 0
                                balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            else:
                                require mem[(32 * idx) + (32 * arg1.length) + 160]
                                require mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / mem[(32 * idx) + (32 * arg1.length) + 160] == currentTaxAmount
                                require currentTaxShift > 0
                                require currentTaxShift
                                require taxRecipientAddr
                                require mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / currentTaxShift <= balanceOf[address(arg3)]
                                balanceOf[address(arg3)] -= mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / currentTaxShift
                                require balanceOf[stor8] + (mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / currentTaxShift) >= balanceOf[stor8]
                                balanceOf[stor8] += mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / currentTaxShift
                                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / currentTaxShift
                                emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], arg3, taxRecipientAddr);
                                require address(_264)
                                require _268 <= balanceOf[address(arg3)]
                                balanceOf[address(arg3)] -= _268
                                require balanceOf[address(_264)] + _268 >= balanceOf[address(_264)]
                                mem[0] = address(_264)
                                mem[32] = 0
                                balanceOf[address(_264)] += _268
                                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = _268
                            emit Transfer(_268, arg3, address(_264));
                else:
                    if arg3 == taxRecipientAddr:
                        require not stor4
                        require mem[(32 * idx) + (32 * arg1.length) + 160] <= allowance[address(arg3)][address(msg.sender)]
                        allowance[address(arg3)][address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                        require mem[(32 * idx) + 140 len 20]
                        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(arg3)]
                        balanceOf[address(arg3)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                        require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
                        balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], arg3, address(_264));
                    else:
                        if mem[(32 * idx) + 140 len 20] == taxRecipientAddr:
                            require not stor4
                            require mem[(32 * idx) + (32 * arg1.length) + 160] <= allowance[address(arg3)][address(msg.sender)]
                            allowance[address(arg3)][address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                            require mem[(32 * idx) + 140 len 20]
                            require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(arg3)]
                            balanceOf[address(arg3)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                            require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
                            balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], arg3, address(_264));
                        else:
                            if not mem[(32 * idx) + (32 * arg1.length) + 160]:
                                require currentTaxShift > 0
                                require currentTaxShift
                                require not stor4
                                require 0 / currentTaxShift <= allowance[address(arg3)][address(msg.sender)]
                                allowance[address(arg3)][address(msg.sender)] -= 0 / currentTaxShift
                                require taxRecipientAddr
                                require 0 / currentTaxShift <= balanceOf[address(arg3)]
                                balanceOf[address(arg3)] -= 0 / currentTaxShift
                                require balanceOf[stor8] + (0 / currentTaxShift) >= balanceOf[stor8]
                                balanceOf[stor8] += 0 / currentTaxShift
                                emit Transfer((0 / currentTaxShift), arg3, taxRecipientAddr);
                                emit Approval(allowance[address(arg3)][address(msg.sender)], arg3, msg.sender);
                                require not stor4
                                require mem[(32 * idx) + (32 * arg1.length) + 160] <= allowance[address(arg3)][address(msg.sender)]
                                allowance[address(arg3)][address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                require mem[(32 * idx) + 140 len 20]
                                require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(arg3)]
                                balanceOf[address(arg3)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                                require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
                                balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                                emit Transfer(mem[(32 * idx) + (32 * arg1.length) + 160], arg3, mem[(32 * idx) + 140 len 20]);
                            else:
                                require mem[(32 * idx) + (32 * arg1.length) + 160]
                                require mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / mem[(32 * idx) + (32 * arg1.length) + 160] == currentTaxAmount
                                require currentTaxShift > 0
                                require currentTaxShift
                                require not stor4
                                require mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / currentTaxShift <= allowance[address(arg3)][address(msg.sender)]
                                allowance[address(arg3)][address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / currentTaxShift
                                require taxRecipientAddr
                                require mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / currentTaxShift <= balanceOf[address(arg3)]
                                balanceOf[address(arg3)] -= mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / currentTaxShift
                                require balanceOf[stor8] + (mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / currentTaxShift) >= balanceOf[stor8]
                                balanceOf[stor8] += mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / currentTaxShift
                                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / currentTaxShift
                                emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], arg3, taxRecipientAddr);
                                emit Approval(allowance[address(arg3)][address(msg.sender)], arg3, msg.sender);
                                require not stor4
                                require _268 <= allowance[address(arg3)][address(msg.sender)]
                                allowance[address(arg3)][address(msg.sender)] -= _268
                                require address(_264)
                                require _268 <= balanceOf[address(arg3)]
                                balanceOf[address(arg3)] -= _268
                                require balanceOf[address(_264)] + _268 >= balanceOf[address(_264)]
                                balanceOf[address(_264)] += _268
                                emit Transfer(_268, arg3, address(_264));
                    mem[0] = msg.sender
                    mem[32] = sha3(address(arg3), 1)
                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = allowance[address(arg3)][address(msg.sender)]
                    emit Approval(allowance[address(arg3)][address(msg.sender)], arg3, msg.sender);
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _266 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _269 = mem[(32 * idx) + (32 * arg1.length) + 160]
            if msg.sender == taxRecipientAddr:
                require mem[(32 * idx) + 140 len 20]
                require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 0
                balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_266));
            else:
                if mem[(32 * idx) + 140 len 20] == taxRecipientAddr:
                    require mem[(32 * idx) + 140 len 20]
                    require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                    require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 0
                    balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                    emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_266));
                else:
                    if not mem[(32 * idx) + (32 * arg1.length) + 160]:
                        require currentTaxShift > 0
                        require currentTaxShift
                        require taxRecipientAddr
                        require 0 / currentTaxShift <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= 0 / currentTaxShift
                        require balanceOf[stor8] + (0 / currentTaxShift) >= balanceOf[stor8]
                        balanceOf[stor8] += 0 / currentTaxShift
                        emit Transfer((0 / currentTaxShift), msg.sender, taxRecipientAddr);
                        require mem[(32 * idx) + 140 len 20]
                        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                        require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 0
                        balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                    else:
                        require mem[(32 * idx) + (32 * arg1.length) + 160]
                        require mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / mem[(32 * idx) + (32 * arg1.length) + 160] == currentTaxAmount
                        require currentTaxShift > 0
                        require currentTaxShift
                        require taxRecipientAddr
                        require mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / currentTaxShift <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / currentTaxShift
                        require balanceOf[stor8] + (mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / currentTaxShift) >= balanceOf[stor8]
                        balanceOf[stor8] += mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / currentTaxShift
                        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160] * currentTaxAmount / currentTaxShift
                        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, taxRecipientAddr);
                        require address(_266)
                        require _269 <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= _269
                        require balanceOf[address(_266)] + _269 >= balanceOf[address(_266)]
                        mem[0] = address(_266)
                        mem[32] = 0
                        balanceOf[address(_266)] += _269
                        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = _269
                    emit Transfer(_269, msg.sender, address(_266));
            idx = idx + 1
            continue 
    return 1
}



}

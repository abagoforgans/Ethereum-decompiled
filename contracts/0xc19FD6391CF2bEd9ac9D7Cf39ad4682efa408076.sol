contract main {




// =====================  Runtime code  =====================


const decimals = 18

const MAX_TOTAL_SUPPLY = 2000000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
address owner;
mapping of uint256 allowance;
uint8 stor4;
uint256 sub_e0fc6eac;
array of struct sub_4c44be7c;
array of uint256 name;
array of uint256 symbol;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function isMinting() {
    return bool(stor4)
}

function sub_4c44be7c(?) {
    require arg2 < sub_4c44be7c[arg1].field_0
    return sub_4c44be7c[arg1][arg2].field_0, sub_4c44be7c[arg1][arg2].field_256
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
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

function sub_e0fc6eac(?) {
    return sub_e0fc6eac
}

function _fallback() payable {
    revert
}

function sub_ae3fbde8(?) {
    require msg.sender == owner
    require not sub_e0fc6eac
    sub_e0fc6eac = arg1
}

function isValidAddress(address arg1) {
    if not arg1:
        return not not arg1
    return arg1 != this.address
}

function finishMinting() {
    require msg.sender == owner
    require stor4
    stor4 = 0
    emit MintFinished()
    return 1
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

function removeHoldByAddressIndex(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 < sub_4c44be7c[address(arg1)].field_0
    sub_4c44be7c[address(arg1)][arg2].field_0 = 0
    sub_4c44be7c[address(arg1)][arg2].field_256 = 0
}

function sub_2c1c86d0(?) {
    require msg.sender == owner
    require stor4
    require msg.sender == owner
    require stor4
    stor4 = 0
    emit MintFinished()
    require msg.sender == owner
    require not sub_e0fc6eac
    sub_e0fc6eac = block.timestamp
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burnMintFrom(address arg1, uint256 arg2) {
    require msg.sender == owner
    require stor4
    require arg1
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
}

function removeHoldByAddress(address arg1) {
    require msg.sender == owner
    sub_4c44be7c[address(arg1)].field_0 = 0
    idx = 0
    while 2 * sub_4c44be7c[address(arg1)].field_0 > idx:
        sub_4c44be7c[address(arg1)][idx].field_0 = 0
        sub_4c44be7c[address(arg1)][idx].field_256 = 0
        idx = idx + 2
        continue 
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    require msg.sender == owner
    require stor4
    require totalSupply + arg2 >= totalSupply
    if totalSupply + arg2 > 2000000000 * 10^18:
        return 0
    require msg.sender == owner
    require stor4
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    return 1
}

function setHoldAmount(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require balanceOf[address(arg1)] >= arg2
    if not sub_e0fc6eac:
        sub_4c44be7c[address(arg1)].field_0++
        sub_4c44be7c[address(arg1)][sub_4c44be7c[address(arg1)].field_0].field_0 = arg3
    else:
        require sub_e0fc6eac <= block.timestamp
        require arg3 >= 0
        sub_4c44be7c[address(arg1)].field_0++
        sub_4c44be7c[address(arg1)][sub_4c44be7c[address(arg1)].field_0].field_0 = block.timestamp - sub_e0fc6eac + arg3
    sub_4c44be7c[address(arg1)][sub_4c44be7c[address(arg1)].field_0].field_256 = arg2
}

function changeHoldByAddressIndex(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require msg.sender == owner
    if arg3 > 0:
        require arg2 < sub_4c44be7c[address(arg1)].field_0
        sub_4c44be7c[address(arg1)][arg2].field_256 = arg3
    if arg4 > 0:
        if not sub_e0fc6eac:
            require arg2 < sub_4c44be7c[address(arg1)].field_0
            sub_4c44be7c[address(arg1)][arg2].field_0 = arg4
        else:
            require sub_e0fc6eac <= block.timestamp
            require arg4 >= 0
            require arg2 < sub_4c44be7c[address(arg1)].field_0
            sub_4c44be7c[address(arg1)][arg2].field_0 = block.timestamp - sub_e0fc6eac + arg4
}

function getTotalHoldAmount(address arg1) {
    idx = 0
    s = 0
    while idx < sub_4c44be7c[address(arg1)].field_0:
        if not sub_e0fc6eac:
            if idx < sub_4c44be7c[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 6)
                if s + sub_4c44be7c[address(arg1)][idx].field_256 >= s:
                    idx = idx + 1
                    s = s + sub_4c44be7c[address(arg1)][idx].field_256
                    continue 
        else:
            if idx < sub_4c44be7c[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 6)
                if sub_e0fc6eac + sub_4c44be7c[address(arg1)][idx].field_0 >= sub_e0fc6eac:
                    if sub_e0fc6eac + sub_4c44be7c[address(arg1)][idx].field_0 < block.timestamp:
                        idx = idx + 1
                        s = s
                        continue 
                    if idx < sub_4c44be7c[address(arg1)].field_0:
                        mem[0] = sha3(address(arg1), 6)
                        if s + sub_4c44be7c[address(arg1)][idx].field_256 >= s:
                            idx = idx + 1
                            s = s + sub_4c44be7c[address(arg1)][idx].field_256
                            continue 
        revert
    return s
}

function getAvailableBalance(address arg1) {
    idx = 0
    s = 0
    while idx < sub_4c44be7c[address(arg1)].field_0:
        if not sub_e0fc6eac:
            if idx < sub_4c44be7c[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 6)
                if s + sub_4c44be7c[address(arg1)][idx].field_256 >= s:
                    idx = idx + 1
                    s = s + sub_4c44be7c[address(arg1)][idx].field_256
                    continue 
        else:
            if idx < sub_4c44be7c[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 6)
                if sub_e0fc6eac + sub_4c44be7c[address(arg1)][idx].field_0 >= sub_e0fc6eac:
                    if sub_e0fc6eac + sub_4c44be7c[address(arg1)][idx].field_0 < block.timestamp:
                        idx = idx + 1
                        s = s
                        continue 
                    if idx < sub_4c44be7c[address(arg1)].field_0:
                        mem[0] = sha3(address(arg1), 6)
                        if s + sub_4c44be7c[address(arg1)][idx].field_256 >= s:
                            idx = idx + 1
                            s = s + sub_4c44be7c[address(arg1)][idx].field_256
                            continue 
        revert
    if s <= balanceOf[address(arg1)]:
        return (balanceOf[address(arg1)] - s)
    revert
}

function checkAvailableAmount(address arg1, uint256 arg2) {
    idx = 0
    s = 0
    while idx < sub_4c44be7c[address(arg1)].field_0:
        if not sub_e0fc6eac:
            if idx < sub_4c44be7c[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 6)
                if s + sub_4c44be7c[address(arg1)][idx].field_256 >= s:
                    idx = idx + 1
                    s = s + sub_4c44be7c[address(arg1)][idx].field_256
                    continue 
        else:
            if idx < sub_4c44be7c[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 6)
                if sub_e0fc6eac + sub_4c44be7c[address(arg1)][idx].field_0 >= sub_e0fc6eac:
                    if sub_e0fc6eac + sub_4c44be7c[address(arg1)][idx].field_0 < block.timestamp:
                        idx = idx + 1
                        s = s
                        continue 
                    if idx < sub_4c44be7c[address(arg1)].field_0:
                        mem[0] = sha3(address(arg1), 6)
                        if s + sub_4c44be7c[address(arg1)][idx].field_256 >= s:
                            idx = idx + 1
                            s = s + sub_4c44be7c[address(arg1)][idx].field_256
                            continue 
        revert
    if s <= balanceOf[address(arg1)]:
        return arg2 <= balanceOf[address(arg1)] - s
    revert
}

function burn(uint256 arg1) {
    require not stor4
    idx = 0
    s = 0
    while idx < sub_4c44be7c[address(msg.sender)].field_0:
        if not sub_e0fc6eac:
            if idx < sub_4c44be7c[address(msg.sender)].field_0:
                mem[0] = sha3(address(msg.sender), 6)
                if s + sub_4c44be7c[address(msg.sender)][idx].field_256 >= s:
                    idx = idx + 1
                    s = s + sub_4c44be7c[address(msg.sender)][idx].field_256
                    continue 
        else:
            if idx < sub_4c44be7c[address(msg.sender)].field_0:
                mem[0] = sha3(address(msg.sender), 6)
                if sub_e0fc6eac + sub_4c44be7c[address(msg.sender)][idx].field_0 >= sub_e0fc6eac:
                    if sub_e0fc6eac + sub_4c44be7c[address(msg.sender)][idx].field_0 < block.timestamp:
                        idx = idx + 1
                        s = s
                        continue 
                    if idx < sub_4c44be7c[address(msg.sender)].field_0:
                        mem[0] = sha3(address(msg.sender), 6)
                        if s + sub_4c44be7c[address(msg.sender)][idx].field_256 >= s:
                            idx = idx + 1
                            s = s + sub_4c44be7c[address(msg.sender)][idx].field_256
                            continue 
        revert
    require s <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)] - s
    require msg.sender
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function burnFrom(address arg1, uint256 arg2) {
    require not stor4
    idx = 0
    s = 0
    while idx < sub_4c44be7c[address(arg1)].field_0:
        if not sub_e0fc6eac:
            if idx < sub_4c44be7c[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 6)
                if s + sub_4c44be7c[address(arg1)][idx].field_256 >= s:
                    idx = idx + 1
                    s = s + sub_4c44be7c[address(arg1)][idx].field_256
                    continue 
        else:
            if idx < sub_4c44be7c[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 6)
                if sub_e0fc6eac + sub_4c44be7c[address(arg1)][idx].field_0 >= sub_e0fc6eac:
                    if sub_e0fc6eac + sub_4c44be7c[address(arg1)][idx].field_0 < block.timestamp:
                        idx = idx + 1
                        s = s
                        continue 
                    if idx < sub_4c44be7c[address(arg1)].field_0:
                        mem[0] = sha3(address(arg1), 6)
                        if s + sub_4c44be7c[address(arg1)][idx].field_256 >= s:
                            idx = idx + 1
                            s = s + sub_4c44be7c[address(arg1)][idx].field_256
                            continue 
        revert
    require s <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)] - s
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg1
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    if stor4:
        require msg.sender == owner
    idx = 0
    s = 0
    while idx < sub_4c44be7c[address(msg.sender)].field_0:
        if not sub_e0fc6eac:
            if idx < sub_4c44be7c[address(msg.sender)].field_0:
                mem[0] = sha3(address(msg.sender), 6)
                if s + sub_4c44be7c[address(msg.sender)][idx].field_256 >= s:
                    idx = idx + 1
                    s = s + sub_4c44be7c[address(msg.sender)][idx].field_256
                    continue 
        else:
            if idx < sub_4c44be7c[address(msg.sender)].field_0:
                mem[0] = sha3(address(msg.sender), 6)
                if sub_e0fc6eac + sub_4c44be7c[address(msg.sender)][idx].field_0 >= sub_e0fc6eac:
                    if sub_e0fc6eac + sub_4c44be7c[address(msg.sender)][idx].field_0 < block.timestamp:
                        idx = idx + 1
                        s = s
                        continue 
                    if idx < sub_4c44be7c[address(msg.sender)].field_0:
                        mem[0] = sha3(address(msg.sender), 6)
                        if s + sub_4c44be7c[address(msg.sender)][idx].field_256 >= s:
                            idx = idx + 1
                            s = s + sub_4c44be7c[address(msg.sender)][idx].field_256
                            continue 
        revert
    require s <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)] - s
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg2 != this.address
    if stor4:
        require msg.sender == owner
    idx = 0
    s = 0
    while idx < sub_4c44be7c[address(arg1)].field_0:
        if not sub_e0fc6eac:
            if idx < sub_4c44be7c[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 6)
                if s + sub_4c44be7c[address(arg1)][idx].field_256 >= s:
                    idx = idx + 1
                    s = s + sub_4c44be7c[address(arg1)][idx].field_256
                    continue 
        else:
            if idx < sub_4c44be7c[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 6)
                if sub_e0fc6eac + sub_4c44be7c[address(arg1)][idx].field_0 >= sub_e0fc6eac:
                    if sub_e0fc6eac + sub_4c44be7c[address(arg1)][idx].field_0 < block.timestamp:
                        idx = idx + 1
                        s = s
                        continue 
                    if idx < sub_4c44be7c[address(arg1)].field_0:
                        mem[0] = sha3(address(arg1), 6)
                        if s + sub_4c44be7c[address(arg1)][idx].field_256 >= s:
                            idx = idx + 1
                            s = s + sub_4c44be7c[address(arg1)][idx].field_256
                            continue 
        revert
    require s <= balanceOf[address(arg1)]
    require arg3 <= balanceOf[address(arg1)] - s
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}

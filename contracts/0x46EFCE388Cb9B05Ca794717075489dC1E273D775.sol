contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of struct balances;
mapping of uint256 allowed;
array of address lockeds;
address owner;
address sub_569f1bfcAddress;
uint256 totalDividends;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1].field_0, balances[arg1].field_256, balances[arg1].field_512, balances[arg1].field_768
}

function decimals() {
    return decimals
}

function getDividends(address arg1) {
    require calldata.size - 4 >= 32
    return balances[address(arg1)].field_512
}

function sub_569f1bfc(?) {
    return sub_569f1bfcAddress
}

function allowed(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowed[arg1][arg2]
}

function sub_66cdfaa6(?) {
    require calldata.size - 4 >= 32
    return balances[address(arg1)].field_768
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balances[address(arg1)].field_0
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function totalDividends() {
    return totalDividends
}

function lockeds(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < lockeds.length
    return lockeds[arg1]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setDice(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Permission denied'
    sub_569f1bfcAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_2f3e6b73(?) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < lockeds.length:
        mem[0] = 4
        if lockeds[idx] != arg1:
            idx = idx + 1
            continue 
        return balances[address(arg1)].field_256
    return 0
}

function sub_a0afc504(?) {
    require calldata.size - 4 >= 32
    if sub_569f1bfcAddress != msg.sender:
        revert with 0, 'Permission denied'
    if totalDividends < balances[address(arg1)].field_512:
        revert with 0, 'system error'
    totalDividends -= balances[address(arg1)].field_512
    balances[address(arg1)].field_512 = 0
}

function sub_f51c38e2(?) {
    idx = 0
    s = 0
    while idx < lockeds.length:
        mem[0] = 4
        if not lockeds[idx]:
            idx = idx + 1
            s = s
            continue 
        require idx < lockeds.length
        mem[0] = lockeds[idx]
        mem[32] = 2
        idx = idx + 1
        s = s + balances[stor4[idx]].field_256
        continue 
    return s
}

function sub_a6b2d951(?) {
    require calldata.size - 4 >= 32
    if not balances[address(arg1)].field_768:
        if balances[address(arg1)].field_256:
            return 2
        return 1
    if block.timestamp < balances[address(arg1)].field_768 + 600:
        if balances[address(arg1)].field_256 > 0:
            return 4
    if block.timestamp < balances[address(arg1)].field_768 + 600:
        return 16
    if balances[address(arg1)].field_256 <= 0:
        return 16
    return 8
}

function addPools(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_569f1bfcAddress != msg.sender:
        revert with 0, 'Permission denied'
    totalDividends += arg1
    idx = 0
    s = 0
    while idx < lockeds.length:
        mem[0] = 4
        if not lockeds[idx]:
            idx = idx + 1
            s = s
            continue 
        require idx < lockeds.length
        mem[0] = lockeds[idx]
        mem[32] = 2
        idx = idx + 1
        s = s + balances[stor4[idx]].field_256
        continue 
    if s <= 0:
        revert with 0, 'lockeds 0'
    idx = 0
    while idx < lockeds.length:
        mem[0] = 4
        if lockeds[idx]:
            require idx < lockeds.length
            require s
            require idx < lockeds.length
            mem[0] = lockeds[idx]
            mem[32] = 2
            balances[stor4[idx]].field_512 += balances[stor4[idx]].field_256 / s * arg1
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balances[address(msg.sender)].field_768:
        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                if balances[address(msg.sender)].field_256 > 0:
                    balances[address(msg.sender)].field_256 = 0
                    balances[address(msg.sender)].field_768 = 0
        else:
            if balances[address(msg.sender)].field_256 <= 0:
                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                    if balances[address(msg.sender)].field_256 > 0:
                        balances[address(msg.sender)].field_256 = 0
                        balances[address(msg.sender)].field_768 = 0
    if balances[address(msg.sender)].field_0 < arg2 + balances[address(msg.sender)].field_256:
        revert with 0, 'Balance is not enough'
    require balances[address(msg.sender)].field_0 >= arg2
    balances[address(msg.sender)].field_0 -= arg2
    balances[address(arg1)].field_0 += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if balances[address(arg1)].field_768:
        if block.timestamp >= balances[address(arg1)].field_768 + 600:
            if block.timestamp >= balances[address(arg1)].field_768 + 600:
                if balances[address(arg1)].field_256 > 0:
                    balances[address(arg1)].field_256 = 0
                    balances[address(arg1)].field_768 = 0
        else:
            if balances[address(arg1)].field_256 <= 0:
                if block.timestamp >= balances[address(arg1)].field_768 + 600:
                    if balances[address(arg1)].field_256 > 0:
                        balances[address(arg1)].field_256 = 0
                        balances[address(arg1)].field_768 = 0
    if balances[address(arg1)].field_0 < arg3 + balances[address(arg1)].field_256:
        revert with 0, 'Balance is not enough'
    require balances[address(arg1)].field_0 >= arg3
    require allowed[address(arg1)][address(msg.sender)] >= arg3
    balances[address(arg2)].field_0 += arg3
    balances[address(arg1)].field_0 -= arg3
    if allowed[address(arg1)][address(msg.sender)] < -1:
        allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_53fa7b1f(?) {
    if balances[address(msg.sender)].field_768:
        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                if balances[address(msg.sender)].field_768:
                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256 <= 0:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                    else:
                        if balances[address(msg.sender)].field_256 <= 0:
                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 <= 0:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                else:
                    if balances[address(msg.sender)].field_256:
                        if balances[address(msg.sender)].field_768:
                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'Account exception'
                                else:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if not balances[address(msg.sender)].field_256:
                                revert with 0, 'Account exception'
                            else:
                                balances[address(msg.sender)].field_768 = block.timestamp
                                idx = 0
                                while idx < lockeds.length:
                                    mem[0] = 4
                                    if lockeds[idx] != msg.sender:
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require idx < lockeds.length
                                        mem[0] = 4
                                        lockeds[idx] = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        if balances[address(msg.sender)].field_768:
                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'Account exception'
                                else:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if not balances[address(msg.sender)].field_256:
                                revert with 0, 'Account exception'
                            else:
                                revert with 0, 'Account exception'
            else:
                if balances[address(msg.sender)].field_256 <= 0:
                    if balances[address(msg.sender)].field_768:
                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 <= 0:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256 <= 0:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 <= 0:
                                        if balances[address(msg.sender)].field_768:
                                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                        else:
                                            if not balances[address(msg.sender)].field_256:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_768:
                                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                        else:
                                            if not balances[address(msg.sender)].field_256:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                    else:
                        if balances[address(msg.sender)].field_256:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    balances[address(msg.sender)].field_768 = block.timestamp
                                    idx = 0
                                    while idx < lockeds.length:
                                        mem[0] = 4
                                        if lockeds[idx] != msg.sender:
                                            idx = idx + 1
                                            continue 
                                        else:
                                            require idx < lockeds.length
                                            mem[0] = 4
                                            lockeds[idx] = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                else:
                    balances[address(msg.sender)].field_256 = 0
                    balances[address(msg.sender)].field_768 = 0
                    if balances[address(msg.sender)].field_768:
                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 <= 0:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256 <= 0:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 <= 0:
                                        if balances[address(msg.sender)].field_768:
                                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                        else:
                                            if not balances[address(msg.sender)].field_256:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_768:
                                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                        else:
                                            if not balances[address(msg.sender)].field_256:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                    else:
                        if balances[address(msg.sender)].field_256:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    balances[address(msg.sender)].field_768 = block.timestamp
                                    idx = 0
                                    while idx < lockeds.length:
                                        mem[0] = 4
                                        if lockeds[idx] != msg.sender:
                                            idx = idx + 1
                                            continue 
                                        else:
                                            require idx < lockeds.length
                                            mem[0] = 4
                                            lockeds[idx] = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
        else:
            if balances[address(msg.sender)].field_256 <= 0:
                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                    if balances[address(msg.sender)].field_768:
                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 <= 0:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256 <= 0:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 <= 0:
                                        if balances[address(msg.sender)].field_768:
                                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                        else:
                                            if not balances[address(msg.sender)].field_256:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_768:
                                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                        else:
                                            if not balances[address(msg.sender)].field_256:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                    else:
                        if balances[address(msg.sender)].field_256:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    balances[address(msg.sender)].field_768 = block.timestamp
                                    idx = 0
                                    while idx < lockeds.length:
                                        mem[0] = 4
                                        if lockeds[idx] != msg.sender:
                                            idx = idx + 1
                                            continue 
                                        else:
                                            require idx < lockeds.length
                                            mem[0] = 4
                                            lockeds[idx] = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                else:
                    if balances[address(msg.sender)].field_256 <= 0:
                        if balances[address(msg.sender)].field_768:
                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 <= 0:
                                        if balances[address(msg.sender)].field_768:
                                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                        else:
                                            if not balances[address(msg.sender)].field_256:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_768:
                                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                        else:
                                            if not balances[address(msg.sender)].field_256:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 <= 0:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        if balances[address(msg.sender)].field_768:
                                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                        else:
                                            if not balances[address(msg.sender)].field_256:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 <= 0:
                                            if balances[address(msg.sender)].field_768:
                                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            if balances[address(msg.sender)].field_256 > 0:
                                                                revert with 0, 'Account exception'
                                                            else:
                                                                revert with 0, 'Account exception'
                                            else:
                                                if not balances[address(msg.sender)].field_256:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_768:
                                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            if balances[address(msg.sender)].field_256 > 0:
                                                                revert with 0, 'Account exception'
                                                            else:
                                                                revert with 0, 'Account exception'
                                            else:
                                                if not balances[address(msg.sender)].field_256:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        balances[address(msg.sender)].field_768 = block.timestamp
                                        idx = 0
                                        while idx < lockeds.length:
                                            mem[0] = 4
                                            if lockeds[idx] != msg.sender:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require idx < lockeds.length
                                                mem[0] = 4
                                                lockeds[idx] = 0
                                                idx = idx + 1
                                                continue 
                            else:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                    else:
                        balances[address(msg.sender)].field_256 = 0
                        balances[address(msg.sender)].field_768 = 0
                        if balances[address(msg.sender)].field_768:
                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 <= 0:
                                        if balances[address(msg.sender)].field_768:
                                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                        else:
                                            if not balances[address(msg.sender)].field_256:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_768:
                                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                        else:
                                            if not balances[address(msg.sender)].field_256:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 <= 0:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        if balances[address(msg.sender)].field_768:
                                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                        else:
                                            if not balances[address(msg.sender)].field_256:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 <= 0:
                                            if balances[address(msg.sender)].field_768:
                                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            if balances[address(msg.sender)].field_256 > 0:
                                                                revert with 0, 'Account exception'
                                                            else:
                                                                revert with 0, 'Account exception'
                                            else:
                                                if not balances[address(msg.sender)].field_256:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_768:
                                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            if balances[address(msg.sender)].field_256 > 0:
                                                                revert with 0, 'Account exception'
                                                            else:
                                                                revert with 0, 'Account exception'
                                            else:
                                                if not balances[address(msg.sender)].field_256:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        balances[address(msg.sender)].field_768 = block.timestamp
                                        idx = 0
                                        while idx < lockeds.length:
                                            mem[0] = 4
                                            if lockeds[idx] != msg.sender:
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require idx < lockeds.length
                                                mem[0] = 4
                                                lockeds[idx] = 0
                                                idx = idx + 1
                                                continue 
                            else:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
            else:
                if balances[address(msg.sender)].field_768:
                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256 <= 0:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                    else:
                        if balances[address(msg.sender)].field_256 <= 0:
                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 <= 0:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                else:
                    if balances[address(msg.sender)].field_256:
                        if balances[address(msg.sender)].field_768:
                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'Account exception'
                                else:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if not balances[address(msg.sender)].field_256:
                                revert with 0, 'Account exception'
                            else:
                                balances[address(msg.sender)].field_768 = block.timestamp
                                idx = 0
                                while idx < lockeds.length:
                                    mem[0] = 4
                                    if lockeds[idx] != msg.sender:
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require idx < lockeds.length
                                        mem[0] = 4
                                        lockeds[idx] = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        if balances[address(msg.sender)].field_768:
                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'Account exception'
                                else:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if not balances[address(msg.sender)].field_256:
                                revert with 0, 'Account exception'
                            else:
                                revert with 0, 'Account exception'
    else:
        if balances[address(msg.sender)].field_256:
            if balances[address(msg.sender)].field_768:
                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                        if balances[address(msg.sender)].field_768:
                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'Account exception'
                                else:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if not balances[address(msg.sender)].field_256:
                                revert with 0, 'Account exception'
                            else:
                                revert with 0, 'Account exception'
                    else:
                        if balances[address(msg.sender)].field_256 <= 0:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                else:
                    if balances[address(msg.sender)].field_256 <= 0:
                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256 <= 0:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                    else:
                        if balances[address(msg.sender)].field_768:
                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'Account exception'
                                else:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if not balances[address(msg.sender)].field_256:
                                revert with 0, 'Account exception'
                            else:
                                revert with 0, 'Account exception'
            else:
                if balances[address(msg.sender)].field_256:
                    if balances[address(msg.sender)].field_768:
                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256 > 0:
                                revert with 0, 'Account exception'
                            else:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                    else:
                        if not balances[address(msg.sender)].field_256:
                            revert with 0, 'Account exception'
                        else:
                            balances[address(msg.sender)].field_768 = block.timestamp
                            idx = 0
                            while idx < lockeds.length:
                                mem[0] = 4
                                if lockeds[idx] != msg.sender:
                                    idx = idx + 1
                                    continue 
                                else:
                                    require idx < lockeds.length
                                    mem[0] = 4
                                    lockeds[idx] = 0
                                    idx = idx + 1
                                    continue 
                else:
                    if balances[address(msg.sender)].field_768:
                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256 > 0:
                                revert with 0, 'Account exception'
                            else:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                    else:
                        if not balances[address(msg.sender)].field_256:
                            revert with 0, 'Account exception'
                        else:
                            revert with 0, 'Account exception'
        else:
            if balances[address(msg.sender)].field_768:
                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                        if balances[address(msg.sender)].field_768:
                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'Account exception'
                                else:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if not balances[address(msg.sender)].field_256:
                                revert with 0, 'Account exception'
                            else:
                                revert with 0, 'Account exception'
                    else:
                        if balances[address(msg.sender)].field_256 <= 0:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                else:
                    if balances[address(msg.sender)].field_256 <= 0:
                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256 <= 0:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                    else:
                        if balances[address(msg.sender)].field_768:
                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'Account exception'
                                else:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if not balances[address(msg.sender)].field_256:
                                revert with 0, 'Account exception'
                            else:
                                revert with 0, 'Account exception'
            else:
                if balances[address(msg.sender)].field_256:
                    if balances[address(msg.sender)].field_768:
                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256 > 0:
                                revert with 0, 'Account exception'
                            else:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                    else:
                        if not balances[address(msg.sender)].field_256:
                            revert with 0, 'Account exception'
                        else:
                            balances[address(msg.sender)].field_768 = block.timestamp
                            idx = 0
                            while idx < lockeds.length:
                                mem[0] = 4
                                if lockeds[idx] != msg.sender:
                                    idx = idx + 1
                                    continue 
                                else:
                                    require idx < lockeds.length
                                    mem[0] = 4
                                    lockeds[idx] = 0
                                    idx = idx + 1
                                    continue 
                else:
                    if balances[address(msg.sender)].field_768:
                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256 > 0:
                                revert with 0, 'Account exception'
                            else:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                    else:
                        if not balances[address(msg.sender)].field_256:
                            revert with 0, 'Account exception'
                        else:
                            revert with 0, 'Account exception'
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balances[address(msg.sender)].field_768:
        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                if balances[address(msg.sender)].field_768:
                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256 <= 0:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                    else:
                        if balances[address(msg.sender)].field_256 <= 0:
                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 <= 0:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                else:
                    if balances[address(msg.sender)].field_256:
                        if balances[address(msg.sender)].field_768:
                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'Account exception'
                                else:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if not balances[address(msg.sender)].field_256:
                                revert with 0, 'Account exception'
                            else:
                                if arg1 < 10000:
                                    revert with 0, 'The minimum is 10000'
                                else:
                                    if balances[address(msg.sender)].field_0 < arg1 + balances[address(msg.sender)].field_256:
                                        revert with 0, 'Balance is not enough'
                                    else:
                                        balances[address(msg.sender)].field_256 += arg1
                                        idx = 0
                                        while idx < lockeds.length:
                                            mem[0] = 4
                                            if lockeds[idx] != msg.sender:
                                                idx = idx + 1
                                                continue 
                                            else:
                                        lockeds.length++
                                        lockeds[lockeds.length] = msg.sender
                    else:
                        if balances[address(msg.sender)].field_768:
                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'Account exception'
                                else:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256:
                                revert with 0, 'Account exception'
                            else:
                                if arg1 < 10000:
                                    revert with 0, 'The minimum is 10000'
                                else:
                                    if balances[address(msg.sender)].field_0 < arg1 + balances[address(msg.sender)].field_256:
                                        revert with 0, 'Balance is not enough'
                                    else:
                                        balances[address(msg.sender)].field_256 += arg1
                                        idx = 0
                                        while idx < lockeds.length:
                                            mem[0] = 4
                                            if lockeds[idx] != msg.sender:
                                                idx = idx + 1
                                                continue 
                                            else:
                                        lockeds.length++
                                        lockeds[lockeds.length] = msg.sender
            else:
                if balances[address(msg.sender)].field_256 <= 0:
                    if balances[address(msg.sender)].field_768:
                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 <= 0:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256 <= 0:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 <= 0:
                                        if balances[address(msg.sender)].field_768:
                                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                        else:
                                            if not balances[address(msg.sender)].field_256:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_768:
                                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                        else:
                                            if not balances[address(msg.sender)].field_256:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                    else:
                        if balances[address(msg.sender)].field_256:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    if arg1 < 10000:
                                        revert with 0, 'The minimum is 10000'
                                    else:
                                        if balances[address(msg.sender)].field_0 < arg1 + balances[address(msg.sender)].field_256:
                                            revert with 0, 'Balance is not enough'
                                        else:
                                            balances[address(msg.sender)].field_256 += arg1
                                            idx = 0
                                            while idx < lockeds.length:
                                                mem[0] = 4
                                                if lockeds[idx] != msg.sender:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                            lockeds.length++
                                            lockeds[lockeds.length] = msg.sender
                        else:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    if arg1 < 10000:
                                        revert with 0, 'The minimum is 10000'
                                    else:
                                        if balances[address(msg.sender)].field_0 < arg1 + balances[address(msg.sender)].field_256:
                                            revert with 0, 'Balance is not enough'
                                        else:
                                            balances[address(msg.sender)].field_256 += arg1
                                            idx = 0
                                            while idx < lockeds.length:
                                                mem[0] = 4
                                                if lockeds[idx] != msg.sender:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                            lockeds.length++
                                            lockeds[lockeds.length] = msg.sender
                else:
                    balances[address(msg.sender)].field_256 = 0
                    balances[address(msg.sender)].field_768 = 0
                    if balances[address(msg.sender)].field_768:
                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 <= 0:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256 <= 0:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 <= 0:
                                        if balances[address(msg.sender)].field_768:
                                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                        else:
                                            if not balances[address(msg.sender)].field_256:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_768:
                                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                        else:
                                            if not balances[address(msg.sender)].field_256:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                    else:
                        if balances[address(msg.sender)].field_256:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    if arg1 < 10000:
                                        revert with 0, 'The minimum is 10000'
                                    else:
                                        if balances[address(msg.sender)].field_0 < arg1 + balances[address(msg.sender)].field_256:
                                            revert with 0, 'Balance is not enough'
                                        else:
                                            balances[address(msg.sender)].field_256 += arg1
                                            idx = 0
                                            while idx < lockeds.length:
                                                mem[0] = 4
                                                if lockeds[idx] != msg.sender:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                            lockeds.length++
                                            lockeds[lockeds.length] = msg.sender
                        else:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    if arg1 < 10000:
                                        revert with 0, 'The minimum is 10000'
                                    else:
                                        if balances[address(msg.sender)].field_0 < arg1 + balances[address(msg.sender)].field_256:
                                            revert with 0, 'Balance is not enough'
                                        else:
                                            balances[address(msg.sender)].field_256 += arg1
                                            idx = 0
                                            while idx < lockeds.length:
                                                mem[0] = 4
                                                if lockeds[idx] != msg.sender:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                            lockeds.length++
                                            lockeds[lockeds.length] = msg.sender
        else:
            if balances[address(msg.sender)].field_256 <= 0:
                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                    if balances[address(msg.sender)].field_768:
                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 <= 0:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256 <= 0:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 <= 0:
                                        if balances[address(msg.sender)].field_768:
                                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                        else:
                                            if not balances[address(msg.sender)].field_256:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_768:
                                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                        else:
                                            if not balances[address(msg.sender)].field_256:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                    else:
                        if balances[address(msg.sender)].field_256:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    if arg1 < 10000:
                                        revert with 0, 'The minimum is 10000'
                                    else:
                                        if balances[address(msg.sender)].field_0 < arg1 + balances[address(msg.sender)].field_256:
                                            revert with 0, 'Balance is not enough'
                                        else:
                                            balances[address(msg.sender)].field_256 += arg1
                                            idx = 0
                                            while idx < lockeds.length:
                                                mem[0] = 4
                                                if lockeds[idx] != msg.sender:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                            lockeds.length++
                                            lockeds[lockeds.length] = msg.sender
                        else:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    if arg1 < 10000:
                                        revert with 0, 'The minimum is 10000'
                                    else:
                                        if balances[address(msg.sender)].field_0 < arg1 + balances[address(msg.sender)].field_256:
                                            revert with 0, 'Balance is not enough'
                                        else:
                                            balances[address(msg.sender)].field_256 += arg1
                                            idx = 0
                                            while idx < lockeds.length:
                                                mem[0] = 4
                                                if lockeds[idx] != msg.sender:
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                            lockeds.length++
                                            lockeds[lockeds.length] = msg.sender
                else:
                    if balances[address(msg.sender)].field_256 <= 0:
                        if balances[address(msg.sender)].field_768:
                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 <= 0:
                                        if balances[address(msg.sender)].field_768:
                                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                        else:
                                            if not balances[address(msg.sender)].field_256:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_768:
                                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                        else:
                                            if not balances[address(msg.sender)].field_256:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 <= 0:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        if balances[address(msg.sender)].field_768:
                                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                        else:
                                            if not balances[address(msg.sender)].field_256:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 <= 0:
                                            if balances[address(msg.sender)].field_768:
                                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            if balances[address(msg.sender)].field_256 > 0:
                                                                revert with 0, 'Account exception'
                                                            else:
                                                                revert with 0, 'Account exception'
                                            else:
                                                if not balances[address(msg.sender)].field_256:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_768:
                                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            if balances[address(msg.sender)].field_256 > 0:
                                                                revert with 0, 'Account exception'
                                                            else:
                                                                revert with 0, 'Account exception'
                                            else:
                                                if not balances[address(msg.sender)].field_256:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        if arg1 < 10000:
                                            revert with 0, 'The minimum is 10000'
                                        else:
                                            if balances[address(msg.sender)].field_0 < arg1 + balances[address(msg.sender)].field_256:
                                                revert with 0, 'Balance is not enough'
                                            else:
                                                balances[address(msg.sender)].field_256 += arg1
                                                idx = 0
                                                while idx < lockeds.length:
                                                    mem[0] = 4
                                                    if lockeds[idx] != msg.sender:
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                lockeds.length++
                                                lockeds[lockeds.length] = msg.sender
                            else:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        if arg1 < 10000:
                                            revert with 0, 'The minimum is 10000'
                                        else:
                                            if balances[address(msg.sender)].field_0 < arg1 + balances[address(msg.sender)].field_256:
                                                revert with 0, 'Balance is not enough'
                                            else:
                                                balances[address(msg.sender)].field_256 += arg1
                                                idx = 0
                                                while idx < lockeds.length:
                                                    mem[0] = 4
                                                    if lockeds[idx] != msg.sender:
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                lockeds.length++
                                                lockeds[lockeds.length] = msg.sender
                    else:
                        balances[address(msg.sender)].field_256 = 0
                        balances[address(msg.sender)].field_768 = 0
                        if balances[address(msg.sender)].field_768:
                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 <= 0:
                                        if balances[address(msg.sender)].field_768:
                                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                        else:
                                            if not balances[address(msg.sender)].field_256:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_768:
                                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                        else:
                                            if not balances[address(msg.sender)].field_256:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 <= 0:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        if balances[address(msg.sender)].field_768:
                                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                        else:
                                            if not balances[address(msg.sender)].field_256:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 <= 0:
                                            if balances[address(msg.sender)].field_768:
                                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            if balances[address(msg.sender)].field_256 > 0:
                                                                revert with 0, 'Account exception'
                                                            else:
                                                                revert with 0, 'Account exception'
                                            else:
                                                if not balances[address(msg.sender)].field_256:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_768:
                                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if balances[address(msg.sender)].field_256 > 0:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                            revert with 0, 'Account exception'
                                                        else:
                                                            if balances[address(msg.sender)].field_256 > 0:
                                                                revert with 0, 'Account exception'
                                                            else:
                                                                revert with 0, 'Account exception'
                                            else:
                                                if not balances[address(msg.sender)].field_256:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        if arg1 < 10000:
                                            revert with 0, 'The minimum is 10000'
                                        else:
                                            if balances[address(msg.sender)].field_0 < arg1 + balances[address(msg.sender)].field_256:
                                                revert with 0, 'Balance is not enough'
                                            else:
                                                balances[address(msg.sender)].field_256 += arg1
                                                idx = 0
                                                while idx < lockeds.length:
                                                    mem[0] = 4
                                                    if lockeds[idx] != msg.sender:
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                lockeds.length++
                                                lockeds[lockeds.length] = msg.sender
                            else:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        if arg1 < 10000:
                                            revert with 0, 'The minimum is 10000'
                                        else:
                                            if balances[address(msg.sender)].field_0 < arg1 + balances[address(msg.sender)].field_256:
                                                revert with 0, 'Balance is not enough'
                                            else:
                                                balances[address(msg.sender)].field_256 += arg1
                                                idx = 0
                                                while idx < lockeds.length:
                                                    mem[0] = 4
                                                    if lockeds[idx] != msg.sender:
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                lockeds.length++
                                                lockeds[lockeds.length] = msg.sender
            else:
                if balances[address(msg.sender)].field_768:
                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256 <= 0:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                    else:
                        if balances[address(msg.sender)].field_256 <= 0:
                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 <= 0:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_768:
                                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    if balances[address(msg.sender)].field_256 > 0:
                                                        revert with 0, 'Account exception'
                                                    else:
                                                        revert with 0, 'Account exception'
                                    else:
                                        if not balances[address(msg.sender)].field_256:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                else:
                    if balances[address(msg.sender)].field_256:
                        if balances[address(msg.sender)].field_768:
                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'Account exception'
                                else:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if not balances[address(msg.sender)].field_256:
                                revert with 0, 'Account exception'
                            else:
                                if arg1 < 10000:
                                    revert with 0, 'The minimum is 10000'
                                else:
                                    if balances[address(msg.sender)].field_0 < arg1 + balances[address(msg.sender)].field_256:
                                        revert with 0, 'Balance is not enough'
                                    else:
                                        balances[address(msg.sender)].field_256 += arg1
                                        idx = 0
                                        while idx < lockeds.length:
                                            mem[0] = 4
                                            if lockeds[idx] != msg.sender:
                                                idx = idx + 1
                                                continue 
                                            else:
                                        lockeds.length++
                                        lockeds[lockeds.length] = msg.sender
                    else:
                        if balances[address(msg.sender)].field_768:
                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'Account exception'
                                else:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256:
                                revert with 0, 'Account exception'
                            else:
                                if arg1 < 10000:
                                    revert with 0, 'The minimum is 10000'
                                else:
                                    if balances[address(msg.sender)].field_0 < arg1 + balances[address(msg.sender)].field_256:
                                        revert with 0, 'Balance is not enough'
                                    else:
                                        balances[address(msg.sender)].field_256 += arg1
                                        idx = 0
                                        while idx < lockeds.length:
                                            mem[0] = 4
                                            if lockeds[idx] != msg.sender:
                                                idx = idx + 1
                                                continue 
                                            else:
                                        lockeds.length++
                                        lockeds[lockeds.length] = msg.sender
    else:
        if balances[address(msg.sender)].field_256:
            if balances[address(msg.sender)].field_768:
                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                        if balances[address(msg.sender)].field_768:
                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'Account exception'
                                else:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if not balances[address(msg.sender)].field_256:
                                revert with 0, 'Account exception'
                            else:
                                revert with 0, 'Account exception'
                    else:
                        if balances[address(msg.sender)].field_256 <= 0:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                else:
                    if balances[address(msg.sender)].field_256 <= 0:
                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256 <= 0:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                    else:
                        if balances[address(msg.sender)].field_768:
                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'Account exception'
                                else:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if not balances[address(msg.sender)].field_256:
                                revert with 0, 'Account exception'
                            else:
                                revert with 0, 'Account exception'
            else:
                if balances[address(msg.sender)].field_256:
                    if balances[address(msg.sender)].field_768:
                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256 > 0:
                                revert with 0, 'Account exception'
                            else:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                    else:
                        if not balances[address(msg.sender)].field_256:
                            revert with 0, 'Account exception'
                        else:
                            if arg1 < 10000:
                                revert with 0, 'The minimum is 10000'
                            else:
                                if balances[address(msg.sender)].field_0 < arg1 + balances[address(msg.sender)].field_256:
                                    revert with 0, 'Balance is not enough'
                                else:
                                    balances[address(msg.sender)].field_256 += arg1
                                    idx = 0
                                    while idx < lockeds.length:
                                        mem[0] = 4
                                        if lockeds[idx] != msg.sender:
                                            idx = idx + 1
                                            continue 
                                        else:
                                    lockeds.length++
                                    lockeds[lockeds.length] = msg.sender
                else:
                    if balances[address(msg.sender)].field_768:
                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256 > 0:
                                revert with 0, 'Account exception'
                            else:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                    else:
                        if balances[address(msg.sender)].field_256:
                            revert with 0, 'Account exception'
                        else:
                            if arg1 < 10000:
                                revert with 0, 'The minimum is 10000'
                            else:
                                if balances[address(msg.sender)].field_0 < arg1 + balances[address(msg.sender)].field_256:
                                    revert with 0, 'Balance is not enough'
                                else:
                                    balances[address(msg.sender)].field_256 += arg1
                                    idx = 0
                                    while idx < lockeds.length:
                                        mem[0] = 4
                                        if lockeds[idx] != msg.sender:
                                            idx = idx + 1
                                            continue 
                                        else:
                                    lockeds.length++
                                    lockeds[lockeds.length] = msg.sender
        else:
            if balances[address(msg.sender)].field_768:
                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                        if balances[address(msg.sender)].field_768:
                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'Account exception'
                                else:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if not balances[address(msg.sender)].field_256:
                                revert with 0, 'Account exception'
                            else:
                                revert with 0, 'Account exception'
                    else:
                        if balances[address(msg.sender)].field_256 <= 0:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                else:
                    if balances[address(msg.sender)].field_256 <= 0:
                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                            if balances[address(msg.sender)].field_768:
                                if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                            else:
                                if not balances[address(msg.sender)].field_256:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256 <= 0:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_768:
                                    if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                        if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                            revert with 0, 'Account exception'
                                        else:
                                            if balances[address(msg.sender)].field_256 > 0:
                                                revert with 0, 'Account exception'
                                            else:
                                                revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                                revert with 0, 'Account exception'
                                            else:
                                                if balances[address(msg.sender)].field_256 > 0:
                                                    revert with 0, 'Account exception'
                                                else:
                                                    revert with 0, 'Account exception'
                                else:
                                    if not balances[address(msg.sender)].field_256:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                    else:
                        if balances[address(msg.sender)].field_768:
                            if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'Account exception'
                                else:
                                    if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                        revert with 0, 'Account exception'
                                    else:
                                        if balances[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'Account exception'
                                        else:
                                            revert with 0, 'Account exception'
                        else:
                            if not balances[address(msg.sender)].field_256:
                                revert with 0, 'Account exception'
                            else:
                                revert with 0, 'Account exception'
            else:
                if balances[address(msg.sender)].field_256:
                    if balances[address(msg.sender)].field_768:
                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256 > 0:
                                revert with 0, 'Account exception'
                            else:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                    else:
                        if not balances[address(msg.sender)].field_256:
                            revert with 0, 'Account exception'
                        else:
                            if arg1 < 10000:
                                revert with 0, 'The minimum is 10000'
                            else:
                                if balances[address(msg.sender)].field_0 < arg1 + balances[address(msg.sender)].field_256:
                                    revert with 0, 'Balance is not enough'
                                else:
                                    balances[address(msg.sender)].field_256 += arg1
                                    idx = 0
                                    while idx < lockeds.length:
                                        mem[0] = 4
                                        if lockeds[idx] != msg.sender:
                                            idx = idx + 1
                                            continue 
                                        else:
                                    lockeds.length++
                                    lockeds[lockeds.length] = msg.sender
                else:
                    if balances[address(msg.sender)].field_768:
                        if block.timestamp >= balances[address(msg.sender)].field_768 + 600:
                            if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                revert with 0, 'Account exception'
                            else:
                                if balances[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'Account exception'
                                else:
                                    revert with 0, 'Account exception'
                        else:
                            if balances[address(msg.sender)].field_256 > 0:
                                revert with 0, 'Account exception'
                            else:
                                if block.timestamp < balances[address(msg.sender)].field_768 + 600:
                                    revert with 0, 'Account exception'
                                else:
                                    if balances[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'Account exception'
                                    else:
                                        revert with 0, 'Account exception'
                    else:
                        if balances[address(msg.sender)].field_256:
                            revert with 0, 'Account exception'
                        else:
                            if arg1 < 10000:
                                revert with 0, 'The minimum is 10000'
                            else:
                                if balances[address(msg.sender)].field_0 < arg1 + balances[address(msg.sender)].field_256:
                                    revert with 0, 'Balance is not enough'
                                else:
                                    balances[address(msg.sender)].field_256 += arg1
                                    idx = 0
                                    while idx < lockeds.length:
                                        mem[0] = 4
                                        if lockeds[idx] != msg.sender:
                                            idx = idx + 1
                                            continue 
                                        else:
                                    lockeds.length++
                                    lockeds[lockeds.length] = msg.sender
}



}

contract main {




// =====================  Runtime code  =====================


const decimals = 8

const standard = Array(len=40, data='ERC20 Lescovex ISC Income Smart ', 'Contract', Mask(64, -256, 'ERC20 Lescovex ISC Income Smart ', 'Contract') << 256)


address owner;
mapping of uint256 balances;
mapping of uint256 allowance;
mapping of struct stor3;
uint256 holdMax;
uint256 totalSupply;
uint256 holdTime;
array of uint256 name;
array of uint256 symbol;
uint256 contractBalance;
address stor10;

function name() {
    return name[0 len name.length]
}

function holdTime() {
    return holdTime
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function contractBalance() {
    return contractBalance
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

function holdMax() {
    return holdMax
}

function _fallback() payable {
    revert
}

function setHoldMax(uint256 arg1) {
    require msg.sender == owner
    holdMax = arg1
}

function setHoldTime(uint256 arg1) {
    require msg.sender == owner
    holdTime = arg1
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

function deposit() payable {
    require msg.sender == owner
    contractBalance = eth.balance(stor10)
    emit LogDeposit(msg.sender, msg.value);
    return 1
}

function withdraw(uint256 arg1) {
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit LogWithdrawal(msg.sender, arg1);
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

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function holdedOf(address arg1) {
    if not stor3[address(arg1)].field_512:
        return 0
    require 0 < stor3[address(arg1)].field_256
    if stor3[address(arg1)][1].field_0 >= block.timestamp - holdTime:
        return 0
    s = stor3[address(arg1)].field_513
    t = 0
    while s > t:
        mem[32] = 3
        require s < stor3[address(arg1)].field_256
        mem[0] = sha3(address(arg1), 3) + 1
        if stor3[address(arg1)][s + 1].field_0 >= block.timestamp - holdTime:
            s = s + t / 2
            t = t
            continue 
        s = stor3[address(arg1)].field_512 + s / 2
        t = s
        continue 
    if t < stor3[address(arg1)].field_0:
        return stor3[address(arg1)][t].field_0
    revert
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balances[address(msg.sender)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    stor3[address(msg.sender)].field_0 = 0
    idx = 0
    while stor3[address(msg.sender)].field_0 > idx:
        stor3[address(msg.sender)][idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3[address(msg.sender)].field_256 = 0
    idx = 0
    while stor3[address(msg.sender)].field_256 > idx:
        stor3[address(msg.sender)][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    stor3[address(msg.sender)].field_512 = 0
    require stor3[address(msg.sender)].field_512 < holdMax
    if not stor3[address(msg.sender)].field_512:
        stor3[address(msg.sender)].field_0++
        stor3[address(msg.sender)][stor3[address(msg.sender)].field_0].field_0 = balances[address(msg.sender)]
    else:
        require stor3[address(msg.sender)].field_512 - 1 < stor3[address(msg.sender)].field_0
        stor3[address(msg.sender)].field_0++
        stor3[address(msg.sender)][stor3[address(msg.sender)].field_0].field_0 = balances[address(msg.sender)] + stor3[address(msg.sender)][stor3[address(msg.sender)].field_512].field_0
    stor3[address(msg.sender)].field_256++
    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor3', 3))) + stor3[address(msg.sender)].field_256].field_0 = block.timestamp
    stor3[address(msg.sender)].field_512++
    require stor3[address(arg1)].field_512 < holdMax
    if not stor3[address(arg1)].field_512:
        stor3[address(arg1)].field_0++
        stor3[address(arg1)][stor3[address(arg1)].field_0].field_0 = arg2
    else:
        require stor3[address(arg1)].field_512 - 1 < stor3[address(arg1)].field_0
        stor3[address(arg1)].field_0++
        stor3[address(arg1)][stor3[address(arg1)].field_0].field_0 = arg2 + stor3[address(arg1)][stor3[address(arg1)].field_512].field_0
    stor3[address(arg1)].field_256++
    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + stor3[address(arg1)].field_256].field_0 = block.timestamp
    stor3[address(arg1)].field_512++
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balances[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    stor3[address(arg1)].field_0 = 0
    idx = 0
    while stor3[address(arg1)].field_0 > idx:
        stor3[address(arg1)][idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3[address(arg1)].field_256 = 0
    idx = 0
    while stor3[address(arg1)].field_256 > idx:
        stor3[address(arg1)][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    stor3[address(arg1)].field_512 = 0
    require stor3[address(arg1)].field_512 < holdMax
    if not stor3[address(arg1)].field_512:
        stor3[address(arg1)].field_0++
        stor3[address(arg1)][stor3[address(arg1)].field_0].field_0 = balances[address(arg1)]
    else:
        require stor3[address(arg1)].field_512 - 1 < stor3[address(arg1)].field_0
        stor3[address(arg1)].field_0++
        stor3[address(arg1)][stor3[address(arg1)].field_0].field_0 = balances[address(arg1)] + stor3[address(arg1)][stor3[address(arg1)].field_512].field_0
    stor3[address(arg1)].field_256++
    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + stor3[address(arg1)].field_256].field_0 = block.timestamp
    stor3[address(arg1)].field_512++
    require stor3[address(arg2)].field_512 < holdMax
    if not stor3[address(arg2)].field_512:
        stor3[address(arg2)].field_0++
        stor3[address(arg2)][stor3[address(arg2)].field_0].field_0 = arg3
    else:
        require stor3[address(arg2)].field_512 - 1 < stor3[address(arg2)].field_0
        stor3[address(arg2)].field_0++
        stor3[address(arg2)][stor3[address(arg2)].field_0].field_0 = arg3 + stor3[address(arg2)][stor3[address(arg2)].field_512].field_0
    stor3[address(arg2)].field_256++
    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor3', 3))) + stor3[address(arg2)].field_256].field_0 = block.timestamp
    stor3[address(arg2)].field_512++
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdrawReward() {
    if not stor3[address(msg.sender)].field_512:
        require totalSupply
        require 0 / totalSupply > 0
        emit LogWithdrawal(msg.sender, 0 / totalSupply);
        stor3[address(msg.sender)].field_0 = 0
        idx = 0
        while stor3[address(msg.sender)].field_0 > idx:
            stor3[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
        stor3[address(msg.sender)].field_256 = 0
        idx = 0
        while stor3[address(msg.sender)].field_256 > idx:
            stor3[address(msg.sender)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
        stor3[address(msg.sender)].field_512 = 0
        require stor3[address(msg.sender)].field_512 < holdMax
        if not stor3[address(msg.sender)].field_512:
            stor3[address(msg.sender)].field_0++
            stor3[address(msg.sender)][stor3[address(msg.sender)].field_0].field_0 = balances[address(msg.sender)]
        else:
            require stor3[address(msg.sender)].field_512 - 1 < stor3[address(msg.sender)].field_0
            stor3[address(msg.sender)].field_0++
            stor3[address(msg.sender)][stor3[address(msg.sender)].field_0].field_0 = balances[address(msg.sender)] + stor3[address(msg.sender)][stor3[address(msg.sender)].field_512].field_0
        stor3[address(msg.sender)].field_256++
        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor3', 3))) + stor3[address(msg.sender)].field_256].field_0 = block.timestamp
        stor3[address(msg.sender)].field_512++
        call msg.sender with:
           value 0 / totalSupply wei
             gas 2300 * is_zero(value) wei
    else:
        require 0 < stor3[address(msg.sender)].field_256
        if stor3[address(msg.sender)][1].field_0 >= block.timestamp - holdTime:
            require totalSupply
            require 0 / totalSupply > 0
            emit LogWithdrawal(msg.sender, 0 / totalSupply);
            stor3[address(msg.sender)].field_0 = 0
            idx = 0
            while stor3[address(msg.sender)].field_0 > idx:
                stor3[address(msg.sender)][idx].field_0 = 0
                idx = idx + 1
                continue 
            stor3[address(msg.sender)].field_256 = 0
            idx = 0
            while stor3[address(msg.sender)].field_256 > idx:
                stor3[address(msg.sender)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
            stor3[address(msg.sender)].field_512 = 0
            require stor3[address(msg.sender)].field_512 < holdMax
            if not stor3[address(msg.sender)].field_512:
                stor3[address(msg.sender)].field_0++
                stor3[address(msg.sender)][stor3[address(msg.sender)].field_0].field_0 = balances[address(msg.sender)]
            else:
                require stor3[address(msg.sender)].field_512 - 1 < stor3[address(msg.sender)].field_0
                stor3[address(msg.sender)].field_0++
                stor3[address(msg.sender)][stor3[address(msg.sender)].field_0].field_0 = balances[address(msg.sender)] + stor3[address(msg.sender)][stor3[address(msg.sender)].field_512].field_0
            stor3[address(msg.sender)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor3', 3))) + stor3[address(msg.sender)].field_256].field_0 = block.timestamp
            stor3[address(msg.sender)].field_512++
            call msg.sender with:
               value 0 / totalSupply wei
                 gas 2300 * is_zero(value) wei
        else:
            s = stor3[address(msg.sender)].field_513
            t = 0
            while s > t:
                mem[32] = 3
                require s < stor3[address(msg.sender)].field_256
                mem[0] = sha3(address(msg.sender), 3) + 1
                if stor3[address(msg.sender)][s + 1].field_0 >= block.timestamp - holdTime:
                    s = s + t / 2
                    t = t
                    continue 
                s = stor3[address(msg.sender)].field_512 + s / 2
                t = s
                continue 
            require t < stor3[address(msg.sender)].field_0
            require totalSupply
            require stor3[address(msg.sender)][t].field_0 * contractBalance / totalSupply > 0
            emit LogWithdrawal(msg.sender, stor3[address(msg.sender)][t].field_0 * contractBalance / totalSupply);
            stor3[address(msg.sender)].field_0 = 0
            idx = 0
            while stor3[address(msg.sender)].field_0 > idx:
                stor3[address(msg.sender)][idx].field_0 = 0
                idx = idx + 1
                continue 
            stor3[address(msg.sender)].field_256 = 0
            idx = 0
            while stor3[address(msg.sender)].field_256 > idx:
                stor3[address(msg.sender)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
            stor3[address(msg.sender)].field_512 = 0
            require stor3[address(msg.sender)].field_512 < holdMax
            if not stor3[address(msg.sender)].field_512:
                stor3[address(msg.sender)].field_0++
                stor3[address(msg.sender)][stor3[address(msg.sender)].field_0].field_0 = balances[address(msg.sender)]
            else:
                require stor3[address(msg.sender)].field_512 - 1 < stor3[address(msg.sender)].field_0
                stor3[address(msg.sender)].field_0++
                stor3[address(msg.sender)][stor3[address(msg.sender)].field_0].field_0 = balances[address(msg.sender)] + stor3[address(msg.sender)][stor3[address(msg.sender)].field_512].field_0
            stor3[address(msg.sender)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor3', 3))) + stor3[address(msg.sender)].field_256].field_0 = block.timestamp
            stor3[address(msg.sender)].field_512++
            call msg.sender with:
               value stor3[address(msg.sender)][t].field_0 * contractBalance / totalSupply wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

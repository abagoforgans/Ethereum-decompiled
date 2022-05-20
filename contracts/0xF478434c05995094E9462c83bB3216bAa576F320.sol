contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balances;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint256 allowance;

function sub_043ef80f(?) {
    return bool(stor8[arg1])
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor7[arg1])
}

function sub_b4907ca6(?) {
    return bool(stor8[address(arg1)])
}

function sub_bd805c36(?) {
    require arg2 < stor5[arg1].field_0
    require arg3 < 3
    return stor[arg3 + (3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5))].field_0
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function sub_786a6eb3(?) {
    require msg.sender == owner
    stor8[address(arg1)] = uint8(arg2)
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor7[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function sub_d3030578(?) {
    idx = 0
    s = 0
    while idx < stor5[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        idx = idx + 1
        s = stor5[address(arg1)][idx].field_0 + s
        continue 
    return (stor[(3 * stor5[address(arg1)].field_0) + _7] * stor5[address(arg1)].field_0)
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 + balances[address(arg1)] >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    emit Transfer(arg2, 0, owner);
    emit Transfer(arg2, owner, arg1);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[msg.sender][address(arg1)] = arg2
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.approvalFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_cc71137a(?) {
    s = 0
    t = 0
    u = 0
    v = 0
    w = 0
    w = 0
    w = 0
    idx = 0
    w = 0
    while idx < stor5[address(arg1)].field_0:
        require idx < stor5[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 5)
        if stor5[address(arg1)][idx].field_512 / 24 * 3600 <= block.timestamp / 24 * 3600:
            s = s
            t = t
            u = u
            v = v
            w = block.timestamp / 24 * 3600
            w = stor5[address(arg1)][idx].field_256 / 24 * 3600
            w = stor5[address(arg1)][idx].field_512 / 24 * 3600
            idx = idx + 1
            w = w
            continue 
        require idx < stor5[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 5)
        require (stor5[address(arg1)][idx].field_512 / 24 * 3600) - (stor5[address(arg1)][idx].field_256 / 24 * 3600)
        s = (stor5[address(arg1)][idx].field_512 / 24 * 3600 * stor5[address(arg1)][idx].field_0 / (stor5[address(arg1)][idx].field_512 / 24 * 3600) - (stor5[address(arg1)][idx].field_256 / 24 * 3600)) - (block.timestamp / 24 * 3600 * stor5[address(arg1)][idx].field_0 / (stor5[address(arg1)][idx].field_512 / 24 * 3600) - (stor5[address(arg1)][idx].field_256 / 24 * 3600))
        t = (stor5[address(arg1)][idx].field_512 / 24 * 3600) - (block.timestamp / 24 * 3600)
        u = stor5[address(arg1)][idx].field_0 / (stor5[address(arg1)][idx].field_512 / 24 * 3600) - (stor5[address(arg1)][idx].field_256 / 24 * 3600)
        v = (stor5[address(arg1)][idx].field_512 / 24 * 3600) - (stor5[address(arg1)][idx].field_256 / 24 * 3600)
        w = block.timestamp / 24 * 3600
        w = stor5[address(arg1)][idx].field_256 / 24 * 3600
        w = stor5[address(arg1)][idx].field_512 / 24 * 3600
        idx = idx + 1
        w = w + (stor5[address(arg1)][idx].field_512 / 24 * 3600 * stor5[address(arg1)][idx].field_0 / (stor5[address(arg1)][idx].field_512 / 24 * 3600) - (stor5[address(arg1)][idx].field_256 / 24 * 3600)) - (block.timestamp / 24 * 3600 * stor5[address(arg1)][idx].field_0 / (stor5[address(arg1)][idx].field_512 / 24 * 3600) - (stor5[address(arg1)][idx].field_256 / 24 * 3600))
        continue 
    return w
}

function balanceOf(address arg1) {
    s = 0
    t = 0
    u = 0
    v = 0
    w = 0
    w = 0
    w = 0
    idx = 0
    w = 0
    while idx < stor5[address(arg1)].field_0:
        require idx < stor5[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 5)
        if stor5[address(arg1)][idx].field_512 / 24 * 3600 <= block.timestamp / 24 * 3600:
            s = s
            t = t
            u = u
            v = v
            w = block.timestamp / 24 * 3600
            w = stor5[address(arg1)][idx].field_256 / 24 * 3600
            w = stor5[address(arg1)][idx].field_512 / 24 * 3600
            idx = idx + 1
            w = w
            continue 
        require idx < stor5[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 5)
        require (stor5[address(arg1)][idx].field_512 / 24 * 3600) - (stor5[address(arg1)][idx].field_256 / 24 * 3600)
        s = (stor5[address(arg1)][idx].field_512 / 24 * 3600 * stor5[address(arg1)][idx].field_0 / (stor5[address(arg1)][idx].field_512 / 24 * 3600) - (stor5[address(arg1)][idx].field_256 / 24 * 3600)) - (block.timestamp / 24 * 3600 * stor5[address(arg1)][idx].field_0 / (stor5[address(arg1)][idx].field_512 / 24 * 3600) - (stor5[address(arg1)][idx].field_256 / 24 * 3600))
        t = (stor5[address(arg1)][idx].field_512 / 24 * 3600) - (block.timestamp / 24 * 3600)
        u = stor5[address(arg1)][idx].field_0 / (stor5[address(arg1)][idx].field_512 / 24 * 3600) - (stor5[address(arg1)][idx].field_256 / 24 * 3600)
        v = (stor5[address(arg1)][idx].field_512 / 24 * 3600) - (stor5[address(arg1)][idx].field_256 / 24 * 3600)
        w = block.timestamp / 24 * 3600
        w = stor5[address(arg1)][idx].field_256 / 24 * 3600
        w = stor5[address(arg1)][idx].field_512 / 24 * 3600
        idx = idx + 1
        w = w + (stor5[address(arg1)][idx].field_512 / 24 * 3600 * stor5[address(arg1)][idx].field_0 / (stor5[address(arg1)][idx].field_512 / 24 * 3600) - (stor5[address(arg1)][idx].field_256 / 24 * 3600)) - (block.timestamp / 24 * 3600 * stor5[address(arg1)][idx].field_0 / (stor5[address(arg1)][idx].field_512 / 24 * 3600) - (stor5[address(arg1)][idx].field_256 / 24 * 3600))
        continue 
    return (balances[address(arg1)] - w)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg2
    s = 0
    t = 0
    u = 0
    v = 0
    w = 0
    w = 0
    w = 0
    idx = 0
    w = 0
    while idx < stor5[address(arg1)].field_0:
        require idx < stor5[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 5)
        if stor5[address(arg1)][idx].field_512 / 24 * 3600 <= block.timestamp / 24 * 3600:
            s = s
            t = t
            u = u
            v = v
            w = block.timestamp / 24 * 3600
            w = stor5[address(arg1)][idx].field_256 / 24 * 3600
            w = stor5[address(arg1)][idx].field_512 / 24 * 3600
            idx = idx + 1
            w = w
            continue 
        require idx < stor5[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 5)
        require (stor5[address(arg1)][idx].field_512 / 24 * 3600) - (stor5[address(arg1)][idx].field_256 / 24 * 3600)
        s = (stor5[address(arg1)][idx].field_512 / 24 * 3600 * stor5[address(arg1)][idx].field_0 / (stor5[address(arg1)][idx].field_512 / 24 * 3600) - (stor5[address(arg1)][idx].field_256 / 24 * 3600)) - (block.timestamp / 24 * 3600 * stor5[address(arg1)][idx].field_0 / (stor5[address(arg1)][idx].field_512 / 24 * 3600) - (stor5[address(arg1)][idx].field_256 / 24 * 3600))
        t = (stor5[address(arg1)][idx].field_512 / 24 * 3600) - (block.timestamp / 24 * 3600)
        u = stor5[address(arg1)][idx].field_0 / (stor5[address(arg1)][idx].field_512 / 24 * 3600) - (stor5[address(arg1)][idx].field_256 / 24 * 3600)
        v = (stor5[address(arg1)][idx].field_512 / 24 * 3600) - (stor5[address(arg1)][idx].field_256 / 24 * 3600)
        w = block.timestamp / 24 * 3600
        w = stor5[address(arg1)][idx].field_256 / 24 * 3600
        w = stor5[address(arg1)][idx].field_512 / 24 * 3600
        idx = idx + 1
        w = w + (stor5[address(arg1)][idx].field_512 / 24 * 3600 * stor5[address(arg1)][idx].field_0 / (stor5[address(arg1)][idx].field_512 / 24 * 3600) - (stor5[address(arg1)][idx].field_256 / 24 * 3600)) - (block.timestamp / 24 * 3600 * stor5[address(arg1)][idx].field_0 / (stor5[address(arg1)][idx].field_512 / 24 * 3600) - (stor5[address(arg1)][idx].field_256 / 24 * 3600))
        continue 
    require balances[address(arg1)] - w >= arg3
    require balances[address(arg2)] + arg3 > balances[address(arg2)]
    require not stor7[address(arg1)]
    if bool(stor8[address(arg1)]) != 1:
        mem[96] = arg3
        mem[128] = block.timestamp
        mem[160] = block.timestamp + (72 * 24 * 3600)
        stor5[address(arg2)].field_0++
        s = 3 * stor5[address(arg2)].field_0
        idx = 96
        while 192 > idx:
            stor5[address(arg2)][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (3 * stor5[address(arg2)].field_0) + 3
        while (3 * stor5[address(arg2)].field_0) + 3 > idx:
            stor5[address(arg2)][idx].field_0 = 0
            idx = idx + 1
            continue 
    if balances[address(arg2)] + balances[arg1] >= balances[arg1]:
        if arg3 <= balances[address(arg1)]:
            balances[address(arg1)] -= arg3
            if arg3 + balances[arg2] >= balances[arg2]:
                balances[address(arg2)] = arg3 + balances[arg2]
                emit Transfer(arg3, arg1, arg2);
                if balances[address(arg2)] + balances[arg1] >= balances[arg1]:
                    if balances[address(arg2)] + balances[arg1] == balances[address(arg2)] + balances[arg1]:
                        return 1
    revert
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    s = 0
    t = 0
    u = 0
    v = 0
    w = 0
    w = 0
    w = 0
    idx = 0
    w = 0
    while idx < stor5[address(msg.sender)].field_0:
        require idx < stor5[address(msg.sender)].field_0
        mem[0] = sha3(address(msg.sender), 5)
        if stor5[address(msg.sender)][idx].field_512 / 24 * 3600 <= block.timestamp / 24 * 3600:
            s = s
            t = t
            u = u
            v = v
            w = block.timestamp / 24 * 3600
            w = stor5[address(msg.sender)][idx].field_256 / 24 * 3600
            w = stor5[address(msg.sender)][idx].field_512 / 24 * 3600
            idx = idx + 1
            w = w
            continue 
        require idx < stor5[address(msg.sender)].field_0
        mem[0] = sha3(address(msg.sender), 5)
        require (stor5[address(msg.sender)][idx].field_512 / 24 * 3600) - (stor5[address(msg.sender)][idx].field_256 / 24 * 3600)
        s = (stor5[address(msg.sender)][idx].field_512 / 24 * 3600 * stor5[address(msg.sender)][idx].field_0 / (stor5[address(msg.sender)][idx].field_512 / 24 * 3600) - (stor5[address(msg.sender)][idx].field_256 / 24 * 3600)) - (block.timestamp / 24 * 3600 * stor5[address(msg.sender)][idx].field_0 / (stor5[address(msg.sender)][idx].field_512 / 24 * 3600) - (stor5[address(msg.sender)][idx].field_256 / 24 * 3600))
        t = (stor5[address(msg.sender)][idx].field_512 / 24 * 3600) - (block.timestamp / 24 * 3600)
        u = stor5[address(msg.sender)][idx].field_0 / (stor5[address(msg.sender)][idx].field_512 / 24 * 3600) - (stor5[address(msg.sender)][idx].field_256 / 24 * 3600)
        v = (stor5[address(msg.sender)][idx].field_512 / 24 * 3600) - (stor5[address(msg.sender)][idx].field_256 / 24 * 3600)
        w = block.timestamp / 24 * 3600
        w = stor5[address(msg.sender)][idx].field_256 / 24 * 3600
        w = stor5[address(msg.sender)][idx].field_512 / 24 * 3600
        idx = idx + 1
        w = w + (stor5[address(msg.sender)][idx].field_512 / 24 * 3600 * stor5[address(msg.sender)][idx].field_0 / (stor5[address(msg.sender)][idx].field_512 / 24 * 3600) - (stor5[address(msg.sender)][idx].field_256 / 24 * 3600)) - (block.timestamp / 24 * 3600 * stor5[address(msg.sender)][idx].field_0 / (stor5[address(msg.sender)][idx].field_512 / 24 * 3600) - (stor5[address(msg.sender)][idx].field_256 / 24 * 3600))
        continue 
    require balances[address(msg.sender)] - w >= arg2
    require balances[address(arg1)] + arg2 > balances[address(arg1)]
    require not stor7[address(msg.sender)]
    if bool(stor8[address(msg.sender)]) != 1:
        mem[96] = arg2
        mem[128] = block.timestamp
        mem[160] = block.timestamp + (72 * 24 * 3600)
        stor5[address(arg1)].field_0++
        s = 3 * stor5[address(arg1)].field_0
        idx = 96
        while 192 > idx:
            stor5[address(arg1)][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (3 * stor5[address(arg1)].field_0) + 3
        while (3 * stor5[address(arg1)].field_0) + 3 > idx:
            stor5[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    if balances[address(arg1)] + balances[msg.sender] >= balances[msg.sender]:
        if arg2 <= balances[address(msg.sender)]:
            balances[address(msg.sender)] -= arg2
            if arg2 + balances[arg1] >= balances[arg1]:
                balances[address(arg1)] = arg2 + balances[arg1]
                emit Transfer(arg2, msg.sender, arg1);
                if balances[address(arg1)] + balances[msg.sender] >= balances[msg.sender]:
                    if balances[address(arg1)] + balances[msg.sender] == balances[address(arg1)] + balances[msg.sender]:
                        return 1
    revert
}

function transferAndCall(address arg1, uint256 arg2, bytes arg3) {
    require arg1
    s = 0
    t = 0
    u = 0
    v = 0
    w = 0
    w = 0
    w = 0
    idx = 0
    w = 0
    while idx < stor5[address(msg.sender)].field_0:
        require idx < stor5[address(msg.sender)].field_0
        mem[0] = sha3(address(msg.sender), 5)
        if stor5[address(msg.sender)][idx].field_512 / 24 * 3600 <= block.timestamp / 24 * 3600:
            s = s
            t = t
            u = u
            v = v
            w = block.timestamp / 24 * 3600
            w = stor5[address(msg.sender)][idx].field_256 / 24 * 3600
            w = stor5[address(msg.sender)][idx].field_512 / 24 * 3600
            idx = idx + 1
            w = w
            continue 
        require idx < stor5[address(msg.sender)].field_0
        mem[0] = sha3(address(msg.sender), 5)
        require (stor5[address(msg.sender)][idx].field_512 / 24 * 3600) - (stor5[address(msg.sender)][idx].field_256 / 24 * 3600)
        s = (stor5[address(msg.sender)][idx].field_512 / 24 * 3600 * stor5[address(msg.sender)][idx].field_0 / (stor5[address(msg.sender)][idx].field_512 / 24 * 3600) - (stor5[address(msg.sender)][idx].field_256 / 24 * 3600)) - (block.timestamp / 24 * 3600 * stor5[address(msg.sender)][idx].field_0 / (stor5[address(msg.sender)][idx].field_512 / 24 * 3600) - (stor5[address(msg.sender)][idx].field_256 / 24 * 3600))
        t = (stor5[address(msg.sender)][idx].field_512 / 24 * 3600) - (block.timestamp / 24 * 3600)
        u = stor5[address(msg.sender)][idx].field_0 / (stor5[address(msg.sender)][idx].field_512 / 24 * 3600) - (stor5[address(msg.sender)][idx].field_256 / 24 * 3600)
        v = (stor5[address(msg.sender)][idx].field_512 / 24 * 3600) - (stor5[address(msg.sender)][idx].field_256 / 24 * 3600)
        w = block.timestamp / 24 * 3600
        w = stor5[address(msg.sender)][idx].field_256 / 24 * 3600
        w = stor5[address(msg.sender)][idx].field_512 / 24 * 3600
        idx = idx + 1
        w = w + (stor5[address(msg.sender)][idx].field_512 / 24 * 3600 * stor5[address(msg.sender)][idx].field_0 / (stor5[address(msg.sender)][idx].field_512 / 24 * 3600) - (stor5[address(msg.sender)][idx].field_256 / 24 * 3600)) - (block.timestamp / 24 * 3600 * stor5[address(msg.sender)][idx].field_0 / (stor5[address(msg.sender)][idx].field_512 / 24 * 3600) - (stor5[address(msg.sender)][idx].field_256 / 24 * 3600))
        continue 
    require balances[address(msg.sender)] - w >= arg2
    require balances[address(arg1)] + arg2 > balances[address(arg1)]
    require not stor7[address(msg.sender)]
    if bool(stor8[address(msg.sender)]) != 1:
        mem[ceil32(arg3.length) + 128] = arg2
        mem[ceil32(arg3.length) + 160] = block.timestamp
        mem[ceil32(arg3.length) + 192] = block.timestamp + (72 * 24 * 3600)
        stor5[address(arg1)].field_0++
        s = 3 * stor5[address(arg1)].field_0
        idx = ceil32(arg3.length) + 128
        while ceil32(arg3.length) + 224 > idx:
            stor5[address(arg1)][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (3 * stor5[address(arg1)].field_0) + 3
        while (3 * stor5[address(arg1)].field_0) + 3 > idx:
            stor5[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    require balances[address(arg1)] + balances[msg.sender] >= balances[msg.sender]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    require balances[address(arg1)] + balances[msg.sender] >= balances[msg.sender]
    require balances[address(arg1)] + balances[msg.sender] == balances[address(arg1)] + balances[msg.sender]
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    return 1
}



}

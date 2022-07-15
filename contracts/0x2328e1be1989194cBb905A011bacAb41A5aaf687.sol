contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
mapping of uint256 stor5;
mapping of uint8 stor6;
address stor7;

function _fallback() {
    stor7 = 0x8abf67f3d00091fa2c6d7abbe0de891311111111
    bool(stor1.length) = 0
    stor1.length.field_1 = 10
    stor1.length.field_8 = 'TestCoinFC' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'TCFC' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 4
    stor0 = 600 * 10^6 * 10^stor3
    stor6[stor7] = 1
    if not stor4[stor7][0].field_0:
        stor4[stor7].field_256++
        if not stor4[stor7].field_256 <= stor4[stor7].field_256 + 1:
            idx = stor4[stor7].field_256 + 1
            while stor4[stor7].field_256 > idx:
                stor4[stor7][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        stor[stor4[stor7].field_256 + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor4', 4)))].field_0 = 0
        stor4[stor7][0].field_256 = stor4[stor7].field_256
    require stor4[stor7][0].field_0 + stor0 >= stor4[stor7][0].field_0
    stor4[stor7][0].field_0 += stor0
    require stor5[stor7] + stor0 >= stor5[stor7]
    stor5[stor7] += stor0
    return code.data[1462 len 10458]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint8 stor6;
address owner;
mapping of uint256 allowed;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function stampingWhitelist(address arg1) {
    return bool(stor6[arg1])
}

function decimals() {
    return decimals
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
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
    return allowed[address(arg1)][address(arg2)]
}

function balanceOfToken(address arg1, uint256 arg2) {
    return balanceOfToken[address(arg1)][arg2].field_0
}

function _fallback() payable {
    revert
}

function addToWhitelist(address arg1) {
    require msg.sender == owner
    stor6[address(arg1)] = 1
}

function removeFromWhitelist(address arg1) {
    require msg.sender == owner
    stor6[address(arg1)] = 0
}

function approve(address arg1, uint256 arg2) {
    require not allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowed[address(msg.sender)][address(arg1)] + arg2 >= allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowed[address(msg.sender)][address(arg1)]:
        allowed[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowed[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function tokensOwned(address arg1) {
    if not balanceOfToken[address(arg1)].field_256:
        mem[(32 * balanceOfToken[address(arg1)].field_256) + 160] = 32
        mem[(32 * balanceOfToken[address(arg1)].field_256) + 192] = balanceOfToken[address(arg1)].field_256
        mem[(32 * balanceOfToken[address(arg1)].field_256) + 224 len floor32(balanceOfToken[address(arg1)].field_256)] = mem[160 len floor32(balanceOfToken[address(arg1)].field_256)]
        return memory
          from (32 * balanceOfToken[address(arg1)].field_256) + 160
           len (96 * balanceOfToken[address(arg1)].field_256) + 64
    mem[160] = balanceOfToken[address(arg1)][1].field_0
    idx = 160
    s = 0
    while (32 * balanceOfToken[address(arg1)].field_256) + 128 > idx:
        mem[idx + 32] = balanceOfToken[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * balanceOfToken[address(arg1)].field_256) + 224 len floor32(balanceOfToken[address(arg1)].field_256)] = mem[160 len floor32(balanceOfToken[address(arg1)].field_256)]
    return Array(len=balanceOfToken[address(arg1)].field_256, data=mem[160 len floor32(balanceOfToken[address(arg1)].field_256)], mem[(32 * balanceOfToken[address(arg1)].field_256) + floor32(balanceOfToken[address(arg1)].field_256) + 224 len (32 * balanceOfToken[address(arg1)].field_256) - floor32(balanceOfToken[address(arg1)].field_256)]), 
}

function transferToken(address arg1, uint256 arg2, uint256 arg3) {
    require arg1
    require arg3 <= balanceOfToken[address(msg.sender)][arg2].field_0
    require arg3 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg3
    require arg3 <= balanceOfToken[address(msg.sender)][arg2].field_0
    balanceOfToken[address(msg.sender)][arg2].field_0 -= arg3
    if not balanceOfToken[address(msg.sender)][arg2].field_0:
        require balanceOfToken[address(msg.sender)].field_256 - 1 < balanceOfToken[address(msg.sender)].field_256
        require balanceOfToken[address(msg.sender)][arg2].field_256 < balanceOfToken[address(msg.sender)].field_256
        stor[balanceOfToken[address(msg.sender)][arg2].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOfToken', 4)))].field_0 = stor[balanceOfToken[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOfToken', 4)))].field_0
        balanceOfToken[address(msg.sender)][stor[balanceOfToken[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOfToken', 4)))].field_0].field_256 = balanceOfToken[address(msg.sender)][arg2].field_256
        balanceOfToken[address(msg.sender)].field_256--
        if not balanceOfToken[address(msg.sender)].field_256 <= balanceOfToken[address(msg.sender)].field_256 - 1:
            idx = balanceOfToken[address(msg.sender)].field_256 - 1
            while balanceOfToken[address(msg.sender)].field_256 > idx:
                balanceOfToken[address(msg.sender)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        balanceOfToken[address(msg.sender)][arg2].field_0 = 0
        balanceOfToken[address(msg.sender)][arg2].field_256 = 0
    if not balanceOfToken[address(arg1)][arg2].field_0:
        balanceOfToken[address(arg1)].field_256++
        if not balanceOfToken[address(arg1)].field_256 <= balanceOfToken[address(arg1)].field_256 + 1:
            idx = balanceOfToken[address(arg1)].field_256 + 1
            while balanceOfToken[address(arg1)].field_256 > idx:
                balanceOfToken[address(arg1)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        stor[balanceOfToken[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOfToken', 4)))].field_0 = arg2
        balanceOfToken[address(arg1)][arg2].field_256 = balanceOfToken[address(arg1)].field_256
    require balanceOfToken[address(arg1)][arg2].field_0 + arg3 >= balanceOfToken[address(arg1)][arg2].field_0
    balanceOfToken[address(arg1)][arg2].field_0 += arg3
    require balanceOf[address(arg1)] + arg3 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg3
    emit TokenTransfer(arg2, arg3, msg.sender, arg1);
    emit Transfer(arg3, msg.sender, arg1);
    return 1
}

function mintTransfer(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require stor6[address(msg.sender)]
    require arg1
    require arg4 <= balanceOfToken[address(msg.sender)][arg2].field_0
    require arg4 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg4
    require arg4 <= balanceOfToken[address(msg.sender)][arg2].field_0
    balanceOfToken[address(msg.sender)][arg2].field_0 -= arg4
    if not balanceOfToken[address(msg.sender)][arg2].field_0:
        require balanceOfToken[address(msg.sender)].field_256 - 1 < balanceOfToken[address(msg.sender)].field_256
        require balanceOfToken[address(msg.sender)][arg2].field_256 < balanceOfToken[address(msg.sender)].field_256
        stor[balanceOfToken[address(msg.sender)][arg2].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOfToken', 4)))].field_0 = stor[balanceOfToken[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOfToken', 4)))].field_0
        balanceOfToken[address(msg.sender)][stor[balanceOfToken[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOfToken', 4)))].field_0].field_256 = balanceOfToken[address(msg.sender)][arg2].field_256
        balanceOfToken[address(msg.sender)].field_256--
        if not balanceOfToken[address(msg.sender)].field_256 <= balanceOfToken[address(msg.sender)].field_256 - 1:
            idx = balanceOfToken[address(msg.sender)].field_256 - 1
            while balanceOfToken[address(msg.sender)].field_256 > idx:
                balanceOfToken[address(msg.sender)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        balanceOfToken[address(msg.sender)][arg2].field_0 = 0
        balanceOfToken[address(msg.sender)][arg2].field_256 = 0
    if not balanceOfToken[address(arg1)][arg3].field_0:
        balanceOfToken[address(arg1)].field_256++
        if not balanceOfToken[address(arg1)].field_256 <= balanceOfToken[address(arg1)].field_256 + 1:
            idx = balanceOfToken[address(arg1)].field_256 + 1
            while balanceOfToken[address(arg1)].field_256 > idx:
                balanceOfToken[address(arg1)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        stor[balanceOfToken[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOfToken', 4)))].field_0 = arg3
        balanceOfToken[address(arg1)][arg3].field_256 = balanceOfToken[address(arg1)].field_256
    require balanceOfToken[address(arg1)][arg3].field_0 + arg4 >= balanceOfToken[address(arg1)][arg3].field_0
    balanceOfToken[address(arg1)][arg3].field_0 += arg4
    require balanceOf[address(arg1)] + arg4 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg4
    emit MintTransfer(arg2, arg3, arg4, msg.sender, arg1);
    emit Transfer(arg4, msg.sender, arg1);
    return 1
}

function stampToken(uint256 arg1, uint256 arg2, uint256 arg3) {
    require stor6[address(msg.sender)]
    require arg3 <= balanceOfToken[address(msg.sender)][arg1].field_0
    require arg3 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg3
    require arg3 <= balanceOfToken[address(msg.sender)][arg1].field_0
    balanceOfToken[address(msg.sender)][arg1].field_0 -= arg3
    if not balanceOfToken[address(msg.sender)][arg1].field_0:
        require balanceOfToken[address(msg.sender)].field_256 - 1 < balanceOfToken[address(msg.sender)].field_256
        require balanceOfToken[address(msg.sender)][arg1].field_256 < balanceOfToken[address(msg.sender)].field_256
        stor[balanceOfToken[address(msg.sender)][arg1].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOfToken', 4)))].field_0 = stor[balanceOfToken[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOfToken', 4)))].field_0
        balanceOfToken[address(msg.sender)][stor[balanceOfToken[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOfToken', 4)))].field_0].field_256 = balanceOfToken[address(msg.sender)][arg1].field_256
        balanceOfToken[address(msg.sender)].field_256--
        if not balanceOfToken[address(msg.sender)].field_256 <= balanceOfToken[address(msg.sender)].field_256 - 1:
            idx = balanceOfToken[address(msg.sender)].field_256 - 1
            while balanceOfToken[address(msg.sender)].field_256 > idx:
                balanceOfToken[address(msg.sender)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        balanceOfToken[address(msg.sender)][arg1].field_0 = 0
        balanceOfToken[address(msg.sender)][arg1].field_256 = 0
    if not balanceOfToken[address(msg.sender)][arg2].field_0:
        balanceOfToken[address(msg.sender)].field_256++
        if not balanceOfToken[address(msg.sender)].field_256 <= balanceOfToken[address(msg.sender)].field_256 + 1:
            idx = balanceOfToken[address(msg.sender)].field_256 + 1
            while balanceOfToken[address(msg.sender)].field_256 > idx:
                balanceOfToken[address(msg.sender)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        stor[balanceOfToken[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOfToken', 4)))].field_0 = arg2
        balanceOfToken[address(msg.sender)][arg2].field_256 = balanceOfToken[address(msg.sender)].field_256
    require balanceOfToken[address(msg.sender)][arg2].field_0 + arg3 >= balanceOfToken[address(msg.sender)][arg2].field_0
    balanceOfToken[address(msg.sender)][arg2].field_0 += arg3
    require balanceOf[address(msg.sender)] + arg3 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg3
    emit TokenStamp(arg1, arg2, arg3, msg.sender);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg3
    s = 0
    s = 0
    idx = arg3
    while idx > 0:
        require 0 < balanceOfToken[address(arg1)].field_256
        if balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_0 < idx:
            require balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_0 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_0
            require balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_0 <= balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_0
            balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_0 = 0
            if not balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_0:
                require balanceOfToken[address(arg1)].field_256 - 1 < balanceOfToken[address(arg1)].field_256
                require balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_256 < balanceOfToken[address(arg1)].field_256
                stor[balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOfToken', 4)))].field_0 = stor[balanceOfToken[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOfToken', 4)))].field_0
                balanceOfToken[address(arg1)][stor[balanceOfToken[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOfToken', 4)))].field_0].field_256 = balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_256
                balanceOfToken[address(arg1)].field_256--
                if not balanceOfToken[address(arg1)].field_256 <= balanceOfToken[address(arg1)].field_256 - 1:
                    s = sha3(sha3(address(arg1), 4) + 1) + balanceOfToken[address(arg1)].field_256 - 1
                    while sha3(sha3(address(arg1), 4) + 1) + balanceOfToken[address(arg1)].field_256 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_0 = 0
                balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_256 = 0
            if not balanceOfToken[address(arg2)][balanceOfToken[address(arg1)][1].field_0].field_0:
                balanceOfToken[address(arg2)].field_256++
                if not balanceOfToken[address(arg2)].field_256 <= balanceOfToken[address(arg2)].field_256 + 1:
                    s = sha3(sha3(address(arg2), 4) + 1) + balanceOfToken[address(arg2)].field_256 + 1
                    while sha3(sha3(address(arg2), 4) + 1) + balanceOfToken[address(arg2)].field_256 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                stor[balanceOfToken[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balanceOfToken', 4)))].field_0 = balanceOfToken[address(arg1)][1].field_0
                balanceOfToken[address(arg2)][balanceOfToken[address(arg1)][1].field_0].field_256 = balanceOfToken[address(arg2)].field_256
            require balanceOfToken[address(arg2)][balanceOfToken[address(arg1)][1].field_0].field_0 + balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_0 >= balanceOfToken[address(arg2)][balanceOfToken[address(arg1)][1].field_0].field_0
            balanceOfToken[address(arg2)][balanceOfToken[address(arg1)][1].field_0].field_0 += balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_0
            require balanceOf[address(arg2)] + balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_0 >= balanceOf[address(arg2)]
            mem[0] = arg2
            mem[32] = 5
            balanceOf[address(arg2)] += balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_0
            s = balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_0
            s = balanceOfToken[address(arg1)][1].field_0
            idx = idx - balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_0
            continue 
        require idx <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= idx
        require idx <= balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_0
        balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_0 -= idx
        if not balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_0:
            require balanceOfToken[address(arg1)].field_256 - 1 < balanceOfToken[address(arg1)].field_256
            require balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_256 < balanceOfToken[address(arg1)].field_256
            stor[balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOfToken', 4)))].field_0 = stor[balanceOfToken[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOfToken', 4)))].field_0
            balanceOfToken[address(arg1)][stor[balanceOfToken[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOfToken', 4)))].field_0].field_256 = balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_256
            balanceOfToken[address(arg1)].field_256--
            if not balanceOfToken[address(arg1)].field_256 <= balanceOfToken[address(arg1)].field_256 - 1:
                s = sha3(sha3(address(arg1), 4) + 1) + balanceOfToken[address(arg1)].field_256 - 1
                while sha3(sha3(address(arg1), 4) + 1) + balanceOfToken[address(arg1)].field_256 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_0 = 0
            balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_256 = 0
        if not balanceOfToken[address(arg2)][balanceOfToken[address(arg1)][1].field_0].field_0:
            balanceOfToken[address(arg2)].field_256++
            if not balanceOfToken[address(arg2)].field_256 <= balanceOfToken[address(arg2)].field_256 + 1:
                s = sha3(sha3(address(arg2), 4) + 1) + balanceOfToken[address(arg2)].field_256 + 1
                while sha3(sha3(address(arg2), 4) + 1) + balanceOfToken[address(arg2)].field_256 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            stor[balanceOfToken[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balanceOfToken', 4)))].field_0 = balanceOfToken[address(arg1)][1].field_0
            balanceOfToken[address(arg2)][balanceOfToken[address(arg1)][1].field_0].field_256 = balanceOfToken[address(arg2)].field_256
        require balanceOfToken[address(arg2)][balanceOfToken[address(arg1)][1].field_0].field_0 + idx >= balanceOfToken[address(arg2)][balanceOfToken[address(arg1)][1].field_0].field_0
        balanceOfToken[address(arg2)][balanceOfToken[address(arg1)][1].field_0].field_0 += idx
        require balanceOf[address(arg2)] + idx >= balanceOf[address(arg2)]
        mem[0] = arg2
        mem[32] = 5
        balanceOf[address(arg2)] += idx
        s = balanceOfToken[address(arg1)][balanceOfToken[address(arg1)][1].field_0].field_0
        s = balanceOfToken[address(arg1)][1].field_0
        idx = 0
        continue 
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= totalSupply
    require arg2 <= balanceOf[address(msg.sender)]
    s = 0
    s = 0
    idx = arg2
    while idx > 0:
        require 0 < balanceOfToken[address(msg.sender)].field_256
        if balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_0 < idx:
            require balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_0 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_0
            require balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_0 <= balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_0
            balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_0 = 0
            if not balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_0:
                require balanceOfToken[address(msg.sender)].field_256 - 1 < balanceOfToken[address(msg.sender)].field_256
                require balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_256 < balanceOfToken[address(msg.sender)].field_256
                stor[balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOfToken', 4)))].field_0 = stor[balanceOfToken[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOfToken', 4)))].field_0
                balanceOfToken[address(msg.sender)][stor[balanceOfToken[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOfToken', 4)))].field_0].field_256 = balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_256
                balanceOfToken[address(msg.sender)].field_256--
                if not balanceOfToken[address(msg.sender)].field_256 <= balanceOfToken[address(msg.sender)].field_256 - 1:
                    s = sha3(sha3(address(msg.sender), 4) + 1) + balanceOfToken[address(msg.sender)].field_256 - 1
                    while sha3(sha3(address(msg.sender), 4) + 1) + balanceOfToken[address(msg.sender)].field_256 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_0 = 0
                balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_256 = 0
            if not balanceOfToken[address(arg1)][balanceOfToken[address(msg.sender)][1].field_0].field_0:
                balanceOfToken[address(arg1)].field_256++
                if not balanceOfToken[address(arg1)].field_256 <= balanceOfToken[address(arg1)].field_256 + 1:
                    s = sha3(sha3(address(arg1), 4) + 1) + balanceOfToken[address(arg1)].field_256 + 1
                    while sha3(sha3(address(arg1), 4) + 1) + balanceOfToken[address(arg1)].field_256 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                stor[balanceOfToken[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOfToken', 4)))].field_0 = balanceOfToken[address(msg.sender)][1].field_0
                balanceOfToken[address(arg1)][balanceOfToken[address(msg.sender)][1].field_0].field_256 = balanceOfToken[address(arg1)].field_256
            require balanceOfToken[address(arg1)][balanceOfToken[address(msg.sender)][1].field_0].field_0 + balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_0 >= balanceOfToken[address(arg1)][balanceOfToken[address(msg.sender)][1].field_0].field_0
            balanceOfToken[address(arg1)][balanceOfToken[address(msg.sender)][1].field_0].field_0 += balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_0
            require balanceOf[address(arg1)] + balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_0 >= balanceOf[address(arg1)]
            mem[0] = arg1
            mem[32] = 5
            balanceOf[address(arg1)] += balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_0
            s = balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_0
            s = balanceOfToken[address(msg.sender)][1].field_0
            idx = idx - balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_0
            continue 
        require idx <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= idx
        require idx <= balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_0
        balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_0 -= idx
        if not balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_0:
            require balanceOfToken[address(msg.sender)].field_256 - 1 < balanceOfToken[address(msg.sender)].field_256
            require balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_256 < balanceOfToken[address(msg.sender)].field_256
            stor[balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOfToken', 4)))].field_0 = stor[balanceOfToken[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOfToken', 4)))].field_0
            balanceOfToken[address(msg.sender)][stor[balanceOfToken[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOfToken', 4)))].field_0].field_256 = balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_256
            balanceOfToken[address(msg.sender)].field_256--
            if not balanceOfToken[address(msg.sender)].field_256 <= balanceOfToken[address(msg.sender)].field_256 - 1:
                s = sha3(sha3(address(msg.sender), 4) + 1) + balanceOfToken[address(msg.sender)].field_256 - 1
                while sha3(sha3(address(msg.sender), 4) + 1) + balanceOfToken[address(msg.sender)].field_256 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_0 = 0
            balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_256 = 0
        if not balanceOfToken[address(arg1)][balanceOfToken[address(msg.sender)][1].field_0].field_0:
            balanceOfToken[address(arg1)].field_256++
            if not balanceOfToken[address(arg1)].field_256 <= balanceOfToken[address(arg1)].field_256 + 1:
                s = sha3(sha3(address(arg1), 4) + 1) + balanceOfToken[address(arg1)].field_256 + 1
                while sha3(sha3(address(arg1), 4) + 1) + balanceOfToken[address(arg1)].field_256 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            stor[balanceOfToken[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOfToken', 4)))].field_0 = balanceOfToken[address(msg.sender)][1].field_0
            balanceOfToken[address(arg1)][balanceOfToken[address(msg.sender)][1].field_0].field_256 = balanceOfToken[address(arg1)].field_256
        require balanceOfToken[address(arg1)][balanceOfToken[address(msg.sender)][1].field_0].field_0 + idx >= balanceOfToken[address(arg1)][balanceOfToken[address(msg.sender)][1].field_0].field_0
        balanceOfToken[address(arg1)][balanceOfToken[address(msg.sender)][1].field_0].field_0 += idx
        require balanceOf[address(arg1)] + idx >= balanceOf[address(arg1)]
        mem[0] = arg1
        mem[32] = 5
        balanceOf[address(arg1)] += idx
        s = balanceOfToken[address(msg.sender)][balanceOfToken[address(msg.sender)][1].field_0].field_0
        s = balanceOfToken[address(msg.sender)][1].field_0
        idx = 0
        continue 
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferTokens(address arg1, uint256[] arg2, uint256[] arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg1
    require arg2.length == arg3.length
    require arg2.length < 100
    idx = 0
    while idx < arg2.length:
        require idx < arg3.length
        require mem[(32 * idx) + (32 * arg2.length) + 160] > 0
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = sha3(address(msg.sender), 4)
        require idx < arg3.length
        require mem[(32 * idx) + (32 * arg2.length) + 160] <= balanceOfToken[address(msg.sender)][mem[(32 * idx) + 128]].field_0
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg3.length
        require mem[(32 * idx) + (32 * arg2.length) + 160] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg2.length) + 160]
        require mem[(32 * idx) + (32 * arg2.length) + 160] <= balanceOfToken[address(msg.sender)][mem[(32 * idx) + 128]].field_0
        balanceOfToken[address(msg.sender)][mem[(32 * idx) + 128]].field_0 -= mem[(32 * idx) + (32 * arg2.length) + 160]
        if balanceOfToken[address(msg.sender)][mem[(32 * idx) + 128]].field_0:
            if balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0:
                require balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0 + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0
                balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0 += mem[(32 * idx) + (32 * arg2.length) + 160]
                require balanceOf[address(arg1)] + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOf[address(arg1)]
                mem[0] = arg1
                mem[32] = 5
                balanceOf[address(arg1)] += mem[(32 * idx) + (32 * arg2.length) + 160]
                require idx < arg2.length
                require idx < arg3.length
                _503 = mem[(32 * idx) + (32 * arg2.length) + 160]
                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * idx) + 128]
                mem[(32 * arg2.length) + (32 * arg3.length) + 192] = _503
                emit TokenTransfer(mem[(32 * arg2.length) + (32 * arg3.length) + 160], _503, msg.sender, arg1);
            else:
                balanceOfToken[address(arg1)].field_256++
                if not balanceOfToken[address(arg1)].field_256 > balanceOfToken[address(arg1)].field_256 + 1:
                    stor[balanceOfToken[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOfToken', 4)))].field_0 = mem[(32 * idx) + 128]
                    balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_256 = balanceOfToken[address(arg1)].field_256
                    require balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0 + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0
                    balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0 += mem[(32 * idx) + (32 * arg2.length) + 160]
                    require balanceOf[address(arg1)] + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOf[address(arg1)]
                    mem[0] = arg1
                    mem[32] = 5
                    balanceOf[address(arg1)] += mem[(32 * idx) + (32 * arg2.length) + 160]
                    require idx < arg2.length
                    require idx < arg3.length
                    _526 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * idx) + 128]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 192] = _526
                    emit TokenTransfer(mem[(32 * arg2.length) + (32 * arg3.length) + 160], _526, msg.sender, arg1);
                else:
                    s = sha3(sha3(address(arg1), 4) + 1) + balanceOfToken[address(arg1)].field_256 + 1
                    while sha3(sha3(address(arg1), 4) + 1) + balanceOfToken[address(arg1)].field_256 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    stor[balanceOfToken[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOfToken', 4)))].field_0 = mem[(32 * idx) + 128]
                    balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_256 = balanceOfToken[address(arg1)].field_256
                    require balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0 + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0
                    balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0 += mem[(32 * idx) + (32 * arg2.length) + 160]
                    require balanceOf[address(arg1)] + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOf[address(arg1)]
                    mem[0] = arg1
                    mem[32] = 5
                    balanceOf[address(arg1)] += mem[(32 * idx) + (32 * arg2.length) + 160]
                    require idx < arg2.length
                    require idx < arg3.length
                    _680 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * idx) + 128]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 192] = _680
                    emit TokenTransfer(mem[(32 * arg2.length) + (32 * arg3.length) + 160], _680, msg.sender, arg1);
        else:
            require balanceOfToken[address(msg.sender)].field_256 - 1 < balanceOfToken[address(msg.sender)].field_256
            require balanceOfToken[address(msg.sender)][mem[(32 * idx) + 128]].field_256 < balanceOfToken[address(msg.sender)].field_256
            stor[balanceOfToken[address(msg.sender)][mem[(32 * idx) + 128]].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOfToken', 4)))].field_0 = stor[balanceOfToken[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOfToken', 4)))].field_0
            balanceOfToken[address(msg.sender)][stor[balanceOfToken[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOfToken', 4)))].field_0].field_256 = balanceOfToken[address(msg.sender)][mem[(32 * idx) + 128]].field_256
            balanceOfToken[address(msg.sender)].field_256--
            if not balanceOfToken[address(msg.sender)].field_256 > balanceOfToken[address(msg.sender)].field_256 - 1:
                balanceOfToken[address(msg.sender)][mem[(32 * idx) + 128]].field_0 = 0
                balanceOfToken[address(msg.sender)][mem[(32 * idx) + 128]].field_256 = 0
                if balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0:
                    require balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0 + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0
                    balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0 += mem[(32 * idx) + (32 * arg2.length) + 160]
                    require balanceOf[address(arg1)] + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOf[address(arg1)]
                    mem[0] = arg1
                    mem[32] = 5
                    balanceOf[address(arg1)] += mem[(32 * idx) + (32 * arg2.length) + 160]
                    require idx < arg2.length
                    require idx < arg3.length
                    _551 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * idx) + 128]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 192] = _551
                    emit TokenTransfer(mem[(32 * arg2.length) + (32 * arg3.length) + 160], _551, msg.sender, arg1);
                else:
                    balanceOfToken[address(arg1)].field_256++
                    if not balanceOfToken[address(arg1)].field_256 > balanceOfToken[address(arg1)].field_256 + 1:
                        stor[balanceOfToken[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOfToken', 4)))].field_0 = mem[(32 * idx) + 128]
                        balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_256 = balanceOfToken[address(arg1)].field_256
                        require balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0 + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0
                        balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0 += mem[(32 * idx) + (32 * arg2.length) + 160]
                        require balanceOf[address(arg1)] + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOf[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 5
                        balanceOf[address(arg1)] += mem[(32 * idx) + (32 * arg2.length) + 160]
                        require idx < arg2.length
                        require idx < arg3.length
                        _575 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * idx) + 128]
                        mem[(32 * arg2.length) + (32 * arg3.length) + 192] = _575
                        emit TokenTransfer(mem[(32 * arg2.length) + (32 * arg3.length) + 160], _575, msg.sender, arg1);
                    else:
                        s = sha3(sha3(address(arg1), 4) + 1) + balanceOfToken[address(arg1)].field_256 + 1
                        while sha3(sha3(address(arg1), 4) + 1) + balanceOfToken[address(arg1)].field_256 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor[balanceOfToken[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOfToken', 4)))].field_0 = mem[(32 * idx) + 128]
                        balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_256 = balanceOfToken[address(arg1)].field_256
                        require balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0 + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0
                        balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0 += mem[(32 * idx) + (32 * arg2.length) + 160]
                        require balanceOf[address(arg1)] + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOf[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 5
                        balanceOf[address(arg1)] += mem[(32 * idx) + (32 * arg2.length) + 160]
                        require idx < arg2.length
                        require idx < arg3.length
                        _684 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * idx) + 128]
                        mem[(32 * arg2.length) + (32 * arg3.length) + 192] = _684
                        emit TokenTransfer(mem[(32 * arg2.length) + (32 * arg3.length) + 160], _684, msg.sender, arg1);
            else:
                s = sha3(sha3(address(msg.sender), 4) + 1) + balanceOfToken[address(msg.sender)].field_256 - 1
                while sha3(sha3(address(msg.sender), 4) + 1) + balanceOfToken[address(msg.sender)].field_256 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                balanceOfToken[address(msg.sender)][mem[(32 * idx) + 128]].field_0 = 0
                balanceOfToken[address(msg.sender)][mem[(32 * idx) + 128]].field_256 = 0
                if balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0:
                    require balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0 + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0
                    balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0 += mem[(32 * idx) + (32 * arg2.length) + 160]
                    require balanceOf[address(arg1)] + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOf[address(arg1)]
                    mem[0] = arg1
                    mem[32] = 5
                    balanceOf[address(arg1)] += mem[(32 * idx) + (32 * arg2.length) + 160]
                    require idx < arg2.length
                    require idx < arg3.length
                    _703 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * idx) + 128]
                    mem[(32 * arg2.length) + (32 * arg3.length) + 192] = _703
                    emit TokenTransfer(mem[(32 * arg2.length) + (32 * arg3.length) + 160], _703, msg.sender, arg1);
                else:
                    balanceOfToken[address(arg1)].field_256++
                    if not balanceOfToken[address(arg1)].field_256 > balanceOfToken[address(arg1)].field_256 + 1:
                        stor[balanceOfToken[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOfToken', 4)))].field_0 = mem[(32 * idx) + 128]
                        balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_256 = balanceOfToken[address(arg1)].field_256
                        require balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0 + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0
                        balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0 += mem[(32 * idx) + (32 * arg2.length) + 160]
                        require balanceOf[address(arg1)] + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOf[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 5
                        balanceOf[address(arg1)] += mem[(32 * idx) + (32 * arg2.length) + 160]
                        require idx < arg2.length
                        require idx < arg3.length
                        _716 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * idx) + 128]
                        mem[(32 * arg2.length) + (32 * arg3.length) + 192] = _716
                        emit TokenTransfer(mem[(32 * arg2.length) + (32 * arg3.length) + 160], _716, msg.sender, arg1);
                    else:
                        s = sha3(sha3(address(arg1), 4) + 1) + balanceOfToken[address(arg1)].field_256 + 1
                        while sha3(sha3(address(arg1), 4) + 1) + balanceOfToken[address(arg1)].field_256 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor[balanceOfToken[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOfToken', 4)))].field_0 = mem[(32 * idx) + 128]
                        balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_256 = balanceOfToken[address(arg1)].field_256
                        require balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0 + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0
                        balanceOfToken[address(arg1)][mem[(32 * idx) + 128]].field_0 += mem[(32 * idx) + (32 * arg2.length) + 160]
                        require balanceOf[address(arg1)] + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOf[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 5
                        balanceOf[address(arg1)] += mem[(32 * idx) + (32 * arg2.length) + 160]
                        require idx < arg2.length
                        require idx < arg3.length
                        _746 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * idx) + 128]
                        mem[(32 * arg2.length) + (32 * arg3.length) + 192] = _746
                        emit TokenTransfer(mem[(32 * arg2.length) + (32 * arg3.length) + 160], _746, msg.sender, arg1);
        require idx < arg3.length
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * idx) + (32 * arg2.length) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg3.length) + 160], msg.sender, arg1);
        idx = idx + 1
        continue 
    return 1
}



}

contract main {




// =====================  Runtime code  =====================


address owner;
address pendingOwner;
array of struct tokenName;
array of struct tokens;

function tokens(uint256 arg1) {
    require arg1 < tokens.length
    return tokens[arg1].field_0
}

function getTokenName(address arg1) {
    return tokenName[address(arg1)][1][0 len tokenName[address(arg1)][1].length].field_0
}

function getTokenDecimals(address arg1) {
    return tokenName[address(arg1)].field_512
}

function getTokenSymbol(address arg1) {
    return tokenName[address(arg1)][0 len tokenName[address(arg1)].length].field_0
}

function owner() {
    return owner
}

function pendingOwner() {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    pendingOwner = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_ed3bc8b9(?) {
    require tokenName[address(arg1)].field_768 <= 2
    return not not tokenName[address(arg1)].field_768
}

function isTokenEnabled(address arg1) {
    require tokenName[address(arg1)].field_768 <= 2
    return (tokenName[address(arg1)].field_768 == 1)
}

function isTokenDisabled(address arg1) {
    require tokenName[address(arg1)].field_768 <= 2
    return (tokenName[address(arg1)].field_768 == 2)
}

function claimOwnership() {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function stringToBytes32(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = mem[128]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_8e316650(?) {
    require msg.sender == owner
    require tokenName[address(arg1)].field_768 <= 2
    require tokenName[address(arg1)].field_768
    tokenName[address(arg1)][4][arg2 << 248].field_0 = 1
}

function updateTokenDecimals(address arg1, uint256 arg2) {
    require msg.sender == owner
    require tokenName[address(arg1)].field_768 <= 2
    require tokenName[address(arg1)].field_768
    tokenName[address(arg1)].field_512 = arg2
}

function sub_c8c04a09(?) {
    require msg.sender == owner
    require tokenName[address(arg1)].field_768 <= 2
    require tokenName[address(arg1)].field_768
    tokenName[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function sub_a1a2497d(?) {
    require msg.sender == owner
    require tokenName[address(arg1)].field_768 <= 2
    require tokenName[address(arg1)].field_768
    tokenName[address(arg1)][1][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function reclaimEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function enableToken(address arg1) {
    require msg.sender == owner
    require tokenName[address(arg1)].field_768 <= 2
    require tokenName[address(arg1)].field_768
    require tokenName[address(arg1)].field_768 <= 2
    require tokenName[address(arg1)].field_768 == 2
    tokenName[address(arg1)].field_768 = 1
    emit EnableToken(arg1);
}

function disableToken(address arg1) {
    require msg.sender == owner
    require tokenName[address(arg1)].field_768 <= 2
    require tokenName[address(arg1)].field_768
    require tokenName[address(arg1)].field_768 <= 2
    require tokenName[address(arg1)].field_768 == 1
    tokenName[address(arg1)].field_768 = 2
    emit DisableToken(arg1);
}

function sub_4e2ea1c5(?) {
    mem[128] = tokenName[address(arg1)].field_0
    idx = 128
    s = 0
    while tokenName[address(arg1)].length + 96 > idx:
        mem[idx + 32] = tokenName[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(tokenName[address(arg1)].length) + 128] = mem[128]
    return memory
      from ceil32(tokenName[address(arg1)].length) + 128
       len 32
}

function sub_491f3b09(?) {
    mem[128] = tokenName[address(arg1)][1].field_0
    idx = 128
    s = 0
    while tokenName[address(arg1)][1].length + 96 > idx:
        mem[idx + 32] = tokenName[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(tokenName[address(arg1)][1].length) + 128] = mem[128]
    return memory
      from ceil32(tokenName[address(arg1)][1].length) + 128
       len 32
}

function reclaimToken(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_c3ab6f07(?) {
    require msg.sender == owner
    require tokenName[address(arg1)].field_768 <= 2
    require not tokenName[address(arg1)].field_768
    require tokenName[address(arg1)].field_768 <= 2
    require not tokenName[address(arg1)].field_768
    tokenName[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    tokenName[address(arg1)][1][].field_0 = Array(len=arg3.length, data=arg3[all])
    tokenName[address(arg1)].field_512 = arg4
    tokenName[address(arg1)].field_768 = 1
    tokens.length++
    tokens[tokens.length].field_0 = arg1
    emit AddToken(arg1);
}

function getTokens() {
    if not tokens.length:
        mem[(32 * tokens.length) + 128] = 32
        mem[(32 * tokens.length) + 160] = tokens.length
        mem[(32 * tokens.length) + 192 len floor32(tokens.length)] = mem[128 len floor32(tokens.length)]
        return memory
          from (32 * tokens.length) + 128
           len (96 * tokens.length) + 64
    mem[128] = address(tokens.field_0)
    idx = 128
    s = 0
    while (32 * tokens.length) + 96 > idx:
        mem[idx + 32] = tokens[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * tokens.length) + 192 len floor32(tokens.length)] = mem[128 len floor32(tokens.length)]
    return Array(len=tokens.length, data=mem[128 len floor32(tokens.length)], mem[(32 * tokens.length) + floor32(tokens.length) + 192 len (32 * tokens.length) - floor32(tokens.length)]), 
}

function sub_3f672022(?) {
    mem[128] = tokenName[address(arg1)].field_0
    idx = 128
    s = 0
    while tokenName[address(arg1)].length + 96 > idx:
        mem[idx + 32] = tokenName[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(tokenName[address(arg1)].length) + 160] = tokenName[address(arg1)][1].field_0
    idx = ceil32(tokenName[address(arg1)].length) + 160
    s = 0
    while ceil32(tokenName[address(arg1)].length) + tokenName[address(arg1)][1].length + 128 > idx:
        mem[idx + 32] = tokenName[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if tokenName[address(arg1)].field_768 <= 2:
        return mem[128], 
               mem[ceil32(tokenName[address(arg1)].length) + 160],
               tokenName[address(arg1)].field_512,
               tokenName[address(arg1)].field_768 == 1
    revert
}

function sub_0793d1a1(?) {
    idx = 0
    s = 0
    while idx < tokens.length:
        if not arg1:
            if not arg2:
                idx = idx + 1
                s = s
                continue 
            require idx < tokens.length
            mem[0] = tokens[idx].field_0
            mem[32] = 2
            require tokenName[stor3[idx].field_0].field_768 <= 2
            if tokenName[stor3[idx].field_0].field_768 != 2:
                idx = idx + 1
                s = s
                continue 
        else:
            require idx < tokens.length
            mem[0] = tokens[idx].field_0
            mem[32] = 2
            require tokenName[stor3[idx].field_0].field_768 <= 2
            if tokenName[stor3[idx].field_0].field_768 != 1:
                if not arg2:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < tokens.length
                mem[0] = tokens[idx].field_0
                mem[32] = 2
                require tokenName[stor3[idx].field_0].field_768 <= 2
                if tokenName[stor3[idx].field_0].field_768 != 2:
                    idx = idx + 1
                    s = s
                    continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_11e5f831(?) {
    idx = 0
    s = 0
    while idx < tokens.length:
        if not arg1:
            if not arg2:
                idx = idx + 1
                s = s
                continue 
            require idx < tokens.length
            mem[0] = tokens[idx].field_0
            mem[32] = 2
            require tokenName[stor3[idx].field_0].field_768 <= 2
            if tokenName[stor3[idx].field_0].field_768 != 2:
                idx = idx + 1
                s = s
                continue 
        else:
            require idx < tokens.length
            mem[0] = tokens[idx].field_0
            mem[32] = 2
            require tokenName[stor3[idx].field_0].field_768 <= 2
            if tokenName[stor3[idx].field_0].field_768 != 1:
                if not arg2:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < tokens.length
                mem[0] = tokens[idx].field_0
                mem[32] = 2
                require tokenName[stor3[idx].field_0].field_768 <= 2
                if tokenName[stor3[idx].field_0].field_768 != 2:
                    idx = idx + 1
                    s = s
                    continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s:
        mem[128 len 32 * s] = code.data[6195 len 32 * s]
    idx = 0
    t = 0
    while idx < tokens.length:
        if not arg1:
            if not arg2:
                idx = idx + 1
                t = t
                continue 
            require idx < tokens.length
            mem[0] = tokens[idx].field_0
            mem[32] = 2
            require tokenName[stor3[idx].field_0].field_768 <= 2
            if tokenName[stor3[idx].field_0].field_768 != 2:
                idx = idx + 1
                t = t
                continue 
        else:
            require idx < tokens.length
            mem[0] = tokens[idx].field_0
            mem[32] = 2
            require tokenName[stor3[idx].field_0].field_768 <= 2
            if tokenName[stor3[idx].field_0].field_768 != 1:
                if not arg2:
                    idx = idx + 1
                    t = t
                    continue 
                require idx < tokens.length
                mem[0] = tokens[idx].field_0
                mem[32] = 2
                require tokenName[stor3[idx].field_0].field_768 <= 2
                if tokenName[stor3[idx].field_0].field_768 != 2:
                    idx = idx + 1
                    t = t
                    continue 
        require idx < tokens.length
        mem[0] = 3
        require t < s
        mem[(32 * t) + 128] = tokens[idx].field_0
        idx = idx + 1
        t = t + 1
        continue 
    mem[(32 * s) + 192 len floor32(s)] = mem[128 len floor32(s)]
    return Array(len=s, data=mem[128 len floor32(s)], mem[(32 * s) + floor32(s) + 192 len (32 * s) - floor32(s)])
}

function getTokenData(address arg1) {
    mem[96] = tokenName[address(arg1)].length
    mem[128] = tokenName[address(arg1)].field_0
    idx = 128
    s = 0
    while tokenName[address(arg1)].length + 96 > idx:
        mem[idx + 32] = tokenName[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[0] = arg1
    mem[64] = ceil32(tokenName[address(arg1)].length) + ceil32(tokenName[address(arg1)][1].length) + 160
    mem[ceil32(tokenName[address(arg1)].length) + 128] = tokenName[address(arg1)][1].length
    mem[ceil32(tokenName[address(arg1)].length) + 160] = tokenName[address(arg1)][1].field_0
    idx = ceil32(tokenName[address(arg1)].length) + 160
    s = 0
    while ceil32(tokenName[address(arg1)].length) + tokenName[address(arg1)][1].length + 128 > idx:
        mem[idx + 32] = tokenName[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[32] = 2
    require tokenName[address(arg1)].field_768 <= 2
    mem[ceil32(tokenName[address(arg1)].length) + ceil32(tokenName[address(arg1)][1].length) + 224] = tokenName[address(arg1)].field_512
    mem[ceil32(tokenName[address(arg1)].length) + ceil32(tokenName[address(arg1)][1].length) + 256] = tokenName[address(arg1)].field_768 == 1
    mem[ceil32(tokenName[address(arg1)].length) + ceil32(tokenName[address(arg1)][1].length) + 160] = 128
    mem[ceil32(tokenName[address(arg1)].length) + ceil32(tokenName[address(arg1)][1].length) + 288] = tokenName[address(arg1)].length
    mem[ceil32(tokenName[address(arg1)].length) + ceil32(tokenName[address(arg1)][1].length) + 320 len ceil32(tokenName[address(arg1)].length)] = mem[128 len ceil32(tokenName[address(arg1)].length)]
    mem[ceil32(tokenName[address(arg1)].length) + ceil32(tokenName[address(arg1)][1].length) + 192] = tokenName[address(arg1)].length + 160
    mem[tokenName[address(arg1)].length + ceil32(tokenName[address(arg1)].length) + ceil32(tokenName[address(arg1)][1].length) + 320] = tokenName[address(arg1)][1].length
    mem[tokenName[address(arg1)].length + ceil32(tokenName[address(arg1)].length) + ceil32(tokenName[address(arg1)][1].length) + 352 len ceil32(tokenName[address(arg1)][1].length)] = mem[ceil32(tokenName[address(arg1)].length) + 160 len ceil32(tokenName[address(arg1)][1].length)]
    if not tokenName[address(arg1)][1].length % 32:
        return Array(len=tokenName[address(arg1)].length, data=mem[128 len ceil32(tokenName[address(arg1)].length)], mem[(2 * ceil32(tokenName[address(arg1)].length)) + ceil32(tokenName[address(arg1)][1].length) + 320 len tokenName[address(arg1)][1].length + tokenName[address(arg1)].length + -ceil32(tokenName[address(arg1)].length) + 32]), 
               tokenName[address(arg1)].length + 160,
               tokenName[address(arg1)].field_512,
               tokenName[address(arg1)].field_768 == 1
    mem[floor32(tokenName[address(arg1)][1].length) + tokenName[address(arg1)].length + ceil32(tokenName[address(arg1)].length) + ceil32(tokenName[address(arg1)][1].length) + 352] = mem[floor32(tokenName[address(arg1)][1].length) + tokenName[address(arg1)].length + ceil32(tokenName[address(arg1)].length) + ceil32(tokenName[address(arg1)][1].length) + -tokenName[address(arg1)][1].length % 32 + 384 len tokenName[address(arg1)][1].length % 32]
    return Array(len=tokenName[address(arg1)].length, data=mem[128 len ceil32(tokenName[address(arg1)].length)], mem[(2 * ceil32(tokenName[address(arg1)].length)) + ceil32(tokenName[address(arg1)][1].length) + 320 len floor32(tokenName[address(arg1)][1].length) + tokenName[address(arg1)].length + -ceil32(tokenName[address(arg1)].length) + 64]), 
           tokenName[address(arg1)].length + 160,
           tokenName[address(arg1)].field_512,
           tokenName[address(arg1)].field_768 == 1
}

function tokenList(address arg1) {
    mem[32] = 2
    mem[96] = tokenName[arg1].length
    mem[0] = sha3(arg1, 2)
    mem[128] = tokenName[arg1].field_0
    idx = 128
    s = 0
    while tokenName[arg1].length + 96 > idx:
        mem[idx + 32] = tokenName[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(tokenName[arg1].length) + ceil32(tokenName[arg1][1].length) + 160
    mem[ceil32(tokenName[arg1].length) + 128] = tokenName[arg1][1].length
    mem[ceil32(tokenName[arg1].length) + 160] = tokenName[arg1][1].field_0
    idx = ceil32(tokenName[arg1].length) + 160
    s = 0
    while ceil32(tokenName[arg1].length) + tokenName[arg1][1].length + 128 > idx:
        mem[idx + 32] = tokenName[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(tokenName[arg1].length) + ceil32(tokenName[arg1][1].length) + 224] = tokenName[arg1].field_512
    require tokenName[arg1].field_768 <= 2
    mem[ceil32(tokenName[arg1].length) + ceil32(tokenName[arg1][1].length) + 256] = tokenName[arg1].field_768
    mem[ceil32(tokenName[arg1].length) + ceil32(tokenName[arg1][1].length) + 160] = 128
    mem[ceil32(tokenName[arg1].length) + ceil32(tokenName[arg1][1].length) + 288] = tokenName[arg1].length
    if 0 >= tokenName[arg1].length:
        mem[ceil32(tokenName[arg1].length) + ceil32(tokenName[arg1][1].length) + 192] = tokenName[arg1].length + 160
        mem[tokenName[arg1].length + ceil32(tokenName[arg1].length) + ceil32(tokenName[arg1][1].length) + 320] = tokenName[arg1][1].length
        mem[tokenName[arg1].length + ceil32(tokenName[arg1].length) + ceil32(tokenName[arg1][1].length) + 352 len ceil32(tokenName[arg1][1].length)] = mem[ceil32(tokenName[arg1].length) + 160 len ceil32(tokenName[arg1][1].length)]
        if not tokenName[arg1][1].length % 32:
            return Array(len=tokenName[arg1].length, data=mem[ceil32(tokenName[arg1].length) + ceil32(tokenName[arg1][1].length) + 320 len tokenName[arg1].length + 32], mem[ceil32(tokenName[arg1].length) + 160 len tokenName[arg1][1].length]), 
                   tokenName[arg1].length + 160,
                   tokenName[arg1].field_512,
                   tokenName[arg1].field_768
        mem[floor32(tokenName[arg1][1].length) + tokenName[arg1].length + ceil32(tokenName[arg1].length) + ceil32(tokenName[arg1][1].length) + 352] = mem[floor32(tokenName[arg1][1].length) + tokenName[arg1].length + ceil32(tokenName[arg1].length) + ceil32(tokenName[arg1][1].length) + -tokenName[arg1][1].length % 32 + 384 len tokenName[arg1][1].length % 32]
        return Array(len=tokenName[arg1].length, data=mem[ceil32(tokenName[arg1].length) + ceil32(tokenName[arg1][1].length) + 320 len tokenName[arg1].length + 32], mem[ceil32(tokenName[arg1].length) + 160 len ceil32(tokenName[arg1][1].length)], mem[ceil32(tokenName[arg1].length) + (2 * ceil32(tokenName[arg1][1].length)) + tokenName[arg1].length + 352 len floor32(tokenName[arg1][1].length) + -ceil32(tokenName[arg1][1].length) + 32]), 
               tokenName[arg1].length + 160,
               tokenName[arg1].field_512,
               tokenName[arg1].field_768
    mem[ceil32(tokenName[arg1].length) + ceil32(tokenName[arg1][1].length) + 320] = mem[128]
    mem[ceil32(tokenName[arg1].length) + ceil32(tokenName[arg1][1].length) + 352 len floor32(tokenName[arg1].length - 1)] = mem[160 len ceil32(tokenName[arg1].length) + ceil32(tokenName[arg1][1].length) + 64], tokenName[arg1].field_512, tokenName[arg1].field_768, mem[ceil32(tokenName[arg1].length) + ceil32(tokenName[arg1][1].length) + 288 len floor32(tokenName[arg1].length - 1) + -ceil32(tokenName[arg1].length) + -ceil32(tokenName[arg1][1].length) - 128]
    mem[ceil32(tokenName[arg1].length) + ceil32(tokenName[arg1][1].length) + 192] = tokenName[arg1].length + 160
    mem[tokenName[arg1].length + ceil32(tokenName[arg1].length) + ceil32(tokenName[arg1][1].length) + 320] = tokenName[arg1][1].length
    mem[tokenName[arg1].length + ceil32(tokenName[arg1].length) + ceil32(tokenName[arg1][1].length) + 352 len ceil32(tokenName[arg1][1].length)] = mem[ceil32(tokenName[arg1].length) + 160 len ceil32(tokenName[arg1][1].length)]
    if not tokenName[arg1][1].length % 32:
        return Array(len=tokenName[arg1].length, data=mem[128], mem[ceil32(tokenName[arg1].length) + ceil32(tokenName[arg1][1].length) + 352 len tokenName[arg1][1].length + tokenName[arg1].length]), 
               tokenName[arg1].length + 160,
               tokenName[arg1].field_512,
               tokenName[arg1].field_768
    mem[floor32(tokenName[arg1][1].length) + tokenName[arg1].length + ceil32(tokenName[arg1].length) + ceil32(tokenName[arg1][1].length) + 352] = mem[floor32(tokenName[arg1][1].length) + tokenName[arg1].length + ceil32(tokenName[arg1].length) + ceil32(tokenName[arg1][1].length) + -tokenName[arg1][1].length % 32 + 384 len tokenName[arg1][1].length % 32]
    return Array(len=tokenName[arg1].length, data=mem[128], mem[ceil32(tokenName[arg1].length) + ceil32(tokenName[arg1][1].length) + 352 len floor32(tokenName[arg1][1].length) + tokenName[arg1].length + 32]), 
           tokenName[arg1].length + 160,
           tokenName[arg1].field_512,
           tokenName[arg1].field_768
}



}

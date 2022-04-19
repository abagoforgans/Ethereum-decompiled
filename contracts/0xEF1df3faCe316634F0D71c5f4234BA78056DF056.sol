contract main {


// =======================  Init code  ======================


const approve(address arg1, uint256 arg2) = 0

const transferFrom(address arg1, address arg2, uint256 arg3) = 0

const allowance(address arg1, address arg2) = 0


uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of uint256 version;
mapping of uint256 balanceOf;
address stor6;
array of struct stor7;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() {
  stop
}

function transfer(address arg1, uint256 arg2) {
    require not stor6
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function migrateMyTokens() {
    require stor6
    if balanceOf[address(msg.sender)] > 0:
        totalSupply -= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = 0
        require ext_code.size(stor6)
        call stor6.0xfca5d057 with:
             gas gas_remaining - 710 wei
            args msg.sender, balanceOf[address(msg.sender)]
        require ext_call.success
}

function setMigrateToAddress(address arg1) {
    if not stor7.length:
        require 0 < stor7.length
        require 0 < stor7.length
        s = 0
        while mem[140 len 20] != msg.sender:
            require uint8(s + 1) < stor7.length
            require uint8(s + 1) < stor7.length
            s = s + 1
            continue 
    else:
        if (32 * stor7.length) + 32 > 64:
            idx = 160
            s = 1
            while (32 * stor7.length) + 96 > idx:
                mem[idx + 32] = stor7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        require 0 < stor7.length
        require 0 < stor7.length
        s = 0
        while address(stor7.field_0) != msg.sender:
            require uint8(s + 1) < stor7.length
            require uint8(s + 1) < stor7.length
            s = s + 1
            continue 
    stor6 = arg1
}

function migrateTokensV1(address arg1, uint256 arg2) {
    if not stor7.length:
        require 0 < stor7.length
        require 0 < stor7.length
        s = 0
        while mem[140 len 20] != msg.sender:
            require uint8(s + 1) < stor7.length
            require uint8(s + 1) < stor7.length
            s = s + 1
            continue 
    else:
        if (32 * stor7.length) + 32 > 64:
            idx = 160
            s = 1
            while (32 * stor7.length) + 96 > idx:
                mem[idx + 32] = stor7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        require 0 < stor7.length
        require 0 < stor7.length
        s = 0
        while address(stor7.field_0) != msg.sender:
            require uint8(s + 1) < stor7.length
            require uint8(s + 1) < stor7.length
            s = s + 1
            continue 
    totalSupply += arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function setOtherMigrationSources(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = stor7.length
    if stor7.length:
        mem[(32 * arg1.length) + 160] = address(stor7.field_0)
        idx = (32 * arg1.length) + 160
        s = 0
        while (32 * arg1.length) + (32 * stor7.length) + 128 > idx:
            mem[idx + 32] = stor7[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    require 0 < stor7.length
    require 0 < stor7.length
    s = 0
    while mem[(32 * arg1.length) + 172 len 20] != msg.sender:
        require uint8(s + 1) < stor7.length
        require uint8(s + 1) < stor7.length
        s = s + 1
        continue 
    stor7.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor7.length > idx:
            stor7[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            stor7[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor7.length > idx:
            stor7[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor7.length++
    if not stor7.length <= stor7.length + 1:
        idx = stor7.length + 1
        while stor7.length > idx:
            stor7[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor7[stor7.length].field_0 = msg.sender
}

function airdrop(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = stor7.length
    if not stor7.length:
        require 0 < stor7.length
        require 0 < stor7.length
        s = 0
        while mem[(32 * arg1.length) + 172 len 20] != msg.sender:
            require uint8(s + 1) < stor7.length
            require uint8(s + 1) < stor7.length
            s = s + 1
            continue 
        totalSupply += arg2 * arg1.length
        s = 0
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _38 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 5
            balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
            mem[(32 * arg1.length) + (32 * stor7.length) + 160] = arg2
            emit Transfer(arg2, 0, address(_38));
            s = _38
            idx = idx + 1
            continue 
    else:
        if (32 * stor7.length) + 32 <= 64:
            require 0 < stor7.length
            require 0 < stor7.length
            s = 0
            while address(stor7.field_0) != msg.sender:
                require uint8(s + 1) < stor7.length
                require uint8(s + 1) < stor7.length
                s = s + 1
                continue 
            totalSupply += arg2 * arg1.length
            s = 0
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                _65 = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 5
                balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
                mem[(32 * arg1.length) + (32 * stor7.length) + 160] = arg2
                emit Transfer(arg2, 0, address(_65));
                s = _65
                idx = idx + 1
                continue 
        else:
            idx = (32 * arg1.length) + 192
            s = 1
            while (32 * arg1.length) + (32 * stor7.length) + 128 > idx:
                mem[idx + 32] = stor7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require 0 < stor7.length
            require 0 < stor7.length
            s = 0
            while address(stor7.field_0) != msg.sender:
                require uint8(s + 1) < stor7.length
                require uint8(s + 1) < stor7.length
                s = s + 1
                continue 
            totalSupply += arg2 * arg1.length
            s = 0
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                _78 = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 5
                balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
                mem[(32 * arg1.length) + (32 * stor7.length) + 160] = arg2
                emit Transfer(arg2, 0, address(_78));
                s = _78
                idx = idx + 1
                continue 
}



// =====================  Runtime code  =====================




}

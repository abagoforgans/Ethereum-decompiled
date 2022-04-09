contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint8 stor3;
mapping of uint256 stor4;
array of address stor6;
array of uint256 stor7;
uint256 stor8;
address stor9;

function _fallback() payable {
    stor8 = 0
    require not msg.value
    mem[96 len -6189] = code.data[6879 len -6189]
    mem[64] = -6093
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2 = mem[160]
    stor3 = mem[223 len 1]
    mem[32] = 4
    stor4[address(msg.sender)] = mem[160]
    stor6.length = mem[mem[224] + 96]
    mem[0] = 6
    if not mem[mem[224] + 96]:
        idx = 0
        while stor6.length > idx:
            stor6[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[224] + 128
        while mem[224] + (32 * mem[mem[224] + 96]) + 128 > idx:
            stor6[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[224] + 96]) + 31) >> 5
        while stor6.length > idx:
            stor6[idx] = 0
            idx = idx + 1
            continue 
    stor7.length = mem[mem[256] + 96]
    if not mem[mem[256] + 96]:
        idx = 0
        while stor7.length > idx:
            stor7[idx] = 0
            idx = idx + 1
            continue 
    else:
        if 32 * mem[mem[256] + 96] <= 0:
            idx = 0
            while stor7.length > idx:
                stor7[idx] = 0
                idx = idx + 1
                continue 
        else:
            stor7 = mem[mem[256] + 128]
            s = 1
            idx = mem[256] + 160
            while mem[256] + (32 * mem[mem[256] + 96]) + 128 > idx:
                stor7[s] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = (Mask(251, 0, (32 * mem[mem[256] + 96]) - 1) >> 5) + 1
            while stor7.length > idx:
                stor7[idx] = 0
                idx = idx + 1
                continue 
    stor9 = msg.sender
    return code.data[690 len 6189]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of address tokenExchanges;
array of uint256 tokenRatios;
uint256 stor8;
address owner;

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

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokenExchanges(uint256 arg1) {
    require arg1 < tokenExchanges.length
    return tokenExchanges[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function tokenRatios(uint256 arg1) {
    require arg1 < tokenRatios.length
    return tokenRatios[arg1]
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function rebalance(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.asset() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x4b750334 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.asset() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0] * arg3 / 10^18
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.takerSellAsset(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (ext_call.return_data[0] * arg3 / 10^18)
    require ext_call.success
    call arg2 with:
       value ext_call.return_data[0] * arg3 / 10^18 * ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
}

function breakdown(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(this.address)] += arg1
    balanceOf[msg.sender] -= arg1
    s = 0
    idx = 0
    s = 0
    while idx < tokenExchanges.length:
        mem[0] = 6
        require ext_code.size(tokenExchanges[idx])
        call tokenExchanges[idx].asset() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require stor8
        require ext_code.size(tokenExchanges[idx])
        call tokenExchanges[idx].asset() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        mem[100] = msg.sender
        mem[132] = ext_call.return_data[0] * arg1 / stor8
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, ext_call.return_data[0] * arg1 / stor8
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        s = tokenExchanges[idx]
        idx = idx + 1
        s = ext_call.return_data[0] * arg1 / stor8
        continue 
    stor8 -= arg1
    emit Transfer(arg1, msg.sender, this.address);
}

function setPurchaseRatios(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    tokenExchanges.length = arg1.length
    if not arg1.length:
        idx = 0
        while tokenExchanges.length > idx:
            tokenExchanges[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            tokenExchanges[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while tokenExchanges.length > idx:
            tokenExchanges[idx] = 0
            idx = idx + 1
            continue 
    tokenRatios.length = arg2.length
    if not arg2.length:
        idx = 0
        while tokenRatios.length > idx:
            tokenRatios[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + 160
        while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
            tokenRatios[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while tokenRatios.length > idx:
            tokenRatios[idx] = 0
            idx = idx + 1
            continue 
    return 1
}

function buyPrice() {
    idx = 0
    s = 0
    while idx < tokenExchanges.length:
        require idx < tokenRatios.length
        require idx < tokenExchanges.length
        mem[0] = 6
        mem[128] = 0
        require ext_code.size(tokenExchanges[idx])
        call tokenExchanges[idx].0x8620410b with:
             gas gas_remaining - 710 wei
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        s = s + (ext_call.return_data[0] * tokenRatios[idx] / 10^18)
        continue 
    return (s * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length)
}

function sellPrice() {
    idx = 0
    s = 0
    while idx < tokenExchanges.length:
        require idx < tokenRatios.length
        require idx < tokenExchanges.length
        mem[0] = 6
        mem[128] = 0
        require ext_code.size(tokenExchanges[idx])
        call tokenExchanges[idx].0x4b750334 with:
             gas gas_remaining - 710 wei
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        s = s + (ext_call.return_data[0] * tokenRatios[idx] / 10^18)
        continue 
    return (s * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length)
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(this.address)] += arg1
    balanceOf[msg.sender] -= arg1
    s = 0
    idx = 0
    s = 0
    s = 0
    while idx < tokenExchanges.length:
        mem[0] = 6
        require ext_code.size(tokenExchanges[idx])
        call tokenExchanges[idx].asset() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require stor8
        require ext_code.size(tokenExchanges[idx])
        call tokenExchanges[idx].0x4b750334 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(tokenExchanges[idx])
        call tokenExchanges[idx].asset() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        mem[132] = ext_call.return_data[0] * arg1 / stor8
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args tokenExchanges[idx], ext_call.return_data[0] * arg1 / stor8
        require ext_call.success
        mem[96] = 0xeff883bd00000000000000000000000000000000000000000000000000000000
        mem[100] = ext_call.return_data[0] * arg1 / stor8
        require ext_code.size(tokenExchanges[idx])
        call tokenExchanges[idx].takerSellAsset(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args (ext_call.return_data[0] * arg1 / stor8)
        require ext_call.success
        s = tokenExchanges[idx]
        idx = idx + 1
        s = ext_call.return_data[0] * arg1 / stor8
        s = s + (ext_call.return_data[0] * arg1 / stor8 * ext_call.return_data[0])
        continue 
    stor8 -= arg1
    call msg.sender with:
       value s * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(arg1, msg.sender, this.address);
    return (s * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length)
}

function _fallback() {
    idx = 0
    s = 0
    while idx < tokenExchanges.length:
        require idx < tokenRatios.length
        require idx < tokenExchanges.length
        mem[0] = 6
        mem[128] = 0
        require ext_code.size(tokenExchanges[idx])
        call tokenExchanges[idx].0x8620410b with:
             gas gas_remaining - 710 wei
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        s = s + (ext_call.return_data[0] * tokenRatios[idx] / 10^18)
        continue 
    require s * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length
    t = 0
    idx = 0
    while idx < tokenExchanges.length:
        require idx < tokenRatios.length
        mem[0] = 7
        call tokenExchanges[idx] with:
           value msg.value * tokenRatios[idx] / 10^18 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        t = tokenExchanges[idx]
        idx = idx + 1
        continue 
    stor8 += msg.value / s * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length
    balanceOf[address(msg.sender)] += msg.value / s * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length
    balanceOf[this.address] -= msg.value / s * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length
    emit Transfer((msg.value / s * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length), this.address, msg.sender);
}

function buy() payable {
    idx = 0
    s = 0
    while idx < tokenExchanges.length:
        require idx < tokenRatios.length
        require idx < tokenExchanges.length
        mem[0] = 6
        mem[128] = 0
        require ext_code.size(tokenExchanges[idx])
        call tokenExchanges[idx].0x8620410b with:
             gas gas_remaining - 710 wei
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        s = s + (ext_call.return_data[0] * tokenRatios[idx] / 10^18)
        continue 
    require s * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length
    t = 0
    idx = 0
    while idx < tokenExchanges.length:
        require idx < tokenRatios.length
        mem[0] = 7
        call tokenExchanges[idx] with:
           value msg.value * tokenRatios[idx] / 10^18 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        t = tokenExchanges[idx]
        idx = idx + 1
        continue 
    stor8 += msg.value / s * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length
    balanceOf[address(msg.sender)] += msg.value / s * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length
    balanceOf[this.address] -= msg.value / s * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length
    emit Transfer((msg.value / s * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length), this.address, msg.sender);
    return (msg.value / s * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length * tokenExchanges.length)
}



}

contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;

function _fallback() {
    mem[96 len -6976] = code.data[7376 len -6976]
    mem[64] = -6880
    stor0 = msg.sender
    stor4 = mem[96] * 10^mem[223 len 1]
    stor5[address(msg.sender)] = mem[96] * 10^mem[223 len 1]
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor3 = mem[223 len 1]
    return code.data[400 len 6976]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 tokenName;
array of uint256 tokenSymbol;
uint8 specifiedDecimal;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 sellPrice;
uint256 buyPrice;
array of address stor9;
array of address stor10;
array of struct stor11;
array of struct stor12;
uint256 readSellTokenAmount;
uint8 stor14;
mapping of uint8 stor15;
mapping of address tokenUsers;

function name() {
    return tokenName[0 len tokenName.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return specifiedDecimal
}

function sellPrice() {
    return sellPrice
}

function getSpecifiedDecimal() {
    return specifiedDecimal
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function tokenUsers(uint256 arg1) {
    return tokenUsers[arg1]
}

function buyPrice() {
    return buyPrice
}

function getTokenName() {
    return tokenName[0 len tokenName.length]
}

function readSellTokenAmount() {
    return readSellTokenAmount
}

function owner() {
    return owner
}

function symbol() {
    return tokenSymbol[0 len tokenSymbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor15[arg1])
}

function getTotalSupply() {
    return totalSupply
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function getTokenSymbol() {
    return tokenSymbol[0 len tokenSymbol.length]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function freezeAllAccountInEmergency(bool arg1) {
    require owner == msg.sender
    stor14 = uint8(arg1)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    if not arg1:
        require sellPrice
    if not arg2:
        require buyPrice
    if arg1:
        sellPrice = arg1
    if arg2:
        buyPrice = arg2
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require owner == msg.sender
    stor15[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
    if stor9.length <= 0:
        stor9.length++
        if not stor9.length <= stor9.length + 1:
            idx = stor9.length + 1
            while stor9.length > idx:
                uint256(stor9[idx]) = 0
                idx = idx + 1
                continue 
        address(stor9[stor9.length]) = arg1
    else:
        idx = 0
        s = 0
        while idx < stor9.length:
            mem[0] = 9
            if address(stor9[idx]) != arg1:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        if not s:
            stor9.length++
            if not stor9.length <= stor9.length + 1:
                idx = stor9.length + 1
                while stor9.length > idx:
                    uint256(stor9[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor9[stor9.length]) = arg1
}

function mintToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
    readSellTokenAmount += arg2
    if stor10.length <= 0:
        stor10.length++
        if not stor10.length <= stor10.length + 1:
            idx = stor10.length + 1
            while stor10.length > idx:
                uint256(stor10[idx]) = 0
                idx = idx + 1
                continue 
        address(stor10[stor10.length]) = arg1
    else:
        idx = 0
        s = 0
        while idx < stor10.length:
            mem[0] = 10
            if address(stor10[idx]) != arg1:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        if not s:
            stor10.length++
            if not stor10.length <= stor10.length + 1:
                idx = stor10.length + 1
                while stor10.length > idx:
                    uint256(stor10[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor10[stor10.length]) = arg1
}

function readAllUsers() {
    idx = 0
    while idx < stor10.length:
        mem[0] = address(stor10[idx])
        mem[32] = 5
        if balanceOf[address(stor10[idx])] > 0:
            stor12.length++
            if not stor12.length <= stor12.length + 1:
                s = stor12.length + sha3(12) + 1
                while sha3(12) + stor12.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            require idx < stor10.length
            mem[0] = 10
            address(stor12[stor12.length].field_0) = address(stor10[idx])
        idx = idx + 1
        continue 
    if stor12.length:
        mem[160] = address(stor12.field_0)
        idx = 160
        s = 0
        while (32 * stor12.length) + 128 > idx:
            mem[idx + 32] = address(stor12[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor12.length) + 160] = 32
    mem[(32 * stor12.length) + 192] = stor12.length
    if Mask(251, 0, stor12.length):
        mem[(32 * stor12.length) + 224] = mem[160]
        mem[(32 * stor12.length) + 256 len floor32((32 * stor12.length) - 1)] = mem[192 len floor32((32 * stor12.length) - 1)]
    return Array(len=stor12.length, data=mem[(32 * stor12.length) + 224 len 32 * stor12.length])
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require not stor15[address(msg.sender)]
    require not stor15[address(arg1)]
    require not stor14
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    readSellTokenAmount += arg2
    if stor10.length <= 0:
        stor10.length++
        if not stor10.length <= stor10.length + 1:
            idx = stor10.length + 1
            while stor10.length > idx:
                uint256(stor10[idx]) = 0
                idx = idx + 1
                continue 
        address(stor10[stor10.length]) = arg1
    else:
        idx = 0
        s = 0
        while idx < stor10.length:
            mem[0] = 10
            if address(stor10[idx]) != arg1:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        if not s:
            stor10.length++
            if not stor10.length <= stor10.length + 1:
                idx = stor10.length + 1
                while stor10.length > idx:
                    uint256(stor10[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor10[stor10.length]) = arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require not stor15[address(arg1)]
    require not stor15[address(arg2)]
    require not stor14
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    readSellTokenAmount += arg3
    if stor10.length <= 0:
        stor10.length++
        if not stor10.length <= stor10.length + 1:
            idx = stor10.length + 1
            while stor10.length > idx:
                uint256(stor10[idx]) = 0
                idx = idx + 1
                continue 
        address(stor10[stor10.length]) = arg2
    else:
        idx = 0
        s = 0
        while idx < stor10.length:
            mem[0] = 10
            if address(stor10[idx]) != arg2:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        if not s:
            stor10.length++
            if not stor10.length <= stor10.length + 1:
                idx = stor10.length + 1
                while stor10.length > idx:
                    uint256(stor10[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor10[stor10.length]) = arg2
    return 1
}

function readAllFrzAcc() {
    idx = 0
    while idx < stor9.length:
        mem[0] = address(stor9[idx])
        mem[32] = 15
        if 1 == bool(stor15[address(stor9[idx])]):
            stor11.length++
            if not stor11.length <= stor11.length + 1:
                s = stor11.length + sha3(11) + 1
                while sha3(11) + stor11.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            require idx < stor9.length
            mem[0] = 9
            address(stor11[stor11.length].field_0) = address(stor9[idx])
        idx = idx + 1
        continue 
    if not stor11.length:
        mem[(32 * stor11.length) + 160] = 32
        mem[(32 * stor11.length) + 192] = stor11.length
        if Mask(251, 0, stor11.length):
            mem[(32 * stor11.length) + 224] = mem[160]
            mem[(32 * stor11.length) + 256 len floor32((32 * stor11.length) - 1)] = mem[192 len floor32((32 * stor11.length) - 1)]
    else:
        mem[160] = address(stor11.field_0)
        if (32 * stor11.length) + 32 > 64:
            mem[192] = address(stor11.field_256)
            idx = 192
            s = 1
            while (32 * stor11.length) + 128 > idx:
                mem[idx + 32] = address(stor11[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
        mem[(32 * stor11.length) + 160] = 32
        mem[(32 * stor11.length) + 192] = stor11.length
        if Mask(251, 0, stor11.length):
            mem[(32 * stor11.length) + 224] = address(stor11.field_0)
            mem[(32 * stor11.length) + 256 len floor32((32 * stor11.length) - 1)] = mem[192 len floor32((32 * stor11.length) - 1)]
    return Array(len=stor11.length, data=mem[(32 * stor11.length) + 224 len 32 * stor11.length])
}

function sell(uint256 arg1) {
    require arg1
    require sellPrice
    require 10^specifiedDecimal
    emit check1((sellPrice * arg1 / 10^specifiedDecimal));
    require eth.balance(this.address) >= sellPrice * arg1 / 10^specifiedDecimal
    require this.address
    require balanceOf[address(msg.sender)] >= arg1
    require balanceOf[address(this.address)] + arg1 > balanceOf[address(this.address)]
    require not stor15[address(msg.sender)]
    require not stor15[address(this.address)]
    require not stor14
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[this.address] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    readSellTokenAmount += arg1
    if stor10.length <= 0:
        stor10.length++
        if not stor10.length <= stor10.length + 1:
            idx = stor10.length + 1
            while stor10.length > idx:
                uint256(stor10[idx]) = 0
                idx = idx + 1
                continue 
        address(stor10[stor10.length]) = this.address
    else:
        idx = 0
        s = 0
        while idx < stor10.length:
            mem[0] = 10
            if address(stor10[idx]) != this.address:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        if not s:
            stor10.length++
            if not stor10.length <= stor10.length + 1:
                idx = stor10.length + 1
                while stor10.length > idx:
                    uint256(stor10[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor10[stor10.length]) = this.address
    emit check((sellPrice * arg1 / 10^specifiedDecimal));
    call msg.sender with:
       value sellPrice * arg1 / 10^specifiedDecimal wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = 0x8f4ffcb100000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = msg.sender
    mem[ceil32(arg3.length) + 164] = arg2
    mem[ceil32(arg3.length) + 196] = this.address
    mem[ceil32(arg3.length) + 228] = 128
    mem[ceil32(arg3.length) + 260] = arg3.length
    if not arg3.length:
        if not arg3.length % 32:
            if ext_code.size(arg1):
                call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining - 710 wei
                    args 0, uint32(msg.sender), arg2, address(this.address), 128, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
                if ext_call.success:
                    return 1
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
            if ext_code.size(arg1):
                call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len floor32(arg3.length) + 32])
                if ext_call.success:
                    return 1
    else:
        mem[ceil32(arg3.length) + 292] = mem[128]
        mem[ceil32(arg3.length) + 324 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        if ext_code.size(arg1):
            call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len arg3.length])
            if ext_call.success:
                return 1
    revert
}

function buy() payable {
    require msg.value
    require buyPrice
    require 10^specifiedDecimal
    require msg.value * 10^specifiedDecimal / buyPrice
    require msg.sender
    require balanceOf[address(this.address)] >= msg.value * 10^specifiedDecimal / buyPrice
    require balanceOf[address(msg.sender)] + (msg.value * 10^specifiedDecimal / buyPrice) > balanceOf[address(msg.sender)]
    require not stor15[address(this.address)]
    require not stor15[address(msg.sender)]
    require not stor14
    balanceOf[address(this.address)] -= msg.value * 10^specifiedDecimal / buyPrice
    balanceOf[msg.sender] += msg.value * 10^specifiedDecimal / buyPrice
    emit Transfer((msg.value * 10^specifiedDecimal / buyPrice), this.address, msg.sender);
    readSellTokenAmount += msg.value * 10^specifiedDecimal / buyPrice
    if stor10.length <= 0:
        stor10.length++
        if not stor10.length <= stor10.length + 1:
            idx = stor10.length + 1
            while stor10.length > idx:
                uint256(stor10[idx]) = 0
                idx = idx + 1
                continue 
        address(stor10[stor10.length]) = msg.sender
    else:
        idx = 0
        s = 0
        while idx < stor10.length:
            mem[0] = 10
            if address(stor10[idx]) != msg.sender:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        if not s:
            stor10.length++
            if not stor10.length <= stor10.length + 1:
                idx = stor10.length + 1
                while stor10.length > idx:
                    uint256(stor10[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor10[stor10.length]) = msg.sender
    call msg.sender with:
       value msg.value - (msg.value * 10^specifiedDecimal / buyPrice * buyPrice / 10^specifiedDecimal) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if stor10.length <= 0:
        stor10.length++
        if not stor10.length <= stor10.length + 1:
            idx = stor10.length + 1
            while stor10.length > idx:
                uint256(stor10[idx]) = 0
                idx = idx + 1
                continue 
        address(stor10[stor10.length]) = msg.sender
    else:
        idx = 0
        s = 0
        while idx < stor10.length:
            mem[0] = 10
            if address(stor10[idx]) != msg.sender:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        if not s:
            stor10.length++
            if not stor10.length <= stor10.length + 1:
                idx = stor10.length + 1
                while stor10.length > idx:
                    uint256(stor10[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor10[stor10.length]) = msg.sender
}



}

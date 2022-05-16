contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 tokenForSale;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 soldTokens;
uint256 unitsOneEthCanBuy;
uint256 minPurchaseQty;
mapping of uint8 stor11;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function TokenForSale() {
    return tokenForSale
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function soldTokens() {
    return soldTokens
}

function unitsOneEthCanBuy() {
    return unitsOneEthCanBuy
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function airdrops(address arg1) {
    return bool(stor11[arg1])
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function minPurchaseQty() {
    return minPurchaseQty
}

function startSale() {
    require msg.sender == owner
    soldTokens = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function changePrice(uint256 arg1) {
    require msg.sender == owner
    unitsOneEthCanBuy = arg1
}

function increaseSaleLimit(uint256 arg1) {
    require msg.sender == owner
    tokenForSale = arg1 * 10^decimals
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function increaseMinPurchaseQty(uint256 arg1) {
    require msg.sender == owner
    minPurchaseQty = arg1 * 10^decimals
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function changeOwnerWithTokens(address arg1) {
    require msg.sender == owner
    balanceOf[address(arg1)] += balanceOf[address(stor0.field_0)]
    balanceOf[address(stor0.field_0)] = 0
    require balanceOf[address(stor0.field_0)] + balanceOf[address(arg1)] == balanceOf[address(stor0.field_0)] + balanceOf[address(arg1)]
    owner = arg1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    return 1
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require tokenForSale >= soldTokens
    if msg.value:
        require msg.value
        require msg.value * unitsOneEthCanBuy / msg.value == unitsOneEthCanBuy
    require soldTokens + (msg.value * unitsOneEthCanBuy) >= soldTokens
    soldTokens += msg.value * unitsOneEthCanBuy
    require msg.value * unitsOneEthCanBuy >= minPurchaseQty
    require balanceOf[address(stor0.field_0)] >= msg.value * unitsOneEthCanBuy
    require msg.sender
    require balanceOf[address(stor0.field_0)] >= msg.value * unitsOneEthCanBuy
    require balanceOf[address(msg.sender)] + (msg.value * unitsOneEthCanBuy) > balanceOf[address(msg.sender)]
    require msg.value * unitsOneEthCanBuy <= balanceOf[address(stor0.field_0)]
    balanceOf[address(stor0.field_0)] += -1 * msg.value * unitsOneEthCanBuy
    require balanceOf[address(msg.sender)] + (msg.value * unitsOneEthCanBuy) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value * unitsOneEthCanBuy
    emit Transfer((msg.value * unitsOneEthCanBuy), owner, msg.sender);
    require balanceOf[address(stor0.field_0)] + balanceOf[address(msg.sender)] == balanceOf[address(stor0.field_0)] + balanceOf[address(msg.sender)]
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function airDrop(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    if not arg2 * 10^decimals:
        require balanceOf[address(stor0.field_0)] >= arg2 * 10^decimals * arg1.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 11
            if stor11[mem[(32 * idx) + 140 len 20]]:
                idx = idx + 1
                continue 
            require idx < arg1.length
            stor11[mem[(32 * idx) + 140 len 20]] = 1
            require idx < arg1.length
            _65 = mem[(32 * idx) + 128]
            require mem[(32 * idx) + 140 len 20]
            require balanceOf[address(stor0.field_0)] >= arg2 * 10^decimals
            require balanceOf[address(mem[(32 * idx) + 128])] + (arg2 * 10^decimals) > balanceOf[address(mem[(32 * idx) + 128])]
            _73 = sha3(address(mem[(32 * idx) + 128]), 6)
            require arg2 * 10^decimals <= balanceOf[address(stor0.field_0)]
            balanceOf[address(stor0.field_0)] += -1 * arg2 * 10^decimals
            require balanceOf[address(mem[(32 * idx) + 128])] + (arg2 * 10^decimals) >= balanceOf[address(mem[(32 * idx) + 128])]
            balanceOf[address(mem[(32 * idx) + 128])] += arg2 * 10^decimals
            mem[(32 * arg1.length) + 128] = arg2 * 10^decimals
            emit Transfer((arg2 * 10^decimals), owner, address(_65));
            mem[0] = owner
            mem[32] = 6
            require balanceOf[address(stor0.field_0)] + balanceOf[address(_65)] == balanceOf[address(stor0.field_0)] + stor[_73]
            idx = idx + 1
            continue 
    else:
        require arg2 * 10^decimals
        require arg2 * 10^decimals * arg1.length / arg2 * 10^decimals == arg1.length
        require balanceOf[address(stor0.field_0)] >= arg2 * 10^decimals * arg1.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 11
            if stor11[mem[(32 * idx) + 140 len 20]]:
                idx = idx + 1
                continue 
            require idx < arg1.length
            stor11[mem[(32 * idx) + 140 len 20]] = 1
            require idx < arg1.length
            _66 = mem[(32 * idx) + 128]
            require mem[(32 * idx) + 140 len 20]
            require balanceOf[address(stor0.field_0)] >= arg2 * 10^decimals
            require balanceOf[address(mem[(32 * idx) + 128])] + (arg2 * 10^decimals) > balanceOf[address(mem[(32 * idx) + 128])]
            _76 = sha3(address(mem[(32 * idx) + 128]), 6)
            require arg2 * 10^decimals <= balanceOf[address(stor0.field_0)]
            balanceOf[address(stor0.field_0)] += -1 * arg2 * 10^decimals
            require balanceOf[address(mem[(32 * idx) + 128])] + (arg2 * 10^decimals) >= balanceOf[address(mem[(32 * idx) + 128])]
            balanceOf[address(mem[(32 * idx) + 128])] += arg2 * 10^decimals
            mem[(32 * arg1.length) + 128] = arg2 * 10^decimals
            emit Transfer((arg2 * 10^decimals), owner, address(_66));
            mem[0] = owner
            mem[32] = 6
            require balanceOf[address(stor0.field_0)] + balanceOf[address(_66)] == balanceOf[address(stor0.field_0)] + stor[_76]
            idx = idx + 1
            continue 
}



}

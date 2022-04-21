contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;
uint8 stor11;

function _fallback() payable {
    stor3 = 18
    require not msg.value
    mem[96 len -7127] = code.data[7666 len -7127]
    mem[64] = -7031
    stor0 = msg.sender
    stor4 = mem[96] * 10^stor3
    stor5[address(msg.sender)] = stor4
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor11 = 0
    return code.data[539 len 7127]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 sellPrice;
uint256 buyPrice;
mapping of uint8 stor9;
array of struct stor10;
uint8 stor11;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sellPrice() {
    return sellPrice
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor9[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function sub_f4ff5601(?) {
    require msg.sender == owner
    stor11 = uint8(arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    sellPrice = arg1
    buyPrice = arg2
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor9[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
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

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] > arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require not stor9[address(msg.sender)]
    require not stor9[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function freezeAll(bool arg1) {
    require msg.sender == owner
    idx = 0
    while idx < stor10.length:
        require msg.sender == owner
        mem[0] = stor10[idx].field_0
        mem[32] = 9
        stor9[stor10[idx].field_0] = uint8(arg1)
        mem[96] = stor10[idx].field_0
        mem[128] = arg1
        emit FrozenFunds(stor10[idx].field_0, arg1);
        idx = idx + 1
        continue 
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function buy() payable {
    require buyPrice
    require msg.sender
    require balanceOf[address(this.address)] > msg.value / buyPrice
    require balanceOf[address(msg.sender)] + (msg.value / buyPrice) > balanceOf[address(msg.sender)]
    require not stor9[address(this.address)]
    require not stor9[address(msg.sender)]
    balanceOf[address(this.address)] -= msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] > arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require not stor9[address(arg1)]
    require not stor9[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sell(uint256 arg1) {
    require stor11
    require eth.balance(this.address) >= arg1 * sellPrice
    require this.address
    require balanceOf[address(msg.sender)] > arg1
    require balanceOf[address(this.address)] + arg1 > balanceOf[address(this.address)]
    require not stor9[address(msg.sender)]
    require not stor9[address(this.address)]
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[address(this.address)] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_4be847ab(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length == arg2.length
    s = 0
    idx = 0
    while idx < stor10.length:
        require idx < mem[(32 * arg1.length) + 128]
        _40 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[96]
        _42 = mem[(32 * idx) + 128]
        require mem[(32 * idx) + 140 len 20]
        require balanceOf[address(msg.sender)] > 10^16 * mem[(32 * idx) + (32 * arg1.length) + 160]
        require balanceOf[address(mem[(32 * idx) + 128])] + (10^16 * mem[(32 * idx) + (32 * arg1.length) + 160]) > balanceOf[address(mem[(32 * idx) + 128])]
        require not stor9[address(msg.sender)]
        require not stor9[address(mem[(32 * idx) + 128])]
        balanceOf[address(msg.sender)] += -1 * 10^16 * mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[32] = 5
        balanceOf[address(mem[(32 * idx) + 128])] += 10^16 * mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[mem[64]] = 10^16 * mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[mem[64]], msg.sender, address(_42));
        stor10.length++
        if not stor10.length > stor10.length + 1:
            mem[0] = 10
            _54 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[96]
            mem[_54] = mem[(32 * idx) + 140 len 20]
            mem[_54 + 32] = 10^16 * _40
            stor10[stor10.length].field_0 = mem[_54 + 12 len 20]
        else:
            s = sha3(10) + (2 * stor10.length + 1)
            while sha3(10) + (2 * stor10.length) > s:
                stor[s] = 0
                name[s] = 0
                s = s + 2
                continue 
            mem[0] = 10
            _74 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[96]
            mem[_74] = mem[(32 * idx) + 140 len 20]
            mem[_74 + 32] = 10^16 * _40
            stor10[stor10.length].field_0 = mem[_74 + 12 len 20]
        uint256(stor10[stor10.length].field_256) = 10^16 * _40
        require idx < stor10.length
        require msg.sender == owner
        mem[0] = stor10[idx].field_0
        mem[32] = 9
        stor9[stor10[idx].field_0] = 1
        mem[mem[64]] = stor10[idx].field_0
        mem[mem[64] + 32] = 1
        emit FrozenFunds(stor10[idx].field_0, 1);
        s = 10^16 * _40
        idx = idx + 1
        continue 
}



}

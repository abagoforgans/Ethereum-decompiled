contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor3 = 0
    stor4 = 1
    require not msg.value
    mem[96 len -8270] = code.data[8663 len -8270]
    mem[64] = -8174
    stor0 = mem[172 len 20]
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    return code.data[393 len 8270]
}



// =====================  Runtime code  =====================


address sub_2ea9cccbAddress;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
uint256 price;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor7;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_2ea9cccb(?) {
    return sub_2ea9cccbAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function price() {
    return price
}

function frozenAccount(address arg1) {
    return bool(stor7[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function sub_3e5ec713(?) {
    require msg.sender == sub_2ea9cccbAddress
    price = arg1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == sub_2ea9cccbAddress
    stor7[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function sub_c34ab974(?) {
    require msg.sender == sub_2ea9cccbAddress
    require sub_2ea9cccbAddress != arg1
    require ext_code.size(arg1) > 0
    sub_2ea9cccbAddress = arg1
}

function sub_07f98c05(?) {
    require msg.sender == sub_2ea9cccbAddress
    require arg1
    require ext_code.size(arg1) <= 0
    require eth.balance(this.address) >= arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_3cca3960(?) {
    require msg.sender == sub_2ea9cccbAddress
    require ext_code.size(arg1) > 0
    balanceOf[stor0] = 0
    balanceOf[address(arg1)] += balanceOf[stor0]
    emit Transfer(balanceOf[stor0], Array(len=14, data='manager change'), sub_2ea9cccbAddress, arg1);
}

function sub_3c2b1c63(?) payable {
    require msg.value >= 10^12
    require msg.sender
    require balanceOf[stor0] >= msg.value - (msg.value % 10^12) / 10^12 * price
    require balanceOf[address(msg.sender)] + (msg.value - (msg.value % 10^12) / 10^12 * price) > balanceOf[address(msg.sender)]
    require not stor7[stor0]
    require not stor7[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value - (msg.value % 10^12) / 10^12 * price
    balanceOf[stor0] += -1 * msg.value - (msg.value % 10^12) / 10^12 * price
    require balanceOf[address(msg.sender)] + balanceOf[stor0] == balanceOf[address(msg.sender)] + balanceOf[stor0]
    if ext_code.size(msg.sender) > 0:
        require ext_code.size(msg.sender)
        call msg.sender.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining - 710 wei
            args 0, uint32(msg.sender), msg.value - (msg.value % 10^12) / 10^12 * price, 96, 0, mem[228]
        require ext_call.success
    emit Transfer(msg.value - (msg.value % 10^12) / 10^12 * price, Array(len=15, data='buyFixedFeather'), sub_2ea9cccbAddress, msg.sender);
    if msg.value % 10^12 > 0:
        call msg.sender with:
           value msg.value % 10^12 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    return (msg.value - (msg.value % 10^12) / 10^12 * price)
}

function sub_56e9a2f5(?) payable {
    require msg.value >= 10^12
    require msg.value - (msg.value % 10^12) / 10^12 * price >= arg1
    require msg.sender
    require balanceOf[stor0] >= msg.value - (msg.value % 10^12) / 10^12 * price
    require balanceOf[address(msg.sender)] + (msg.value - (msg.value % 10^12) / 10^12 * price) > balanceOf[address(msg.sender)]
    require not stor7[stor0]
    require not stor7[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value - (msg.value % 10^12) / 10^12 * price
    balanceOf[stor0] += -1 * msg.value - (msg.value % 10^12) / 10^12 * price
    require balanceOf[address(msg.sender)] + balanceOf[stor0] == balanceOf[address(msg.sender)] + balanceOf[stor0]
    if ext_code.size(msg.sender) > 0:
        require ext_code.size(msg.sender)
        call msg.sender.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining - 710 wei
            args 0, uint32(msg.sender), msg.value - (msg.value % 10^12) / 10^12 * price, 96, 0, mem[228]
        require ext_call.success
    emit Transfer(msg.value - (msg.value % 10^12) / 10^12 * price, Array(len=15, data='buyFixedFeather'), sub_2ea9cccbAddress, msg.sender);
    if msg.value % 10^12 > 0:
        call msg.sender with:
           value msg.value % 10^12 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    return (msg.value - (msg.value % 10^12) / 10^12 * price)
}

function sub_fa4f740a(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 'barb'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]) != sha3('barb'):
        mem[ceil32(arg2.length) + 128] = 'feather'
        mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
        if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]) != sha3('feather'):
            mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
            require sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]) == sha3(None)
    mem[ceil32(arg2.length) + 128] = 'barb'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]) != sha3('barb'):
        return (1000 * arg1)
    return arg1
}

function mintToken(uint256 arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    require msg.sender == sub_2ea9cccbAddress
    mem[ceil32(arg2.length) + 128] = 'barb'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]) != sha3('barb'):
        mem[ceil32(arg2.length) + 128] = 'feather'
        mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
        if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]) != sha3('feather'):
            mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
            require sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]) == sha3(None)
    mem[ceil32(arg2.length) + 128] = 'barb'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]) != sha3('barb'):
        balanceOf[stor0] += 1000 * arg1
        totalSupply += 1000 * arg1
        emit Transfer(1000 * arg1, Array(len=4, data='mint'), 0, sub_2ea9cccbAddress);
    else:
        balanceOf[stor0] += arg1
        totalSupply += arg1
        emit Transfer(arg1, Array(len=4, data='mint'), 0, sub_2ea9cccbAddress);
}

function burn(uint256 arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 'barb'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]) != sha3('barb'):
        mem[ceil32(arg2.length) + 128] = 'feather'
        mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
        if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]) != sha3('feather'):
            mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
            require sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]) == sha3(None)
    mem[ceil32(arg2.length) + 128] = 'barb'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]) != sha3('barb'):
        require balanceOf[address(msg.sender)] >= 1000 * arg1
        balanceOf[address(msg.sender)] += -1000 * arg1
        totalSupply += -1000 * arg1
        emit Burn((1000 * arg1), msg.sender);
    else:
        require balanceOf[address(msg.sender)] >= arg1
        balanceOf[address(msg.sender)] -= arg1
        totalSupply -= arg1
        emit Burn(arg1, msg.sender);
    return 1
}

function sub_c414fdaa(?) {
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = arg5.length
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    require msg.sender == sub_2ea9cccbAddress
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 'barb'
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32] = mem[-(arg4.length % 32) + floor32(arg4.length) + 160 len arg4.length % 32]
    if sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 160 len arg4.length % 32]) != sha3('barb'):
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 'feather'
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32] = mem[-(arg4.length % 32) + floor32(arg4.length) + 160 len arg4.length % 32]
        if sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 160 len arg4.length % 32]) != sha3('feather'):
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 160 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32] = mem[-(arg4.length % 32) + floor32(arg4.length) + 160 len arg4.length % 32]
            require sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 160 len arg4.length % 32]) == sha3(None)
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 'barb'
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32] = mem[-(arg4.length % 32) + floor32(arg4.length) + 160 len arg4.length % 32]
    require arg2
    if sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 160 len arg4.length % 32]) != sha3('barb'):
        require balanceOf[address(arg1)] >= 1000 * arg3
        require balanceOf[address(arg2)] + (1000 * arg3) > balanceOf[address(arg2)]
        require not stor7[address(arg1)]
        require not stor7[address(arg2)]
        balanceOf[address(arg2)] += 1000 * arg3
        balanceOf[address(arg1)] += -1000 * arg3
        require balanceOf[address(arg2)] + balanceOf[address(arg1)] == balanceOf[address(arg2)] + balanceOf[address(arg1)]
        if ext_code.size(arg2) > 0:
            require ext_code.size(arg2)
            call arg2.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, 1000 * arg3, 96, 0, mem[ceil32(arg4.length) + ceil32(arg5.length) + 292]
            require ext_call.success
        emit Transfer(1000 * arg3, Array(len=arg5.length, data=arg5[all]), arg1, arg2);
    else:
        require balanceOf[address(arg1)] >= arg3
        require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
        require not stor7[address(arg1)]
        require not stor7[address(arg2)]
        balanceOf[address(arg2)] += arg3
        balanceOf[address(arg1)] -= arg3
        require balanceOf[address(arg2)] + balanceOf[address(arg1)] == balanceOf[address(arg2)] + balanceOf[address(arg1)]
        if ext_code.size(arg2) > 0:
            require ext_code.size(arg2)
            call arg2.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg3, 96, 0, mem[ceil32(arg4.length) + ceil32(arg5.length) + 292]
            require ext_call.success
        emit Transfer(arg3, Array(len=arg5.length, data=arg5[all]), arg1, arg2);
}

function sub_97d9a312(?) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 'barb'
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
    if sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160 len arg3.length % 32]) != sha3('barb'):
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 'feather'
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
        if sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160 len arg3.length % 32]) != sha3('feather'):
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
            require sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160 len arg3.length % 32]) == sha3(None)
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 'barb'
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
    require arg1
    if sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160 len arg3.length % 32]) != sha3('barb'):
        require balanceOf[address(msg.sender)] >= 1000 * arg2
        require balanceOf[address(arg1)] + (1000 * arg2) > balanceOf[address(arg1)]
        require not stor7[address(msg.sender)]
        require not stor7[address(arg1)]
        balanceOf[address(arg1)] += 1000 * arg2
        balanceOf[address(msg.sender)] += -1000 * arg2
        require balanceOf[address(arg1)] + balanceOf[address(msg.sender)] == balanceOf[address(arg1)] + balanceOf[address(msg.sender)]
        if ext_code.size(arg1) > 0:
            require ext_code.size(arg1)
            call arg1.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, 1000 * arg2, 96, 0, mem[ceil32(arg3.length) + ceil32(arg4.length) + 292]
            require ext_call.success
        emit Transfer(1000 * arg2, Array(len=arg4.length, data=arg4[all]), msg.sender, arg1);
    else:
        require balanceOf[address(msg.sender)] >= arg2
        require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
        require not stor7[address(msg.sender)]
        require not stor7[address(arg1)]
        balanceOf[address(arg1)] += arg2
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + balanceOf[address(msg.sender)] == balanceOf[address(arg1)] + balanceOf[address(msg.sender)]
        if ext_code.size(arg1) > 0:
            require ext_code.size(arg1)
            call arg1.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg2, 96, 0, mem[ceil32(arg3.length) + ceil32(arg4.length) + 292]
            require ext_call.success
        emit Transfer(arg2, Array(len=arg4.length, data=arg4[all]), msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2, string arg3) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = 'barb'
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
    if sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]) != sha3('barb'):
        mem[ceil32(arg3.length) + 128] = 'feather'
        mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
        if sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]) != sha3('feather'):
            mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
            require sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]) == sha3(None)
    mem[ceil32(arg3.length) + 128] = 'barb'
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
    require arg1
    if sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]) != sha3('barb'):
        require balanceOf[address(msg.sender)] >= 1000 * arg2
        require balanceOf[address(arg1)] + (1000 * arg2) > balanceOf[address(arg1)]
        require not stor7[address(msg.sender)]
        require not stor7[address(arg1)]
        balanceOf[address(arg1)] += 1000 * arg2
        balanceOf[address(msg.sender)] += -1000 * arg2
        require balanceOf[address(arg1)] + balanceOf[address(msg.sender)] == balanceOf[address(arg1)] + balanceOf[address(msg.sender)]
        if ext_code.size(arg1) <= 0:
            emit Transfer(address rg1, address rg2, uint256 rg3, bytes rg4):
                          1000 * arg2,
                          64,
                          0,
                          mem[ceil32(arg3.length) + 224],
                          msg.sender,
                          arg1,
        else:
            require ext_code.size(arg1)
            call arg1.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, 1000 * arg2, 96, 0, mem[ceil32(arg3.length) + 260]
            require ext_call.success
            emit Transfer(address rg1, address rg2, uint256 rg3, bytes rg4):
                          1000 * arg2,
                          64,
                          0,
                          0,
                          0,
                          msg.sender,
                          arg1,
    else:
        require balanceOf[address(msg.sender)] >= arg2
        require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
        require not stor7[address(msg.sender)]
        require not stor7[address(arg1)]
        balanceOf[address(arg1)] += arg2
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + balanceOf[address(msg.sender)] == balanceOf[address(arg1)] + balanceOf[address(msg.sender)]
        if ext_code.size(arg1) <= 0:
            emit Transfer(address rg1, address rg2, uint256 rg3, bytes rg4):
                          arg2,
                          64,
                          0,
                          mem[ceil32(arg3.length) + 224],
                          msg.sender,
                          arg1,
        else:
            require ext_code.size(arg1)
            call arg1.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg2, 96, 0, mem[ceil32(arg3.length) + 260]
            require ext_call.success
            emit Transfer(address rg1, address rg2, uint256 rg3, bytes rg4):
                          arg2,
                          64,
                          0,
                          0,
                          0,
                          msg.sender,
                          arg1,
}



}

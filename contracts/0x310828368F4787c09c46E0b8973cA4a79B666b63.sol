contract main {




// =====================  Runtime code  =====================


const decimals = 18


array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
mapping of uint256 balanceOf;
address stor4;
address stor5;
address stor6;
mapping of uint8 stor7;
uint256 sub_e503fe5b;
uint256 sub_b08663c6;
uint256 stor10;
uint8 stor11;
uint8 stor11; offset 8
uint256 stor11; offset 16
uint256 stor11; offset 8
uint256 stor12;
uint256 minBuyAmount;
address stor14;
address stor15;
mapping of uint8 stor16;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_2ac6e2e4(?) {
    return bool(stor7[msg.sender])
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9c15296a(?) {
    return bool(stor15)
}

function sub_b08663c6(?) {
    return sub_b08663c6
}

function balance() {
    return balanceOf[msg.sender]
}

function sub_e503fe5b(?) {
    return sub_e503fe5b
}

function upgraded(address arg1) {
    return bool(stor16[arg1])
}

function minBuyAmount() {
    return minBuyAmount
}

function sub_c1ea3853(?) {
    if stor4 != msg.sender:
        revert with 0, 'Contract owner is required'
    selfdestruct(stor4)
}

function _fallback() payable {
    revert
}

function sub_ece5be86(?) {
    return (block.timestamp - stor10 / 24 * 3600)
}

function sub_38eb519f(?) {
    return ((1095 * block.timestamp - stor10 / 24 * 3600 / 365) + 100)
}

function deposit(string arg1) payable {
    emit Deposit(msg.value, Array(len=arg1.length, data=arg1[all]), msg.sender);
}

function sub_7960049e(?) {
    if stor4 != msg.sender:
        revert with 0, 'Contract owner is required'
    stor15 = arg1
}

function setMinTrade(uint256 arg1) {
    if stor5 != msg.sender:
        revert with 0, 'Contract manager is required'
    minBuyAmount = arg1
}

function sub_6b760a94(?) {
    if stor4 != msg.sender:
        revert with 0, 'Contract owner is required'
    stor4 = arg1
    stor5 = arg2
    stor6 = arg3
}

function broadcast(string arg1) {
    if stor5 != msg.sender:
        revert with 0, 'Contract manager is required'
    emit Broadcast(Array(len=arg1.length, data=arg1[all]));
}

function freezeAccount(address arg1, bool arg2) {
    if stor5 != msg.sender:
        revert with 0, 'Contract manager is required'
    stor7[address(arg1)] = uint8(arg2)
    emit FrozenFunds(arg1, arg2);
}

function sub_2bb1b957(?) {
    if stor5 != msg.sender:
        revert with 0, 'Contract manager is required'
    uint8(stor11.field_0) = uint8(arg1)
    Mask(248, 0, stor11.field_8) = Mask(248, 0, arg2)
    Mask(240, 0, stor11.field_16) = Mask(240, 16, arg1) >> 16
}

function sub_5656fef3(?) {
    if stor5 != msg.sender:
        revert with 0, 'Contract manager is required'
    if arg1 <= 0:
        revert with 0, 'Coeficients cant be zero'
    if arg2 <= 0:
        revert with 0, 'Coeficients cant be zero'
    sub_e503fe5b = arg1
    sub_b08663c6 = arg2
    emit 0x281f4878: arg1, arg2
}

function sub_d41edb7b(?) {
    if (10^18 * 1095 * block.timestamp - stor10 / 24 * 3600 / 365) + 100 * 10^18 / 100 * sub_e503fe5b * stor12 / 10^18 / 10^18 <= 0:
        revert with 0, 'USD price cant be zero'
    return ((10^18 * 1095 * block.timestamp - stor10 / 24 * 3600 / 365) + 100 * 10^18 / 100 * sub_e503fe5b * stor12 / 10^18 / 10^18)
}

function withdraw(uint256 arg1, string arg2) {
    if stor4 != msg.sender:
        revert with 0, 'Contract owner is required'
    require arg1 <= eth.balance(this.address)
    call stor6 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(arg1, Array(len=arg2.length, data=arg2[all]), stor6);
}

function priceInETH() {
    if (10^18 * 1095 * block.timestamp - stor10 / 24 * 3600 / 365) + 100 * 10^18 / 100 * sub_e503fe5b * stor12 / 10^18 / 10^18 <= 0:
        revert with 0, 'USD price cant be zero'
    if sub_b08663c6 <= 0:
        revert with 0, 'Cant deduce zero change'
    require sub_b08663c6
    return (1000000000000000000 * 10^18 / sub_b08663c6 * (10^18 * 1095 * block.timestamp - stor10 / 24 * 3600 / 365) + 100 * 10^18 / 100 * sub_e503fe5b * stor12 / 10^18 / 10^18 / 10^18)
}

function transfer(address arg1, uint256 arg2) {
    if stor7[msg.sender]:
        revert with 0, 'Account is frozen'
    if stor7[address(arg1)]:
        revert with 0, 'Account is frozen'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'Not enough funds'
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'BufferOverflow on receiver side'
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function tokensPerETH() {
    if (10^18 * 1095 * block.timestamp - stor10 / 24 * 3600 / 365) + 100 * 10^18 / 100 * sub_e503fe5b * stor12 / 10^18 / 10^18 <= 0:
        revert with 0, 'USD price cant be zero'
    if sub_b08663c6 <= 0:
        revert with 0, 'Cant deduce zero change'
    require sub_b08663c6
    if 1000000000000000000 * 10^18 / sub_b08663c6 * (10^18 * 1095 * block.timestamp - stor10 / 24 * 3600 / 365) + 100 * 10^18 / 100 * sub_e503fe5b * stor12 / 10^18 / 10^18 / 10^18 <= 0:
        revert with 0, 'Cant deduce zero change'
    require 1000000000000000000 * 10^18 / sub_b08663c6 * (10^18 * 1095 * block.timestamp - stor10 / 24 * 3600 / 365) + 100 * 10^18 / 100 * sub_e503fe5b * stor12 / 10^18 / 10^18 / 10^18
    return (10^18 * 1000000000000000000 * 10^18 / 1000000000000000000 * 10^18 / sub_b08663c6 * (10^18 * 1095 * block.timestamp - stor10 / 24 * 3600 / 365) + 100 * 10^18 / 100 * sub_e503fe5b * stor12 / 10^18 / 10^18 / 10^18 / 10^18)
}

function mint(address arg1, uint256 arg2, string arg3) {
    mem[128 len arg3.length] = arg3[all]
    if stor4 != msg.sender:
        revert with 0, 'Contract owner is required'
    balanceOf[this.address] += 10^18 * arg2
    totalSupply += 10^18 * arg2
    if 10^18 * arg2 > balanceOf[address(this.address)]:
        revert with 0, 'Not enough funds'
    if balanceOf[address(arg1)] + (10^18 * arg2) < balanceOf[address(arg1)]:
        revert with 0, 'BufferOverflow on receiver side'
    balanceOf[address(this.address)] += -1 * 10^18 * arg2
    balanceOf[arg1] += 10^18 * arg2
    emit Transfer((10^18 * arg2), this.address, arg1);
    mem[ceil32(arg3.length) + 128] = 10^18 * arg2
    mem[ceil32(arg3.length) + 160] = 64
    mem[ceil32(arg3.length) + 192] = arg3.length
    if 0 < arg3.length:
        mem[ceil32(arg3.length) + 224] = mem[128]
        mem[ceil32(arg3.length) + 256 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    emit Mint(10^18 * arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 224 len arg3.length]), arg1);
}

function sub_23814798(?) {
    if stor5 != msg.sender:
        if arg1 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract manager or wallet owner is required'
    if not stor15:
        revert with 0, 'New version not yet available'
    require ext_code.size(stor15)
    call stor15.0xf4b489e7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Your account already been upgraded'
    require ext_code.size(stor15)
    call stor15.0x37cc1828 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if balanceOf[address(arg1)] > balanceOf[address(msg.sender)]:
        revert with 0, 'Not enough funds'
    if balanceOf[address(this.address)] + balanceOf[address(arg1)] < balanceOf[address(this.address)]:
        revert with 0, 'BufferOverflow on receiver side'
    balanceOf[address(msg.sender)] -= balanceOf[address(arg1)]
    balanceOf[this.address] += balanceOf[address(arg1)]
    emit Transfer(balanceOf[address(arg1)], msg.sender, this.address);
    balanceOf[this.address] -= balanceOf[address(arg1)]
    totalSupply -= balanceOf[address(arg1)]
    emit Burn(balanceOf[address(arg1)], 'Upgrading to new version', arg1);
}

function sub_8632f2ad(?) {
    if stor5 != msg.sender:
        if msg.sender != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract manager or wallet owner is required'
    if not stor15:
        revert with 0, 'New version not yet available'
    require ext_code.size(stor15)
    call stor15.0xf4b489e7 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Your account already been upgraded'
    require ext_code.size(stor15)
    call stor15.0x37cc1828 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
        revert with 0, 'Not enough funds'
    if balanceOf[address(this.address)] + balanceOf[address(msg.sender)] < balanceOf[address(this.address)]:
        revert with 0, 'BufferOverflow on receiver side'
    balanceOf[address(msg.sender)] = 0
    balanceOf[this.address] += balanceOf[address(msg.sender)]
    emit Transfer(balanceOf[address(msg.sender)], msg.sender, this.address);
    balanceOf[this.address] -= balanceOf[address(msg.sender)]
    totalSupply -= balanceOf[address(msg.sender)]
    emit Burn(balanceOf[address(msg.sender)], 'Upgrading to new version', msg.sender);
}

function sub_37cc1828(?) {
    if stor5 != msg.sender:
        revert with 0, 'Contract manager is required'
    if stor14 != arg1:
        if stor16[address(arg1)]:
            revert with 0, 'Account already been upgraded'
        stor16[address(arg1)] = 1
        require ext_code.size(stor14)
        call stor14.0x70a08231 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        balanceOf[this.address] += ext_call.return_data[0]
        totalSupply += ext_call.return_data[0]
        if ext_call.return_data[0] > balanceOf[address(this.address)]:
            revert with 0, 'Not enough funds'
        if balanceOf[address(arg1)] + ext_call.return_data[0] < balanceOf[address(arg1)]:
            revert with 0, 'BufferOverflow on receiver side'
        balanceOf[address(this.address)] -= ext_call.return_data[0]
        balanceOf[arg1] += ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], this.address, arg1);
        emit Mint(ext_call.return_data[0], 'Upgrade from previous version', arg1);
    else:
        if stor16[address(this.address)]:
            revert with 0, 'Account already been upgraded'
        stor16[address(this.address)] = 1
        require ext_code.size(stor14)
        call stor14.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        balanceOf[this.address] += ext_call.return_data[0]
        totalSupply += ext_call.return_data[0]
        if ext_call.return_data[0] > balanceOf[address(this.address)]:
            revert with 0, 'Not enough funds'
        if balanceOf[address(this.address)] + ext_call.return_data[0] < balanceOf[address(this.address)]:
            revert with 0, 'BufferOverflow on receiver side'
        balanceOf[address(this.address)] -= ext_call.return_data[0]
        balanceOf[this.address] += ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], this.address, this.address);
        emit Mint(ext_call.return_data[0], 'Upgrade from previous version', this.address);
}

function sub_4686a527(?) {
    if stor5 != msg.sender:
        revert with 0, 'Contract manager is required'
    if stor14 != msg.sender:
        if stor16[address(msg.sender)]:
            revert with 0, 'Account already been upgraded'
        stor16[address(msg.sender)] = 1
        require ext_code.size(stor14)
        call stor14.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        balanceOf[this.address] += ext_call.return_data[0]
        totalSupply += ext_call.return_data[0]
        if ext_call.return_data[0] > balanceOf[address(this.address)]:
            revert with 0, 'Not enough funds'
        if balanceOf[address(msg.sender)] + ext_call.return_data[0] < balanceOf[address(msg.sender)]:
            revert with 0, 'BufferOverflow on receiver side'
        balanceOf[address(this.address)] -= ext_call.return_data[0]
        balanceOf[msg.sender] += ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], this.address, msg.sender);
        emit Mint(ext_call.return_data[0], 'Upgrade from previous version', msg.sender);
    else:
        if stor16[address(this.address)]:
            revert with 0, 'Account already been upgraded'
        stor16[address(this.address)] = 1
        require ext_code.size(stor14)
        call stor14.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        balanceOf[this.address] += ext_call.return_data[0]
        totalSupply += ext_call.return_data[0]
        if ext_call.return_data[0] > balanceOf[address(this.address)]:
            revert with 0, 'Not enough funds'
        if balanceOf[address(this.address)] + ext_call.return_data[0] < balanceOf[address(this.address)]:
            revert with 0, 'BufferOverflow on receiver side'
        balanceOf[address(this.address)] -= ext_call.return_data[0]
        balanceOf[this.address] += ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], this.address, this.address);
        emit Mint(ext_call.return_data[0], 'Upgrade from previous version', this.address);
}

function sub_89f1bd3f(?) {
    mem[128 len arg2.length] = arg2[all]
    if not uint8(stor11.field_8):
        revert with 0, 'Sell currently disabled'
    if stor7[msg.sender]:
        revert with 0, 'Account is frozen'
    if (10^18 * 1095 * block.timestamp - stor10 / 24 * 3600 / 365) + 100 * 10^18 / 100 * sub_e503fe5b * stor12 / 10^18 / 10^18 <= 0:
        revert with 0, 'USD price cant be zero'
    if sub_b08663c6 <= 0:
        revert with 0, 'Cant deduce zero change'
    require sub_b08663c6
    if 1000000000000000000 * 10^18 / sub_b08663c6 * (10^18 * 1095 * block.timestamp - stor10 / 24 * 3600 / 365) + 100 * 10^18 / 100 * sub_e503fe5b * stor12 / 10^18 / 10^18 / 10^18 <= 0:
        revert with 0, 'Sell price cant be zero'
    if arg1 >= arg1 * 1000000000000000000 * 10^18 / sub_b08663c6 * (10^18 * 1095 * block.timestamp - stor10 / 24 * 3600 / 365) + 100 * 10^18 / 100 * sub_e503fe5b * stor12 / 10^18 / 10^18 / 10^18:
        revert with 0, 'BufferOverflow'
    if 1000000000000000000 * 10^18 / sub_b08663c6 * (10^18 * 1095 * block.timestamp - stor10 / 24 * 3600 / 365) + 100 * 10^18 / 100 * sub_e503fe5b * stor12 / 10^18 / 10^18 / 10^18 * arg1 / 10^18 <= 0:
        revert with 0, 'Ether amount after convert become zero - reverting'
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'Not enough funds'
    if balanceOf[address(this.address)] + arg1 < balanceOf[address(this.address)]:
        revert with 0, 'BufferOverflow on receiver side'
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[this.address] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    require arg1 <= eth.balance(this.address)
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + 128] = arg1
    mem[ceil32(arg2.length) + 160] = 1000000000000000000 * 10^18 / sub_b08663c6 * (10^18 * 1095 * block.timestamp - stor10 / 24 * 3600 / 365) + 100 * 10^18 / 100 * sub_e503fe5b * stor12 / 10^18 / 10^18 / 10^18
    mem[ceil32(arg2.length) + 192] = 96
    mem[ceil32(arg2.length) + 224] = arg2.length
    if 0 < arg2.length:
        mem[ceil32(arg2.length) + 256] = mem[128]
        mem[ceil32(arg2.length) + 288 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    emit 0xe277b208: arg1, 1000000000000000000 * 10^18 / sub_b08663c6 * (10^18 * 1095 * block.timestamp - stor10 / 24 * 3600 / 365) + 100 * 10^18 / 100 * sub_e503fe5b * stor12 / 10^18 / 10^18 / 10^18, Array(len=arg2.length, data=mem[ceil32(arg2.length) + 256 len arg2.length]), msg.sender
}

function buy(string arg1) payable {
    if not uint8(stor11.field_0):
        revert with 0, 'Buy currently disabled'
    if stor7[msg.sender]:
        revert with 0, 'Account is frozen'
    if sub_b08663c6 * msg.value / 10^18 <= minBuyAmount:
        revert with 0, 'You cant buy lesser than min USD amount'
    if (10^18 * 1095 * block.timestamp - stor10 / 24 * 3600 / 365) + 100 * 10^18 / 100 * sub_e503fe5b * stor12 / 10^18 / 10^18 <= 0:
        revert with 0, 'USD price cant be zero'
    if sub_b08663c6 <= 0:
        revert with 0, 'Cant deduce zero change'
    require sub_b08663c6
    if msg.value <= 0:
        revert with 0, 'Ether amount cant be zero'
    if 1000000000000000000 * 10^18 / sub_b08663c6 * (10^18 * 1095 * block.timestamp - stor10 / 24 * 3600 / 365) + 100 * 10^18 / 100 * sub_e503fe5b * stor12 / 10^18 / 10^18 / 10^18 <= 0:
        revert with 0, 'Buy price cant be zero'
    if msg.value >= 10^18 * msg.value:
        revert with 0, 'BufferOverflow'
    require 1000000000000000000 * 10^18 / sub_b08663c6 * (10^18 * 1095 * block.timestamp - stor10 / 24 * 3600 / 365) + 100 * 10^18 / 100 * sub_e503fe5b * stor12 / 10^18 / 10^18 / 10^18
    if 10^18 * msg.value / 1000000000000000000 * 10^18 / sub_b08663c6 * (10^18 * 1095 * block.timestamp - stor10 / 24 * 3600 / 365) + 100 * 10^18 / 100 * sub_e503fe5b * stor12 / 10^18 / 10^18 / 10^18 > balanceOf[address(this.address)]:
        revert with 0, 'Not enough funds'
    if balanceOf[address(msg.sender)] + (10^18 * msg.value / 1000000000000000000 * 10^18 / sub_b08663c6 * (10^18 * 1095 * block.timestamp - stor10 / 24 * 3600 / 365) + 100 * 10^18 / 100 * sub_e503fe5b * stor12 / 10^18 / 10^18 / 10^18) < balanceOf[address(msg.sender)]:
        revert with 0, 'BufferOverflow on receiver side'
    balanceOf[address(this.address)] -= 10^18 * msg.value / 1000000000000000000 * 10^18 / sub_b08663c6 * (10^18 * 1095 * block.timestamp - stor10 / 24 * 3600 / 365) + 100 * 10^18 / 100 * sub_e503fe5b * stor12 / 10^18 / 10^18 / 10^18
    balanceOf[msg.sender] += 10^18 * msg.value / 1000000000000000000 * 10^18 / sub_b08663c6 * (10^18 * 1095 * block.timestamp - stor10 / 24 * 3600 / 365) + 100 * 10^18 / 100 * sub_e503fe5b * stor12 / 10^18 / 10^18 / 10^18
    emit Transfer((10^18 * msg.value / 1000000000000000000 * 10^18 / sub_b08663c6 * (10^18 * 1095 * block.timestamp - stor10 / 24 * 3600 / 365) + 100 * 10^18 / 100 * sub_e503fe5b * stor12 / 10^18 / 10^18 / 10^18), this.address, msg.sender);
    require msg.value <= eth.balance(this.address)
    call stor6 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Buy(10^18 * msg.value / 1000000000000000000 * 10^18 / sub_b08663c6 * (10^18 * 1095 * block.timestamp - stor10 / 24 * 3600 / 365) + 100 * 10^18 / 100 * sub_e503fe5b * stor12 / 10^18 / 10^18 / 10^18, 1000000000000000000 * 10^18 / sub_b08663c6 * (10^18 * 1095 * block.timestamp - stor10 / 24 * 3600 / 365) + 100 * 10^18 / 100 * sub_e503fe5b * stor12 / 10^18 / 10^18 / 10^18, Array(len=arg1.length, data=arg1[all]), msg.sender);
}



}

contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint8 stor3;
mapping of uint256 stor4;
address stor6;
address stor7;
uint256 stor8;
address stor10;

function _fallback() {
    mem[96 len -10443] = code.data[11115 len -10443]
    mem[64] = -10347
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2 = mem[160]
    stor3 = mem[223 len 1]
    stor4[address(this.address)] = stor2
    stor6 = mem[236 len 20]
    stor7 = mem[268 len 20]
    stor8 = mem[288]
    stor10 = msg.sender
    return code.data[672 len 10443]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address sub_4e8e6f49Address;
address sub_04fbb07eAddress;
uint256 sub_a9ada55d;
uint256 stor9;
address owner;

function sub_04fbb07e(?) {
    return sub_04fbb07eAddress
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_4e8e6f49(?) {
    return sub_4e8e6f49Address
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

function sub_a9ada55d(?) {
    return sub_a9ada55d
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_89ed8db0(?) {
    require msg.sender == owner
    sub_4e8e6f49Address = arg1
    sub_04fbb07eAddress = arg2
    sub_a9ada55d = arg3
    return 1
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
    balanceOf[address(arg1)] += arg2
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
    require msg.sender == owner
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
    balanceOf[address(msg.sender)] -= arg1
    require ext_code.size(sub_4e8e6f49Address)
    call sub_4e8e6f49Address.asset() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_04fbb07eAddress)
    call sub_04fbb07eAddress.asset() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require stor9
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0] * arg1 / stor9
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require stor9
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0] * arg1 / stor9
    require ext_call.success
    stor9 -= arg1
    emit Transfer(arg1, msg.sender, this.address);
}

function _fallback() {
    require ext_code.size(sub_04fbb07eAddress)
    call sub_04fbb07eAddress.0x8620410b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(sub_4e8e6f49Address)
    call sub_4e8e6f49Address.0x8620410b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    if (msg.value * sub_a9ada55d / 10^18 / ext_call.return_data[0]) + ((10^18 * msg.value) - (sub_a9ada55d * msg.value) / 10^18 / ext_call.return_data[0]) <= 0:
        if msg.value <= 0:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    call sub_4e8e6f49Address with:
       value msg.value * sub_a9ada55d / 10^18 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call sub_04fbb07eAddress with:
       value (10^18 * msg.value) - (sub_a9ada55d * msg.value) / 10^18 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor9 = stor9 + (msg.value * sub_a9ada55d / 10^18 / ext_call.return_data[0]) + ((10^18 * msg.value) - (sub_a9ada55d * msg.value) / 10^18 / ext_call.return_data[0])
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * sub_a9ada55d / 10^18 / ext_call.return_data[0]) + ((10^18 * msg.value) - (sub_a9ada55d * msg.value) / 10^18 / ext_call.return_data[0])
    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * sub_a9ada55d / 10^18 / ext_call.return_data[0]) - ((10^18 * msg.value) - (sub_a9ada55d * msg.value) / 10^18 / ext_call.return_data[0])
    emit Transfer(((msg.value * sub_a9ada55d / 10^18 / ext_call.return_data[0]) + ((10^18 * msg.value) - (sub_a9ada55d * msg.value) / 10^18 / ext_call.return_data[0])), this.address, msg.sender);
}

function buy() payable {
    require ext_code.size(sub_04fbb07eAddress)
    call sub_04fbb07eAddress.0x8620410b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(sub_4e8e6f49Address)
    call sub_4e8e6f49Address.0x8620410b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    if (msg.value * sub_a9ada55d / 10^18 / ext_call.return_data[0]) + ((10^18 * msg.value) - (sub_a9ada55d * msg.value) / 10^18 / ext_call.return_data[0]) <= 0:
        if msg.value <= 0:
            return ((msg.value * sub_a9ada55d / 10^18 / ext_call.return_data[0]) + ((10^18 * msg.value) - (sub_a9ada55d * msg.value) / 10^18 / ext_call.return_data[0]))
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        return ((msg.value * sub_a9ada55d / 10^18 / ext_call.return_data[0]) + ((10^18 * msg.value) - (sub_a9ada55d * msg.value) / 10^18 / ext_call.return_data[0]))
    call sub_4e8e6f49Address with:
       value msg.value * sub_a9ada55d / 10^18 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call sub_04fbb07eAddress with:
       value (10^18 * msg.value) - (sub_a9ada55d * msg.value) / 10^18 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor9 = stor9 + (msg.value * sub_a9ada55d / 10^18 / ext_call.return_data[0]) + ((10^18 * msg.value) - (sub_a9ada55d * msg.value) / 10^18 / ext_call.return_data[0])
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * sub_a9ada55d / 10^18 / ext_call.return_data[0]) + ((10^18 * msg.value) - (sub_a9ada55d * msg.value) / 10^18 / ext_call.return_data[0])
    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * sub_a9ada55d / 10^18 / ext_call.return_data[0]) - ((10^18 * msg.value) - (sub_a9ada55d * msg.value) / 10^18 / ext_call.return_data[0])
    emit Transfer(((msg.value * sub_a9ada55d / 10^18 / ext_call.return_data[0]) + ((10^18 * msg.value) - (sub_a9ada55d * msg.value) / 10^18 / ext_call.return_data[0])), this.address, msg.sender);
    return ((msg.value * sub_a9ada55d / 10^18 / ext_call.return_data[0]) + ((10^18 * msg.value) - (sub_a9ada55d * msg.value) / 10^18 / ext_call.return_data[0]))
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(this.address)] += arg1
    balanceOf[address(msg.sender)] -= arg1
    require ext_code.size(sub_4e8e6f49Address)
    call sub_4e8e6f49Address.asset() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_04fbb07eAddress)
    call sub_04fbb07eAddress.asset() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require stor9
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args sub_4e8e6f49Address, ext_call.return_data[0] * arg1 / stor9
    require ext_call.success
    require ext_code.size(sub_4e8e6f49Address)
    call sub_4e8e6f49Address.takerSellAsset(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (ext_call.return_data[0] * arg1 / stor9)
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require stor9
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args sub_04fbb07eAddress, ext_call.return_data[0] * arg1 / stor9
    require ext_call.success
    require ext_code.size(sub_04fbb07eAddress)
    call sub_04fbb07eAddress.takerSellAsset(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (ext_call.return_data[0] * arg1 / stor9)
    require ext_call.success
    require ext_code.size(sub_04fbb07eAddress)
    call sub_04fbb07eAddress.0x4b750334 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_4e8e6f49Address)
    call sub_4e8e6f49Address.0x4b750334 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor9 -= arg1
    call msg.sender with:
       value (ext_call.return_data[0] * arg1 / stor9 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg1 / stor9 * ext_call.return_data[0]) wei
         gas 2300 * is_zero(value) wei
    emit Transfer(arg1, msg.sender, this.address);
    return ((ext_call.return_data[0] * arg1 / stor9 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg1 / stor9 * ext_call.return_data[0]))
}



}

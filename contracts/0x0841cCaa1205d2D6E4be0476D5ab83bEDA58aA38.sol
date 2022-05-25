contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
mapping of uint256 stor7;
address stor12;

function _fallback() payable {
    stor2 = 18
    stor4 = 1688
    stor5 = 2 * 10^6
    stor6 = 0
    require not msg.value
    stor12 = msg.sender
    stor3 = 9500 * 10^6 * 10^stor2
    stor7[address(msg.sender)] = 9500 * 10^6 * 10^stor2
    bool(stor0.length) = 0
    stor0.length.field_1 = 10
    stor0.length.field_8 = 'EthFortune' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'EFU' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[431 len 2969]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 sub_080e2df6;
uint256 stor5;
uint256 sub_d56ad458;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor9;
uint256 totalEthInWei;
uint256 transferCount;
address adminAddress;

function name() {
    return name[0 len name.length]
}

function sub_080e2df6(?) {
    return sub_080e2df6
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function totalEthInWei() {
    return totalEthInWei
}

function symbol() {
    return symbol[0 len symbol.length]
}

function airDrop(address arg1) {
    return bool(stor9[arg1])
}

function sub_d56ad458(?) {
    return sub_d56ad458
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function transferCount() {
    return transferCount
}

function admin() {
    return adminAddress
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
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[arg1] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
    return 1
}

function _fallback() payable {
    if msg.value > 0:
        totalEthInWei += msg.value
        require balanceOf[stor12] >= 100000 * msg.value
        balanceOf[stor12] += -100000 * msg.value
        balanceOf[msg.sender] += 100000 * msg.value
        call adminAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Transfer((100000 * msg.value), adminAddress, msg.sender);
        transferCount++
    if msg.value:
    if stor9[address(msg.sender)]:
    if balanceOf[address(msg.sender)]:
    if sub_d56ad458 >= stor5:
    stor9[address(msg.sender)] = 1
    sub_d56ad458++
    require msg.sender
    require balanceOf[stor12] >= 10^decimals * sub_080e2df6
    require balanceOf[address(msg.sender)] + (10^decimals * sub_080e2df6) > balanceOf[address(msg.sender)]
    balanceOf[stor12] += -1 * 10^decimals * sub_080e2df6
    balanceOf[address(msg.sender)] += 10^decimals * sub_080e2df6
    emit Transfer((10^decimals * sub_080e2df6), adminAddress, msg.sender);
    require balanceOf[address(msg.sender)] + balanceOf[stor12] == balanceOf[stor12] + balanceOf[address(msg.sender)]
}



}

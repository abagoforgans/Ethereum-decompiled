contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
address stor2; offset 8
uint256 stor2; offset 8
mapping of uint256 stor3;

function _fallback() {
    stor3[address(this.address)] = 100
    uint8(stor0.length) = 20
    stor0.length.field_8 = 'EliteToken' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor1.length) = 6
    stor1.length.field_8 = 'ELT' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor2.field_0) = 0
    address(stor2.field_8) = msg.sender
    Mask(248, 0, stor2.field_8) = 0
    return code.data[394 len 1688]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor2;
address stor2; offset 8
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function _fallback() payable {
    if msg.value:
        call address(stor2.field_8) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require balanceOf[address(this.address)] >= msg.value / 10^18
        balanceOf[address(msg.sender)] += msg.value / 10^18
        balanceOf[this.address] -= msg.value / 10^18
        emit Transfer((msg.value / 10^18), this.address, msg.sender);
}

function WithdrawForeign(address arg1) {
    require address(stor2.field_8) == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(stor2.field_0), ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}

contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 15
    stor1.length.field_8 = 'Acebusters Nutz' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'NTZ' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 12
    stor0 = msg.sender
    return code.data[378 len 5094]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function floor() {
    require ext_code.size(owner)
    call owner.0x40695363 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function ceiling() {
    require ext_code.size(owner)
    call owner.0x753ed1bd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function powerPool() {
    require ext_code.size(owner)
    call owner.0x1e93c209 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function totalSupply() {
    require ext_code.size(owner)
    call owner.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function activeSupply() {
    require ext_code.size(owner)
    call owner.0xbabd7012 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(owner)
    call owner.babzBalanceOf(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    require ext_code.size(owner)
    call owner.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function powerUp(uint256 arg1) {
    emit Transfer(arg1, msg.sender, owner);
    require ext_code.size(owner)
    call owner.powerUp(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.sender, arg1
    require ext_call.success
}

function sell(uint256 arg1, uint256 arg2) {
    require arg2
    require ext_code.size(owner)
    call owner.sell(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1, arg2
    require ext_call.success
    emit Sell(arg2, msg.sender);
}

function approve(address arg1, uint256 arg2) {
    require ext_code.size(owner)
    call owner.approve(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    emit Approval(arg2, msg.sender, arg1);
}

function asyncSend(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require arg3 <= eth.balance(this.address)
    require ext_code.size(arg1)
    call arg1.asyncSend(address rg1) with:
       value arg3 wei
         gas gas_remaining - 9710 wei
        args arg2
    require ext_call.success
}

function powerDown(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining - 710 wei
            args address(arg1), arg3, 96, 0
        require ext_call.success
    emit Transfer(arg3, arg1, arg2);
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(owner)
    call owner.transfer(address rg1, address rg2, uint256 rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args 0, uint32(msg.sender), address(arg1), arg2, 128, 0
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, 96, 0
        require ext_call.success
    return 1
}

function purchase(uint256 arg1) payable {
    require msg.value > 0
    require ext_code.size(owner)
    call owner.purchase(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value, arg1
    require ext_call.success
    emit Transfer(ext_call.return_data[0], owner, msg.sender);
    if ext_code.size(msg.sender) > 0:
        require ext_code.size(msg.sender)
        call msg.sender.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining - 710 wei
            args address(this.address), ext_call.return_data[0], 96, 0
        require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(owner)
    call owner.transferFrom(address rg1, address rg2, address rg3, uint256 rg4, bytes rg5) with:
         gas gas_remaining - 710 wei
        args 0, uint32(msg.sender), address(arg1), address(arg2), arg3, 160, 0, None
    require ext_call.success
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining - 710 wei
            args address(arg1), arg3, 96, 0
        require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require ext_code.size(owner)
    call owner.transfer(address rg1, address rg2, uint256 rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        require ext_call.success
    return 1
}

function transData(address arg1, uint256 arg2, bytes arg3) {
    require ext_code.size(owner)
    call owner.transfer(address rg1, address rg2, uint256 rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require ext_code.size(owner)
    call owner.transferFrom(address rg1, address rg2, address rg3, uint256 rg4, bytes rg5) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), address(arg2), arg3, Array(len=arg4.length, data=arg4[all])
    require ext_call.success
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining - 710 wei
            args address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        require ext_call.success
    return 1
}

function _fallback() payable {
    require ext_code.size(owner)
    call owner.0x753ed1bd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.value > 0
    require ext_code.size(owner)
    call owner.purchase(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value, ext_call.return_data[0]
    require ext_call.success
    emit Transfer(ext_call.return_data[0], owner, msg.sender);
    if ext_code.size(msg.sender) > 0:
        require ext_code.size(msg.sender)
        call msg.sender.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining - 710 wei
            args address(this.address), ext_call.return_data[0], 96, 0
        require ext_call.success
    require msg.value > 0
}



}

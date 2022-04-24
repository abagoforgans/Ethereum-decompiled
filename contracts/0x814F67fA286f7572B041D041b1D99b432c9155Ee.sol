contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint8 stor1;
uint256 stor2;
address stor3;
mapping of uint256 stor4;
mapping of address stor5;
uint256 stor6;
uint128 stor8; offset 160
address stor8;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 10
    stor0.length.field_8 = 'DRAGON 1.2' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    if not stor4[address(msg.sender)]:
        if address(stor8.field_0) != msg.sender:
            stor5[stor6] = msg.sender
            stor6++
    stor4[address(msg.sender)] = 5 * 10^16
    stor2 = 5 * 10^16
    Mask(96, 0, stor8.field_160) = 0
    stor1 = 8
    stor3 = msg.sender
    return code.data[805 len 6809]
}



// =====================  Runtime code  =====================


const name = 'DRAGON'

const symbol = 'DRG'


array of uint256 standard;
uint8 decimals;
uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;
mapping of address address;
uint256 accountCount;
mapping of uint256 allowance;
uint8 stor8; offset 160
uint128 stor8; offset 160
address burnerAddress;

function totalSupply() {
    return totalSupply
}

function burner() {
    return burnerAddress
}

function decimals() {
    return decimals
}

function accountIndex(uint256 arg1) {
    return address[arg1]
}

function standard() {
    return standard[0 len standard.length]
}

function burnerSet() {
    return bool(uint8(stor8.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function getAccountCount() {
    return accountCount
}

function getAddress(uint256 arg1) {
    return address[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function accountCount() {
    return accountCount
}

function _fallback() payable {
    revert
}

function changeOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setBurner(address arg1) {
    require msg.sender == owner
    require not uint8(stor8.field_160)
    burnerAddress = arg1
    Mask(96, 0, stor8.field_160) = 1
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    require totalSupply - arg1 >= 21 * 10^14
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnDragons(uint256 arg1) {
    require msg.sender == burnerAddress
    require balanceOf[address(msg.sender)] >= arg1
    require totalSupply - arg1 >= 21 * 10^14
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function burnFrom(address arg1, uint256 arg2) {
    require totalSupply - arg2 >= 21 * 10^14
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    if not balanceOf[address(arg2)]:
        if arg2 != burnerAddress:
            address[stor6] = arg2
            accountCount++
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    if balanceOf[address(arg1)]:
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        if arg1 == burnerAddress:
            require ext_code.size(burnerAddress)
            call burnerAddress.dragonHandler(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args arg2
            require ext_call.success
    else:
        if arg1 != burnerAddress:
            address[stor6] = arg1
            accountCount++
            balanceOf[address(msg.sender)] -= arg2
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            balanceOf[address(msg.sender)] -= arg2
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            require ext_code.size(burnerAddress)
            call burnerAddress.dragonHandler(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args arg2
            require ext_call.success
    return 1
}



}

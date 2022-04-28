contract main {


// =======================  Init code  ======================


address stor3;
address stor4;

function _fallback() {
    stor3 = msg.sender
    stor4 = msg.sender
    emit Created()
    return code.data[204 len 14042]
}



// =====================  Runtime code  =====================


const name = 'innercore'

const decimals = 18

const symbol = 'CORES'


uint32 stor0;
uint256 sub_e0509151;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address sub_9e607a80Address;
uint8 stor4; offset 160
uint128 stor4; offset 160
address sub_0d279024Address;
uint256 sub_837e0e70;
uint8 sub_0e6140b7;
mapping of uint8 stor7;
address sub_dbcd1607Address;

function sub_0d279024(?) {
    require msg.sender == sub_0d279024Address
    return sub_0d279024Address
}

function sub_0e6140b7(?) {
    require msg.sender == sub_0d279024Address
    return sub_0e6140b7
}

function totalSupply() {
    return uint256(sub_e0509151)
}

function sub_3edc8d40(?) {
    return bool(stor7[address(arg1)])
}

function isOpen() {
    return bool(uint8(stor4.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_837e0e70(?) {
    require msg.sender == sub_0d279024Address
    return sub_837e0e70
}

function tokens() {
    return uint256(sub_e0509151)
}

function sub_9e607a80(?) {
    require msg.sender == sub_0d279024Address
    return sub_9e607a80Address
}

function sub_dbcd1607(?) {
    require msg.sender == sub_0d279024Address
    return sub_dbcd1607Address
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e0509151(?) {
    require msg.sender == sub_0d279024Address
    return uint256(sub_e0509151)
}

function _fallback() payable {
    revert
}

function close() {
    require msg.sender == sub_0d279024Address
    Mask(96, 0, stor4.field_160) = 0
    emit Closed()
    return 1
}

function open() {
    require msg.sender == sub_0d279024Address
    Mask(96, 0, stor4.field_160) = 1
    emit 0xd1dcd005 
    return 1
}

function setRate(uint8 arg1) {
    require msg.sender == sub_0d279024Address
    sub_0e6140b7 = arg1
    emit 0xbae1dd3d: arg1
    return 1
}

function sub_30d61807(?) {
    require msg.sender == sub_0d279024Address
    stor7[address(arg1)] = 0
    emit 0x26e8ae55: arg1
    return 1
}

function sub_9e6074ba(?) {
    require msg.sender == sub_0d279024Address
    sub_dbcd1607Address = arg1
    emit 0xf5c870a4: arg1
    return 1
}

function addSale(address arg1) {
    require msg.sender == sub_0d279024Address
    stor7[address(arg1)] = 1
    emit 0x8831e4b2: arg1
    return 1
}

function setDelegate(address arg1) {
    require msg.sender == sub_9e607a80Address
    sub_0d279024Address = arg1
    emit 0x2bb25fbb: arg1
    return 1
}

function reserve() payable {
    require msg.sender == sub_0d279024Address
    require msg.value > 0
    sub_837e0e70 = eth.balance(this.address)
    emit Reserved(msg.sender, msg.value);
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function handleSaleClaimCallback(address arg1, uint256 arg2) {
    require stor7[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, this.address, arg1);
    emit 0xfdaf8309: arg2, msg.sender, arg1
    return 1
}

function burn(address arg1, uint256 arg2) {
    require msg.sender == sub_0d279024Address
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= uint256(sub_e0509151)
    uint256(sub_e0509151) -= arg2
    emit Transfer(arg2, arg1, 0);
    emit Burned(arg2, arg1);
    return 1
}

function restore(address arg1, uint256 arg2) {
    require msg.sender == sub_0d279024Address
    require ext_code.size(this.address)
    call this.address.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit 0x650b9352: arg2, arg1
    return 1
}

function withdraw(address arg1, uint256 arg2) {
    require msg.sender == sub_0d279024Address
    require ext_code.size(this.address)
    call this.address.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit Withdrew(address(arg1), arg2);
    return 1
}

function estimateSell(uint256 arg1) {
    require uint8(stor4.field_160)
    require ext_code.size(sub_dbcd1607Address)
    call sub_dbcd1607Address.calculateSaleReturn(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
         gas gas_remaining - 710 wei
        args 0, uint32(stor0), sub_837e0e70, sub_0e6140b7, arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function estimateBuy(uint256 arg1) {
    require uint8(stor4.field_160)
    require ext_code.size(sub_dbcd1607Address)
    call sub_dbcd1607Address.calculatePurchaseReturn(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
         gas gas_remaining - 710 wei
        args 0, uint32(stor0), sub_837e0e70, sub_0e6140b7, arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function release(address arg1, uint256 arg2) {
    require msg.sender == sub_9e607a80Address
    require eth.balance(this.address) >= arg2
    require arg2 <= eth.balance(this.address)
    sub_837e0e70 = eth.balance(this.address) - arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Released(address(arg1), arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function grant(address arg1, uint256 arg2) {
    require msg.sender == sub_0d279024Address
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    require uint256(sub_e0509151) + arg2 >= uint256(sub_e0509151)
    require uint256(sub_e0509151) + arg2 >= arg2
    uint256(sub_e0509151) += arg2
    emit Transfer(arg2, this.address, arg1);
    emit Granted(arg2, arg1);
    return 1
}

function handleSaleCompletionCallback(uint256 arg1) payable {
    require stor7[address(msg.sender)]
    require uint256(sub_e0509151) + arg1 >= uint256(sub_e0509151)
    require uint256(sub_e0509151) + arg1 >= arg1
    uint256(sub_e0509151) += arg1
    require sub_837e0e70 + msg.value >= sub_837e0e70
    require sub_837e0e70 + msg.value >= msg.value
    sub_837e0e70 += msg.value
    emit Transfer(arg1, msg.sender, this.address);
    emit 0x653a2ab3: msg.sender, arg1, msg.value
    return 1
}

function deposit(uint256 arg1) {
    require uint8(stor4.field_160)
    if balanceOf[address(msg.sender)] < arg1:
        return 0
    if arg1 <= 0:
        return 0
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require balanceOf[address(this.address)] + arg1 >= balanceOf[address(this.address)]
    require balanceOf[address(this.address)] + arg1 >= arg1
    balanceOf[address(this.address)] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    emit Deposited(arg1, msg.sender);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_958cbbc3(?) {
    require msg.sender == sub_0d279024Address
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        mem[100] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[132] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(this.address)
        call this.address.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)]
        require ext_call.success
        require idx < ('cd', 4).length
        require idx < ('cd', 36).length
        mem[96] = cd[((32 * idx) + cd[36] + 36)]
        emit 0xcd8ae371: cd[((32 * idx) + cd[36] + 36)], address(cd[((32 * idx) + cd[4] + 36)])
        idx = idx + 1
        continue 
    return 1
}

function sell(uint256 arg1, address arg2) {
    require uint8(stor4.field_160)
    require balanceOf[address(msg.sender)] >= arg1
    require ext_code.size(sub_dbcd1607Address)
    call sub_dbcd1607Address.calculateSaleReturn(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
         gas gas_remaining - 710 wei
        args 0, uint32(stor0), sub_837e0e70, sub_0e6140b7, arg1
    require ext_call.success
    require eth.balance(this.address) >= ext_call.return_data[0]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= uint256(sub_e0509151)
    uint256(sub_e0509151) -= arg1
    require ext_call.return_data[0] <= eth.balance(this.address)
    sub_837e0e70 = eth.balance(this.address) - ext_call.return_data[0]
    emit Transfer(arg1, msg.sender, 0);
    emit Sold(arg1, ext_call.return_data[0], msg.sender, arg2);
    call arg2 with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return ext_call.return_data[0]
}

function buy(address arg1) payable {
    require uint8(stor4.field_160)
    require msg.value > 0
    require ext_code.size(sub_dbcd1607Address)
    call sub_dbcd1607Address.calculatePurchaseReturn(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
         gas gas_remaining - 710 wei
        args 0, uint32(stor0), sub_837e0e70, sub_0e6140b7, msg.value
    require ext_call.success
    require ext_call.return_data[0] > 0
    require uint256(sub_e0509151) + ext_call.return_data[0] >= uint256(sub_e0509151)
    require uint256(sub_e0509151) + ext_call.return_data[0] >= ext_call.return_data[0]
    uint256(sub_e0509151) += ext_call.return_data[0]
    require balanceOf[address(arg1)] + ext_call.return_data[0] >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + ext_call.return_data[0] >= ext_call.return_data[0]
    balanceOf[address(arg1)] += ext_call.return_data[0]
    sub_837e0e70 = eth.balance(this.address)
    emit Transfer(ext_call.return_data[0], this.address, arg1);
    emit Bought(ext_call.return_data[0], msg.value, msg.sender, arg1);
    return ext_call.return_data[0]
}



}

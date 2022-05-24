contract main {




// =====================  Runtime code  =====================


#
#  - matchOrders(uint64 arg1, uint64 arg2)
#  - getActiveSellOrders(uint256 arg1)
#  - matchMultipleOrders(uint64[] arg1, uint64[] arg2)
#  - getActiveBuyOrders(uint256 arg1)
#
const CHUNK_SIZE = 100


mapping of uint8 stor0;
address augmintTokenAddress;
uint64 orderCount; offset 160
address ratesAddress;
mapping of struct buyTokenOrders;
mapping of struct sellTokenOrders;
array of uint256 stor5;
array of uint256 stor6;

function buyTokenOrders(uint64 arg1) {
    return buyTokenOrders[arg1].field_0, 
           buyTokenOrders[arg1].field_0,
           buyTokenOrders[arg1].field_0,
           buyTokenOrders[arg1].field_256
}

function orderCount() {
    return orderCount
}

function rates() {
    return ratesAddress
}

function permissions(address arg1, bytes32 arg2) {
    return bool(stor0[arg1][arg2])
}

function augmintToken() {
    return augmintTokenAddress
}

function sellTokenOrders(uint64 arg1) {
    return sellTokenOrders[arg1].field_0, 
           sellTokenOrders[arg1].field_0,
           sellTokenOrders[arg1].field_0,
           sellTokenOrders[arg1].field_256
}

function _fallback() payable {
    revert
}

function getActiveOrderCounts() {
    return stor5.length, stor6.length
}

function setRatesContract(address arg1) {
    if not stor0[address(msg.sender)]['StabilityBoard']:
        revert with 0, 'msg.sender must have permission'
    ratesAddress = arg1
    emit RatesContractChanged(arg1);
}

function grantPermission(address arg1, bytes32 arg2) {
    if not stor0[address(msg.sender)]['PermissionGranter']:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'msg.sender must have PermissionGranter permission'
    stor0[address(arg1)][arg2] = 1
    emit PermissionGranted(arg2, arg1);
}

function revokePermission(address arg1, bytes32 arg2) {
    if not stor0[address(msg.sender)]['PermissionGranter']:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'msg.sender must have PermissionGranter permission'
    stor0[address(arg1)][arg2] = 0
    emit PermissionRevoked(arg2, arg1);
}

function revokeMultiplePermissions(address arg1, bytes32[] arg2) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        if not stor0[address(msg.sender)]['PermissionGranter']:
            revert with 0, 'msg.sender must have PermissionGranter permission'
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = sha3(address(arg1), 0)
        stor0[address(arg1)][mem[(32 * idx) + 128]] = 0
        mem[(32 * arg2.length) + 128] = mem[(32 * idx) + 128]
        emit PermissionRevoked(mem[(32 * arg2.length) + 128], arg1);
        idx = idx + 1
        continue 
}

function placeBuyTokenOrder(uint32 arg1) payable {
    if arg1 <= 0:
        revert with 0, 'price must be > 0'
    if msg.value <= 0:
        revert with 0, 'msg.value must be > 0'
    orderCount = uint64(orderCount + 1)
    buyTokenOrders[stor2 + 1 << 192].field_0 = uint64(stor5.length)
    buyTokenOrders[stor2 + 1 << 192].field_64 = msg.sender
    buyTokenOrders[stor2 + 1 << 192].field_224 = arg1
    buyTokenOrders[stor2 + 1 << 192].field_256 = msg.value
    stor5.length++
    stor5[stor5.length.field_2].field_0 = uint64(orderCount + 1) * 256^(8 * stor5.length % 4) or !(test266151307() * 256^(8 * stor5.length % 4)) and stor5[stor5.length.field_2].field_0
    emit NewOrder(arg1 << 224, 0, msg.value, uint64(orderCount + 1), msg.sender);
    return uint64(orderCount + 1)
}

function grantMultiplePermissions(address arg1, bytes32[] arg2) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if not stor0[address(msg.sender)]['PermissionGranter']:
        revert with 0, 'msg.sender must have PermissionGranter permission'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        if not stor0[address(msg.sender)]['PermissionGranter']:
            revert with 0, 'msg.sender must have PermissionGranter permission'
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = sha3(address(arg1), 0)
        stor0[address(arg1)][mem[(32 * idx) + 128]] = 1
        mem[(32 * arg2.length) + 128] = mem[(32 * idx) + 128]
        emit PermissionGranted(mem[(32 * arg2.length) + 128], arg1);
        idx = idx + 1
        continue 
}

function transferNotification(address arg1, uint256 arg2, uint256 arg3) {
    if augmintTokenAddress != msg.sender:
        revert with 0, 'msg.sender must be augmintToken'
    if uint32(arg3) <= 0:
        revert with 0, 'price must be > 0'
    if arg2 <= 0:
        revert with 0, 'tokenAmount must be > 0'
    orderCount = uint64(orderCount + 1)
    sellTokenOrders[stor2 + 1 << 192].field_0 = uint64(stor6.length)
    sellTokenOrders[stor2 + 1 << 192].field_64 = arg1
    sellTokenOrders[stor2 + 1 << 192].field_224 = uint32(arg3)
    sellTokenOrders[stor2 + 1 << 192].field_256 = arg2
    stor6.length++
    stor6[stor6.length.field_2].field_0 = uint64(orderCount + 1) * 256^(8 * stor6.length % 4) or !(test266151307() * 256^(8 * stor6.length % 4)) and stor6[stor6.length.field_2].field_0
    emit NewOrder(arg3 << 224, arg2, 0, uint64(orderCount + 1), arg1);
}

function placeSellTokenOrder(uint32 arg1, uint256 arg2) {
    require ext_code.size(augmintTokenAddress)
    call augmintTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 <= 0:
        revert with 0, 'price must be > 0'
    if arg2 <= 0:
        revert with 0, 'tokenAmount must be > 0'
    orderCount = uint64(orderCount + 1)
    sellTokenOrders[stor2 + 1 << 192].field_0 = uint64(stor6.length)
    sellTokenOrders[stor2 + 1 << 192].field_64 = msg.sender
    sellTokenOrders[stor2 + 1 << 192].field_224 = arg1
    sellTokenOrders[stor2 + 1 << 192].field_256 = arg2
    stor6.length++
    stor6[stor6.length.field_2].field_0 = uint64(orderCount + 1) * 256^(8 * stor6.length % 4) or !(test266151307() * 256^(8 * stor6.length % 4)) and stor6[stor6.length.field_2].field_0
    emit NewOrder(arg1 << 224, arg2, 0, uint64(orderCount + 1), msg.sender);
    return uint64(orderCount + 1)
}

function cancelBuyTokenOrder(uint64 arg1) {
    if buyTokenOrders[arg1 << 192].field_64 != msg.sender:
        revert with 0, 'msg.sender must be order.maker'
    if buyTokenOrders[arg1 << 192].field_256 <= 0:
        revert with 0, 'buy order already removed'
    buyTokenOrders[arg1 << 192].field_256 = 0
    if buyTokenOrders[arg1 << 192].field_0 < stor5.length - 1:
        require stor5.length - 1 < stor5.length
        require buyTokenOrders[arg1 << 192].field_0 < stor5.length
        stor5[stor3[arg1 << 192].field_2].field_0 = stor('array', ('div', 0.25, ('add', -1, ('stor', 256, 0, ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5))[uint8(stor5.length - 1)] * 256^(8 * buyTokenOrders[arg1 << 192].field_0) or !(test266151307() * 256^(8 * buyTokenOrders[arg1 << 192].field_0)) and stor5[stor3[arg1 << 192].field_2].field_0
    stor5.length--
    if stor5.length > stor5.length - 1:
        idx = stor5.length + 2 / 4
        while stor5.length + 3 / 4 > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
    call msg.sender with:
       value buyTokenOrders[arg1 << 192].field_256 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit CancelledOrder(0, buyTokenOrders[arg1 << 192].field_256, arg1, msg.sender);
}

function cancelSellTokenOrder(uint64 arg1) {
    if sellTokenOrders[arg1 << 192].field_64 != msg.sender:
        revert with 0, 'msg.sender must be order.maker'
    if sellTokenOrders[arg1 << 192].field_256 <= 0:
        revert with 0, 'sell order already removed'
    sellTokenOrders[arg1 << 192].field_256 = 0
    if sellTokenOrders[arg1 << 192].field_0 < stor6.length - 1:
        require stor6.length - 1 < stor6.length
        require sellTokenOrders[arg1 << 192].field_0 < stor6.length
        stor6[stor4[arg1 << 192].field_2].field_0 = stor('array', ('div', 0.25, ('add', -1, ('stor', 256, 0, ('length', ('name', 'stor6', 6))))), ('name', 'stor6', 6))[uint8(stor6.length - 1)] * 256^(8 * sellTokenOrders[arg1 << 192].field_0) or !(test266151307() * 256^(8 * sellTokenOrders[arg1 << 192].field_0)) and stor6[stor4[arg1 << 192].field_2].field_0
    stor6.length--
    if stor6.length > stor6.length - 1:
        idx = stor6.length + 2 / 4
        while stor6.length + 3 / 4 > idx:
            stor6[idx].field_0 = 0
            idx = idx + 1
            continue 
    require ext_code.size(augmintTokenAddress)
    call augmintTokenAddress.transferWithNarrative(address arg1, uint256 arg2, string arg3) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), sellTokenOrders[arg1 << 192].field_256, 96, 26, 'Sell token order cancelled'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit CancelledOrder(sellTokenOrders[arg1 << 192].field_256, 0, arg1, msg.sender);
}



}

contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
uint256 stor1;
mapping of uint8 stor2;
mapping of struct price;
mapping of struct stor4;
array of struct stor5;
address stor6;

function owner() {
    return owner
}

function isIdentifierSupported(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function isTest() {
    return bool(stor0)
}

function hasPrice(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor6)
    staticcall stor6.0x8a3ca36b with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require stor2[arg1]
    return bool(price[arg1][arg2].field_0)
}

function getPrice(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor6)
    staticcall stor6.0x8a3ca36b with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require stor2[arg1]
    require price[arg1][arg2].field_0
    return price[arg1][arg2].field_256
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function getCurrentTime() {
    if not stor0:
        return block.timestamp
    return stor1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setCurrentTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require stor0
    stor1 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addSupportedIdentifier(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not stor2[arg1]:
        stor2[arg1] = 1
        emit 0xc7e37af4: arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function callRemargin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.remargin() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function callEmergencyShutdown(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.emergencyShutdown() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawErc20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function getPendingQueries() {
    require msg.sender == owner
    mem[64] = (32 * stor5.length) + 128
    mem[96] = stor5.length
    s = 128
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        _11 = mem[64]
        mem[64] = mem[64] + 64
        mem[_11] = stor5[idx].field_0
        mem[_11 + 32] = stor5[idx].field_256
        mem[s] = _11
        s = s + 32
        idx = idx + 1
        continue 
    _12 = mem[64]
    mem[mem[64]] = 32
    _13 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _13:
        _18 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_18 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _12 + (64 * _13) + -mem[64] + 64
}

function requestPrice(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor6)
    staticcall stor6.0x8a3ca36b with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require stor2[arg1]
    if price[arg1][arg2].field_0:
        return 0
    if not stor4[arg1][arg2].field_0:
        stor4[arg1][arg2].field_0 = 1
        stor4[arg1][arg2].field_256 = stor5.length
        stor5.length++
        stor5[stor5.length].field_0 = arg1
        stor5[stor5.length].field_256 = arg2
        emit 0x2bb40504: arg1, arg2
    if not stor0:
        require block.timestamp + (168 * 24 * 3600) >= block.timestamp
        return (block.timestamp + (168 * 24 * 3600))
    require stor1 + (168 * 24 * 3600) >= stor1
    return (stor1 + (168 * 24 * 3600))
}

function pushPrice(bytes32 arg1, uint256 arg2, int256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    price[arg1][arg2].field_0 = 1
    price[arg1][arg2].field_256 = arg3
    if not stor0:
        price[arg1][arg2].field_512 = block.timestamp
    else:
        price[arg1][arg2].field_512 = stor1
    emit 0x83ca6810: arg3, arg1, arg2
    if not stor4[arg1][arg2].field_0:
        revert with 0, 'Can't push prices that haven't been requested'
    stor4[arg1][arg2].field_0 = 0
    stor4[arg1][arg2].field_256 = 0
    require 1 <= stor5.length
    if stor5.length - 1 != stor4[arg1][arg2].field_256:
        require stor5.length - 1 < stor5.length
        stor4[stor5[stor5.length - 1].field_0][stor5[stor5.length - 1].field_256].field_256 = stor4[arg1][arg2].field_256
        require stor4[arg1][arg2].field_256 < stor5.length
        stor5[stor4[arg1][arg2].field_256].field_0 = stor5[stor5.length - 1].field_0
        stor5[stor4[arg1][arg2].field_256].field_256 = stor5[stor5.length - 1].field_256
    require 1 <= stor5.length
    stor5.length--
    if stor5.length > stor5.length - 1:
        idx = 2 * stor5.length - 1
        while 2 * stor5.length > idx:
            stor5[idx].field_0 = 0
            stor5[idx].field_256 = 0
            idx = idx + 2
            continue 
}



}

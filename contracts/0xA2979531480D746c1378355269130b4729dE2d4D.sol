contract main {




// =====================  Runtime code  =====================


#
#  - bulkTransfer(uint256[] arg1, address[] arg2, bytes32[] arg3)
#  - bulkWithdraw(uint256[] arg1, address[] arg2, bytes32[] arg3)
#
address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
address bindedTokenAddress;
mapping of uint256 deposited;
address feeCollectorAddress;

function isDepositor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor1[address(arg1)])
}

function isTrader(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor2[address(arg1)])
}

function owner() {
    return owner
}

function feeCollector() {
    return feeCollectorAddress
}

function deposited(address arg1) {
    require calldata.size - 4 >= 32
    return deposited[arg1]
}

function bindedToken() {
    return bindedTokenAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function renounceTrader() {
    require msg.sender
    require stor2[address(msg.sender)]
    stor2[address(msg.sender)] = 0
    emit 0x75db1c3d: msg.sender
}

function renounceDepositor() {
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit 0xbc12c224: msg.sender
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function bindToken(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    emit 0xef11c259: msg.sender, bindedTokenAddress, arg1
    bindedTokenAddress = arg1
}

function setFeeCollector(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    emit 0xf5092bc0: msg.sender, feeCollectorAddress, arg1
    feeCollectorAddress = arg1
}

function addTrader(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor2[address(msg.sender)]
    require arg1
    require not stor2[address(arg1)]
    stor2[address(arg1)] = 1
    emit 0x1d9b23fc: arg1
}

function addDepositor(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor1[address(msg.sender)]
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit 0x5eea6266: arg1
}

function collectFee() {
    require msg.sender == owner
    deposited[stor5] = 0
    emit FeeCollected(deposited[stor5], msg.sender, feeCollectorAddress);
    require ext_code.size(bindedTokenAddress)
    call bindedTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args feeCollectorAddress, deposited[stor5]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function transfer(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    require arg2
    require arg4 + arg3 >= arg3
    require arg4 + arg3 <= deposited[address(arg1)]
    require arg4 + arg3 <= deposited[address(arg1)]
    deposited[address(arg1)] = deposited[address(arg1)] - arg4 - arg3
    require arg4 + deposited[stor5] >= deposited[stor5]
    deposited[stor5] += arg4
    require arg3 + deposited[arg2] >= deposited[arg2]
    deposited[address(arg2)] = arg3 + deposited[arg2]
    emit Transferred(arg3, arg4, deposited[arg1], arg1, arg2);
}

function depositTo(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor1[address(msg.sender)]
    require arg2 + deposited[address(arg1)] >= deposited[address(arg1)]
    deposited[address(arg1)] += arg2
    emit Deposited(arg2, arg2 + deposited[address(arg1)], msg.sender, arg1);
    require ext_code.size(bindedTokenAddress)
    call bindedTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function bulkDeposit(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require msg.sender
    require stor1[address(msg.sender)]
    if arg2.length != arg1.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Failed to bulk deposit due to illegal arguments.'
    idx = 0
    s = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] + s >= s
        require idx < arg2.length
        require idx < arg1.length
        require cd[((32 * idx) + arg2 + 36)] + deposited[address(cd[((32 * idx) + arg1 + 36)])] >= deposited[address(cd[((32 * idx) + arg1 + 36)])]
        require idx < arg1.length
        deposited[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)]
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 4
        mem[96] = cd[((32 * idx) + arg2 + 36)]
        mem[128] = deposited[address(cd[((32 * idx) + arg1 + 36)])]
        emit Deposited(cd[((32 * idx) + arg2 + 36)], deposited[address(cd[((32 * idx) + arg1 + 36)])], msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
        require idx + 1 >= idx
        idx = idx + 1
        s = cd[((32 * idx) + arg2 + 36)] + s
        continue 
    emit 0xfab48c7b: cd[((32 * arg2.length) + arg2 + 36)] * arg2.length, arg1.length, msg.sender
    require ext_code.size(bindedTokenAddress)
    call bindedTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[((32 * arg2.length) + arg2 + 36)] * arg2.length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}



}

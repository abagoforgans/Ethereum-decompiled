contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 160
address stor2;
mapping of uint8 stor7;
uint8 stor8;

function _fallback() payable {
    stor1 = 0
    require not msg.value
    stor0 = msg.sender
    stor2 = code.data[6312 len 20]
    require not stor8
    stor7[1][4] = 1
    require not stor8
    stor7[1][3] = 1
    require not stor8
    stor7[1][2] = 1
    require not stor8
    stor7[2][3] = 1
    require not stor8
    stor7[3][5] = 1
    stor8 = 1
    return code.data[407 len 5893]
}



// =====================  Runtime code  =====================


#
#  - getPromiseIds(uint256 arg1, uint256 arg2, address arg3, bool arg4)
#
address owner;
uint8 stor1; offset 160
address pendingOwner;
address tokenAddress;
uint256 nextPromiseId;
mapping of struct promises;
uint256 promisedTokenBalance;
uint256 lockedTokenBalance;
mapping of uint8 stor7;

function lockedTokenBalance() {
    return lockedTokenBalance
}

function promises(uint256 arg1) {
    require promises[arg1].field_1024 <= 5
    return promises[arg1].field_0, 
           promises[arg1].field_256,
           promises[arg1].field_512,
           promises[arg1].field_768,
           promises[arg1].field_1024
}

function promisedTokenBalance() {
    return promisedTokenBalance
}

function owner() {
    return owner
}

function nextPromiseId() {
    return nextPromiseId
}

function pendingOwner() {
    return pendingOwner
}

function token() {
    return tokenAddress
}

function _fallback() {
  stop
}

function pendingTokenBalance() {
    return (promisedTokenBalance - lockedTokenBalance)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    pendingOwner = arg1
}

function isConfirmed(uint256 arg1) {
    require promises[arg1].field_1024 <= 5
    return (promises[arg1].field_1024 == 2)
}

function claimOwnership() {
    require pendingOwner == msg.sender
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function reclaimEther() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function tokenBalance() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function uncommittedTokenBalance() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return (ext_call.return_data[0] - promisedTokenBalance)
}

function canCollect(uint256 arg1) {
    require promises[arg1].field_1024 <= 5
    if promises[arg1].field_1024 != 2:
        require promises[arg1].field_1024 <= 5
        if promises[arg1].field_1024 != 1:
            return (promises[arg1].field_1024 == 1)
    return block.timestamp >= promises[arg1].field_768
}

function withdrawAllUncommittedTokens() {
    require owner == msg.sender
    require not stor1
    stor1 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0] - promisedTokenBalance
    require ext_call.success
    stor1 = 0
}

function withdrawUncommittedTokens(uint256 arg1) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require arg1 <= ext_call.return_data[0] - promisedTokenBalance
    require not stor1
    stor1 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg1
    require ext_call.success
    stor1 = 0
}

function salvageTokensFromContract(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if tokenAddress == arg1:
        require arg3 <= ext_call.return_data[0] - promisedTokenBalance
    require not stor1
    stor1 = 1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    stor1 = 0
}

function cancel(uint256 arg1) {
    require arg1 < nextPromiseId
    require promises[arg1].field_1024 <= 5
    require promises[arg1].field_1024 == 1
    if owner != msg.sender:
        require promises[arg1].field_256 == msg.sender
    require not stor1
    stor1 = 1
    require promises[arg1].field_512 <= promisedTokenBalance
    promisedTokenBalance -= promises[arg1].field_512
    require promises[arg1].field_1024 <= 5
    if promises[arg1].field_1024 == 2:
        require promises[arg1].field_512 <= lockedTokenBalance
        lockedTokenBalance -= promises[arg1].field_512
    require promises[arg1].field_1024 <= 5
    require stor7[stor4[arg1].field_1024][4]
    promises[arg1].field_1024 = 4
    emit logPromiseCanceled(promises[arg1].field_0);
    stor1 = 0
}

function confirm(uint256 arg1) {
    require arg1 < nextPromiseId
    require promises[arg1].field_256 == msg.sender
    require promises[arg1].field_1024 <= 5
    require promises[arg1].field_1024 == 1
    require not stor1
    stor1 = 1
    require promises[arg1].field_1024 <= 5
    require stor7[stor4[arg1].field_1024][2]
    promises[arg1].field_1024 = 2
    require promises[arg1].field_512 + lockedTokenBalance >= lockedTokenBalance
    lockedTokenBalance += promises[arg1].field_512
    emit logPromiseConfirmed(promises[arg1].field_0);
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require lockedTokenBalance <= promisedTokenBalance
    require promisedTokenBalance <= ext_call.return_data[0]
    stor1 = 0
}

function getPromiseCount(address arg1, bool arg2) {
    idx = 0
    while idx < nextPromiseId:
        if not arg1:
            if not arg2:
                mem[0] = idx
                mem[32] = 4
                require promises[idx].field_1024 <= 5
                if promises[idx].field_1024 != 1:
                    mem[0] = idx
                    mem[32] = 4
                    require promises[idx].field_1024 <= 5
        else:
            mem[0] = idx
            mem[32] = 4
            if promises[idx].field_256 == arg1:
                if not arg2:
                    mem[0] = idx
                    mem[32] = 4
                    require promises[idx].field_1024 <= 5
                    if promises[idx].field_1024 != 1:
                        mem[0] = idx
                        mem[32] = 4
                        require promises[idx].field_1024 <= 5
        idx = idx + 1
        continue 
    return 0
}

function collectableTokenBalance() {
    idx = 0
    s = 0
    while idx < nextPromiseId:
        require promises[idx].field_1024 <= 5
        mem[0] = idx
        mem[32] = 4
        if promises[idx].field_1024 == 2:
            if block.timestamp < promises[idx].field_768:
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 4
            if promises[idx].field_512 + s >= s:
                idx = idx + 1
                s = promises[idx].field_512 + s
                continue 
        else:
            if promises[idx].field_1024 <= 5:
                if promises[idx].field_1024 != 1:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 4
                if block.timestamp < promises[idx].field_768:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 4
                if promises[idx].field_512 + s >= s:
                    idx = idx + 1
                    s = promises[idx].field_512 + s
                    continue 
        revert
    return s
}

function collect(uint256 arg1) {
    require arg1 < nextPromiseId
    require promises[arg1].field_256 == msg.sender
    require block.timestamp >= promises[arg1].field_768
    require promises[arg1].field_1024 <= 5
    require promises[arg1].field_1024 <= 5
    if promises[arg1].field_1024 != 1:
        require promises[arg1].field_1024 == 2
    require not stor1
    stor1 = 1
    require promises[arg1].field_512 <= promisedTokenBalance
    promisedTokenBalance -= promises[arg1].field_512
    require promises[arg1].field_1024 <= 5
    if promises[arg1].field_1024 == 2:
        require promises[arg1].field_512 <= lockedTokenBalance
        lockedTokenBalance -= promises[arg1].field_512
    require promises[arg1].field_1024 <= 5
    require stor7[stor4[arg1].field_1024][3]
    promises[arg1].field_1024 = 3
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args promises[arg1].field_256, promises[arg1].field_512
    require ext_call.success
    if ext_call.return_data[0]:
        emit logPromiseFulfilled(promises[arg1].field_0);
    else:
        require promises[arg1].field_1024 <= 5
        require stor7[stor4[arg1].field_1024][5]
        promises[arg1].field_1024 = 5
        emit logPromiseUnfulfillable(arg1, promises[arg1].field_256, promises[arg1].field_512);
    stor1 = 0
}

function lockup(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    require arg1
    require arg2
    require not stor1
    stor1 = 1
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] - promisedTokenBalance < arg2:
        require ext_call.return_data[0] - promisedTokenBalance <= arg2
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args owner, address(this.address), arg2 - ext_call.return_data[0] + promisedTokenBalance
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0] - promisedTokenBalance >= arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require arg2 <= ext_call.return_data[0] - promisedTokenBalance
    nextPromiseId++
    promises[stor3].field_0 = nextPromiseId
    promises[stor3].field_256 = arg1
    promises[stor3].field_512 = arg2
    promises[stor3].field_768 = arg3
    promises[stor3].field_1024 = 1
    require promises[stor3].field_512 + promisedTokenBalance >= promisedTokenBalance
    promisedTokenBalance += promises[stor3].field_512
    emit logPromiseCreated(nextPromiseId, address(arg1), arg2, arg3);
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require lockedTokenBalance <= promisedTokenBalance
    require promisedTokenBalance <= ext_call.return_data[0]
    if owner == arg1:
        require promises[stor3].field_1024 <= 5
        require stor7[stor4[stor3].field_1024][2]
        promises[stor3].field_1024 = 2
        require promises[stor3].field_512 + lockedTokenBalance >= lockedTokenBalance
        lockedTokenBalance += promises[stor3].field_512
        emit logPromiseConfirmed(promises[stor3].field_0);
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require lockedTokenBalance <= promisedTokenBalance
        require promisedTokenBalance <= ext_call.return_data[0]
    stor1 = 0
}



}

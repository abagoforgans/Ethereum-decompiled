contract main {




// =====================  Runtime code  =====================


address walletsDelegateAddress;
address controllerDelegateAddress;
address forwardAddress;
uint256 createdWallets;
mapping of uint256 gStorage;
address owner;
mapping of uint256 stor6;
array of address stor7;

function controllerDelegate() {
    return controllerDelegateAddress
}

function gStorage(bytes32 arg1) {
    return gStorage[arg1]
}

function owner() {
    return owner
}

function isWorker(address arg1) {
    return bool(stor6[address(arg1)])
}

function forward() {
    return forwardAddress
}

function createdWallets() {
    return createdWallets
}

function walletsDelegate() {
    return walletsDelegateAddress
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
    return 1
}

function setForward(address arg1) {
    require owner == msg.sender
    emit ChangedForward(forwardAddress, address(arg1), msg.sender);
    forwardAddress = arg1
    return 1
}

function addWorker(address arg1) {
    require owner == msg.sender
    require not stor6[address(arg1)]
    stor7.length++
    address(stor7[stor7.length]) = arg1
    stor6[address(arg1)] = stor7.length
    emit AddedWorker(arg1);
    return 1
}

function withdrawEth(address arg1) {
    require stor6[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.transferEther(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args forwardAddress, eth.balance(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        emit WithdrawEth(address(arg1), forwardAddress, eth.balance(arg1));
    return bool(ext_call.return_data[0])
}

function createWallets(uint256 arg1) {
    require stor6[address(msg.sender)]
    idx = 0
    while idx < arg1:
        mem[96 len 634] = code.data[4452 len 634]
        create contract with 0 wei
                        code: code.data[4452 len 634]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = address(create.new_address)
        emit CreatedUserWallet(address(create.new_address));
        idx = idx + 1
        continue 
    createdWallets += arg1
    return 1
}

function removeWorker(address arg1) {
    require owner == msg.sender
    require stor6[address(arg1)]
    require stor7.length - 1 < stor7.length
    stor6[address(stor7[stor7.length])] = stor6[address(arg1)]
    require stor6[address(arg1)] < stor7.length
    address(stor7[stor6[address(arg1)]]) = address(stor7[stor7.length])
    stor7.length--
    if stor7.length > stor7.length - 1:
        idx = stor7.length - 1
        while stor7.length > idx:
            uint256(stor7[idx]) = 0
            idx = idx + 1
            continue 
    stor6[address(arg1)] = 0
    emit RemovedWorker(arg1);
    return 1
}

function allWorkers() {
    mem[96] = stor7.length - 1
    if stor7.length - 1:
        mem[128 len 32 * stor7.length - 1] = code.data[4452 len 32 * stor7.length - 1]
    idx = 1
    while idx < stor7.length:
        mem[0] = 7
        require idx - 1 < mem[96]
        mem[(32 * idx - 1) + 128] = address(stor7[idx])
        idx = idx + 1
        continue 
    mem[(32 * stor7.length - 1) + 128] = 32
    mem[(32 * stor7.length - 1) + 160] = mem[96]
    mem[(32 * stor7.length - 1) + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[(32 * stor7.length - 1) + 160 len (32 * mem[96]) + 32]
}

function executeTransaction(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require owner == msg.sender
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    return bool(ext_call.success)
}

function withdrawERC20(address arg1, address arg2) {
    require stor6[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.transferERC20Token(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), forwardAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        emit WithdrawToken(address(arg1), address(arg2), forwardAddress, ext_call.return_data[0]);
    require ext_code.size(forwardAddress)
    call forwardAddress.handleTokens(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function withdrawEthBatch(address[] arg1) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor6[address(msg.sender)]
    idx = 0
    s = 0
    s = 0
    while idx < arg1.length:
        require idx < mem[96]
        _19 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = eth.balance(_19)
        require ext_code.size(address(_19))
        call address(_19).transferEther(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), eth.balance(_19)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            mem[mem[64]] = address(_19)
            mem[mem[64] + 32] = forwardAddress
            mem[mem[64] + 64] = eth.balance(_19)
            emit WithdrawEth(address(_19), forwardAddress, eth.balance(_19));
        idx = idx + 1
        s = _19
        s = eth.balance(_19)
        continue 
    call forwardAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    return 1
}

function withdrawERC20Batch(address arg1, address[] arg2) {
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require stor6[address(msg.sender)]
    idx = 0
    s = 0
    s = 0
    while idx < arg2.length:
        require idx < mem[96]
        _24 = mem[(32 * idx) + 128]
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args address(mem[(32 * idx) + 128])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = forwardAddress
        mem[mem[64] + 68] = ext_call.return_data[0]
        require ext_code.size(address(_24))
        call address(_24).transferERC20Token(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), forwardAddress, ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = address(_24)
            mem[mem[64] + 64] = forwardAddress
            mem[mem[64] + 96] = ext_call.return_data[0]
            emit WithdrawToken(address(arg1), address(_24), forwardAddress, ext_call.return_data[0]);
        idx = idx + 1
        s = _24
        s = ext_call.return_data[0]
        continue 
    require ext_code.size(forwardAddress)
    call forwardAddress.handleTokens(address arg1) with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}



}

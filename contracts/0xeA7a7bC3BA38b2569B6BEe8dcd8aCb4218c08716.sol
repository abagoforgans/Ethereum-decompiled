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

function getDelegate() {
    return walletsDelegateAddress
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

function setOwner(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
    return 1
}

function setWalletsDelegate(address arg1) {
    require owner == msg.sender
    walletsDelegateAddress = arg1
    return 1
}

function setControllerDelegate(address arg1) {
    require owner == msg.sender
    controllerDelegateAddress = arg1
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

function _fallback() payable {
    if gas_remaining <= 2400:
    delegate controllerDelegateAddress with:
       funct call.data[0 len 4]
         gas gas_remaining - 10000 wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
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
        mem[128 len 32 * stor7.length - 1] = code.data[2047 len 32 * stor7.length - 1]
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



}

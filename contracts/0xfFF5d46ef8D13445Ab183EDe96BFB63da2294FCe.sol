contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address stor1;
array of uint256 loadedContracts;
address dbAddress;
mapping of address stor99;

function getContractName(uint256 arg1) {
    return loadedContracts[arg1][0 len loadedContracts[arg1].length]
}

function db() {
    return dbAddress
}

function owner() {
    return owner
}

function loadedContracts(uint256 arg1) {
    return loadedContracts[arg1][0 len loadedContracts[arg1].length]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getContract(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    mem[ceil32(arg1.length) + 128] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function addImmutableContract(string arg1, address arg2) {
    require msg.sender == owner
    require not address(stor1[arg1[all]])
    mem[arg1.length + 96] = 1
    address(stor1[arg1[all]]) = arg2
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + floor32(arg1.length) + 128 len arg1.length % 32]) == sha3(Mask(64, 128, 'DATABASE') >> 128):
        dbAddress = arg2
}

function updateContract(string arg1, address arg2) {
    require msg.sender == owner
    if address(stor1[arg1[all]]):
        require ext_code.size(dbAddress)
        call dbAddress.setStorageContract(address arg1, bool arg2) with:
             gas gas_remaining wei
            args address(stor1[arg1[all]]), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        loadedContracts.length++
        loadedContracts[loadedContracts.length] = (2 * arg1.length) + 1
        s = 0
        idx = arg1 + 36
        while arg1 + arg1.length + 36 > idx:
            loadedContracts[loadedContracts.length + s] = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg1.length + 31) >> 5
        while loadedContracts[loadedContracts.length].length + 31 / 32 > idx:
            loadedContracts[loadedContracts.length + idx] = 0
            idx = idx + 1
            continue 
    require ext_code.size(dbAddress)
    call dbAddress.setStorageContract(address arg1, bool arg2) with:
         gas gas_remaining wei
        args address(arg2), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit UpdatedContract(string arg1, address arg2, address arg3):
                         0xa42b6bf100000000000000000000000000000000000000000000000000000000,
                         address(stor1[arg1[all]]),
                         address(arg2),
                         arg1.length,
                         arg1[all],
    address(stor1[arg1[all]]) = arg2
}

function updateAllDependencies() payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    s = 0
    idx = 0
    while idx < loadedContracts.length:
        _25 = mem[64]
        mem[0] = sha3(2) + idx
        mem[mem[64]] = loadedContracts[idx]
        s = mem[64]
        t = sha3(mem[0])
        while _25 + loadedContracts[idx].length > s + 32:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        mem[_25 + loadedContracts[idx].length] = 1
        _50 = sha3(mem[mem[64] len _25 + loadedContracts[idx].length + -mem[64] + 32])
        require ext_code.size(stor[sha3(mem[mem[64] len _25 + stor2[idx].length + -mem[64] + 32])])
        call stor[sha3(mem[mem[64] len _25 + stor2[idx].length + -mem[64] + 32])].updateDependencies() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < loadedContracts.length
        mem[0] = 2
        _54 = mem[64]
        mem[mem[64]] = block.timestamp
        mem[mem[64] + 64] = stor[_50]
        mem[mem[64] + 32] = 96
        mem[mem[64] + 96] = loadedContracts[idx].length
        mem[0] = sha3(2) + idx
        mem[mem[64] + 128] = loadedContracts[idx]
        s = mem[64] + 128
        t = sha3(mem[0])
        while _54 + loadedContracts[idx].length + 128 > s + 32:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        emit UpdatedDependencies(uint256 arg1, string arg2, address arg3):
                                 mem[mem[64] len _54 + loadedContracts[idx].length + (s + -_54 + -loadedContracts[idx].length - 96 % 32) + -mem[64] + 128],
        s = stor[_50]
        idx = idx + 1
        continue 
}



}

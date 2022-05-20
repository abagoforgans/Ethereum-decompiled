contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;
address stor4;
address stor5;

function _fallback() {
    stor0 = msg.sender
    require code.data[5519 len 20]
    require code.data[5551 len 20]
    require code.data[5583 len 20]
    require code.data[5615 len 20]
    stor4 = code.data[5519 len 20]
    stor5 = code.data[5551 len 20]
    stor2 = code.data[5583 len 20]
    stor3 = code.data[5615 len 20]
    return code.data[262 len 5245]
}



// =====================  Runtime code  =====================


address contractOwner;
address pendingContractOwner;
address profiteroleAddress;
address treasuryAddress;
address pendingManagerAddress;
address proxyAddress;
uint256 sideServicesCount;
mapping of address index2sideService;
mapping of uint256 sideService2index;
mapping of uint8 stor9;
uint256 emissionProvidersCount;
mapping of address index2emissionProvider;
mapping of uint256 emissionProvider2index;
mapping of uint8 stor13;
uint256 burningMansCount;
mapping of address index2burningMan;
mapping of uint256 burningMan2index;
mapping of uint8 stor17;

function index2sideService(uint256 arg1) {
    return index2sideService[arg1]
}

function getPendingManager() {
    return pendingManagerAddress
}

function profiterole() {
    return profiteroleAddress
}

function sideServices(address arg1) {
    return bool(stor9[arg1])
}

function sideServicesCount() {
    return sideServicesCount
}

function sideService2index(address arg1) {
    return sideService2index[arg1]
}

function pendingContractOwner() {
    return pendingContractOwner
}

function treasury() {
    return treasuryAddress
}

function burningMan2index(address arg1) {
    return burningMan2index[arg1]
}

function index2burningMan(uint256 arg1) {
    return index2burningMan[arg1]
}

function pendingManager() {
    return pendingManagerAddress
}

function burningMans(address arg1) {
    return bool(stor17[arg1])
}

function emissionProvider2index(address arg1) {
    return emissionProvider2index[arg1]
}

function emissionProviders(address arg1) {
    return bool(stor13[arg1])
}

function burningMansCount() {
    return burningMansCount
}

function emissionProvidersCount() {
    return emissionProvidersCount
}

function contractOwner() {
    return contractOwner
}

function index2emissionProvider(uint256 arg1) {
    return index2emissionProvider[arg1]
}

function proxy() {
    return proxyAddress
}

function destroy() {
    if contractOwner != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        return 0
    contractOwner = pendingContractOwner
    pendingContractOwner = 0
    return 1
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        return 0
    if not arg1:
        return 0
    pendingContractOwner = arg1
    return 1
}

function isService(address arg1) {
    if profiteroleAddress == arg1:
        return True
    if treasuryAddress == arg1:
        return True
    if proxyAddress == arg1:
        return True
    if pendingManagerAddress == arg1:
        return True
    if stor13[address(arg1)]:
        return bool(stor13[address(arg1)])
    if stor17[address(arg1)]:
        return bool(stor17[address(arg1)])
    return bool(stor9[address(arg1)])
}

function getBurningMans() {
    mem[128] = burningMansCount
    idx = 0
    while idx < mem[128]:
        mem[0] = idx + 1
        mem[32] = 15
        require idx < mem[128]
        mem[(32 * idx) + 160] = index2burningMan[idx + 1]
        idx = idx + 1
        continue 
    mem[(32 * burningMansCount) + 160] = 32
    mem[(32 * burningMansCount) + 192] = mem[128]
    mem[(32 * burningMansCount) + 224 len floor32(mem[128])] = mem[160 len floor32(mem[128])]
    return 32, mem[(32 * burningMansCount) + 192 len (32 * mem[128]) + 32]
}

function getSideServices() {
    mem[128] = sideServicesCount
    idx = 0
    while idx < mem[128]:
        mem[0] = idx + 1
        mem[32] = 7
        require idx < mem[128]
        mem[(32 * idx) + 160] = index2sideService[idx + 1]
        idx = idx + 1
        continue 
    mem[(32 * sideServicesCount) + 160] = 32
    mem[(32 * sideServicesCount) + 192] = mem[128]
    mem[(32 * sideServicesCount) + 224 len floor32(mem[128])] = mem[160 len floor32(mem[128])]
    return 32, mem[(32 * sideServicesCount) + 192 len (32 * mem[128]) + 32]
}

function getEmissionProviders() {
    mem[128] = emissionProvidersCount
    idx = 0
    while idx < mem[128]:
        mem[0] = idx + 1
        mem[32] = 11
        require idx < mem[128]
        mem[(32 * idx) + 160] = index2emissionProvider[idx + 1]
        idx = idx + 1
        continue 
    mem[(32 * emissionProvidersCount) + 160] = 32
    mem[(32 * emissionProvidersCount) + 192] = mem[128]
    mem[(32 * emissionProvidersCount) + 224 len floor32(mem[128])] = mem[160 len floor32(mem[128])]
    return 32, mem[(32 * emissionProvidersCount) + 192 len (32 * mem[128]) + 32]
}

function withdrawnTokens(address[] arg1, address arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if contractOwner != msg.sender:
        return 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _21 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = this.address
        require ext_code.size(address(_21))
        call address(_21).0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            mem[(32 * arg1.length) + 132] = arg2
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_21))
            call address(_21).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg2), ext_call.return_data[0]
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
        s = ext_call.return_data[0]
        s = _21
        idx = idx + 1
        continue 
    return 1
}

function updateTreasury(address arg1, uint256 arg2) {
    require ext_code.size(pendingManagerAddress)
    if arg2:
        call pendingManagerAddress.0x95e4c1bf with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1), arg2)
        require ext_call.success
        if ext_call.return_data[0] != 4:
            if ext_call.return_data[0] != 1:
                return ext_call.return_data[0]
            treasuryAddress = arg1
            return 1
        require ext_code.size(pendingManagerAddress)
        call pendingManagerAddress.0x2b828e4a with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1), arg2), call.func_hash, this.address
    else:
        call pendingManagerAddress.0x95e4c1bf with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1), block.number)
        require ext_call.success
        if ext_call.return_data[0] != 4:
            if ext_call.return_data[0] != 1:
                return ext_call.return_data[0]
            treasuryAddress = arg1
            return 1
        require ext_code.size(pendingManagerAddress)
        call pendingManagerAddress.0x2b828e4a with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1), block.number), call.func_hash, this.address
    require ext_call.success
    require 1 == ext_call.return_data[0]
    return 3
}

function updateProfiterole(address arg1, uint256 arg2) {
    require ext_code.size(pendingManagerAddress)
    if arg2:
        call pendingManagerAddress.0x95e4c1bf with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1), arg2)
        require ext_call.success
        if ext_call.return_data[0] != 4:
            if ext_call.return_data[0] != 1:
                return ext_call.return_data[0]
            profiteroleAddress = arg1
            return 1
        require ext_code.size(pendingManagerAddress)
        call pendingManagerAddress.0x2b828e4a with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1), arg2), call.func_hash, this.address
    else:
        call pendingManagerAddress.0x95e4c1bf with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1), block.number)
        require ext_call.success
        if ext_call.return_data[0] != 4:
            if ext_call.return_data[0] != 1:
                return ext_call.return_data[0]
            profiteroleAddress = arg1
            return 1
        require ext_code.size(pendingManagerAddress)
        call pendingManagerAddress.0x2b828e4a with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1), block.number), call.func_hash, this.address
    require ext_call.success
    require 1 == ext_call.return_data[0]
    return 3
}

function updatePendingManager(address arg1, uint256 arg2) {
    require ext_code.size(pendingManagerAddress)
    if arg2:
        call pendingManagerAddress.0x95e4c1bf with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1), arg2)
        require ext_call.success
        if ext_call.return_data[0] != 4:
            if ext_call.return_data[0] != 1:
                return ext_call.return_data[0]
            pendingManagerAddress = arg1
            return 1
        require ext_code.size(pendingManagerAddress)
        call pendingManagerAddress.0x2b828e4a with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1), arg2), call.func_hash, this.address
    else:
        call pendingManagerAddress.0x95e4c1bf with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1), block.number)
        require ext_call.success
        if ext_call.return_data[0] != 4:
            if ext_call.return_data[0] != 1:
                return ext_call.return_data[0]
            pendingManagerAddress = arg1
            return 1
        require ext_code.size(pendingManagerAddress)
        call pendingManagerAddress.0x2b828e4a with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1), block.number), call.func_hash, this.address
    require ext_call.success
    require 1 == ext_call.return_data[0]
    return 3
}

function addSideService(address arg1, uint256 arg2) {
    if stor9[address(arg1)]:
        return 350004
    require ext_code.size(pendingManagerAddress)
    if arg2:
        call pendingManagerAddress.0x95e4c1bf with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1), arg2)
        require ext_call.success
        if ext_call.return_data[0] == 4:
            require ext_code.size(pendingManagerAddress)
            call pendingManagerAddress.0x2b828e4a with:
                 gas gas_remaining - 710 wei
                args sha3(uint32(call.func_hash), sha3(arg1), arg2), call.func_hash, this.address
            require ext_call.success
            require 1 == ext_call.return_data[0]
            return 3
    else:
        call pendingManagerAddress.0x95e4c1bf with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1), block.number)
        require ext_call.success
        if ext_call.return_data[0] == 4:
            require ext_code.size(pendingManagerAddress)
            call pendingManagerAddress.0x2b828e4a with:
                 gas gas_remaining - 710 wei
                args sha3(uint32(call.func_hash), sha3(arg1), block.number), call.func_hash, this.address
            require ext_call.success
            require 1 == ext_call.return_data[0]
            return 3
    ('iszero', ('eq', ('ext_call.return_data', 0, 32), 4))
    if ext_call.return_data[0] != 1:
        return ext_call.return_data[0]
    stor9[address(arg1)] = 1
    index2sideService[stor6 + 1] = arg1
    sideService2index[address(arg1)] = sideServicesCount + 1
    sideServicesCount++
    return 1
}

function addBurningMan(address arg1, uint256 arg2) {
    if stor17[address(arg1)]:
        emit Error(350002);
        return 350002
    require ext_code.size(pendingManagerAddress)
    if arg2:
        call pendingManagerAddress.0x95e4c1bf with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1), arg2)
        require ext_call.success
        if ext_call.return_data[0] == 4:
            require ext_code.size(pendingManagerAddress)
            call pendingManagerAddress.0x2b828e4a with:
                 gas gas_remaining - 710 wei
                args sha3(uint32(call.func_hash), sha3(arg1), arg2), call.func_hash, this.address
            require ext_call.success
            require 1 == ext_call.return_data[0]
            return 3
    else:
        call pendingManagerAddress.0x95e4c1bf with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1), block.number)
        require ext_call.success
        if ext_call.return_data[0] == 4:
            require ext_code.size(pendingManagerAddress)
            call pendingManagerAddress.0x2b828e4a with:
                 gas gas_remaining - 710 wei
                args sha3(uint32(call.func_hash), sha3(arg1), block.number), call.func_hash, this.address
            require ext_call.success
            require 1 == ext_call.return_data[0]
            return 3
    ('iszero', ('eq', ('ext_call.return_data', 0, 32), 4))
    if ext_call.return_data[0] != 1:
        return ext_call.return_data[0]
    stor17[address(arg1)] = 1
    index2burningMan[stor14 + 1] = arg1
    burningMan2index[address(arg1)] = burningMansCount + 1
    burningMansCount++
    return 1
}

function addEmissionProvider(address arg1, uint256 arg2) {
    if stor13[address(arg1)]:
        emit Error(350001);
        return 350001
    require ext_code.size(pendingManagerAddress)
    if arg2:
        call pendingManagerAddress.0x95e4c1bf with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1), arg2)
        require ext_call.success
        if ext_call.return_data[0] == 4:
            require ext_code.size(pendingManagerAddress)
            call pendingManagerAddress.0x2b828e4a with:
                 gas gas_remaining - 710 wei
                args sha3(uint32(call.func_hash), sha3(arg1), arg2), call.func_hash, this.address
            require ext_call.success
            require 1 == ext_call.return_data[0]
            return 3
    else:
        call pendingManagerAddress.0x95e4c1bf with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1), block.number)
        require ext_call.success
        if ext_call.return_data[0] == 4:
            require ext_code.size(pendingManagerAddress)
            call pendingManagerAddress.0x2b828e4a with:
                 gas gas_remaining - 710 wei
                args sha3(uint32(call.func_hash), sha3(arg1), block.number), call.func_hash, this.address
            require ext_call.success
            require 1 == ext_call.return_data[0]
            return 3
    ('iszero', ('eq', ('ext_call.return_data', 0, 32), 4))
    if ext_call.return_data[0] != 1:
        return ext_call.return_data[0]
    stor13[address(arg1)] = 1
    index2emissionProvider[stor10 + 1] = arg1
    emissionProvider2index[address(arg1)] = emissionProvidersCount + 1
    emissionProvidersCount++
    return 1
}

function removeBurningMan(address arg1, uint256 arg2) {
    require ext_code.size(pendingManagerAddress)
    if arg2:
        call pendingManagerAddress.0x95e4c1bf with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1), arg2)
        require ext_call.success
        if ext_call.return_data[0] == 4:
            require ext_code.size(pendingManagerAddress)
            call pendingManagerAddress.0x2b828e4a with:
                 gas gas_remaining - 710 wei
                args sha3(uint32(call.func_hash), sha3(arg1), arg2), call.func_hash, this.address
            require ext_call.success
            require 1 == ext_call.return_data[0]
            return 3
    else:
        call pendingManagerAddress.0x95e4c1bf with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1), block.number)
        require ext_call.success
        if ext_call.return_data[0] == 4:
            require ext_code.size(pendingManagerAddress)
            call pendingManagerAddress.0x2b828e4a with:
                 gas gas_remaining - 710 wei
                args sha3(uint32(call.func_hash), sha3(arg1), block.number), call.func_hash, this.address
            require ext_call.success
            require 1 == ext_call.return_data[0]
            return 3
    ('iszero', ('eq', ('ext_call.return_data', 0, 32), 4))
    if ext_call.return_data[0] != 1:
        return ext_call.return_data[0]
    if burningMan2index[address(arg1)]:
        if burningMansCount != burningMan2index[address(arg1)]:
            index2burningMan[stor16[address(arg1)]] = index2burningMan[stor14]
            burningMan2index[stor15[stor14]] = burningMan2index[address(arg1)]
        burningMan2index[address(arg1)] = 0
        index2burningMan[stor14] = 0
        stor17[address(arg1)] = 0
        burningMansCount--
    return 1
}

function removeSideService(address arg1, uint256 arg2) {
    require ext_code.size(pendingManagerAddress)
    if arg2:
        call pendingManagerAddress.0x95e4c1bf with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1), arg2)
        require ext_call.success
        if ext_call.return_data[0] == 4:
            require ext_code.size(pendingManagerAddress)
            call pendingManagerAddress.0x2b828e4a with:
                 gas gas_remaining - 710 wei
                args sha3(uint32(call.func_hash), sha3(arg1), arg2), call.func_hash, this.address
            require ext_call.success
            require 1 == ext_call.return_data[0]
            return 3
    else:
        call pendingManagerAddress.0x95e4c1bf with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1), block.number)
        require ext_call.success
        if ext_call.return_data[0] == 4:
            require ext_code.size(pendingManagerAddress)
            call pendingManagerAddress.0x2b828e4a with:
                 gas gas_remaining - 710 wei
                args sha3(uint32(call.func_hash), sha3(arg1), block.number), call.func_hash, this.address
            require ext_call.success
            require 1 == ext_call.return_data[0]
            return 3
    ('iszero', ('eq', ('ext_call.return_data', 0, 32), 4))
    if ext_call.return_data[0] != 1:
        return ext_call.return_data[0]
    if sideService2index[address(arg1)]:
        if sideServicesCount != sideService2index[address(arg1)]:
            index2sideService[stor8[address(arg1)]] = index2sideService[stor6]
            sideService2index[stor7[stor6]] = sideService2index[address(arg1)]
        sideService2index[address(arg1)] = 0
        index2sideService[stor6] = 0
        stor9[address(arg1)] = 0
        sideServicesCount--
    return 1
}

function removeEmissionProvider(address arg1, uint256 arg2) {
    require ext_code.size(pendingManagerAddress)
    if arg2:
        call pendingManagerAddress.0x95e4c1bf with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1), arg2)
        require ext_call.success
        if ext_call.return_data[0] == 4:
            require ext_code.size(pendingManagerAddress)
            call pendingManagerAddress.0x2b828e4a with:
                 gas gas_remaining - 710 wei
                args sha3(uint32(call.func_hash), sha3(arg1), arg2), call.func_hash, this.address
            require ext_call.success
            require 1 == ext_call.return_data[0]
            return 3
    else:
        call pendingManagerAddress.0x95e4c1bf with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1), block.number)
        require ext_call.success
        if ext_call.return_data[0] == 4:
            require ext_code.size(pendingManagerAddress)
            call pendingManagerAddress.0x2b828e4a with:
                 gas gas_remaining - 710 wei
                args sha3(uint32(call.func_hash), sha3(arg1), block.number), call.func_hash, this.address
            require ext_call.success
            require 1 == ext_call.return_data[0]
            return 3
    ('iszero', ('eq', ('ext_call.return_data', 0, 32), 4))
    if ext_call.return_data[0] != 1:
        return ext_call.return_data[0]
    if emissionProvider2index[address(arg1)]:
        if emissionProvidersCount != emissionProvider2index[address(arg1)]:
            index2emissionProvider[stor12[address(arg1)]] = index2emissionProvider[stor10]
            emissionProvider2index[stor11[stor10]] = emissionProvider2index[address(arg1)]
        emissionProvider2index[address(arg1)] = 0
        index2emissionProvider[stor10] = 0
        stor13[address(arg1)] = 0
        emissionProvidersCount--
    return 1
}



}

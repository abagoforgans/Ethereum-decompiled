contract main {


// =======================  Init code  ======================


address stor0;
address stor5;

function _fallback() {
    stor0 = msg.sender
    require code.data[8479 len 20]
    stor5 = code.data[8479 len 20]
    return code.data[132 len 8335]
}



// =====================  Runtime code  =====================


address contractOwner;
address pendingContractOwner;
mapping of uint8 stor2;
address withdrawalAddress;
address serviceControllerAddress;
mapping of uint256 allowance;
uint256 holdersCount;
mapping of struct holderCountryCode;
mapping of uint256 holderExternalIdBy;
mapping of uint256 holderIndex;
uint256 countriesCount;
mapping of struct countryLimit;
mapping of uint256 stor13;

function allowance(address arg1) {
    return allowance[arg1]
}

function serviceController() {
    return serviceControllerAddress
}

function pendingContractOwner() {
    return pendingContractOwner
}

function getHolderCountryCode(bytes32 arg1) {
    return holderCountryCode[stor10[arg1]].field_0
}

function holdersCount() {
    return holdersCount
}

function getHolderExternalIdByAddress(address arg1) {
    return holderExternalIdBy[address(arg1)]
}

function getHolderInfo(bytes32 arg1) {
    mem[160] = holderCountryCode[stor10[arg1]][4].field_0
    idx = 160
    s = 0
    while holderCountryCode[stor10[arg1]][4].length + 128 > idx:
        mem[idx + 32] = holderCountryCode[stor10[arg1]][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return holderCountryCode[stor10[arg1]].field_0, 
           holderCountryCode[stor10[arg1]].field_256,
           holderCountryCode[stor10[arg1]].field_512,
           bool(holderCountryCode[stor10[arg1]].field_768),
           Array(len=holderCountryCode[stor10[arg1]][4].length, data=mem[160 len holderCountryCode[stor10[arg1]][4].length])
}

function getCountryLimit(uint256 arg1) {
    require stor13[arg1]
    return countryLimit[stor13[arg1]].field_256
}

function countriesCount() {
    return countriesCount
}

function getCountryInfo(uint256 arg1) {
    return countryLimit[stor13[arg1]].field_256, countryLimit[stor13[arg1]].field_512
}

function holderIndex(bytes32 arg1) {
    return holderIndex[arg1]
}

function contractOwner() {
    return contractOwner
}

function withdrawal() {
    return withdrawalAddress
}

function isRegisteredAddress(address arg1) {
    return bool(holderIndex[stor9[address(arg1)]])
}

function getHolderAddresses(bytes32 arg1) {
    idx = 0
    while idx < holderCountryCode[stor10[arg1]].field_1280:
        mem[0] = idx + 1
        mem[32] = sha3(holderIndex[arg1], 8) + 6
        require idx < holderCountryCode[stor10[arg1]].field_1280
        mem[(32 * idx) + 160] = holderCountryCode[stor10[arg1]][6][idx + 1].field_0
        idx = idx + 1
        continue 
    mem[(32 * holderCountryCode[stor10[arg1]].field_1280) + 224 len floor32(holderCountryCode[stor10[arg1]].field_1280)] = mem[160 len floor32(holderCountryCode[stor10[arg1]].field_1280)]
    return Array(len=holderCountryCode[stor10[arg1]].field_1280, data=mem[160 len floor32(holderCountryCode[stor10[arg1]].field_1280)], mem[(32 * holderCountryCode[stor10[arg1]].field_1280) + floor32(holderCountryCode[stor10[arg1]].field_1280) + 224 len (32 * holderCountryCode[stor10[arg1]].field_1280) - floor32(holderCountryCode[stor10[arg1]].field_1280)]), 
}

function oracles(bytes4 arg1, address arg2) {
    return bool(stor2[Mask(32, 224, arg1)][arg2])
}

function destroy() {
    if contractOwner != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function setWithdraw(address arg1) {
    if contractOwner != msg.sender:
        return 0
    require arg1
    withdrawalAddress = arg1
    return 1
}

function setServiceController(address arg1) {
    if contractOwner != msg.sender:
        return 0
    require arg1
    serviceControllerAddress = arg1
    return 1
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

function isHolderOwnAddress(bytes32 arg1, address arg2) {
    if holderIndex[arg1]:
        return bool(holderCountryCode[stor10[arg1]][7][address(arg2)].field_0)
    else:
        return 0
}

function getPendingManager() {
    require ext_code.size(serviceControllerAddress)
    call serviceControllerAddress.getPendingManager() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function changeOperational(bytes32 arg1, bool arg2) {
    if not stor2[call.func_hash][address(msg.sender)]:
        if contractOwner != msg.sender:
            return 0
    require holderIndex[arg1]
    holderCountryCode[stor10[arg1]].field_768 = uint8(arg2)
    emit HolderOperationalChanged(arg1, arg2);
    return 1
}

function updateLimitPerDay(bytes32 arg1, uint256 arg2) {
    if not stor2[call.func_hash][address(msg.sender)]:
        if contractOwner != msg.sender:
            return 0
    require holderIndex[arg1]
    holderCountryCode[stor10[arg1]].field_256 = arg2
    emit DayLimitChanged(arg1, holderCountryCode[stor10[arg1]].field_256, arg2);
    return 1
}

function updateLimitPerMonth(bytes32 arg1, uint256 arg2) {
    if not stor2[call.func_hash][address(msg.sender)]:
        if contractOwner != msg.sender:
            return 0
    require holderIndex[arg1]
    holderCountryCode[stor10[arg1]].field_512 = arg2
    emit MonthLimitChanged(arg1, holderCountryCode[stor10[arg1]].field_256, arg2);
    return 1
}

function changeCountryLimit(uint256 arg1, uint256 arg2) {
    if not stor2[call.func_hash][address(msg.sender)]:
        if contractOwner != msg.sender:
            return 0
    require stor13[arg1]
    if countryLimit[stor13[arg1]].field_512 > arg2:
        emit Error(109002);
        return 109002
    countryLimit[stor13[arg1]].field_256 = arg2
    emit CountryCodeChanged(stor13[arg1], arg1, arg2);
    return 1
}

function addCountryCode(uint256 arg1) {
    if contractOwner != msg.sender:
        return 0
    if stor13[arg1]:
        emit Error(109004);
        return 109004
    require countriesCount + 1 >= countriesCount
    countriesCount++
    countryLimit[stor11 + 1].field_0 = arg1
    countryLimit[stor11 + 1].field_256 = -1
    stor13[arg1] = countriesCount + 1
    emit CountryCodeAdded(countriesCount + 1, arg1, -1);
    return 1
}

function changeAllowance(address arg1, uint256 arg2) {
    require withdrawalAddress == msg.sender
    require ext_code.size(serviceControllerAddress)
    call serviceControllerAddress.0xec556889 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] >= arg2:
        allowance[address(arg1)] = arg2
        return 1
    emit Error(109003);
    return 109003
}

function updateCountryHoldersCount(uint256 arg1, uint256 arg2) {
    require ext_code.size(serviceControllerAddress)
    call serviceControllerAddress.0xec556889 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getLatestVersion() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        return 0
    require countryLimit[stor13[arg1]].field_256 >= arg2
    countryLimit[stor13[arg1]].field_512 = arg2
    return 1
}

function updateTextForHolder(bytes32 arg1, bytes arg2) {
    if not stor2[call.func_hash][address(msg.sender)]:
        if contractOwner != msg.sender:
            return 0
    require holderIndex[arg1]
    holderCountryCode[stor10[arg1]].field_1024 = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        holderCountryCode[stor10[arg1]][s + 4].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while holderCountryCode[stor10[arg1]][4].length + 31 / 32 > idx:
        holderCountryCode[stor10[arg1]][idx + 4].field_0 = 0
        idx = idx + 1
        continue 
    return 1
}

function withdrawFrom(address arg1, uint256 arg2) {
    require ext_code.size(serviceControllerAddress)
    call serviceControllerAddress.0xec556889 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getLatestVersion() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        return 0
    require arg2 <= holderCountryCode[stor10[stor9[address(arg1)]]].field_256
    holderCountryCode[stor10[stor9[address(arg1)]]].field_256 -= arg2
    require arg2 <= holderCountryCode[stor10[stor9[address(arg1)]]].field_512
    holderCountryCode[stor10[stor9[address(arg1)]]].field_512 -= arg2
    return 1
}

function addHolderAddress(bytes32 arg1, address arg2) {
    if not stor2[call.func_hash][address(msg.sender)]:
        if contractOwner != msg.sender:
            return 0
    require holderIndex[arg1]
    require not holderIndex[stor9[address(arg2)]]
    if not holderCountryCode[stor10[arg1]][7][address(arg2)].field_0:
        require holderCountryCode[stor10[arg1]].field_1280 + 1 >= holderCountryCode[stor10[arg1]].field_1280
        holderCountryCode[stor10[arg1]].field_1280++
        holderCountryCode[stor10[arg1]][7][address(arg2)].field_0 = holderCountryCode[stor10[arg1]].field_1280 + 1
        holderCountryCode[stor10[arg1]][6][holderCountryCode[stor10[arg1]].field_1280 + 1].field_0 = arg2
    holderExternalIdBy[address(arg2)] = arg1
    emit HolderAddressAdded(arg1, address(arg2), holderIndex[arg1]);
    return 1
}

function depositTo(address arg1, uint256 arg2) {
    require ext_code.size(serviceControllerAddress)
    call serviceControllerAddress.0xec556889 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getLatestVersion() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        return 0
    require arg2 + holderCountryCode[stor10[stor9[address(arg1)]]].field_256 >= holderCountryCode[stor10[stor9[address(arg1)]]].field_256
    holderCountryCode[stor10[stor9[address(arg1)]]].field_256 += arg2
    require arg2 + holderCountryCode[stor10[stor9[address(arg1)]]].field_512 >= holderCountryCode[stor10[stor9[address(arg1)]]].field_512
    holderCountryCode[stor10[stor9[address(arg1)]]].field_512 += arg2
    return 1
}

function removeHolderAddress(bytes32 arg1, address arg2) {
    if not stor2[call.func_hash][address(msg.sender)]:
        if contractOwner != msg.sender:
            return 0
    require holderIndex[arg1]
    require holderCountryCode[stor10[arg1]][7][address(arg2)].field_0
    holderCountryCode[stor10[arg1]][7][holderCountryCode[stor10[arg1]][6][holderCountryCode[stor10[arg1]].field_1280].field_0].field_0 = holderCountryCode[stor10[arg1]][7][address(arg2)].field_0
    holderCountryCode[stor10[arg1]][6][holderCountryCode[stor10[arg1]][7][address(arg2)].field_0].field_0 = holderCountryCode[stor10[arg1]][6][holderCountryCode[stor10[arg1]].field_1280].field_0
    holderCountryCode[stor10[arg1]][7][address(arg2)].field_0 = 0
    require 1 <= holderCountryCode[stor10[arg1]].field_1280
    holderCountryCode[stor10[arg1]].field_1280--
    holderExternalIdBy[address(arg2)] = 0
    emit HolderAddressRemoved(arg1, address(arg2), holderIndex[arg1]);
    return 1
}

function registerHolder(bytes32 arg1, address arg2, uint256 arg3) {
    if not stor2[call.func_hash][address(msg.sender)]:
        if contractOwner != msg.sender:
            return 0
    require arg2
    require not holderIndex[arg1]
    require not holderIndex[stor9[address(arg2)]]
    if not stor13[arg3]:
        require countriesCount + 1 >= countriesCount
        countriesCount++
        countryLimit[stor11 + 1].field_0 = arg3
        countryLimit[stor11 + 1].field_256 = -1
        stor13[arg3] = countriesCount + 1
        emit CountryCodeAdded(countriesCount + 1, arg3, -1);
    require holdersCount + 1 >= holdersCount
    holdersCount++
    holderCountryCode[stor7 + 1].field_0 = arg3
    holderCountryCode[stor7 + 1].field_768 = 1
    holderCountryCode[stor7 + 1].field_256 = -1
    holderCountryCode[stor7 + 1].field_512 = -1
    holderCountryCode[stor7 + 1].field_1280 = 1
    holderCountryCode[stor7 + 1][7][address(arg2)].field_0 = 1
    holderCountryCode[stor7 + 1][6][1].field_0 = arg2
    holderIndex[arg1] = holdersCount + 1
    holderExternalIdBy[address(arg2)] = arg1
    emit HolderRegistered(arg1, holdersCount + 1, arg3);
    return 1
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

function addOracles(bytes4[] arg1, address[] arg2) {
    if contractOwner != msg.sender:
        return 0
    require arg2.length == arg1.length
    idx = 0
    s = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        if address(cd[((32 * idx) + arg2 + 36)]):
            if Mask(32, 224, cd[((32 * idx) + arg1 + 36)]):
                mem[0] = address(cd[((32 * idx) + arg2 + 36)])
                mem[32] = sha3(Mask(32, 224, cd[((32 * idx) + arg1 + 36)]), 2)
                if not stor2[Mask(32, 224, cd[((32 * idx) + arg1 + 36)])][address(cd[((32 * idx) + arg2 + 36)])]:
                    mem[0] = address(cd[((32 * idx) + arg2 + 36)])
                    mem[32] = sha3(Mask(32, 224, cd[((32 * idx) + arg1 + 36)]), 2)
                    stor2[Mask(32, 224, cd[((32 * idx) + arg1 + 36)])][address(cd[((32 * idx) + arg2 + 36)])] = 1
                    mem[96] = Mask(32, 224, cd[((32 * idx) + arg1 + 36)])
                    mem[128] = address(cd[((32 * idx) + arg2 + 36)])
                    emit OracleAdded(Mask(32, 224, cd[((32 * idx) + arg1 + 36)]), address(cd[((32 * idx) + arg2 + 36)]));
        idx = idx + 1
        s = address(cd[((32 * idx) + arg2 + 36)])
        s = Mask(32, 224, cd[((32 * idx) + arg1 + 36)])
        continue 
    return 1
}

function removeOracles(bytes4[] arg1, address[] arg2) {
    if contractOwner != msg.sender:
        return 0
    require arg2.length == arg1.length
    idx = 0
    s = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        if address(cd[((32 * idx) + arg2 + 36)]):
            if Mask(32, 224, cd[((32 * idx) + arg1 + 36)]):
                mem[0] = address(cd[((32 * idx) + arg2 + 36)])
                mem[32] = sha3(Mask(32, 224, cd[((32 * idx) + arg1 + 36)]), 2)
                if stor2[Mask(32, 224, cd[((32 * idx) + arg1 + 36)])][address(cd[((32 * idx) + arg2 + 36)])]:
                    mem[0] = address(cd[((32 * idx) + arg2 + 36)])
                    mem[32] = sha3(Mask(32, 224, cd[((32 * idx) + arg1 + 36)]), 2)
                    stor2[Mask(32, 224, cd[((32 * idx) + arg1 + 36)])][address(cd[((32 * idx) + arg2 + 36)])] = 0
                    mem[96] = Mask(32, 224, cd[((32 * idx) + arg1 + 36)])
                    mem[128] = address(cd[((32 * idx) + arg2 + 36)])
                    emit OracleRemoved(Mask(32, 224, cd[((32 * idx) + arg1 + 36)]), address(cd[((32 * idx) + arg2 + 36)]));
        idx = idx + 1
        s = address(cd[((32 * idx) + arg2 + 36)])
        s = Mask(32, 224, cd[((32 * idx) + arg1 + 36)])
        continue 
    return 1
}



}

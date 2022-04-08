contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;
uint256 stor6; offset 16
uint256 stor6; offset 8

function _fallback() payable {
    uint8(stor6.field_0) = 0
    Mask(248, 0, stor6.field_8) = 0
    Mask(240, 0, stor6.field_16) = 0
    require not msg.value
    mem[96 len -14625] = code.data[16439 len -14625]
    mem[64] = -14529
    stor0 = mem[108 len 20]
    stor1 = mem[140 len 20]
    mem[-9972] = mem[160]
    mem[-9908] = mem[255 len 1]
    mem[-9844] = mem[mem[192] + 96]
    _13 = mem[mem[192] + 96]
    if not mem[mem[192] + 96]:
        if not mem[mem[192] + 96] % 32:
            mem[-9876] = mem[mem[192] + 96] + 160
            mem[mem[mem[192] + 96] - 9812] = mem[mem[256] + 96]
            _15 = mem[mem[256] + 96]
            if not mem[mem[256] + 96]:
                if not mem[mem[256] + 96] % 32:
                    create contract with 0 wei
                                    code: code.data[11882 len 4557], mem[-9972], 128, mem[-9908 len mem[mem[256] + 96] + _13 + 128]
                else:
                    mem[floor32(mem[mem[256] + 96]) + _13 - 9780] = mem[floor32(mem[mem[256] + 96]) + _13 + -(mem[mem[256] + 96] % 32) - 9748 len mem[mem[256] + 96] % 32]
                    create contract with 0 wei
                                    code: code.data[11882 len 4557], mem[-9972], 128, mem[-9908 len floor32(_15) + _13 + 160]
            else:
                mem[_13 - 9780] = mem[mem[256] + 128]
                mem[_13 - 9748 len floor32(_15 - 1)] = mem[mem[256] + 160 len floor32(_15 - 1)]
                if not _15 % 32:
                    create contract with 0 wei
                                    code: code.data[11882 len 4557], mem[-9972], 128, mem[-9908 len _15 + _13 + 128]
                else:
                    mem[floor32(_15) + _13 - 9780] = mem[floor32(_15) + _13 + -(_15 % 32) - 9748 len _15 % 32]
                    create contract with 0 wei
                                    code: code.data[11882 len 4557], mem[-9972], 128, mem[-9908 len floor32(_15) + _13 + 160]
        else:
            mem[floor32(mem[mem[192] + 96]) - 9812] = mem[floor32(mem[mem[192] + 96]) + -(mem[mem[192] + 96] % 32) - 9780 len mem[mem[192] + 96] % 32]
            mem[floor32(_13) - 9780] = mem[mem[256] + 96]
            _18 = mem[mem[256] + 96]
            if not mem[mem[256] + 96]:
                if not mem[mem[256] + 96] % 32:
                    create contract with 0 wei
                                    code: code.data[11882 len 4557], mem[-9972], Array(len=floor32(_13) + 192, data=mem[-9844 len mem[mem[256] + 96] + floor32(_13) + 96]), mem[-9908]
                else:
                    mem[floor32(mem[mem[256] + 96]) + floor32(_13) - 9748] = mem[floor32(mem[mem[256] + 96]) + floor32(_13) + -(mem[mem[256] + 96] % 32) - 9716 len mem[mem[256] + 96] % 32]
                    create contract with 0 wei
                                    code: code.data[11882 len 4557], mem[-9972], Array(len=floor32(_13) + 192, data=mem[-9844 len floor32(_18) + floor32(_13) + 128]), mem[-9908]
            else:
                mem[floor32(_13) - 9748] = mem[mem[256] + 128]
                mem[floor32(_13) - 9716 len floor32(_18 - 1)] = mem[mem[256] + 160 len floor32(_18 - 1)]
                if not _18 % 32:
                    create contract with 0 wei
                                    code: code.data[11882 len 4557], mem[-9972], Array(len=floor32(_13) + 192, data=mem[-9844 len _18 + floor32(_13) + 96]), mem[-9908]
                else:
                    mem[floor32(_18) + floor32(_13) - 9748] = mem[floor32(_18) + floor32(_13) + -(_18 % 32) - 9716 len _18 % 32]
                    create contract with 0 wei
                                    code: code.data[11882 len 4557], mem[-9972], Array(len=floor32(_13) + 192, data=mem[-9844 len floor32(_18) + floor32(_13) + 128]), mem[-9908]
    else:
        mem[-9812] = mem[mem[192] + 128]
        mem[-9780 len floor32(mem[mem[192] + 96] - 1)] = mem[mem[192] + 160 len floor32(mem[mem[192] + 96] - 1)]
        if not _13 % 32:
            mem[_13 - 9812] = mem[mem[256] + 96]
            _353 = mem[mem[256] + 96]
            if not mem[mem[256] + 96]:
                if not mem[mem[256] + 96] % 32:
                    create contract with 0 wei
                                    code: code.data[11882 len 4557], mem[-9972], Array(len=_13 + 160, data=mem[-9844 len mem[mem[256] + 96] + _13 + 64]), mem[-9908]
                else:
                    mem[floor32(mem[mem[256] + 96]) + _13 - 9780] = mem[floor32(mem[mem[256] + 96]) + _13 + -(mem[mem[256] + 96] % 32) - 9748 len mem[mem[256] + 96] % 32]
                    create contract with 0 wei
                                    code: code.data[11882 len 4557], mem[-9972], Array(len=_13 + 160, data=mem[-9844 len floor32(_353) + _13 + 96]), mem[-9908]
            else:
                mem[_13 - 9780] = mem[mem[256] + 128]
                mem[_13 - 9748 len floor32(_353 - 1)] = mem[mem[256] + 160 len floor32(_353 - 1)]
                if not _353 % 32:
                    create contract with 0 wei
                                    code: code.data[11882 len 4557], mem[-9972], Array(len=_13 + 160, data=mem[-9844 len _353 + _13 + 64]), mem[-9908]
                else:
                    mem[floor32(_353) + _13 - 9780] = mem[floor32(_353) + _13 + -(_353 % 32) - 9748 len _353 % 32]
                    create contract with 0 wei
                                    code: code.data[11882 len 4557], mem[-9972], Array(len=_13 + 160, data=mem[-9844 len floor32(_353) + _13 + 96]), mem[-9908]
        else:
            mem[floor32(_13) - 9812] = mem[floor32(_13) + -(_13 % 32) - 9780 len _13 % 32]
            mem[floor32(_13) - 9780] = mem[mem[256] + 96]
            _364 = mem[mem[256] + 96]
            if not mem[mem[256] + 96]:
                if not mem[mem[256] + 96] % 32:
                    create contract with 0 wei
                                    code: code.data[11882 len 4557], mem[-9972], Array(len=floor32(_13) + 192, data=mem[-9844 len mem[mem[256] + 96] + floor32(_13) + 96]), mem[-9908]
                else:
                    mem[floor32(mem[mem[256] + 96]) + floor32(_13) - 9748] = mem[floor32(mem[mem[256] + 96]) + floor32(_13) + -(mem[mem[256] + 96] % 32) - 9716 len mem[mem[256] + 96] % 32]
                    create contract with 0 wei
                                    code: code.data[11882 len 4557], mem[-9972], Array(len=floor32(_13) + 192, data=mem[-9844 len floor32(_364) + floor32(_13) + 128]), mem[-9908]
            else:
                mem[floor32(_13) - 9748] = mem[mem[256] + 128]
                mem[floor32(_13) - 9716 len floor32(_364 - 1)] = mem[mem[256] + 160 len floor32(_364 - 1)]
                if not _364 % 32:
                    create contract with 0 wei
                                    code: code.data[11882 len 4557], mem[-9972], Array(len=floor32(_13) + 192, data=mem[-9844 len _364 + floor32(_13) + 96]), mem[-9908]
                else:
                    mem[floor32(_364) + floor32(_13) - 9748] = mem[floor32(_364) + floor32(_13) + -(_364 % 32) - 9716 len _364 % 32]
                    create contract with 0 wei
                                    code: code.data[11882 len 4557], mem[-9972], Array(len=floor32(_13) + 192, data=mem[-9844 len floor32(_364) + floor32(_13) + 128]), mem[-9908]
    require create.new_address
    stor2 = address(create.new_address)
    stor3 = mem[288]
    stor4 = mem[320]
    stor5 = mem[352]
    require ext_code.size(stor2)
    call stor2.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(this.address), ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] == 10^18
    return code.data[1814 len 10068]
}



// =====================  Runtime code  =====================


address owner;
address walletAddress;
address tokenAddress;
uint256 price;
uint256 startBlock;
uint256 freezeBlock;
uint8 stor6;
uint8 stor6; offset 8
uint8 stor6; offset 16
uint256 stor6; offset 16
uint256 stor6; offset 8
uint256 stor6;
array of address filters;

function filters(uint256 arg1) {
    require arg1 < filters.length
    return filters[arg1]
}

function freezeBlock() {
    return freezeBlock
}

function startBlock() {
    return startBlock
}

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function price() {
    return price
}

function foundersTokensDisbursed() {
    return bool(uint8(stor6.field_16))
}

function emergencyFlag() {
    return bool(uint8(stor6.field_0))
}

function preSaleTokensDisbursed() {
    return bool(uint8(stor6.field_8))
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function changePrice(uint256 arg1) {
    require msg.sender == owner
    require block.number < freezeBlock
    require arg1
    price = arg1
}

function changeWallet(address arg1) {
    require msg.sender == owner
    require block.number < freezeBlock
    require arg1
    walletAddress = arg1
}

function emergencyToggle() {
    require msg.sender == owner
    uint256(stor6.field_0) = not bool(uint8(stor6.field_0)) or Mask(248, 8, uint256(stor6.field_0))
}

function changeStartBlock(uint256 arg1) {
    require msg.sender == owner
    require block.number < freezeBlock
    require arg1
    freezeBlock = arg1 - startBlock + freezeBlock
    startBlock = arg1
}

function purchaseTokens() payable {
    require block.number >= startBlock
    require uint8(stor6.field_8)
    require uint8(stor6.field_16)
    require not uint8(stor6.field_0)
    require price
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require msg.value - (msg.value % price) / price <= ext_call.return_data[0]
    if msg.value % price <= 0:
        call walletAddress with:
           value msg.value - (msg.value % price) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        call msg.sender with:
           value msg.value % price wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call walletAddress with:
           value msg.value - (msg.value % price) wei
             gas 2300 * is_zero(value) wei
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value - (msg.value % price) / price
    require ext_call.success
    require ext_call.return_data[0]
    emit PurchasedTokens((msg.value - (msg.value % price) / price), msg.sender);
}

function distributePreBuyersRewards(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require not uint8(stor6.field_8)
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        _23 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _23
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _23
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        require idx < arg1.length
        _30 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit TransferredPreBuyersReward(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_30));
        idx = idx + 1
        continue 
    Mask(248, 0, stor6.field_8) = 1
}

function distributeFoundersRewards(address[] arg1, uint256[] arg2, uint256[] arg3) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
    require msg.sender == owner
    require uint8(stor6.field_8)
    require not uint8(stor6.field_16)
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = arg2.length
    mem[64] = (32 * arg1.length) + (64 * arg2.length) + (32 * arg3.length) + 256
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require arg3.length
        require idx < arg2.length
        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256] = mem[(32 * idx) + (32 * arg1.length) + 160] / arg3.length
        require idx < arg2.length
        idx = idx + 1
        s = s + (mem[(32 * idx) + (32 * arg1.length) + 160] / arg3.length)
        continue 
    t = 0
    t = 0
    idx = 0
    while idx < arg3.length:
        _217 = mem[64]
        mem[mem[64] len 1866] = code.data[6025 len 1866]
        mem[mem[64] + 1866] = 64
        mem[mem[64] + 1930] = mem[96]
        _225 = mem[96]
        if not Mask(251, 0, mem[96]):
            mem[mem[64] + 1898] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + mem[64] + 1962] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
            _229 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
            if not Mask(251, 0, mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]):
                create contract with 0 wei
                                code: code.data[6025 len 1866], 64, mem[mem[64] + 1898 len (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]) + (32 * _225) + 96]
                require create.new_address
                filters.length++
                if not filters.length > filters.length + 1:
                    mem[0] = 7
                    filters[filters.length] = address(create.new_address)
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _239 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[mem[64] len 2134] = code.data[7891 len 2134]
                    mem[mem[64] + 2134] = address(create.new_address)
                    mem[mem[64] + 2166] = 1
                    mem[mem[64] + 2198] = _239
                    create contract with 0 wei
                                    code: code.data[7891 len 2134], address(create.new_address), 1, _239
                else:
                    t = sha3(7) + filters.length + 1
                    while sha3(7) + filters.length > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                    mem[0] = 7
                    filters[filters.length] = address(create.new_address)
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _327 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[mem[64] len 2134] = code.data[7891 len 2134]
                    mem[mem[64] + 2134] = address(create.new_address)
                    mem[mem[64] + 2166] = 1
                    mem[mem[64] + 2198] = _327
                    create contract with 0 wei
                                    code: code.data[7891 len 2134], address(create.new_address), 1, _327
            else:
                mem[(32 * _225) + mem[64] + 1994] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
                u = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256
                v = (32 * _225) + mem[64] + 1994
                t = 32 * _229
                while t > 32:
                    mem[v + 32] = mem[u + 32]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                create contract with 0 wei
                                code: mem[mem[64] len (32 * _229) + (32 * _225) + _217 + -mem[64] + 1994]
                require create.new_address
                filters.length++
                if not filters.length > filters.length + 1:
                    mem[0] = 7
                    filters[filters.length] = address(create.new_address)
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _498 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[mem[64] len 2134] = code.data[7891 len 2134]
                    mem[mem[64] + 2134] = address(create.new_address)
                    mem[mem[64] + 2166] = 1
                    mem[mem[64] + 2198] = _498
                    create contract with 0 wei
                                    code: code.data[7891 len 2134], address(create.new_address), 1, _498
                else:
                    t = sha3(7) + filters.length + 1
                    while sha3(7) + filters.length > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                    mem[0] = 7
                    filters[filters.length] = address(create.new_address)
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _639 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[mem[64] len 2134] = code.data[7891 len 2134]
                    mem[mem[64] + 2134] = address(create.new_address)
                    mem[mem[64] + 2166] = 1
                    mem[mem[64] + 2198] = _639
                    create contract with 0 wei
                                    code: code.data[7891 len 2134], address(create.new_address), 1, _639
        else:
            mem[mem[64] + 1962] = mem[128]
            u = 128
            v = mem[64] + 1962
            t = 32 * mem[96]
            while t > 32:
                mem[v + 32] = mem[u + 32]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[_217 + 1898] = (32 * _225) + 96
            mem[(32 * _225) + _217 + 1962] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
            _483 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
            if not Mask(251, 0, mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]):
                create contract with 0 wei
                                code: mem[mem[64] len (32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]) + (32 * _225) + _217 + -mem[64] + 1994]
                require create.new_address
                filters.length++
                if not filters.length > filters.length + 1:
                    mem[0] = 7
                    filters[filters.length] = address(create.new_address)
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _503 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[mem[64] len 2134] = code.data[7891 len 2134]
                    mem[mem[64] + 2134] = address(create.new_address)
                    mem[mem[64] + 2166] = 1
                    mem[mem[64] + 2198] = _503
                    create contract with 0 wei
                                    code: code.data[7891 len 2134], address(create.new_address), 1, _503
                else:
                    t = sha3(7) + filters.length + 1
                    while sha3(7) + filters.length > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                    mem[0] = 7
                    filters[filters.length] = address(create.new_address)
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _640 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[mem[64] len 2134] = code.data[7891 len 2134]
                    mem[mem[64] + 2134] = address(create.new_address)
                    mem[mem[64] + 2166] = 1
                    mem[mem[64] + 2198] = _640
                    create contract with 0 wei
                                    code: code.data[7891 len 2134], address(create.new_address), 1, _640
            else:
                mem[(32 * _225) + _217 + 1994] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
                u = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256
                v = (32 * _225) + _217 + 1994
                t = 32 * _483
                while t > 32:
                    mem[v + 32] = mem[u + 32]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                create contract with 0 wei
                                code: mem[mem[64] len (32 * _483) + (32 * _225) + _217 + -mem[64] + 1994]
                require create.new_address
                filters.length++
                if not filters.length > filters.length + 1:
                    mem[0] = 7
                    filters[filters.length] = address(create.new_address)
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _763 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[mem[64] len 2134] = code.data[7891 len 2134]
                    mem[mem[64] + 2134] = address(create.new_address)
                    mem[mem[64] + 2166] = 1
                    mem[mem[64] + 2198] = _763
                    create contract with 0 wei
                                    code: code.data[7891 len 2134], address(create.new_address), 1, _763
                else:
                    t = sha3(7) + filters.length + 1
                    while sha3(7) + filters.length > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                    mem[0] = 7
                    filters[filters.length] = address(create.new_address)
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _827 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[mem[64] len 2134] = code.data[7891 len 2134]
                    mem[mem[64] + 2134] = address(create.new_address)
                    mem[mem[64] + 2166] = 1
                    mem[mem[64] + 2198] = _827
                    create contract with 0 wei
                                    code: code.data[7891 len 2134], address(create.new_address), 1, _827
        require create.new_address
        require ext_code.size(address(create.new_address))
        call address(create.new_address).setup(address rg1) with:
             gas gas_remaining - 710 wei
            args tokenAddress
        require ext_call.success
        require ext_code.size(address(create.new_address))
        call address(create.new_address).setup(address rg1) with:
             gas gas_remaining - 710 wei
            args address(create.new_address)
        require ext_call.success
        mem[mem[64] + 36] = s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(create.new_address), s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length
        require ext_call.success
        require ext_call.return_data[0]
        mem[mem[64]] = address(create.new_address)
        mem[mem[64] + 32] = s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length
        emit TransferredFoundersTokens(address(create.new_address), s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length);
        t = create.new_address
        t = create.new_address
        idx = idx + 1
        continue 
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args address(this.address)
    require ext_call.success
    require ext_call.return_data[0] == 5 * 10^17
    Mask(240, 0, stor6.field_16) = 1
}



}

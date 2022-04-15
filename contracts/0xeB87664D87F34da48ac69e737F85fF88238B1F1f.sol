contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint32 stor11;

function _fallback() payable {
    stor8 = 0
    stor10 = 0
    stor11 = 0
    require not msg.value
    mem[96 len -7674] = code.data[8943 len -7674]
    mem[64] = -7578
    _4 = mem[160]
    stor0 = mem[108 len 20]
    stor1 = mem[140 len 20]
    mem[-4693] = mem[160]
    mem[-4629] = mem[255 len 1]
    mem[-4565] = mem[mem[192] + 96]
    _16 = mem[mem[192] + 96]
    if not mem[mem[192] + 96]:
        if not mem[mem[192] + 96] % 32:
            mem[-4597] = mem[mem[192] + 96] + 160
            mem[mem[mem[192] + 96] - 4533] = mem[mem[256] + 96]
            _18 = mem[mem[256] + 96]
            if not mem[mem[256] + 96]:
                if not mem[mem[256] + 96] % 32:
                    create contract with 0 wei
                                    code: code.data[6058 len 2885], mem[-4693], 128, mem[-4629 len mem[mem[256] + 96] + _16 + 128]
                else:
                    mem[floor32(mem[mem[256] + 96]) + _16 - 4501] = mem[floor32(mem[mem[256] + 96]) + _16 + -(mem[mem[256] + 96] % 32) - 4469 len mem[mem[256] + 96] % 32]
                    create contract with 0 wei
                                    code: code.data[6058 len 2885], mem[-4693], 128, mem[-4629 len floor32(_18) + _16 + 160]
            else:
                mem[_16 - 4501] = mem[mem[256] + 128]
                mem[_16 - 4469 len floor32(_18 - 1)] = mem[mem[256] + 160 len floor32(_18 - 1)]
                if not _18 % 32:
                    create contract with 0 wei
                                    code: code.data[6058 len 2885], mem[-4693], 128, mem[-4629 len _18 + _16 + 128]
                else:
                    mem[floor32(_18) + _16 - 4501] = mem[floor32(_18) + _16 + -(_18 % 32) - 4469 len _18 % 32]
                    create contract with 0 wei
                                    code: code.data[6058 len 2885], mem[-4693], 128, mem[-4629 len floor32(_18) + _16 + 160]
        else:
            mem[floor32(mem[mem[192] + 96]) - 4533] = mem[floor32(mem[mem[192] + 96]) + -(mem[mem[192] + 96] % 32) - 4501 len mem[mem[192] + 96] % 32]
            mem[floor32(_16) - 4501] = mem[mem[256] + 96]
            _21 = mem[mem[256] + 96]
            if not mem[mem[256] + 96]:
                if not mem[mem[256] + 96] % 32:
                    create contract with 0 wei
                                    code: code.data[6058 len 2885], mem[-4693], Array(len=floor32(_16) + 192, data=mem[-4565 len mem[mem[256] + 96] + floor32(_16) + 96]), mem[-4629]
                else:
                    mem[floor32(mem[mem[256] + 96]) + floor32(_16) - 4469] = mem[floor32(mem[mem[256] + 96]) + floor32(_16) + -(mem[mem[256] + 96] % 32) - 4437 len mem[mem[256] + 96] % 32]
                    create contract with 0 wei
                                    code: code.data[6058 len 2885], mem[-4693], Array(len=floor32(_16) + 192, data=mem[-4565 len floor32(_21) + floor32(_16) + 128]), mem[-4629]
            else:
                mem[floor32(_16) - 4469] = mem[mem[256] + 128]
                mem[floor32(_16) - 4437 len floor32(_21 - 1)] = mem[mem[256] + 160 len floor32(_21 - 1)]
                if not _21 % 32:
                    create contract with 0 wei
                                    code: code.data[6058 len 2885], mem[-4693], Array(len=floor32(_16) + 192, data=mem[-4565 len _21 + floor32(_16) + 96]), mem[-4629]
                else:
                    mem[floor32(_21) + floor32(_16) - 4469] = mem[floor32(_21) + floor32(_16) + -(_21 % 32) - 4437 len _21 % 32]
                    create contract with 0 wei
                                    code: code.data[6058 len 2885], mem[-4693], Array(len=floor32(_16) + 192, data=mem[-4565 len floor32(_21) + floor32(_16) + 128]), mem[-4629]
    else:
        mem[-4533] = mem[mem[192] + 128]
        mem[-4501 len floor32(mem[mem[192] + 96] - 1)] = mem[mem[192] + 160 len floor32(mem[mem[192] + 96] - 1)]
        if not _16 % 32:
            mem[_16 - 4533] = mem[mem[256] + 96]
            _320 = mem[mem[256] + 96]
            if not mem[mem[256] + 96]:
                if not mem[mem[256] + 96] % 32:
                    create contract with 0 wei
                                    code: code.data[6058 len 2885], mem[-4693], Array(len=_16 + 160, data=mem[-4565 len mem[mem[256] + 96] + _16 + 64]), mem[-4629]
                else:
                    mem[floor32(mem[mem[256] + 96]) + _16 - 4501] = mem[floor32(mem[mem[256] + 96]) + _16 + -(mem[mem[256] + 96] % 32) - 4469 len mem[mem[256] + 96] % 32]
                    create contract with 0 wei
                                    code: code.data[6058 len 2885], mem[-4693], Array(len=_16 + 160, data=mem[-4565 len floor32(_320) + _16 + 96]), mem[-4629]
            else:
                mem[_16 - 4501] = mem[mem[256] + 128]
                mem[_16 - 4469 len floor32(_320 - 1)] = mem[mem[256] + 160 len floor32(_320 - 1)]
                if not _320 % 32:
                    create contract with 0 wei
                                    code: code.data[6058 len 2885], mem[-4693], Array(len=_16 + 160, data=mem[-4565 len _320 + _16 + 64]), mem[-4629]
                else:
                    mem[floor32(_320) + _16 - 4501] = mem[floor32(_320) + _16 + -(_320 % 32) - 4469 len _320 % 32]
                    create contract with 0 wei
                                    code: code.data[6058 len 2885], mem[-4693], Array(len=_16 + 160, data=mem[-4565 len floor32(_320) + _16 + 96]), mem[-4629]
        else:
            mem[floor32(_16) - 4533] = mem[floor32(_16) + -(_16 % 32) - 4501 len _16 % 32]
            mem[floor32(_16) - 4501] = mem[mem[256] + 96]
            _331 = mem[mem[256] + 96]
            if not mem[mem[256] + 96]:
                if not mem[mem[256] + 96] % 32:
                    create contract with 0 wei
                                    code: code.data[6058 len 2885], mem[-4693], Array(len=floor32(_16) + 192, data=mem[-4565 len mem[mem[256] + 96] + floor32(_16) + 96]), mem[-4629]
                else:
                    mem[floor32(mem[mem[256] + 96]) + floor32(_16) - 4469] = mem[floor32(mem[mem[256] + 96]) + floor32(_16) + -(mem[mem[256] + 96] % 32) - 4437 len mem[mem[256] + 96] % 32]
                    create contract with 0 wei
                                    code: code.data[6058 len 2885], mem[-4693], Array(len=floor32(_16) + 192, data=mem[-4565 len floor32(_331) + floor32(_16) + 128]), mem[-4629]
            else:
                mem[floor32(_16) - 4469] = mem[mem[256] + 128]
                mem[floor32(_16) - 4437 len floor32(_331 - 1)] = mem[mem[256] + 160 len floor32(_331 - 1)]
                if not _331 % 32:
                    create contract with 0 wei
                                    code: code.data[6058 len 2885], mem[-4693], Array(len=floor32(_16) + 192, data=mem[-4565 len _331 + floor32(_16) + 96]), mem[-4629]
                else:
                    mem[floor32(_331) + floor32(_16) - 4469] = mem[floor32(_331) + floor32(_16) + -(_331 % 32) - 4437 len _331 % 32]
                    create contract with 0 wei
                                    code: code.data[6058 len 2885], mem[-4693], Array(len=floor32(_16) + 192, data=mem[-4565 len floor32(_331) + floor32(_16) + 128]), mem[-4629]
    require create.new_address
    stor2 = address(create.new_address)
    stor3 = mem[288]
    stor4 = mem[320]
    stor5 = mem[352]
    stor7 = mem[384]
    stor9 = mem[416]
    stor6 = mem[448]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(this.address), ext_call.return_data[0]
    require ext_call.success
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
    require ext_call.return_data[0] == _4
    return code.data[1269 len 4789]
}



// =====================  Runtime code  =====================


address owner;
address walletAddress;
address tokenAddress;
uint256 price;
uint256 startBlock;
uint256 freezeBlock;
uint256 endBlock;
uint256 totalPreBuyers;
uint256 preBuyersDispensedTo;
uint256 totalTimelockedBeneficiaries;
uint256 timeLockedBeneficiariesDisbursedTo;
uint8 stor11;
uint8 stor11; offset 8
uint8 stor11; offset 16
uint256 stor11;

function endBlock() {
    return endBlock
}

function preBuyersDispensedTo() {
    return preBuyersDispensedTo
}

function totalTimelockedBeneficiaries() {
    return totalTimelockedBeneficiaries
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

function timeLockedBeneficiariesDisbursedTo() {
    return timeLockedBeneficiariesDisbursedTo
}

function totalPreBuyers() {
    return totalPreBuyers
}

function timelockedTokensDisbursed() {
    return bool(uint8(stor11.field_16))
}

function owner() {
    return owner
}

function price() {
    return price
}

function emergencyFlag() {
    return bool(uint8(stor11.field_0))
}

function preSaleTokensDisbursed() {
    return bool(uint8(stor11.field_8))
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function changePrice(uint256 arg1) {
    require owner == msg.sender
    require block.number < freezeBlock
    require arg1
    price = arg1
}

function changeWallet(address arg1) {
    require owner == msg.sender
    require block.number < freezeBlock
    require arg1
    walletAddress = arg1
}

function emergencyToggle() {
    require owner == msg.sender
    uint256(stor11.field_0) = not uint8(stor11.field_0) or Mask(248, 8, uint256(stor11.field_0))
}

function changeEndBlock(uint256 arg1) {
    require owner == msg.sender
    require block.number < freezeBlock
    require arg1 > startBlock
    endBlock = arg1
}

function changeStartBlock(uint256 arg1) {
    require owner == msg.sender
    require block.number < freezeBlock
    require arg1
    freezeBlock = arg1 - startBlock + freezeBlock
    startBlock = arg1
}

function purchaseTokens() payable {
    require block.number >= startBlock
    require block.number <= endBlock
    require uint8(stor11.field_8)
    require uint8(stor11.field_16)
    require not uint8(stor11.field_0)
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
    emit PurchasedTokens((msg.value - (msg.value % price) / price), msg.sender);
}

function distributePreBuyersRewards(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    require not uint8(stor11.field_8)
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        _21 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg2.length) + (32 * arg1.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = _21
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg2.length) + (32 * arg1.length) + 164], _21
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        preBuyersDispensedTo++
        require idx < arg1.length
        _26 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit TransferredPreBuyersReward(mem[(32 * arg2.length) + (32 * arg1.length) + 160], address(_26));
        idx = idx + 1
        continue 
    if preBuyersDispensedTo == totalPreBuyers:
        uint8(stor11.field_8) = 1
}

function distributeTimelockedTokens(address[] arg1, uint256[] arg2, uint256[] arg3, uint256[] arg4) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require owner == msg.sender
    require uint8(stor11.field_8)
    require not uint8(stor11.field_16)
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _25 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _27 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192]
        _29 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        _31 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
        mem[mem[64] len 1252] = code.data[3494 len 1252]
        mem[mem[64] + 1252] = address(_25)
        mem[mem[64] + 1284] = _29
        mem[mem[64] + 1316] = _31
        create contract with 0 wei
                        code: code.data[3494 len 1252], address(_25), _29, _31
        require create.new_address
        require ext_code.size(address(create.new_address))
        call address(create.new_address).setup(address rg1) with:
             gas gas_remaining - 710 wei
            args tokenAddress
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(create.new_address), _27
        require ext_call.success
        timeLockedBeneficiariesDisbursedTo++
        mem[mem[64]] = address(_25)
        mem[mem[64] + 32] = address(create.new_address)
        mem[mem[64] + 64] = _27
        emit TransferredTimelockedTokens(address(_25), address(create.new_address), _27);
        s = create.new_address
        s = _27
        s = _25
        idx = idx + 1
        continue 
    if timeLockedBeneficiariesDisbursedTo == totalTimelockedBeneficiaries:
        uint8(stor11.field_16) = 1
}



}

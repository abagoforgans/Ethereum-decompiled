contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;
uint256 stor9; offset 8
uint8 stor13;

function _fallback() payable {
    stor7 = 333333
    stor8 = 0
    uint8(stor9.field_0) = 0
    Mask(248, 0, stor9.field_8) = 0
    stor13 = 0
    require not msg.value
    require code.data[21907 len 32] >= block.number
    require code.data[21939 len 32] >= code.data[21907 len 32]
    require code.data[21971 len 32] >= code.data[21939 len 32]
    stor0 = code.data[21887 len 20]
    stor1 = code.data[22015 len 20]
    create contract with 0 wei
                    code: code.data[16048 len 5827], 10^18, 160, 9, 224, address(this.address), 6, 'Leverj' << 208, 3, 'LEV' % 16777216
    require create.new_address
    stor3 = address(create.new_address)
    stor4 = code.data[21907 len 32]
    stor5 = code.data[21939 len 32]
    stor6 = code.data[21971 len 32]
    require ext_code.size(stor3)
    call stor3.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(this.address), ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor3)
    call stor3.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] == 10^18
    return code.data[1994 len 14054]
}



// =====================  Runtime code  =====================


const MAX_PRIVATE = 75 * 10^16

const DECIMALS = 9

const TOTAL_SUPPLY = 10^18

const NAME = 'Leverj'

const SYMBOL = 'LEV'


address owner;
address whitelistAdminAddress;
address walletAddress;
address tokenAddress;
uint256 freezeBlock;
uint256 startBlock;
uint256 endBlock;
uint256 price_in_wei;
uint256 privateAllocated;
uint8 stor9;
uint8 stor9; offset 8
uint256 stor9; offset 8
array of address disbursements;
mapping of uint256 whitelistRegistrants;
mapping of uint8 stor12;
uint8 stor13;

function endBlock() {
    return endBlock
}

function whitelistRegistrants(address arg1) {
    return whitelistRegistrants[arg1]
}

function publicSale() {
    return bool(stor13)
}

function freezeBlock() {
    return freezeBlock
}

function startBlock() {
    return startBlock
}

function whitelistAdmin() {
    return whitelistAdminAddress
}

function disbursements(uint256 arg1) {
    require arg1 < disbursements.length
    return address(disbursements[arg1])
}

function wallet() {
    return walletAddress
}

function setupCompleteFlag() {
    return bool(uint8(stor9.field_0))
}

function owner() {
    return owner
}

function privateAllocated() {
    return privateAllocated
}

function whitelistRegistrantsFlag(address arg1) {
    return bool(stor12[arg1])
}

function emergencyFlag() {
    return bool(uint8(stor9.field_8))
}

function price_in_wei() {
    return price_in_wei
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function configureWallet(address arg1) {
    require msg.sender == owner
    walletAddress = arg1
}

function startPublicSale() {
    require msg.sender == owner
    if not stor13:
        stor13 = 1
}

function changeOwner(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function changeWhitelistAdmin(address arg1) {
    require msg.sender == owner
    require arg1
    whitelistAdminAddress = arg1
}

function emergencyToggle() {
    require msg.sender == owner
    Mask(248, 0, stor9.field_8) = Mask(248, 0, not bool(uint8(stor9.field_8)))
}

function setSetupComplete() {
    require msg.sender == owner
    require walletAddress
    require privateAllocated
    uint8(stor9.field_0) = 1
}

function changePrice(uint256 arg1) {
    require msg.sender == owner
    require block.number < freezeBlock
    require arg1 > 0
    price_in_wei = arg1
}

function removeTransferLock() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf5308c7d with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function changeStartBlock(uint256 arg1) {
    require msg.sender == owner
    require block.number < freezeBlock
    require block.number <= arg1
    require arg1 < startBlock
    freezeBlock = arg1 - startBlock + freezeBlock
    startBlock = arg1
}

function addWhitelist(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if owner != msg.sender:
        require msg.sender == whitelistAdminAddress
    require block.number < endBlock
    require arg1.length < 11
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        whitelistRegistrants[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 12
        stor12[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function reversePurchase(address arg1) payable {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require msg.value >= ext_call.return_data[0] * price_in_wei
    if msg.value - (ext_call.return_data[0] * price_in_wei) <= 0:
        call arg1 with:
           value ext_call.return_data[0] * price_in_wei wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        call msg.sender with:
           value msg.value - (ext_call.return_data[0] * price_in_wei) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call arg1 with:
           value ext_call.return_data[0] * price_in_wei wei
             gas 2300 * is_zero(value) wei
    require ext_code.size(tokenAddress)
    call tokenAddress.0x5187527f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function lockUnsoldTokens(address arg1) {
    require block.number >= endBlock
    require uint8(stor9.field_0)
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[11494 len 2517], address(arg1), 8760 * 24 * 3600, block.timestamp
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setup(address rg1) with:
         gas gas_remaining - 710 wei
        args tokenAddress
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    disbursements.length++
    if not disbursements.length <= disbursements.length + 1:
        idx = disbursements.length + 1
        while disbursements.length > idx:
            uint256(disbursements[idx]) = 0
            idx = idx + 1
            continue 
    address(disbursements[disbursements.length]) = address(create.new_address)
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(create.new_address), ext_call.return_data[0]
    require ext_call.success
    emit LockedUnsoldTokens(ext_call.return_data[0], address(create.new_address));
}

function distributePresaleTokens(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require block.number < endBlock
    require not uint8(stor9.field_0)
    require arg1.length < 11
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require privateAllocated + mem[(32 * idx) + (32 * arg1.length) + 160] <= 75 * 10^16
        require idx < arg1.length
        require idx < arg2.length
        _42 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _42
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _42
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        require idx < arg2.length
        privateAllocated += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _51 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit PurchasedTokens(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_51));
        idx = idx + 1
        continue 
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] >= 25 * 10^16:
    revert
}

function distributeTimelockedTokens(address[] arg1, uint256[] arg2, uint256[] arg3, uint256[] arg4) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require msg.sender == owner
    require block.number < endBlock
    require not uint8(stor9.field_0)
    require arg2.length < 11
    require arg1.length == arg2.length
    require arg2.length == arg3.length
    require arg3.length == arg4.length
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < mem[(32 * arg1.length) + 128]
        require privateAllocated + mem[(32 * idx) + (32 * arg1.length) + 160] <= 75 * 10^16
        require idx < mem[(32 * arg1.length) + 128]
        privateAllocated += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[96]
        _57 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _59 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
        _61 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _63 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        mem[mem[64] len 2517] = code.data[11494 len 2517]
        mem[mem[64] + 2517] = address(_57)
        mem[mem[64] + 2549] = _61
        mem[mem[64] + 2581] = _63
        create contract with 0 wei
                        code: code.data[11494 len 2517], address(_57), _61, _63
        require create.new_address
        require ext_code.size(address(create.new_address))
        call address(create.new_address).setup(address rg1) with:
             gas gas_remaining - 710 wei
            args tokenAddress
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(create.new_address), _59
        require ext_call.success
        disbursements.length++
        if not disbursements.length <= disbursements.length + 1:
            s = sha3(10) + disbursements.length + 1
            while sha3(10) + disbursements.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        mem[0] = 10
        address(disbursements[disbursements.length]) = address(create.new_address)
        mem[mem[64]] = address(_57)
        mem[mem[64] + 32] = address(create.new_address)
        mem[mem[64] + 64] = _59
        emit TransferredTimelockedTokens(address(_57), address(create.new_address), _59);
        s = create.new_address
        s = _59
        s = _57
        idx = idx + 1
        continue 
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args address(this.address)
    require ext_call.success
    if ext_call.return_data[0] >= 25 * 10^16:
    revert
}

function purchaseTokens() payable {
    require uint8(stor9.field_0)
    require not uint8(stor9.field_8)
    require block.number >= startBlock
    require block.number < endBlock
    require bool(stor12[address(msg.sender)]) == 1
    require price_in_wei
    if stor13:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require msg.value / price_in_wei <= ext_call.return_data[0]
        if msg.value % price_in_wei <= 0:
            call walletAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            call msg.sender with:
               value msg.value % price_in_wei wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call walletAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value / price_in_wei
        require ext_call.success
        require ext_call.return_data[0]
        emit PurchasedTokens((msg.value / price_in_wei), msg.sender);
    else:
        require whitelistRegistrants[address(msg.sender)] > 0
        if msg.value / price_in_wei <= whitelistRegistrants[address(msg.sender)]:
            whitelistRegistrants[address(msg.sender)] -= msg.value / price_in_wei
            require whitelistRegistrants[address(msg.sender)] < whitelistRegistrants[address(msg.sender)]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require msg.value / price_in_wei <= ext_call.return_data[0]
            if msg.value % price_in_wei <= 0:
                call walletAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                call msg.sender with:
                   value msg.value % price_in_wei wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                call walletAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value / price_in_wei
            require ext_call.success
            require ext_call.return_data[0]
            emit PurchasedTokens((msg.value / price_in_wei), msg.sender);
        else:
            whitelistRegistrants[address(msg.sender)] = 0
            require whitelistRegistrants[address(msg.sender)] < whitelistRegistrants[address(msg.sender)]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require whitelistRegistrants[address(msg.sender)] <= ext_call.return_data[0]
            if (msg.value % price_in_wei) + (msg.value / price_in_wei * price_in_wei) - (whitelistRegistrants[address(msg.sender)] * price_in_wei) <= 0:
                call walletAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                call msg.sender with:
                   value (msg.value % price_in_wei) + (msg.value / price_in_wei * price_in_wei) - (whitelistRegistrants[address(msg.sender)] * price_in_wei) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                call walletAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, whitelistRegistrants[address(msg.sender)]
            require ext_call.success
            require ext_call.return_data[0]
            emit PurchasedTokens(whitelistRegistrants[address(msg.sender)], msg.sender);
}



}

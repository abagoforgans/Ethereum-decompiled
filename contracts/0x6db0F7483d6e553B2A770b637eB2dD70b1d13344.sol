contract main {


// =======================  Init code  ======================


uint8 stor1; offset 168
uint128 stor1; offset 160
address stor1;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor7;
uint128 stor11; offset 160
address stor11;

function _fallback() payable {
    Mask(96, 0, stor1.field_160) = 0
    mem[128] = 'v1.0'
    bool(stor3.length) = 0
    stor3.length.field_1 = 4
    stor3.length.field_8 = 'v1.0' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -16056] = code.data[17158 len -16056]
    address(stor1.field_0) = msg.sender
    require mem[172 len 20]
    require mem[204 len 20]
    require ext_code.size(mem[204 len 20])
    call mem[204 len 20].0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    stor4[] = Array(len=mem[mem[224] + 160], data=mem[mem[224] + 192 len mem[mem[224] + 160]])
    address(stor11.field_0) = mem[204 len 20]
    require ext_code.size(address(stor11.field_0))
    call address(stor11.field_0).0xf0141d84 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    uint8(stor1.field_168) = uint8(ext_call.return_data[0])
    stor7 = 0
    Mask(96, 0, stor11.field_160) = 1
    return code.data[1102 len 16056]
}



// =====================  Runtime code  =====================


const name = 'Receipt'

const symbol = 'CHIT'

const allowance(address arg1, address arg2) = 0


uint256 totalSupply;
uint8 stor1; offset 160
uint8 decimals; offset 168
uint128 stor1; offset 160
address owner;
mapping of uint256 balanceOf;
array of uint256 version;
array of uint256 register;
uint256 weiRaised;
uint256 totalRaised;
uint8 state;
uint32 stor7;
uint32 maxPurchaseCount; offset 8
uint32 purchaseCount; offset 40
uint256 stor7; offset 8
mapping of struct sub_f0c43ab1;
mapping of uint32 sub_79ba4872;
address walletAddress;
uint8 stor11; offset 160
uint128 stor11; offset 160
address sub_3a296949Address;
uint256 stor12;

function getWallet() {
    require msg.sender == owner
    return walletAddress
}

function totalSupply() {
    return totalSupply
}

function register() {
    return register[0 len register.length]
}

function decimals() {
    return decimals
}

function sub_3a296949(?) {
    require msg.sender == owner
    return sub_3a296949Address
}

function maxPurchaseCount() {
    return maxPurchaseCount
}

function sub_3f21581f(?) {
    return bool(uint8(stor11.field_160))
}

function weiRaised() {
    return weiRaised
}

function version() {
    return version[0 len version.length]
}

function paused() {
    return bool(uint8(stor1.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_79ba4872(?) {
    require msg.sender == owner
    return sub_79ba4872[address(arg1)]
}

function owner() {
    return owner
}

function getTotalRaised() {
    require msg.sender == owner
    return totalRaised
}

function getPurchaseCount() {
    require msg.sender == owner
    return purchaseCount
}

function state() {
    require state <= 3
    return state
}

function sub_ee9a5ada(?) {
    require msg.sender == owner
    require 0 < arg1
    require arg1 <= maxPurchaseCount
    return sub_f0c43ab1[arg1 << 224].field_0, 
           sub_f0c43ab1[arg1 << 224].field_256,
           sub_f0c43ab1[arg1 << 224].field_512,
           sub_f0c43ab1[arg1 << 224].field_768,
           bool(sub_f0c43ab1[arg1 << 224].field_1024),
           bool(sub_f0c43ab1[arg1 << 224].field_1032),
           bool(sub_f0c43ab1[arg1 << 224].field_1040)
}

function sub_f0c43ab1(?) {
    require 0 < sub_79ba4872[address(msg.sender)]
    require sub_79ba4872[address(msg.sender)] <= maxPurchaseCount
    return sub_f0c43ab1[stor9[address(msg.sender)]].field_0, 
           sub_f0c43ab1[stor9[address(msg.sender)]].field_256,
           sub_f0c43ab1[stor9[address(msg.sender)]].field_512,
           sub_f0c43ab1[stor9[address(msg.sender)]].field_768,
           bool(sub_f0c43ab1[stor9[address(msg.sender)]].field_1024),
           bool(sub_f0c43ab1[stor9[address(msg.sender)]].field_1032),
           bool(sub_f0c43ab1[stor9[address(msg.sender)]].field_1040)
}

function destroy() {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    require state <= 3
    if state != 3:
        require state <= 3
        require state == 2
        require not purchaseCount
    require not eth.balance(this.address)
    require block.timestamp >= stor12
    emit Destroyed(walletAddress);
    selfdestruct(walletAddress)
}

function approve(address arg1, uint256 arg2) {
    revert
}

function transfer(address arg1, uint256 arg2) {
    revert
}

function decreaseApproval(address arg1, uint256 arg2) {
    revert
}

function increaseApproval(address arg1, uint256 arg2) {
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    revert
}

function unpause() {
    require msg.sender == owner
    require uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_3db0a59b(?) {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    Mask(96, 0, stor11.field_160) = Mask(96, 0, arg1)
    return 1
}

function setWallet(address arg1) {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    require arg1
    emit 0xf300f425: walletAddress, arg1
    walletAddress = arg1
    return 1
}

function goalReached() {
    require ext_code.size(sub_3a296949Address)
    call sub_3a296949Address.0xb97a7d24 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return totalRaised >= ext_call.return_data[0]
}

function sub_00cc927c(?) {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    require arg1
    require ext_code.size(arg1)
    call arg1.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    emit 0x28099ebb: sub_3a296949Address, arg1
    sub_3a296949Address = arg1
    return 1
}

function sub_4e5b3008(?) {
    require ext_code.size(sub_3a296949Address)
    call sub_3a296949Address.0x554d578d with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if totalRaised >= ext_call.return_data[0]:
        return totalRaised >= ext_call.return_data[0]
    require ext_code.size(sub_3a296949Address)
    call sub_3a296949Address.0x2f087a28 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return totalSupply >= ext_call.return_data[0]
}

function sub_82216067(?) {
    require msg.sender == owner
    require state <= 3
    require state == 2
    require sub_79ba4872[address(arg1)] > 0
    require not sub_f0c43ab1[stor9[address(arg1)]].field_1024
    require not sub_f0c43ab1[stor9[address(arg1)]].field_1040
    sub_f0c43ab1[stor9[address(arg1)]].field_1032 = 0
    sub_f0c43ab1[stor9[address(arg1)]].field_1024 = 0
    sub_f0c43ab1[stor9[address(arg1)]].field_1040 = 1
    sub_f0c43ab1[stor9[address(arg1)]].field_256 = block.number
    return 1
}

function sub_d686acd9(?) {
    require msg.sender == owner
    require state <= 3
    require state == 2
    require purchaseCount > 0
    purchaseCount = uint32(purchaseCount - 1)
    require not sub_f0c43ab1[uint32(stor7.field_0)].field_1024
    require not sub_f0c43ab1[uint32(stor7.field_0)].field_1040
    sub_f0c43ab1[uint32(stor7.field_0)].field_1032 = 0
    sub_f0c43ab1[uint32(stor7.field_0)].field_1024 = 0
    sub_f0c43ab1[uint32(stor7.field_0)].field_1040 = 1
    sub_f0c43ab1[uint32(stor7.field_0)].field_256 = block.number
    return 1
}

function withdraw(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    require state <= 3
    if state != 3:
        require state <= 3
        if state:
            require state <= 3
            require state == 1
        require ext_code.size(sub_3a296949Address)
        call sub_3a296949Address.0xb97a7d24 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require totalRaised >= ext_call.return_data[0]
    call walletAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogWithdrawal(walletAddress, arg1);
}

function isSaleOver() {
    require ext_code.size(sub_3a296949Address)
    call sub_3a296949Address.0x5add942b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        return bool(ext_call.return_data[0])
    require ext_code.size(sub_3a296949Address)
    call sub_3a296949Address.0x554d578d with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if totalRaised >= ext_call.return_data[0]:
        return totalRaised >= ext_call.return_data[0]
    require ext_code.size(sub_3a296949Address)
    call sub_3a296949Address.0x2f087a28 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return totalSupply >= ext_call.return_data[0]
}

function refundMe() {
    require state <= 3
    require state == 2
    require not uint8(stor1.field_160)
    require sub_79ba4872[address(msg.sender)] > 0
    require not sub_f0c43ab1[stor9[address(msg.sender)]].field_1024
    require not sub_f0c43ab1[stor9[address(msg.sender)]].field_1040
    if sub_f0c43ab1[stor9[address(msg.sender)]].field_512 > 0:
        call sub_f0c43ab1[stor9[address(msg.sender)]].field_0 with:
           value sub_f0c43ab1[stor9[address(msg.sender)]].field_512 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit LogRefund(sub_f0c43ab1[stor9[address(msg.sender)]].field_0, sub_f0c43ab1[stor9[address(msg.sender)]].field_512);
    sub_f0c43ab1[stor9[address(msg.sender)]].field_1032 = 0
    sub_f0c43ab1[stor9[address(msg.sender)]].field_1024 = 1
    sub_f0c43ab1[stor9[address(msg.sender)]].field_1040 = 0
    sub_f0c43ab1[stor9[address(msg.sender)]].field_256 = block.number
    return 1
}

function finalizeContract() {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    require state <= 3
    require state
    require state <= 3
    if state == 1:
        emit Finalized()
        require ext_code.size(sub_3a296949Address)
        call sub_3a296949Address.0xb97a7d24 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if totalRaised >= ext_call.return_data[0]:
            state = 3
        else:
            state = 2
        require ext_code.size(sub_3a296949Address)
        call sub_3a296949Address.0xead0ebf7 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require 24 * 3600 * ext_call.return_data[31 len 1] / 24 * 3600 == ext_call.return_data[31 len 1]
        require block.timestamp + (24 * 3600 * ext_call.return_data[31 len 1]) >= block.timestamp
        stor12 = block.timestamp + (24 * 3600 * ext_call.return_data[31 len 1])
    return 1
}

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    require state <= 3
    if not state:
        require ext_code.size(sub_3a296949Address)
        call sub_3a296949Address.0x5add942b with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[0]:
            emit LogMintingFinished()
            state = 1
        else:
            require ext_code.size(sub_3a296949Address)
            call sub_3a296949Address.0x554d578d with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if totalRaised >= ext_call.return_data[0]:
                emit LogMintingFinished()
                state = 1
            else:
                require ext_code.size(sub_3a296949Address)
                call sub_3a296949Address.0x2f087a28 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if totalSupply >= ext_call.return_data[0]:
                    emit LogMintingFinished()
                    state = 1
    require state <= 3
    return (state == 1)
}

function sub_9289dc0f(?) {
    require msg.sender == owner
    require state <= 3
    require state == 2
    require sub_79ba4872[address(arg1)] > 0
    require not sub_f0c43ab1[stor9[address(arg1)]].field_1024
    require not sub_f0c43ab1[stor9[address(arg1)]].field_1040
    if not arg2:
        if sub_f0c43ab1[stor9[address(arg1)]].field_512 > 0:
            require ext_code.size(sub_3a296949Address)
            call sub_3a296949Address.0xf85221b6 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0] <= sub_f0c43ab1[stor9[address(arg1)]].field_512
            call sub_f0c43ab1[stor9[address(arg1)]].field_0 with:
               value sub_f0c43ab1[stor9[address(arg1)]].field_512 - ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit LogRefund(sub_f0c43ab1[stor9[address(arg1)]].field_0, sub_f0c43ab1[stor9[address(arg1)]].field_512 - ext_call.return_data[0]);
    sub_f0c43ab1[stor9[address(arg1)]].field_1032 = Mask(248, 0, arg2)
    sub_f0c43ab1[stor9[address(arg1)]].field_1024 = 1
    sub_f0c43ab1[stor9[address(arg1)]].field_1040 = 0
    sub_f0c43ab1[stor9[address(arg1)]].field_256 = block.number
    return 1
}

function sub_15c2e7f7(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    require state <= 3
    require state == 2
    require 1 <= purchaseCount
    idx = 1
    while uint32(idx) > 0:
        purchaseCount = uint32(purchaseCount - 1)
        _31 = mem[64]
        mem[64] = mem[64] + 224
        mem[_31] = 0
        mem[_31 + 32] = 0
        mem[_31 + 64] = 0
        mem[_31 + 96] = 0
        mem[_31 + 128] = 0
        mem[_31 + 160] = 0
        mem[_31 + 192] = 0
        mem[0] = purchaseCount
        mem[32] = 8
        _33 = mem[64]
        mem[64] = mem[64] + 224
        mem[_33] = sub_f0c43ab1[uint32(stor7.field_0)].field_0
        mem[_33 + 32] = sub_f0c43ab1[uint32(stor7.field_0)].field_256
        mem[_33 + 64] = sub_f0c43ab1[uint32(stor7.field_0)].field_512
        mem[_33 + 96] = sub_f0c43ab1[uint32(stor7.field_0)].field_768
        mem[_33 + 128] = bool(sub_f0c43ab1[uint32(stor7.field_0)].field_1024)
        mem[_33 + 160] = bool(sub_f0c43ab1[uint32(stor7.field_0)].field_1032)
        mem[_33 + 192] = bool(sub_f0c43ab1[uint32(stor7.field_0)].field_1040)
        require not sub_f0c43ab1[uint32(stor7.field_0)].field_1024
        require not sub_f0c43ab1[uint32(stor7.field_0)].field_1040
        if not arg1:
            if sub_f0c43ab1[uint32(stor7.field_0)].field_512 > 0:
                require ext_code.size(sub_3a296949Address)
                call sub_3a296949Address.0xf85221b6 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_call.return_data[0] <= sub_f0c43ab1[uint32(stor7.field_0)].field_512
                call sub_f0c43ab1[uint32(stor7.field_0)].field_0 with:
                   value sub_f0c43ab1[uint32(stor7.field_0)].field_512 - ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                mem[mem[64]] = sub_f0c43ab1[uint32(stor7.field_0)].field_0
                mem[mem[64] + 32] = sub_f0c43ab1[uint32(stor7.field_0)].field_512 - ext_call.return_data[0]
                emit LogRefund(sub_f0c43ab1[uint32(stor7.field_0)].field_0, sub_f0c43ab1[uint32(stor7.field_0)].field_512 - ext_call.return_data[0]);
        sub_f0c43ab1[uint32(stor7.field_0)].field_1032 = Mask(248, 0, arg1)
        sub_f0c43ab1[uint32(stor7.field_0)].field_1024 = 1
        sub_f0c43ab1[uint32(stor7.field_0)].field_1040 = 0
        mem[0] = purchaseCount
        mem[32] = 8
        sub_f0c43ab1[uint32(stor7.field_0)].field_256 = block.number
        idx = idx - 1
        continue 
}

function sub_35041438(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    require state <= 3
    require state == 2
    require arg1 <= purchaseCount
    idx = arg1
    while uint32(idx) > 0:
        purchaseCount = uint32(purchaseCount - 1)
        _31 = mem[64]
        mem[64] = mem[64] + 224
        mem[_31] = 0
        mem[_31 + 32] = 0
        mem[_31 + 64] = 0
        mem[_31 + 96] = 0
        mem[_31 + 128] = 0
        mem[_31 + 160] = 0
        mem[_31 + 192] = 0
        mem[0] = purchaseCount
        mem[32] = 8
        _33 = mem[64]
        mem[64] = mem[64] + 224
        mem[_33] = sub_f0c43ab1[uint32(stor7.field_0)].field_0
        mem[_33 + 32] = sub_f0c43ab1[uint32(stor7.field_0)].field_256
        mem[_33 + 64] = sub_f0c43ab1[uint32(stor7.field_0)].field_512
        mem[_33 + 96] = sub_f0c43ab1[uint32(stor7.field_0)].field_768
        mem[_33 + 128] = bool(sub_f0c43ab1[uint32(stor7.field_0)].field_1024)
        mem[_33 + 160] = bool(sub_f0c43ab1[uint32(stor7.field_0)].field_1032)
        mem[_33 + 192] = bool(sub_f0c43ab1[uint32(stor7.field_0)].field_1040)
        require not sub_f0c43ab1[uint32(stor7.field_0)].field_1024
        require not sub_f0c43ab1[uint32(stor7.field_0)].field_1040
        if not arg2:
            if sub_f0c43ab1[uint32(stor7.field_0)].field_512 > 0:
                require ext_code.size(sub_3a296949Address)
                call sub_3a296949Address.0xf85221b6 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_call.return_data[0] <= sub_f0c43ab1[uint32(stor7.field_0)].field_512
                call sub_f0c43ab1[uint32(stor7.field_0)].field_0 with:
                   value sub_f0c43ab1[uint32(stor7.field_0)].field_512 - ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                mem[mem[64]] = sub_f0c43ab1[uint32(stor7.field_0)].field_0
                mem[mem[64] + 32] = sub_f0c43ab1[uint32(stor7.field_0)].field_512 - ext_call.return_data[0]
                emit LogRefund(sub_f0c43ab1[uint32(stor7.field_0)].field_0, sub_f0c43ab1[uint32(stor7.field_0)].field_512 - ext_call.return_data[0]);
        sub_f0c43ab1[uint32(stor7.field_0)].field_1032 = Mask(248, 0, arg2)
        sub_f0c43ab1[uint32(stor7.field_0)].field_1024 = 1
        sub_f0c43ab1[uint32(stor7.field_0)].field_1040 = 0
        mem[0] = purchaseCount
        mem[32] = 8
        sub_f0c43ab1[uint32(stor7.field_0)].field_256 = block.number
        idx = idx - 1
        continue 
}

function sub_d198c927(?) {
    require msg.sender == owner
    require state <= 3
    require not state
    require ext_code.size(sub_3a296949Address)
    call sub_3a296949Address.0x83a5183e with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require not uint8(stor1.field_160)
    require state <= 3
    require not state
    require arg1
    require ext_code.size(sub_3a296949Address)
    call sub_3a296949Address.0x24d5e0a3 with:
         gas gas_remaining - 710 wei
        args arg2, arg3
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(sub_3a296949Address)
    call sub_3a296949Address.0x76b07eb with:
         gas gas_remaining - 710 wei
        args totalRaised, arg2
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(sub_3a296949Address)
    call sub_3a296949Address.0x84465d01 with:
         gas gas_remaining - 710 wei
        args arg2, arg3
    require ext_call.success
    require ext_code.size(sub_3a296949Address)
    call sub_3a296949Address.0x22e1dea9 with:
         gas gas_remaining - 710 wei
        args totalSupply, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    require totalRaised + arg2 >= totalRaised
    totalRaised += arg2
    if sub_79ba4872[address(arg1)] > 0:
        require sub_f0c43ab1[stor9[address(arg1)]].field_768 + arg2 >= sub_f0c43ab1[stor9[address(arg1)]].field_768
        sub_f0c43ab1[stor9[address(arg1)]].field_768 += arg2
        sub_f0c43ab1[stor9[address(arg1)]].field_256 = block.number
    else:
        purchaseCount = uint32(purchaseCount + 1)
        sub_f0c43ab1[uint32(stor7.field_40) + 1 << 224].field_0 = arg1
        sub_f0c43ab1[uint32(stor7.field_40) + 1 << 224].field_256 = block.number
        sub_f0c43ab1[uint32(stor7.field_40) + 1 << 224].field_512 = 0
        sub_f0c43ab1[uint32(stor7.field_40) + 1 << 224].field_768 = arg2
        sub_f0c43ab1[uint32(stor7.field_40) + 1 << 224].field_1024 = 0
        sub_f0c43ab1[uint32(stor7.field_40) + 1 << 224].field_1032 = 0
        sub_f0c43ab1[uint32(stor7.field_40) + 1 << 224].field_1040 = 0
        sub_79ba4872[address(arg1)] = purchaseCount
        Mask(248, 0, stor7.field_8) = purchaseCount
    require totalSupply + ext_call.return_data[0] >= totalSupply
    totalSupply += ext_call.return_data[0]
    require balanceOf[address(arg1)] + ext_call.return_data[0] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += ext_call.return_data[0]
    emit 0xbc429f43: ext_call.return_data[0], 0, arg1
    require ext_code.size(sub_3a296949Address)
    call sub_3a296949Address.0x554d578d with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if totalRaised >= ext_call.return_data[0]:
        emit LogMintingFinished()
        state = 1
    else:
        require ext_code.size(sub_3a296949Address)
        call sub_3a296949Address.0x2f087a28 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if totalSupply >= ext_call.return_data[0]:
            emit LogMintingFinished()
            state = 1
    return 1
}

function buyTokens(address arg1) payable {
    emit LogPaymentReceived(msg.sender, msg.value);
    require state <= 3
    require not state
    require ext_code.size(sub_3a296949Address)
    call sub_3a296949Address.0x83a5183e with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require not uint8(stor1.field_160)
    require state <= 3
    require not state
    require arg1
    require ext_code.size(sub_3a296949Address)
    call sub_3a296949Address.0x24d5e0a3 with:
         gas gas_remaining - 710 wei
        args msg.value, 1
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(sub_3a296949Address)
    call sub_3a296949Address.0x76b07eb with:
         gas gas_remaining - 710 wei
        args totalRaised, msg.value
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(sub_3a296949Address)
    call sub_3a296949Address.0x84465d01 with:
         gas gas_remaining - 710 wei
        args msg.value, 1
    require ext_call.success
    require ext_code.size(sub_3a296949Address)
    call sub_3a296949Address.0x22e1dea9 with:
         gas gas_remaining - 710 wei
        args totalSupply, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    require totalRaised + msg.value >= totalRaised
    totalRaised += msg.value
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    if sub_79ba4872[address(arg1)] > 0:
        require sub_f0c43ab1[stor9[address(arg1)]].field_512 + msg.value >= sub_f0c43ab1[stor9[address(arg1)]].field_512
        sub_f0c43ab1[stor9[address(arg1)]].field_512 += msg.value
        sub_f0c43ab1[stor9[address(arg1)]].field_256 = block.number
    else:
        purchaseCount = uint32(purchaseCount + 1)
        sub_f0c43ab1[uint32(stor7.field_40) + 1 << 224].field_0 = arg1
        sub_f0c43ab1[uint32(stor7.field_40) + 1 << 224].field_256 = block.number
        sub_f0c43ab1[uint32(stor7.field_40) + 1 << 224].field_512 = msg.value
        sub_f0c43ab1[uint32(stor7.field_40) + 1 << 224].field_768 = 0
        sub_f0c43ab1[uint32(stor7.field_40) + 1 << 224].field_1024 = 0
        sub_f0c43ab1[uint32(stor7.field_40) + 1 << 224].field_1032 = 0
        sub_f0c43ab1[uint32(stor7.field_40) + 1 << 224].field_1040 = 0
        sub_79ba4872[address(arg1)] = purchaseCount
        Mask(248, 0, stor7.field_8) = purchaseCount
    require totalSupply + ext_call.return_data[0] >= totalSupply
    totalSupply += ext_call.return_data[0]
    require balanceOf[address(arg1)] + ext_call.return_data[0] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += ext_call.return_data[0]
    emit 0xbc429f43: ext_call.return_data[0], 1, arg1
    require ext_code.size(sub_3a296949Address)
    call sub_3a296949Address.0x554d578d with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if totalRaised >= ext_call.return_data[0]:
        emit LogMintingFinished()
        state = 1
    else:
        require ext_code.size(sub_3a296949Address)
        call sub_3a296949Address.0x2f087a28 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if totalSupply >= ext_call.return_data[0]:
            emit LogMintingFinished()
            state = 1
    return 1
}

function _fallback() payable {
    emit LogPaymentReceived(msg.sender, msg.value);
    if not uint8(stor11.field_160):
    else:
        require state <= 3
        require not state
        require ext_code.size(sub_3a296949Address)
        call sub_3a296949Address.0x83a5183e with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0]
        require not uint8(stor1.field_160)
        require state <= 3
        require not state
        require msg.sender
        require ext_code.size(sub_3a296949Address)
        call sub_3a296949Address.0x24d5e0a3 with:
             gas gas_remaining - 710 wei
            args msg.value, 1
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(sub_3a296949Address)
        call sub_3a296949Address.0x76b07eb with:
             gas gas_remaining - 710 wei
            args totalRaised, msg.value
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(sub_3a296949Address)
        call sub_3a296949Address.0x84465d01 with:
             gas gas_remaining - 710 wei
            args msg.value, 1
        require ext_call.success
        require ext_code.size(sub_3a296949Address)
        call sub_3a296949Address.0x22e1dea9 with:
             gas gas_remaining - 710 wei
            args totalSupply, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        require totalRaised + msg.value >= totalRaised
        totalRaised += msg.value
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        if sub_79ba4872[address(msg.sender)] > 0:
            require sub_f0c43ab1[stor9[address(msg.sender)]].field_512 + msg.value >= sub_f0c43ab1[stor9[address(msg.sender)]].field_512
            sub_f0c43ab1[stor9[address(msg.sender)]].field_512 += msg.value
            sub_f0c43ab1[stor9[address(msg.sender)]].field_256 = block.number
        else:
            purchaseCount = uint32(purchaseCount + 1)
            sub_f0c43ab1[uint32(stor7.field_40) + 1 << 224].field_0 = msg.sender
            sub_f0c43ab1[uint32(stor7.field_40) + 1 << 224].field_256 = block.number
            sub_f0c43ab1[uint32(stor7.field_40) + 1 << 224].field_512 = msg.value
            sub_f0c43ab1[uint32(stor7.field_40) + 1 << 224].field_768 = 0
            sub_f0c43ab1[uint32(stor7.field_40) + 1 << 224].field_1024 = 0
            sub_f0c43ab1[uint32(stor7.field_40) + 1 << 224].field_1032 = 0
            sub_f0c43ab1[uint32(stor7.field_40) + 1 << 224].field_1040 = 0
            sub_79ba4872[address(msg.sender)] = purchaseCount
            Mask(248, 0, stor7.field_8) = purchaseCount
        require totalSupply + ext_call.return_data[0] >= totalSupply
        totalSupply += ext_call.return_data[0]
        require balanceOf[address(msg.sender)] + ext_call.return_data[0] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += ext_call.return_data[0]
        emit 0xbc429f43: ext_call.return_data[0], 1, msg.sender
        require ext_code.size(sub_3a296949Address)
        call sub_3a296949Address.0x554d578d with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if totalRaised >= ext_call.return_data[0]:
            emit LogMintingFinished()
            state = 1
        else:
            require ext_code.size(sub_3a296949Address)
            call sub_3a296949Address.0x2f087a28 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if totalSupply >= ext_call.return_data[0]:
                emit LogMintingFinished()
                state = 1
}



}

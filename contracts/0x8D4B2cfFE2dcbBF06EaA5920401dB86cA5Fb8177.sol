contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint8 stor1;
uint64 stor2; offset 160
address stor2;
uint64 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint8 stor11;
address stor11;
address stor11; offset 8
address stor12;
address stor13;
address stor14;

function _fallback() payable {
    stor5 = 51800
    stor6 = 777
    stor7 = 0
    uint8(stor11.field_0) = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[14633 len 8] > code.data[14601 len 8]
    stor1[address(msg.sender)] = 1
    create contract with 0 wei
                    code: code.data[8733 len 3565], 6000000000 * 10^18
    require create.new_address
    address(stor2.field_0) = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(this.address), 6000000000 * 10^18
    require ext_call.success
    require ext_code.size(address(stor2.field_0))
    call address(stor2.field_0).0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    uint64(stor2.field_160) = uint64(code.data[14577 len 32])
    stor3 = uint64(code.data[14609 len 32])
    stor4 = code.data[14641 len 32]
    create contract with 0 wei
                    code: code.data[12298 len 1548], 0xe0831b1687c9fad3447a517f9371e66672505db0
    require create.new_address
    stor14 = address(create.new_address)
    create contract with 0 wei
                    code: code.data[13846 len 731], address(stor2.field_0), 0x4452d6454e777743a5ee233fbe873055008ff528, uint64(uint64(stor2.field_160) + (4320 * 24 * 3600))
    address(stor11.field_8) = address(create.new_address)
    create contract with 0 wei
                    code: code.data[13846 len 731], address(stor2.field_0), 0x4452d6454e777743a5ee233fbe873055008ff528, uint64(uint64(stor2.field_160) + (8640 * 24 * 3600))
    stor12 = address(create.new_address)
    create contract with 0 wei
                    code: code.data[13846 len 731], address(stor2.field_0), 0xd0c24bb82e71a44ea770e84a3c79979f9233308d, uint64(uint64(stor2.field_160) + (8640 * 24 * 3600))
    stor13 = address(create.new_address)
    require ext_code.size(address(stor2.field_0))
    call address(stor2.field_0).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args 0xd68947892ef4d94cdef7165b109cf6cd3f58a8e8, 876666666 * 10^18
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(address(stor2.field_0))
    call address(stor2.field_0).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args 0x506c5485ae54ab14c598ef16c459409e5d8fc03, 550000 * 10^18 * 3600
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(address(stor2.field_0))
    call address(stor2.field_0).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args 0x4452d6454e777743a5ee233fbe873055008ff528, 330000000 * 10^18
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(address(stor2.field_0))
    call address(stor2.field_0).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args 0xb57911380f13a0a9a6ba6562248674b5f56d7bfe, 15000 * 10^18 * 24 * 3600
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(address(stor2.field_0))
    call address(stor2.field_0).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args 0x9be281cdcf34b3a01468ad1008139410ba5bb2fb, 6000000 * 10^18
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(address(stor2.field_0))
    call address(stor2.field_0).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(stor11.field_0), 330000000 * 10^18
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(address(stor2.field_0))
    call address(stor2.field_0).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor12, 330000000 * 10^18
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(address(stor2.field_0))
    call address(stor2.field_0).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor13, 113333334 * 10^18
    require ext_call.success
    require ext_call.return_data[0]
    return code.data[1932 len 6801]
}



// =====================  Runtime code  =====================


const SALE_CAP = (550000 * 10^18 * 3600)

const MIN_TOKEN_UNIT = 10^18

const PURCHASER_MIN_TOKEN_CAP = 6666 * 10^18

const FOUNDATION_POOL_ADDR = 0xd68947892ef4d94cdef7165b109cf6cd3f58a8e8

const FOUNDERS_POOL_ADDR = 0x4452d6454e777743a5ee233fbe873055008ff528

const TOTAL_SUPPLY_CAP = 6000000000 * 10^18

const COMMUNITY_POOL_TOKENS = (550000 * 10^18 * 3600)

const PURCHASER_MAX_TOKEN_CAP_DAY1 = 200000 * 10^18

const FOUNDATION_POOL_TOKENS_VESTED = 113333334 * 10^18

const TOKEN_DECIMALS = 18

const PRECOMMITMENT_VESTING_SECONDS = (4320 * 24 * 3600)

const FOUNDERS_TOKENS = 330000000 * 10^18

const LEGAL_EXPENSES_2_TOKENS = 6000000 * 10^18

const FOUNDERS_TOKENS_VESTED_2 = 330000000 * 10^18

const CROWDSALE_WALLET_ADDR = 0xe0831b1687c9fad3447a517f9371e66672505db0

const FOUNDERS_TOKENS_VESTED_1 = 330000000 * 10^18

const FOUNDATION_POOL_TOKENS = 876666666 * 10^18

const LEGAL_EXPENSES_ADDR_2 = 0x9be281cdcf34b3a01468ad1008139410ba5bb2fb

const LEGAL_EXPENSES_1_TOKENS = (15000 * 10^18 * 24 * 3600)

const COMMUNITY_POOL_ADDR = 0x506c5485ae54ab14c598ef16c459409e5d8fc03

const PURCHASER_MAX_TOKEN_CAP = 1200000 * 10^18

const LEGAL_EXPENSES_ADDR_1 = 0xb57911380f13a0a9a6ba6562248674b5f56d7bfe

const FOUNDATION_POOL_ADDR_VEST = 0xd0c24bb82e71a44ea770e84a3c79979f9233308d

const TOKEN_PRICE_THOUSANDTH = 15


address owner;
mapping of uint8 stor1;
uint64 startTime; offset 160
address tokenAddress;
uint64 endTime;
uint256 goal;
uint256 rate;
uint256 ethPrice;
uint256 totalPurchased;
mapping of uint8 stor8;
mapping of uint256 tokensPurchased;
mapping of address vestedTokens;
uint8 isFinalized;
address foundersTimelock1Address; offset 8
address foundersTimelock2Address;
address foundationTimelockAddress;
address vaultAddress;

function tokensPurchased(address arg1) {
    return tokensPurchased[arg1]
}

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function isVerifier(address arg1) {
    return bool(stor1[arg1])
}

function vestedTokens(address arg1) {
    return vestedTokens[arg1]
}

function goal() {
    return goal
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(isFinalized)
}

function owner() {
    return owner
}

function kycVerified(address arg1) {
    return bool(stor8[arg1])
}

function foundersTimelock1() {
    return foundersTimelock1Address
}

function foundersTimelock2() {
    return foundersTimelock2Address
}

function totalPurchased() {
    return totalPurchased
}

function foundationTimelock() {
    return foundationTimelockAddress
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function ethPrice() {
    return ethPrice
}

function goalReached() {
    return totalPurchased >= goal
}

function addVerifier(address arg1) {
    require owner == msg.sender
    stor1[address(arg1)] = 1
}

function removeVerifier(address arg1) {
    require owner == msg.sender
    stor1[address(arg1)] = 0
}

function verifyKYC(address arg1) {
    require stor1[address(msg.sender)]
    stor8[address(arg1)] = 1
    emit VerifiedKYC(arg1);
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setEndTime(uint64 arg1) {
    require owner == msg.sender
    require block.timestamp < endTime
    require arg1 > block.timestamp
    require arg1 > startTime
    endTime = arg1
}

function setStartTime(uint64 arg1) {
    require owner == msg.sender
    require block.timestamp < startTime
    require arg1 > block.timestamp
    require arg1 < endTime
    startTime = arg1
}

function releaseLockFounders1() {
    require ext_code.size(foundersTimelock1Address)
    call foundersTimelock1Address.release() with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function releaseLockFounders2() {
    require ext_code.size(foundersTimelock2Address)
    call foundersTimelock2Address.release() with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function releaseLockFoundation() {
    require ext_code.size(foundationTimelockAddress)
    call foundationTimelockAddress.release() with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function releaseLock(address arg1) {
    require vestedTokens[address(arg1)]
    require ext_code.size(vestedTokens[address(arg1)])
    call vestedTokens[address(arg1)].release() with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function claimRefund(address arg1) {
    require isFinalized
    require totalPurchased < goal
    require ext_code.size(vaultAddress)
    call vaultAddress.refund(address arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function setEthPrice(uint256 arg1) {
    require owner == msg.sender
    require block.timestamp < startTime
    require arg1 > 0
    ethPrice = arg1
    if not arg1:
        rate = 0
    else:
        require 1000 * arg1 / arg1 == 1000
        rate = 1000 * arg1 / 15
}

function finalize() {
    require owner == msg.sender
    require block.timestamp > startTime
    require not isFinalized
    if totalPurchased < goal:
        require ext_code.size(vaultAddress)
        call vaultAddress.enableRefunds() with:
             gas gas_remaining - 710 wei
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x42966c68 with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
        require ext_code.size(vaultAddress)
        call vaultAddress.close() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0xaf35c6c7 with:
             gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    isFinalized = 1
}

function _fallback() payable {
    require stor8[address(msg.sender)]
    require block.timestamp >= startTime
    require block.timestamp < endTime
    require not isFinalized
    require msg.value
    require rate * msg.value / msg.value == rate
    require (rate * msg.value) + tokensPurchased[address(msg.sender)] >= tokensPurchased[address(msg.sender)]
    tokensPurchased[address(msg.sender)] += rate * msg.value
    require (rate * msg.value) + totalPurchased >= totalPurchased
    totalPurchased += rate * msg.value
    require (rate * msg.value) + totalPurchased <= 550000 * 10^18 * 3600
    require tokensPurchased[address(msg.sender)] >= 6666 * 10^18
    if block.timestamp >= uint64(startTime + (24 * 3600)):
        require tokensPurchased[address(msg.sender)] <= 1200000 * 10^18
    else:
        require tokensPurchased[address(msg.sender)] <= 200000 * 10^18
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address arg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, rate * msg.value
    require ext_call.success
    require ext_call.return_data[0]
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
}

function addPrecommitment(address arg1, uint256 arg2, bool arg3) {
    require stor1[address(msg.sender)]
    require block.timestamp < startTime
    stor8[address(arg1)] = 1
    require arg2 + totalPurchased >= totalPurchased
    totalPurchased += arg2
    require arg2 + tokensPurchased[address(arg1)] >= tokensPurchased[address(arg1)]
    tokensPurchased[address(arg1)] += arg2
    if not arg3:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), arg2
    else:
        if vestedTokens[address(arg1)]:
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), arg2 / 2
            require ext_call.success
            require ext_call.return_data[0]
            require arg2 / 2 <= arg2
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args vestedTokens[address(arg1)], arg2 - (arg2 / 2)
        else:
            create contract with 0 wei
                            code: code.data[6027 len 731], tokenAddress, address(arg1), uint64(startTime + (4320 * 24 * 3600))
            require create.new_address
            vestedTokens[address(arg1)] = address(create.new_address)
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), arg2 / 2
            require ext_call.success
            require ext_call.return_data[0]
            require arg2 / 2 <= arg2
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(create.new_address), arg2 - (arg2 / 2)
    require ext_call.success
    require ext_call.return_data[0]
    emit AddedPrecommitment(arg2, arg1);
}



}

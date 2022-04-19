contract main {


// =======================  Init code  ======================


address stor0;
uint32 stor4;
uint256 stor6;
address stor7;
address stor8;
address stor9;
address stor10;
address stor11;
uint256 stor12;

function _fallback() payable {
    stor12 = 10^18
    require not msg.value
    stor0 = msg.sender
    stor4 = 0
    create contract with 0 wei
                    code: code.data[3784 len 3721]
    require create.new_address
    stor7 = address(create.new_address)
    stor6 = 0
    stor8 = 0x383c69259149bdd38b5093bf1c75ebd443684288
    stor9 = 0xc6f29a076cc937917f3cd608881c0b0a0b3276f2
    stor10 = 0x8995b6645d60975cb14be68b6495be2618a77b94
    stor11 = 0x6e121956a9c8e4b3d1f7a7d3316056cd89ed109c
    return code.data[293 len 3491]
}



// =====================  Runtime code  =====================


address owner;
uint256 tokenCap;
uint256 start;
uint256 end;
uint8 stor4;
uint8 stor4; offset 8
uint8 stor4; offset 16
uint256 rate;
uint256 totalContribution;
address tokenAddress;
address founder1Address;
address founder2Address;
address advisoryPoolAddress;
address angelPoolAddress;
uint256 stor12;

function setupDone() {
    return bool(uint8(stor4.field_16))
}

function totalContribution() {
    return totalContribution
}

function founder1() {
    return founder1Address
}

function rate() {
    return rate
}

function saleFinished() {
    return bool(uint8(stor4.field_0))
}

function advisoryPool() {
    return advisoryPoolAddress
}

function forceFinished() {
    return bool(uint8(stor4.field_8))
}

function angelPool() {
    return angelPoolAddress
}

function founder2() {
    return founder2Address
}

function owner() {
    return owner
}

function start() {
    return start
}

function tokenCap() {
    return tokenCap
}

function end() {
    return end
}

function token() {
    return tokenAddress
}

function setNewOwner(address arg1) {
    require owner == msg.sender
    if not arg1:
        return 0
    owner = arg1
    return 1
}

function forceEnd() {
    require owner == msg.sender
    require tokenCap > 0
    require start <= block.timestamp
    require block.timestamp < end
    require not uint8(stor4.field_0)
    require not uint8(stor4.field_8)
    require uint8(stor4.field_16)
    uint8(stor4.field_8) = 1
    emit SaleFinished()
    return 1
}

function finalizeCrowdsale() {
    require owner == msg.sender
    if tokenCap:
        if start > block.timestamp:
            require uint8(stor4.field_8)
        else:
            if block.timestamp >= end:
                require uint8(stor4.field_8)
    require ext_code.size(tokenAddress)
    if tokenCap > 0:
        call tokenAddress.transferInitialAllocation(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args owner, tokenCap
        require ext_call.success
        require ext_call.return_data[0]
    call tokenAddress.0xf5a1f5b4 with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    require ext_call.return_data[0]
    uint8(stor4.field_0) = 1
    emit SaleFinished()
    return 1
}

function buyToken() payable {
    require tokenCap > 0
    require start <= block.timestamp
    require block.timestamp < end
    require not uint8(stor4.field_0)
    require not uint8(stor4.field_8)
    require uint8(stor4.field_16)
    require msg.value >= 10^16
    if rate:
        require rate
        require msg.value * rate / rate == msg.value
    require tokenCap >= msg.value * rate / 10^18
    tokenCap -= msg.value * rate / 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.transferInitialAllocation(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * rate / 10^18
    require ext_call.success
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    totalContribution += msg.value
    emit Purchase((msg.value * rate / 10^18), msg.sender);
}

function _fallback() payable {
    require tokenCap > 0
    require start <= block.timestamp
    require block.timestamp < end
    require not uint8(stor4.field_0)
    require not uint8(stor4.field_8)
    require uint8(stor4.field_16)
    require msg.value >= 10^16
    if rate:
        require rate
        require msg.value * rate / rate == msg.value
    require tokenCap >= msg.value * rate / 10^18
    tokenCap -= msg.value * rate / 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.transferInitialAllocation(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * rate / 10^18
    require ext_call.success
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    totalContribution += msg.value
    emit Purchase((msg.value * rate / 10^18), msg.sender);
}

function setup() {
    require owner == msg.sender
    require not uint8(stor4.field_16)
    start = 419267 * 3600
    end = 420611 * 3600
    require ext_code.size(tokenAddress)
    call tokenAddress.transferInitialAllocation(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args owner, 22800000 * stor12
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.transferInitialAllocationWithTimedLock(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args founder1Address, 7600000 * stor12, block.timestamp + (8760 * 24 * 3600)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.transferInitialAllocationWithTimedLock(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args founder2Address, 7600000 * stor12, block.timestamp + (8760 * 24 * 3600)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.transferInitialAllocation(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args angelPoolAddress, 1900 * 3600 * stor12
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.transferInitialAllocation(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args advisoryPoolAddress, 760000 * stor12
    require ext_call.success
    tokenCap = 30400000 * stor12
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require tokenCap == ext_call.return_data[0]
    rate = 30400 * stor12
    uint8(stor4.field_16) = 1
    emit SaleStarted()
    return 1
}



}

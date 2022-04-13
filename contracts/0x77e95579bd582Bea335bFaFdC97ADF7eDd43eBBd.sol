contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor6;
uint128 stor7; offset 160
address stor7;
address stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    Mask(96, 0, stor7.field_160) = 0
    stor9 = 1200
    stor10 = 16000000 * 10^18
    require not msg.value
    mem[96 len -13383] = code.data[14876 len -13383]
    mem[64] = -13287
    require mem[96] >= block.number
    require mem[128] >= mem[96]
    require stor9 > 0
    require mem[172 len 20]
    mem[-13287 len 4896] = code.data[9980 len 4896]
    create contract with 0 wei
                    code: code.data[9980 len 4896]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = mem[96]
    stor2 = mem[128]
    stor4 = stor9
    stor3 = mem[172 len 20]
    stor6 = 5 * 10^15
    address(stor7.field_0) = msg.sender
    stor8 = mem[204 len 20]
    mem[-13251] = stor10
    require ext_code.size(stor0)
    call stor0.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args stor3, stor10
    require ext_call.success
    mem[-13287] = 0
    mem[-13255] = stor10
    emit TokenPurchase(0, stor10, stor3, stor3);
    s = 0
    s = 0
    idx = 0
    while idx < mem[mem[224] + 96]:
        require idx < mem[mem[224] + 96]
        require ext_code.size(mem[204 len 20])
        call mem[204 len 20].0x70a08231 with:
             gas gas_remaining - 710 wei
            args mem[(32 * idx) + mem[224] + 140 len 20]
        require ext_call.success
        mem[-13251] = ext_call.return_data[0]
        require ext_code.size(stor0)
        call stor0.mint(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(mem[(32 * idx) + mem[224] + 128]), ext_call.return_data[0], code.data[10048 len 4828], mem[-8391 len -4828]
        require ext_call.success
        mem[-13287] = 0
        mem[-13255] = ext_call.return_data[0]
        emit TokenPurchase(0, ext_call.return_data[0], mem[(32 * idx) + mem[224] + 140 len 20], mem[(32 * idx) + mem[224] + 140 len 20]);
        s = ext_call.return_data[0]
        s = mem[(32 * idx) + mem[224] + 128]
        idx = idx + 1
        continue 
    return code.data[1493 len 8487]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startBlock;
uint256 endBlock;
address walletAddress;
uint256 stor4;
uint256 weiRaised;
uint256 cap;
uint8 isFinalized; offset 160
uint128 stor7; offset 160
address owner;
address lamboPresaleAddress;
uint256 rate;
uint256 companyTokens;

function endBlock() {
    return endBlock
}

function rate() {
    return rate
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function startBlock() {
    return startBlock
}

function lamboPresaleAddress() {
    return lamboPresaleAddress
}

function wallet() {
    return walletAddress
}

function companyTokens() {
    return companyTokens
}

function isFinalized() {
    return bool(isFinalized)
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function hasEnded() {
    if block.number > endBlock:
        return (block.number > endBlock)
    return weiRaised >= cap
}

function contribute(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), arg4
    require ext_call.success
    emit TokenPurchase(arg3, arg4, arg1, arg2);
}

function finalize() {
    require msg.sender == owner
    require not isFinalized
    if block.number <= endBlock:
        require weiRaised >= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.finishMinting() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    stor7 = 1
}

function _fallback() payable {
    require msg.sender
    require weiRaised + msg.value >= weiRaised
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require weiRaised + msg.value <= cap
    if msg.value:
        require msg.value
        require msg.value * stor4 / msg.value == stor4
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * stor4
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value * stor4, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    require arg1
    require weiRaised + msg.value >= weiRaised
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require weiRaised + msg.value <= cap
    if msg.value:
        require msg.value
        require msg.value * stor4 / msg.value == stor4
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value * stor4
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value * stor4, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}

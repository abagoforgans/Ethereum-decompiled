contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor6;
uint8 stor7; offset 160
address stor7;
uint256 stor8;
address stor9;
address stor10;

function _fallback() payable {
    uint8(stor7.field_160) = 0
    stor10 = 0
    require not msg.value
    require code.data[13228 len 32] >= block.timestamp
    require code.data[13260 len 32] >= code.data[13228 len 32]
    require code.data[13292 len 32] > 0
    require code.data[13400 len 20]
    create contract with 0 wei
                    code: code.data[10031 len 3197]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = code.data[13228 len 32]
    stor2 = code.data[13260 len 32]
    stor4 = code.data[13292 len 32]
    stor3 = code.data[13400 len 20]
    require code.data[13356 len 32] > 0
    stor6 = code.data[13356 len 32]
    address(stor7.field_0) = msg.sender
    require code.data[13324 len 32] > 0
    create contract with 0 wei
                    code: code.data[8404 len 1627], stor3
    require create.new_address
    stor9 = address(create.new_address)
    stor8 = code.data[13324 len 32]
    require code.data[13324 len 32] <= code.data[13356 len 32]
    return code.data[555 len 7849]
}



// =====================  Runtime code  =====================


const sub_33c45fa3(?) = (433164 * 3600)

const sub_4124c91c(?) = 0x840d78eac008e74ad830e1d2fe11f43e713b7aa

const exponent = 10^18

const sub_7b4b1810(?) = 0x840d78eac008e74ad830e1d2fe11f43e713b7aa

const sub_81ef10cc(?) = 100000000 * 10^18

const incentiveAmount = 100000000 * 10^18


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint8 stor7; offset 160
address owner;
uint256 goal;
address vaultAddress;
address sub_4bc66f32Address;
address timelockContractAddress;

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function cap() {
    return cap
}

function goal() {
    return goal
}

function weiRaised() {
    return weiRaised
}

function sub_4bc66f32(?) {
    return sub_4bc66f32Address
}

function wallet() {
    return walletAddress
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(stor7)
}

function owner() {
    return owner
}

function timelockContract() {
    return timelockContractAddress
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function goalReached() {
    return weiRaised >= goal
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claimRefund() {
    require stor7
    require weiRaised < goal
    require ext_code.size(vaultAddress)
    call vaultAddress.0xfa89401a with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= cap
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= cap
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}

function finalize() {
    require owner == msg.sender
    require not stor7
    if block.timestamp <= endTime:
        require weiRaised >= cap
    if weiRaised < goal:
        require ext_code.size(vaultAddress)
        call vaultAddress.enableRefunds() with:
             gas gas_remaining - 710 wei
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args 0x840d78eac008e74ad830e1d2fe11f43e713b7aa, 100000000 * 10^18
        require ext_call.success
        if ext_call.return_data[0]:
            emit IncentiveMinted(0x840d78eac008e74ad830e1d2fe11f43e713b7aa, 100000000 * 10^18);
        require owner == msg.sender
        create contract with 0 wei
                        code: code.data[3648 len 961], tokenAddress, 0x840d78eac008e74ad830e1d2fe11f43e713b7aa, 433164 * 3600
        require create.new_address
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(create.new_address), 100000000 * 10^18
        require ext_call.success
        emit 0xd3c8f996: 0x840d78eac008e74ad830e1d2fe11f43e713b7aa, 100000000 * 10^18, 433164 * 3600
        timelockContractAddress = address(create.new_address)
        sub_4bc66f32Address = address(create.new_address)
        require ext_code.size(vaultAddress)
        if weiRaised < goal:
            call vaultAddress.enableRefunds() with:
                 gas gas_remaining - 710 wei
        else:
            call vaultAddress.close() with:
                 gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    stor7 = 1
}



}

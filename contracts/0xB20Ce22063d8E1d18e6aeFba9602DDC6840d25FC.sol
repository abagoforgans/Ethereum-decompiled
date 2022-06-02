contract main {


// =======================  Init code  ======================


address stor0;
address stor7;

function _fallback() {
    stor0 = code.data[2415 len 20]
    require code.data[2415 len 20]
    stor7 = code.data[2447 len 20]
    require ext_code.size(code.data[2447 len 20])
    call code.data[2447 len 20].isToken() with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[0]
    return code.data[261 len 2142]
}



// =====================  Runtime code  =====================


address owner;
uint256 investorCount;
uint256 totalClaimed;
uint256 tokensAllocatedTotal;
mapping of uint256 balances;
mapping of uint256 claimed;
mapping of uint256 sub_5e7a019a;
address tokenAddress;

function tokensAllocatedTotal() {
    return tokensAllocatedTotal
}

function balances(address arg1) {
    return balances[arg1]
}

function sub_5e7a019a(?) {
    return sub_5e7a019a[arg1]
}

function owner() {
    return owner
}

function claimed(address arg1) {
    return claimed[arg1]
}

function totalClaimed() {
    return totalClaimed
}

function investorCount() {
    return investorCount
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getBalance() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function claim() {
    require balances[address(msg.sender)]
    require block.timestamp >= sub_5e7a019a[address(msg.sender)]
    balances[address(msg.sender)] = 0
    require ext_code.size(0x69cfac0d3e5269f758f0a00b12bd5990bd42bf89)
    delegate 0x69cfac0d3e5269f758f0a00b12bd5990bd42bf89.0x66098d4f with:
         gas gas_remaining wei
        args claimed[address(msg.sender)], balances[address(msg.sender)]
    require delegate.return_code
    claimed[address(msg.sender)] = delegate.return_data[0]
    require ext_code.size(0x69cfac0d3e5269f758f0a00b12bd5990bd42bf89)
    delegate 0x69cfac0d3e5269f758f0a00b12bd5990bd42bf89.0x66098d4f with:
         gas gas_remaining wei
        args totalClaimed, balances[address(msg.sender)]
    require delegate.return_code
    totalClaimed = delegate.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, balances[address(msg.sender)]
    require ext_call.success
    emit Distributed(msg.sender, balances[address(msg.sender)]);
}

function sub_dfdfeb20(?) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    require ext_code.size(0x69cfac0d3e5269f758f0a00b12bd5990bd42bf89)
    delegate 0x69cfac0d3e5269f758f0a00b12bd5990bd42bf89.0x66098d4f with:
         gas gas_remaining wei
        args ext_call.return_data[0], totalClaimed
    require delegate.return_code
    require ext_code.size(0x69cfac0d3e5269f758f0a00b12bd5990bd42bf89)
    delegate 0x69cfac0d3e5269f758f0a00b12bd5990bd42bf89.0xf4f3bdc1 with:
         gas gas_remaining wei
        args delegate.return_data[0], tokensAllocatedTotal
    require delegate.return_code
    require arg3
    require arg3 <= delegate.return_data[0]
    require block.timestamp <= arg2
    require balances[address(arg1)] <= 0
    balances[address(arg1)] = arg3
    sub_5e7a019a[address(arg1)] = arg2
    investorCount++
    require ext_code.size(0x69cfac0d3e5269f758f0a00b12bd5990bd42bf89)
    delegate 0x69cfac0d3e5269f758f0a00b12bd5990bd42bf89.0x66098d4f with:
         gas gas_remaining wei
        args tokensAllocatedTotal, arg3
    require delegate.return_code
    tokensAllocatedTotal = delegate.return_data[0]
    emit Allocated(address(arg1), arg3);
}



}

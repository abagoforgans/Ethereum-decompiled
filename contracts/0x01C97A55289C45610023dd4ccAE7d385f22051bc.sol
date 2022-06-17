contract main {




// =====================  Runtime code  =====================


address owner;
uint8 state; offset 160
address tokenAddress;
uint256 cap;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 tokensRaised;
address sub_27749b64Address;
address sub_1fc6fd02Address;

function sub_1fc6fd02(?) {
    return sub_1fc6fd02Address
}

function sub_27749b64(?) {
    return sub_27749b64Address
}

function endTime() {
    return endTime
}

function cap() {
    return cap
}

function wallet() {
    return walletAddress
}

function tokensRaised() {
    return tokensRaised
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function state() {
    require state <= 5
    return state
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function closeCrowdsale() {
    require msg.sender == owner
    require ext_code.size(0x58d0dd25fb8d95502b4732e10bd8cf8901230176)
    delegate 0x58d0dd25fb8d95502b4732e10bd8cf8901230176.0x83326012 with:
         gas gas_remaining wei
        args 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function hasEnded() {
    require ext_code.size(0x58d0dd25fb8d95502b4732e10bd8cf8901230176)
    delegate 0x58d0dd25fb8d95502b4732e10bd8cf8901230176.0x1d8c3c45 with:
         gas gas_remaining wei
        args 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function getControllerAddress() {
    require ext_code.size(0x58d0dd25fb8d95502b4732e10bd8cf8901230176)
    delegate 0x58d0dd25fb8d95502b4732e10bd8cf8901230176.0xe201487b with:
         gas gas_remaining wei
        args 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[12 len 20]
}

function sub_302cabba(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(0x58d0dd25fb8d95502b4732e10bd8cf8901230176)
    delegate 0x58d0dd25fb8d95502b4732e10bd8cf8901230176.0xc078f353 with:
         gas gas_remaining wei
        args 1, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f6072a10(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(0x58d0dd25fb8d95502b4732e10bd8cf8901230176)
    delegate 0x58d0dd25fb8d95502b4732e10bd8cf8901230176.0x3bd160bf with:
         gas gas_remaining wei
        args 8, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_04138e6b(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x58d0dd25fb8d95502b4732e10bd8cf8901230176)
    delegate 0x58d0dd25fb8d95502b4732e10bd8cf8901230176.0xf8efb47d with:
         gas gas_remaining wei
        args 1, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function rescueToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if sub_1fc6fd02Address != msg.sender:
        revert with 0, 'rescueCtrl'
    require ext_code.size(0x58d0dd25fb8d95502b4732e10bd8cf8901230176)
    delegate 0x58d0dd25fb8d95502b4732e10bd8cf8901230176.0x37159bfb with:
         gas gas_remaining wei
        args 1, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5054db87(?) {
    require calldata.size - 4 >= 96
    if sub_27749b64Address != msg.sender:
        revert with 0, 'assign prerequisit'
    require ext_code.size(0x58d0dd25fb8d95502b4732e10bd8cf8901230176)
    delegate 0x58d0dd25fb8d95502b4732e10bd8cf8901230176.0xc913516b with:
         gas gas_remaining wei
        args 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'assign prerequisit'
    require ext_code.size(0x58d0dd25fb8d95502b4732e10bd8cf8901230176)
    delegate 0x58d0dd25fb8d95502b4732e10bd8cf8901230176.0x3f781a73 with:
         gas gas_remaining wei
        args 0, 1, address(arg1), arg2, Mask(64, 192, arg3)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_e640359f(?) {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x6f89e409 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require state <= 5
    if state == 3:
        revert with 0, 'only unfinalized'
    require ext_code.size(0x58d0dd25fb8d95502b4732e10bd8cf8901230176)
    delegate 0x58d0dd25fb8d95502b4732e10bd8cf8901230176.0xddf84c80 with:
         gas gas_remaining wei
        args 1, ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require state <= 5
    if state == 3:
        revert with 0, 'only unfinalized'
    if ext_call.return_data[96] < ext_call.return_data[64]:
        revert with 0, 'endTime smaller start'
    require ext_code.size(0x58d0dd25fb8d95502b4732e10bd8cf8901230176)
    delegate 0x58d0dd25fb8d95502b4732e10bd8cf8901230176.0xd4f10f10 with:
         gas gas_remaining wei
        args 1, ext_call.return_data[64], ext_call.return_data[96]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function endCrowdsale() {
    require msg.sender == owner
    require state <= 5
    if state != 1:
        revert with 0, 'only when active'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x6f89e409 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require state <= 5
    if state == 3:
        revert with 0, 'only unfinalized'
    require ext_code.size(0x58d0dd25fb8d95502b4732e10bd8cf8901230176)
    delegate 0x58d0dd25fb8d95502b4732e10bd8cf8901230176.0xddf84c80 with:
         gas gas_remaining wei
        args 1, ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require state <= 5
    if state == 3:
        revert with 0, 'only unfinalized'
    if ext_call.return_data[96] < ext_call.return_data[64]:
        revert with 0, 'endTime smaller start'
    require ext_code.size(0x58d0dd25fb8d95502b4732e10bd8cf8901230176)
    delegate 0x58d0dd25fb8d95502b4732e10bd8cf8901230176.0xd4f10f10 with:
         gas gas_remaining wei
        args 1, ext_call.return_data[64], ext_call.return_data[96]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    state = 2
    emit 0x477383f3 
}

function startCrowdsale() {
    require state <= 5
    if state:
        revert with 0, 'only draft state'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x6f89e409 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require state <= 5
    if state == 3:
        revert with 0, 'only unfinalized'
    require ext_code.size(0x58d0dd25fb8d95502b4732e10bd8cf8901230176)
    delegate 0x58d0dd25fb8d95502b4732e10bd8cf8901230176.0xddf84c80 with:
         gas gas_remaining wei
        args 1, ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require state <= 5
    if state == 3:
        revert with 0, 'only unfinalized'
    if ext_call.return_data[96] < ext_call.return_data[64]:
        revert with 0, 'endTime smaller start'
    require ext_code.size(0x58d0dd25fb8d95502b4732e10bd8cf8901230176)
    delegate 0x58d0dd25fb8d95502b4732e10bd8cf8901230176.0xd4f10f10 with:
         gas gas_remaining wei
        args 1, ext_call.return_data[64], ext_call.return_data[96]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x58d0dd25fb8d95502b4732e10bd8cf8901230176)
    delegate 0x58d0dd25fb8d95502b4732e10bd8cf8901230176.0x20b6c9bc with:
         gas gas_remaining wei
        args 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'validStart'
    state = 1
    emit Started()
}

function finalizeCrowdsale() {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x6f89e409 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require state <= 5
    if state == 3:
        revert with 0, 'only unfinalized'
    require ext_code.size(0x58d0dd25fb8d95502b4732e10bd8cf8901230176)
    delegate 0x58d0dd25fb8d95502b4732e10bd8cf8901230176.0xddf84c80 with:
         gas gas_remaining wei
        args 1, ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require state <= 5
    if state == 3:
        revert with 0, 'only unfinalized'
    if ext_call.return_data[96] < ext_call.return_data[64]:
        revert with 0, 'endTime smaller start'
    require ext_code.size(0x58d0dd25fb8d95502b4732e10bd8cf8901230176)
    delegate 0x58d0dd25fb8d95502b4732e10bd8cf8901230176.0xd4f10f10 with:
         gas gas_remaining wei
        args 1, ext_call.return_data[64], ext_call.return_data[96]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require state <= 5
    if state != 2:
        require state <= 5
        if state != 1:
            revert with 0, 'state'
    require ext_code.size(0x58d0dd25fb8d95502b4732e10bd8cf8901230176)
    delegate 0x58d0dd25fb8d95502b4732e10bd8cf8901230176.0x1d8c3c45 with:
         gas gas_remaining wei
        args 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'not ended'
    state = 3
    emit Finalized()
}



}

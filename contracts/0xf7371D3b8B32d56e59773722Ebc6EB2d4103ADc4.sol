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
uint256 goal;
address sub_400c2fe2Address;
uint256 stor11;

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

function sub_400c2fe2(?) {
    return address(sub_400c2fe2Address)
}

function goal() {
    return goal
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

function isOwner() {
    return (msg.sender == owner)
}

function goalReached() {
    return tokensRaised >= goal
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

function hasEnded() {
    require ext_code.size(0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31)
    delegate 0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31.0x1d8c3c45 with:
         gas gas_remaining wei
        args 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function getControllerAddress() {
    require ext_code.size(0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31)
    delegate 0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31.0xe201487b with:
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
    require ext_code.size(0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31)
    delegate 0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31.0xc078f353 with:
         gas gas_remaining wei
        args 1, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f6072a10(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31)
    delegate 0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31.0x3bd160bf with:
         gas gas_remaining wei
        args 8, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_04138e6b(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31)
    delegate 0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31.0xf8efb47d with:
         gas gas_remaining wei
        args 1, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_05171c93(?) {
    require state <= 5
    if state != 4:
        revert with 0, 'state not refunding'
    if tokensRaised >= goal:
        revert with 0, 'not reached'
    require ext_code.size(address(sub_400c2fe2Address))
    call address(sub_400c2fe2Address).withdraw(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function closeCrowdsale() {
    require msg.sender == owner
    if eth.balance(address(sub_400c2fe2Address)):
        revert with 0, 'vault has ETH'
    require msg.sender == owner
    require ext_code.size(0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31)
    delegate 0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31.0x83326012 with:
         gas gas_remaining wei
        args 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function rescueToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if sub_1fc6fd02Address != msg.sender:
        revert with 0, 'rescueCtrl'
    require ext_code.size(0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31)
    delegate 0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31.0x37159bfb with:
         gas gas_remaining wei
        args 1, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5054db87(?) {
    require calldata.size - 4 >= 96
    if sub_27749b64Address != msg.sender:
        revert with 0, 'assign prerequisit'
    require ext_code.size(0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31)
    delegate 0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31.0xc913516b with:
         gas gas_remaining wei
        args 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'assign prerequisit'
    require ext_code.size(0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31)
    delegate 0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31.0x3f781a73 with:
         gas gas_remaining wei
        args 0, 1, address(arg1), arg2, Mask(64, 192, arg3)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function _fallback() payable {
    require state <= 5
    if state != 1:
        revert with 0, 'payment prerequisit'
    require ext_code.size(0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31)
    delegate 0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31.0x24a352e9 with:
         gas gas_remaining wei
        args 1, msg.sender, msg.value
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] <= msg.value
    require ext_code.size(address(sub_400c2fe2Address))
    call address(sub_400c2fe2Address).deposit(address arg1) with:
       value msg.value - delegate.return_data[0] wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value delegate.return_data[0] wei
         gas 2300 * is_zero(value) wei
}

function buyTokensWithEther() payable {
    require state <= 5
    if state != 1:
        revert with 0, 'payment prerequisit'
    require ext_code.size(0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31)
    delegate 0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31.0x24a352e9 with:
         gas gas_remaining wei
        args 1, msg.sender, msg.value
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] <= msg.value
    require ext_code.size(address(sub_400c2fe2Address))
    call address(sub_400c2fe2Address).deposit(address arg1) with:
       value msg.value - delegate.return_data[0] wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value delegate.return_data[0] wei
         gas 2300 * is_zero(value) wei
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
    require ext_code.size(0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31)
    delegate 0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31.0xddf84c80 with:
         gas gas_remaining wei
        args 1, ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require state <= 5
    if state == 3:
        revert with 0, 'only unfinalized'
    if ext_call.return_data[32] <= 0:
        revert with 0, 'zero goal'
    goal = ext_call.return_data[32]
    require state <= 5
    if state == 3:
        revert with 0, 'only unfinalized'
    if ext_call.return_data[96] < ext_call.return_data[64]:
        revert with 0, 'endTime smaller start'
    require ext_code.size(0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31)
    delegate 0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31.0xd4f10f10 with:
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
    require ext_code.size(0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31)
    delegate 0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31.0xddf84c80 with:
         gas gas_remaining wei
        args 1, ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require state <= 5
    if state == 3:
        revert with 0, 'only unfinalized'
    if ext_call.return_data[32] <= 0:
        revert with 0, 'zero goal'
    goal = ext_call.return_data[32]
    require state <= 5
    if state == 3:
        revert with 0, 'only unfinalized'
    if ext_call.return_data[96] < ext_call.return_data[64]:
        revert with 0, 'endTime smaller start'
    require ext_code.size(0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31)
    delegate 0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31.0xd4f10f10 with:
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
    require ext_code.size(0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31)
    delegate 0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31.0xddf84c80 with:
         gas gas_remaining wei
        args 1, ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require state <= 5
    if state == 3:
        revert with 0, 'only unfinalized'
    if ext_call.return_data[32] <= 0:
        revert with 0, 'zero goal'
    goal = ext_call.return_data[32]
    require state <= 5
    if state == 3:
        revert with 0, 'only unfinalized'
    if ext_call.return_data[96] < ext_call.return_data[64]:
        revert with 0, 'endTime smaller start'
    require ext_code.size(0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31)
    delegate 0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31.0xd4f10f10 with:
         gas gas_remaining wei
        args 1, ext_call.return_data[64], ext_call.return_data[96]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31)
    delegate 0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31.0x20b6c9bc with:
         gas gas_remaining wei
        args 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'validStart'
    if goal <= 0:
        revert with 0, 'validStart'
    require ext_code.size(0x2b7891af88a24dd10a9fdbdf282ceb91a2bdb230)
    delegate 0x2b7891af88a24dd10a9fdbdf282ceb91a2bdb230.0xbd4ef88 with:
         gas gas_remaining wei
        args walletAddress
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor11) = delegate.return_data[12 len 20] or Mask(96, 160, uint256(stor11))
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
    require ext_code.size(0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31)
    delegate 0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31.0xddf84c80 with:
         gas gas_remaining wei
        args 1, ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require state <= 5
    if state == 3:
        revert with 0, 'only unfinalized'
    if ext_call.return_data[32] <= 0:
        revert with 0, 'zero goal'
    goal = ext_call.return_data[32]
    require state <= 5
    if state == 3:
        revert with 0, 'only unfinalized'
    if ext_call.return_data[96] < ext_call.return_data[64]:
        revert with 0, 'endTime smaller start'
    require ext_code.size(0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31)
    delegate 0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31.0xd4f10f10 with:
         gas gas_remaining wei
        args 1, ext_call.return_data[64], ext_call.return_data[96]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require state <= 5
    if state != 2:
        require state <= 5
        if state != 1:
            revert with 0, 'state'
    require ext_code.size(0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31)
    delegate 0xa21ab3d1e65cf0250a5cf672f2271de8c9e41e31.0x1d8c3c45 with:
         gas gas_remaining wei
        args 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'not ended'
    state = 3
    require ext_code.size(address(sub_400c2fe2Address))
    if tokensRaised < goal:
        call address(sub_400c2fe2Address).enableRefunds() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        state = 4
    else:
        call address(sub_400c2fe2Address).close() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(sub_400c2fe2Address))
        call address(sub_400c2fe2Address).beneficiaryWithdraw() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        state = 5
    emit Finalized()
}



}

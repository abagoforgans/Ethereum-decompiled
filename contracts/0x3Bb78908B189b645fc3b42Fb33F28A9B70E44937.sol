contract main {




// =====================  Runtime code  =====================


uint256 stor0;
mapping of uint8 stor1;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function isMaster(address arg1) {
    require arg1
    return bool(stor1[address(arg1)])
}

function token() {
    return tokenAddress
}

function setWallet(address arg1) {
    require msg.sender
    require stor1[address(msg.sender)]
    walletAddress = arg1
    emit SetWallet(arg1);
}

function renounceMaster() {
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit MasterRemoved(msg.sender);
}

function addMaster(address arg1) {
    require msg.sender
    require stor1[address(msg.sender)]
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit MasterAdded(arg1);
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3) {
    require msg.sender
    require stor1[address(msg.sender)]
    call arg1 with:
       value arg2 wei
         gas gas_remaining - 34710 wei
        args arg3[all]
    if arg2 > 0:
        emit Withdraw(arg2, arg1);
}

function sub_f5e1d3f3(?) {
    require msg.sender
    require stor1[address(msg.sender)]
    rate = arg1
    mem[(32 * arg2.length) + (32 * arg3.length) + 352 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + (32 * arg3.length) + 352] = arg3.length
    mem[(64 * arg2.length) + (32 * arg3.length) + 384 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    emit 0xefcbc89f: arg1, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + (32 * arg3.length) + floor32(arg2.length) + 352 len (32 * arg2.length) + (32 * arg3.length) + -floor32(arg2.length) + 32]), (32 * arg2.length) + 192, arg4, arg5
}

function _fallback() payable {
    stor0++
    require msg.sender
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value * rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0xb748e6fe: msg.value, msg.value * rate, msg.sender, msg.sender, 0
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor0 == stor0
}

function buyTokens(address arg1, bytes32 arg2) payable {
    stor0++
    require arg1
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), msg.value * rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0xb748e6fe: msg.value, msg.value * rate, msg.sender, arg1, arg2
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor0 == stor0
}



}

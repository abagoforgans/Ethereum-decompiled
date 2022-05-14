contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
address whitelistAddress;
uint256 investorCap;
uint256 currentInvestors;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function currentInvestors() {
    return currentInvestors
}

function version() {
    return version[0 len version.length]
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function whitelist() {
    return whitelistAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function investorCap() {
    return investorCap
}

function getWhitelist() {
    return whitelistAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function destroy(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _15 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + 132] = owner
        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
        require ext_code.size(address(_15))
        call address(_15).0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = ext_call.return_data[0]
        s = _15
        idx = idx + 1
        continue 
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_061ed84d(?) {
    return (investorCap - currentInvestors)
}

function sub_05487939(?) {
    require msg.sender == owner
    decimals = arg1
    return 1
}

function changeWhitelist(address arg1) {
    require msg.sender == owner
    require arg1
    whitelistAddress = arg1
    return 1
}

function changeName(string arg1) {
    require msg.sender == owner
    name[] = Array(len=arg1.length, data=arg1[all])
    return 1
}

function sub_ecc04ec8(?) {
    require msg.sender == owner
    require arg1 >= currentInvestors
    investorCap = arg1
    return 1
}

function changeSymbol(string arg1) {
    require msg.sender == owner
    symbol[] = Array(len=arg1.length, data=arg1[all])
    return 1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require ext_code.size(whitelistAddress)
    call whitelistAddress.0x3af32abf with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not balanceOf[address(arg1)]:
        require currentInvestors < investorCap
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if not balanceOf[address(arg1)]:
        require currentInvestors + 1 >= currentInvestors
        currentInvestors++
    if not balanceOf[address(msg.sender)]:
        require 1 <= currentInvestors
        currentInvestors--
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
    require ext_code.size(whitelistAddress)
    call whitelistAddress.0x3af32abf with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not balanceOf[address(arg2)]:
        require currentInvestors < investorCap
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if not balanceOf[address(arg2)]:
        require currentInvestors + 1 >= currentInvestors
        currentInvestors++
    if not balanceOf[address(msg.sender)]:
        require 1 <= currentInvestors
        currentInvestors--
    return 1
}



}

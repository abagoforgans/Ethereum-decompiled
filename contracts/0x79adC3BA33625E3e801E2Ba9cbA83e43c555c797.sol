contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 version;
mapping of uint8 stor8;
mapping of uint8 stor9;
uint8 stor10;

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return totalSupply
}

function transferGrants(address arg1) {
    return bool(stor9[arg1])
}

function decimals() {
    return decimals
}

function version() {
    return version
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function transferable() {
    return bool(stor10)
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function enableTransfers() {
    require not stor10
    stor10 = 1
    emit TransfersEnabled()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function cancelTransferRight(address arg1) {
    require not stor10
    require stor9[address(arg1)]
    stor9[address(arg1)] = 0
    emit TransferRightCancelled(arg1);
}

function grantTransferRight(address arg1) {
    require not stor10
    require not stor9[address(arg1)]
    require arg1
    stor9[address(arg1)] = 1
    emit TransferRightGiven(arg1);
}

function approve(address arg1, uint256 arg2) {
    if not stor10:
        require stor9[msg.sender]
    allowance[msg.sender][address(arg1)] = arg2
    emit 0xef8c5be1: arg2, msg.sender, arg1
    return 1
}

function burn(uint256 arg1) {
    if not stor10:
        require stor9[msg.sender]
    require arg1 <= balanceOf[msg.sender]
    require arg1 <= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    if not stor10:
        require stor9[msg.sender]
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit 0xef8c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if not stor10:
        require stor9[msg.sender]
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit 0xef8c5be1: allowance[msg.sender][address(arg1)], msg.sender, arg1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not stor10:
        require stor9[msg.sender]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor10:
        require stor9[msg.sender]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    if not stor10:
        require stor9[msg.sender]
    allowance[msg.sender][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xef8c5be1: allowance[msg.sender][address(arg1)], msg.sender, arg1
    return 1
}

function initialize(address arg1) {
    version = 1
    require not stor8[1]
    uint8(name.length) = 24
    name.length.field_8 = 'Zipmex Token' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(symbol.length) = 6
    symbol.length.field_8 = 'ZMT' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    decimals = 18
    totalSupply = 10^10 * 10^18
    balanceOf[address(arg1)] = 10^10 * 10^18
    emit Transfer(10000000000 * 10^18, 0, arg1);
    stor9[address(arg1)] = 1
    owner = arg1
    stor8[stor7] = 1
}



}

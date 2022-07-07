contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address pauserAddress;
address sub_d9d07a39Address;
mapping of uint8 stor3;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address minterAddress;
uint256 totalSupply;
uint8 stor8;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 maxSupply;

function name() {
    return name[0 len name.length]
}

function minter() {
    return minterAddress
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function paused() {
    return bool(uint8(stor1.field_160))
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function pauser() {
    return pauserAddress
}

function maxSupply() {
    return maxSupply
}

function sub_d9d07a39(?) {
    return sub_d9d07a39Address
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function isBlackListed(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function pause() {
    require msg.sender == pauserAddress
    Mask(96, 0, stor1.field_160) = 1
    emit Paused(msg.sender);
}

function unPause() {
    require msg.sender == pauserAddress
    Mask(96, 0, stor1.field_160) = 0
    emit Unpaused(msg.sender);
}

function sub_df595e99(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    sub_d9d07a39Address = arg1
    emit 0xa279052a: arg1
}

function updatePauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    pauserAddress = arg1
    emit PauserChanged(arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_d40b0dd4(?) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_d9d07a39Address
    require arg1
    stor3[address(arg1)] = 0
    emit 0xdc140777: arg1
    return 1
}

function blackList(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_d9d07a39Address
    require arg1
    require arg1 != owner
    stor3[address(arg1)] = 1
    emit BlackList(arg1);
    return 1
}

function updateMinter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if uint8(stor1.field_160):
        revert with 0, 'It's paused'
    require arg1
    minterAddress = arg1
    emit MinterChanged(arg1);
}

function _fallback() payable {
    if msg.value > 0:
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if uint8(stor1.field_160):
        revert with 0, 'It's paused'
    require not stor3[address(msg.sender)]
    require not stor3[address(arg1)]
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == minterAddress
    if uint8(stor1.field_160):
        revert with 0, 'It's paused'
    require not stor3[address(msg.sender)]
    require msg.sender
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == minterAddress
    require not stor3[address(msg.sender)]
    require totalSupply + arg1 >= totalSupply
    require totalSupply + arg1 <= maxSupply
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
    require balanceOf[stor0] + arg1 >= balanceOf[stor0]
    balanceOf[stor0] += arg1
    emit Transfer(arg1, 0, owner);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if uint8(stor1.field_160):
        revert with 0, 'It's paused'
    require not stor3[address(msg.sender)]
    require not stor3[address(arg1)]
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if uint8(stor1.field_160):
        revert with 0, 'It's paused'
    require not stor3[address(msg.sender)]
    require not stor3[address(arg1)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if uint8(stor1.field_160):
        revert with 0, 'It's paused'
    require not stor3[address(msg.sender)]
    require not stor3[address(arg1)]
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if uint8(stor1.field_160):
        revert with 0, 'It's paused'
    require not stor3[address(msg.sender)]
    require not stor3[address(arg1)]
    require not stor3[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_f8f5faa2(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    require not stor8
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    decimals = arg3
    require msg.sender == minterAddress
    require not stor3[address(msg.sender)]
    require totalSupply + arg4 >= totalSupply
    require totalSupply + arg4 <= maxSupply
    require totalSupply + arg4 >= totalSupply
    totalSupply += arg4
    require balanceOf[stor0] + arg4 >= balanceOf[stor0]
    balanceOf[stor0] += arg4
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg4
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                  mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)],
                  0,
                  owner,
    stor8 = 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 1
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), 
           mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
}



}

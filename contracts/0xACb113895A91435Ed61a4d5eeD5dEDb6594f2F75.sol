contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowed;
uint8 stor6; offset 160
uint128 stor6; offset 160
address owner;
mapping of uint8 stor7;
uint256 received;
mapping of uint8 stor9;
mapping of uint256 userLocked;
array of uint256 sub_f2d3d8aa;
mapping of uint256 sub_5c8706ed;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function sub_5c8706ed(?) {
    return sub_5c8706ed[arg1]
}

function paused() {
    return bool(uint8(stor6.field_160))
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function received() {
    return received
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor9[arg1])
}

function userLocked(address arg1) {
    return userLocked[arg1]
}

function disabled(uint256 arg1) {
    return bool(stor7[arg1])
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function sub_f2d3d8aa(?) {
    return sub_f2d3d8aa[arg1][0 len sub_f2d3d8aa[arg1].length]
}

function pause() {
    Mask(96, 0, stor6.field_160) = 1
    emit Pause()
}

function unpause() {
    Mask(96, 0, stor6.field_160) = 0
    emit Unpause()
}

function enable(uint256 arg1) {
    stor7[arg1] = 0
    emit 0x91e1920b: arg1
}

function disable(uint256 arg1) {
    stor7[arg1] = 1
    emit 0x4833c23a: arg1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, '6101'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function freezeAccount(address arg1, bool arg2) {
    if stor7[6]:
        revert with 0, '6103'
    if owner != msg.sender:
        revert with 0, '6101'
    if uint8(stor6.field_160):
        revert with 0, '6102'
    stor9[address(arg1)] = uint8(arg2)
    emit FrozenAccount(arg2, arg1);
}

function register(string arg1) {
    if stor7[18]:
        revert with 0, '6103'
    if arg1.length <= 0:
        revert with 0, '5101'
    if arg1.length > 64:
        revert with 0, '5101'
    sub_f2d3d8aa[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
    emit Register(Array(len=arg1.length, data=arg1[all]), msg.sender);
}

function buy() payable {
    if stor7[10]:
        revert with 0, '6103'
    if uint8(stor6.field_160):
        revert with 0, '6102'
    if stor9[address(msg.sender)]:
        revert with 0, '2103'
    if msg.value <= 0:
        revert with 0, '3102'
    require received + msg.value >= received
    received += msg.value
    emit Buy(msg.value, msg.sender);
}

function approve(address arg1, uint256 arg2) {
    if stor7[3]:
        revert with 0, '6103'
    if uint8(stor6.field_160):
        revert with 0, '6102'
    if stor9[address(msg.sender)]:
        revert with 0, '2110'
    if arg1 == msg.sender:
        revert with 0, '2108'
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    if stor7[17]:
        revert with 0, '6103'
    if stor7[10]:
        revert with 0, '6103'
    if uint8(stor6.field_160):
        revert with 0, '6102'
    if stor9[address(msg.sender)]:
        revert with 0, '2103'
    if msg.value <= 0:
        revert with 0, '3102'
    require received + msg.value >= received
    received += msg.value
    emit Buy(msg.value, msg.sender);
}

function mint(uint256 arg1) {
    if stor7[8]:
        revert with 0, '6103'
    if owner != msg.sender:
        revert with 0, '6101'
    if arg1 <= 0:
        revert with 0, '1106'
    require balances[address(this.address)] + arg1 >= balances[address(this.address)]
    balances[address(this.address)] += arg1
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
    emit Mint(arg1, msg.sender);
}

function burn(uint256 arg1) {
    if stor7[9]:
        revert with 0, '6103'
    if owner != msg.sender:
        revert with 0, '6101'
    if arg1 <= 0:
        revert with 0, '1106'
    if arg1 > balances[address(this.address)]:
        revert with 0, '1107'
    require arg1 <= balances[address(this.address)]
    balances[address(this.address)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function collect(uint256 arg1) {
    if stor7[19]:
        revert with 0, '6103'
    if owner != msg.sender:
        revert with 0, '6101'
    if arg1 <= 0:
        revert with 0, '1103'
    if arg1 > eth.balance(this.address):
        revert with 0, '1104'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Collect(arg1, msg.sender);
}

function sub_ae5dab99(?) {
    if stor7[12]:
        revert with 0, '6103'
    if owner != msg.sender:
        revert with 0, '6101'
    if uint8(stor6.field_160):
        revert with 0, '6102'
    if arg2 <= 0:
        revert with 0, '1106'
    if arg1 == msg.sender:
        revert with 0, '2108'
    require sub_5c8706ed[address(arg1)] + arg2 >= sub_5c8706ed[address(arg1)]
    sub_5c8706ed[address(arg1)] += arg2
    emit 0xeb064ca8: sub_5c8706ed[address(arg1)], msg.sender, arg1
}

function sub_b9b15ead(?) {
    if stor7[13]:
        revert with 0, '6103'
    if owner != msg.sender:
        revert with 0, '6101'
    if uint8(stor6.field_160):
        revert with 0, '6102'
    if arg2 <= 0:
        revert with 0, '1106'
    if arg2 > sub_5c8706ed[address(arg1)]:
        revert with 0, '1107'
    if arg1 == msg.sender:
        revert with 0, '2108'
    require arg2 <= sub_5c8706ed[address(arg1)]
    sub_5c8706ed[address(arg1)] -= arg2
    emit 0xeb064ca8: sub_5c8706ed[address(arg1)], msg.sender, arg1
}

function unlock(address arg1, uint256 arg2) {
    if stor7[15]:
        revert with 0, '6103'
    if owner != msg.sender:
        revert with 0, '6101'
    if uint8(stor6.field_160):
        revert with 0, '6102'
    if arg2 <= 0:
        revert with 0, '1106'
    if arg2 > userLocked[address(arg1)]:
        revert with 0, '1107'
    require arg2 <= userLocked[address(arg1)]
    userLocked[address(arg1)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Unlock(arg2, arg1);
}

function increaseApproval(address arg1, uint256 arg2) {
    if stor7[4]:
        revert with 0, '6103'
    if uint8(stor6.field_160):
        revert with 0, '6102'
    if stor9[address(msg.sender)]:
        revert with 0, '2103'
    if arg2 <= 0:
        revert with 0, '1106'
    if arg1 == msg.sender:
        revert with 0, '2108'
    require allowed[address(msg.sender)][address(arg1)] + arg2 >= allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
}

function distribute(uint256 arg1) {
    if stor7[11]:
        revert with 0, '6103'
    if owner != msg.sender:
        revert with 0, '6101'
    if uint8(stor6.field_160):
        revert with 0, '6102'
    if arg1 <= 0:
        revert with 0, '1106'
    if arg1 > balances[address(this.address)]:
        revert with 0, '1107'
    require arg1 <= balances[address(this.address)]
    balances[address(this.address)] -= arg1
    require balances[address(msg.sender)] + arg1 >= balances[address(msg.sender)]
    balances[address(msg.sender)] += arg1
    emit Distribute(arg1, msg.sender);
}

function decreaseApproval(address arg1, uint256 arg2) {
    if stor7[5]:
        revert with 0, '6103'
    if uint8(stor6.field_160):
        revert with 0, '6102'
    if stor9[address(msg.sender)]:
        revert with 0, '2103'
    if arg2 <= 0:
        revert with 0, '1106'
    if arg2 > allowed[address(msg.sender)][address(arg1)]:
        revert with 0, '1107'
    if arg1 == msg.sender:
        revert with 0, '2108'
    require arg2 <= allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    if stor7[1]:
        revert with 0, '6103'
    if uint8(stor6.field_160):
        revert with 0, '6102'
    if stor9[address(msg.sender)]:
        revert with 0, '2103'
    if stor9[address(arg1)]:
        revert with 0, '2104'
    if not arg1:
        revert with 0, '2101'
    if ext_code.size(arg1) > 0:
        revert with 0, '2102'
    if arg1 == msg.sender:
        revert with 0, '2107'
    if arg2 > balances[address(msg.sender)]:
        revert with 0, '1101'
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_6fc3a4bc(?) {
    if stor7[14]:
        revert with 0, '6103'
    if uint8(stor6.field_160):
        revert with 0, '6102'
    if stor9[address(msg.sender)]:
        revert with 0, '2109'
    if stor9[address(arg1)]:
        revert with 0, '2103'
    if stor9[address(arg2)]:
        revert with 0, '2104'
    if arg3 > sub_5c8706ed[address(msg.sender)]:
        revert with 0, '1102'
    if sub_5c8706ed[address(msg.sender)] <= 0:
        revert with 0, '1102'
    if not arg2:
        revert with 0, '2101'
    if ext_code.size(arg2) > 0:
        revert with 0, '2102'
    if arg1 == arg2:
        revert with 0, '2107'
    if arg1 == msg.sender:
        revert with 0, '2108'
    if arg3 > balances[address(arg1)]:
        revert with 0, '1101'
    require arg3 <= sub_5c8706ed[address(msg.sender)]
    sub_5c8706ed[address(msg.sender)] -= arg3
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require userLocked[address(arg2)] + arg3 >= userLocked[address(arg2)]
    userLocked[address(arg2)] += arg3
    emit 0x5cbabb74: arg3, msg.sender, arg1, arg2
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if stor7[2]:
        revert with 0, '6103'
    if uint8(stor6.field_160):
        revert with 0, '6102'
    if stor9[address(msg.sender)]:
        revert with 0, '2109'
    if stor9[address(arg1)]:
        revert with 0, '2103'
    if stor9[address(arg2)]:
        revert with 0, '2104'
    if not arg2:
        revert with 0, '2101'
    if ext_code.size(arg2) > 0:
        revert with 0, '2102'
    if arg1 == arg2:
        revert with 0, '2107'
    if arg1 == msg.sender:
        revert with 0, '2108'
    if arg3 > allowed[address(arg1)][address(msg.sender)]:
        revert with 0, '1102'
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg3
    if arg3 > balances[address(arg1)]:
        revert with 0, '1101'
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit TransferFrom(arg3, msg.sender, arg1, arg2);
    return 1
}



}

contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_30095f0b(?)
#  - lockedUpBalanceOf(address arg1)
#  - sub_84276d50(?)
#  - transfer(address arg1, uint256 arg2)
#
const sub_2fca23ac(?) = 7

const sub_31981551(?) = (433152 * 24 * 3600)

const UNLOCK_PERIOD = (720 * 24 * 3600)


mapping of uint256 allowance;
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 resellingBalanceOf;
uint256 stor9;
mapping of struct sub_38e3de49;
mapping of struct stor11;
mapping of struct sub_e85f2a1a;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_38e3de49(?) {
    require calldata.size - 4 >= 32
    mem[448] = sub_38e3de49[address(arg1)][1].field_0
    idx = 448
    s = 0
    while sub_38e3de49[address(arg1)][1].length + 416 > idx:
        mem[idx + 32] = sub_38e3de49[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_38e3de49[address(arg1)][1].length, data=mem[448 len sub_38e3de49[address(arg1)][1].length]), 
           sub_38e3de49[address(arg1)].field_512,
           sub_38e3de49[address(arg1)].field_768,
           bool(sub_38e3de49[address(arg1)].field_1024)
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function resellingBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return resellingBalanceOf[address(arg1)]
}

function sub_e85f2a1a(?) {
    require calldata.size - 4 >= 32
    return bool(sub_e85f2a1a[address(arg1)].field_0), sub_e85f2a1a[address(arg1)].field_256, sub_e85f2a1a[address(arg1)].field_512
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

function sub_74e31d08(?) {
    require sub_e85f2a1a[address(msg.sender)].field_0
    sub_e85f2a1a[address(msg.sender)].field_0 = 0
    emit 0x1715177e: msg.sender
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require stor11[address(arg1)].field_0 + stor11[address(arg1)].field_256 >= stor11[address(arg1)].field_0
    return (stor11[address(arg1)].field_0 + stor11[address(arg1)].field_256)
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= stor11[address(msg.sender)].field_0
    require arg1 <= stor11[address(msg.sender)].field_0
    stor11[address(msg.sender)].field_0 -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function addResellingAmount(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1
    require arg2 > 0
    require stor11[address(arg1)].field_0 >= arg2
    require resellingBalanceOf[address(arg1)] + arg2 >= resellingBalanceOf[address(arg1)]
    resellingBalanceOf[address(arg1)] += arg2
    require arg2 <= stor11[address(arg1)].field_0
    stor11[address(arg1)].field_0 -= arg2
    require stor9 + arg2 >= stor9
    stor9 += arg2
    emit ResellingAdded(arg2, arg1);
}

function subtractResellingAmount(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1
    require arg2 > 0
    require resellingBalanceOf[address(arg1)] >= arg2
    require arg2 <= resellingBalanceOf[address(arg1)]
    resellingBalanceOf[address(arg1)] -= arg2
    require arg2 <= stor9
    stor9 -= arg2
    require stor11[address(arg1)].field_0 + arg2 >= stor11[address(arg1)].field_0
    stor11[address(arg1)].field_0 += arg2
    emit ResellingSubtracted(arg2, arg1);
}

function sub_8f752de7(?) {
    require calldata.size - 4 >= 64
    require not sub_e85f2a1a[address(msg.sender)].field_0
    require stor11[address(msg.sender)].field_0 + stor11[address(msg.sender)].field_256 >= stor11[address(msg.sender)].field_0
    sub_e85f2a1a[address(msg.sender)].field_0 = 1
    sub_e85f2a1a[address(msg.sender)].field_256 = stor11[address(msg.sender)].field_0 + stor11[address(msg.sender)].field_256
    sub_e85f2a1a[address(msg.sender)].field_512 = arg1
    sub_e85f2a1a[address(msg.sender)].field_768 = arg2
    emit 0x4c7e7010: stor11[address(msg.sender)].field_0 + stor11[address(msg.sender)].field_256, arg1, msg.sender
}

function addAddressToLockerList(address arg1, string arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    require not sub_38e3de49[address(arg1)].field_0
    sub_38e3de49[address(arg1)].field_0 = 1
    sub_38e3de49[address(arg1)][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_38e3de49[address(arg1)].field_512 = arg3
    sub_38e3de49[address(arg1)].field_768 = arg4
    sub_38e3de49[address(arg1)].field_1024 = 0
    emit 0xa6d9befa: Array(len=arg2.length, data=arg2[all]), arg3, arg4, arg1
}

function sub_92251791(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not sub_38e3de49[address(arg1)].field_0
    sub_38e3de49[address(arg1)].field_0 = 1
    sub_38e3de49[address(arg1)].field_256 = 0
    sub_38e3de49[address(arg1)].field_257 = 8
    sub_38e3de49[address(arg1)].field_264 = 'Reseller' / 256
    idx = 0
    while sub_38e3de49[address(arg1)][1].length + 31 / 32 > idx:
        sub_38e3de49[address(arg1)][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    sub_38e3de49[address(arg1)].field_512 = -block.timestamp + (433152 * 24 * 3600)
    sub_38e3de49[address(arg1)].field_768 = 7
    sub_38e3de49[address(arg1)].field_1024 = 1
    emit 0xfdee36cb: arg1
}

function transferWithLockUp(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    require arg2 <= stor11[stor3].field_0
    require arg1
    require arg2 <= stor11[stor3].field_0
    stor11[stor3].field_0 -= arg2
    stor11[address(arg1)].field_256 += arg2
    stor11[address(arg1)][2][stor11[address(arg1)].field_768].field_0 = arg2
    stor11[address(arg1)][2][stor11[address(arg1)].field_768].field_256 = block.timestamp + arg3
    stor11[address(arg1)][2][stor11[address(arg1)].field_768].field_512 = 0
    stor11[address(arg1)][2][stor11[address(arg1)].field_768].field_768 = arg4
    stor11[address(arg1)].field_768++
    emit TokenLocked(arg2, arg1);
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function cancelReselling(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    require resellingBalanceOf[address(arg1)] > 0
    require msg.sender == owner
    require arg1
    require resellingBalanceOf[address(arg1)] > 0
    require resellingBalanceOf[address(arg1)] >= resellingBalanceOf[address(arg1)]
    require resellingBalanceOf[address(arg1)] <= resellingBalanceOf[address(arg1)]
    resellingBalanceOf[address(arg1)] = 0
    require resellingBalanceOf[address(arg1)] <= stor9
    stor9 -= resellingBalanceOf[address(arg1)]
    require stor11[address(arg1)].field_0 + resellingBalanceOf[address(arg1)] >= stor11[address(arg1)].field_0
    stor11[address(arg1)].field_0 += resellingBalanceOf[address(arg1)]
    emit ResellingSubtracted(resellingBalanceOf[address(arg1)], arg1);
}

function resell(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require arg1
    require arg2
    require arg3 > 0
    require resellingBalanceOf[address(arg1)] >= arg3
    require stor11[stor3].field_0 >= arg3
    require arg3 <= resellingBalanceOf[address(arg1)]
    resellingBalanceOf[address(arg1)] -= arg3
    require arg3 <= stor9
    stor9 -= arg3
    stor11[address(arg2)].field_256 += arg3
    stor11[address(arg2)][2][stor11[address(arg2)].field_768].field_0 = arg3
    stor11[address(arg2)][2][stor11[address(arg2)].field_768].field_256 = 433152 * 24 * 3600
    stor11[address(arg2)][2][stor11[address(arg2)].field_768].field_512 = 0
    stor11[address(arg2)][2][stor11[address(arg2)].field_768].field_768 = 7
    stor11[address(arg2)].field_768++
    emit TokenLocked(arg3, arg2);
    emit Reselled(arg3, arg1, arg2);
    return 1
}



}

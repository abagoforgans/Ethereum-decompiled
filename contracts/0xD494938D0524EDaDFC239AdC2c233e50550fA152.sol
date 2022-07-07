contract main {




// =====================  Runtime code  =====================


#
#  - depositToken(address arg1, uint256 arg2)
#  - addToken(uint256 arg1, address arg2)
#  - addUser(uint256 arg1, address arg2)
#  - removeToken(address arg1)
#  - removeUser(address arg1)
#  - withdrawToken(address arg1, uint256 arg2)
#  - migrateByAdmin(bytes arg1)
#  - updateUserRank(address arg1, uint256 arg2)
#  - settle(bytes arg1)
#  - deposit()
#  - changeProcessTime(uint256 arg1)
#  - lock()
#
address owner;
mapping of uint8 stor1;
uint256 stor2;
uint256 stor3;
uint256 processTime;
mapping of uint256 balances;
mapping of uint256 orderFills;
mapping of address userID_;
mapping of address tokenID_;
mapping of uint256 userRanks;
mapping of uint256 tokenRanks;
mapping of uint256 lockTimes;
address stor3B2F;
uint256 stor3B2F;
uint128 stor9021; offset 160
address stor9021;
uint256 stor9021;
uint256 storE89D;

function tokenRanks(address arg1) {
    require calldata.size - 4 >= 32
    return tokenRanks[arg1]
}

function userRanks(address arg1) {
    require calldata.size - 4 >= 32
    return userRanks[arg1]
}

function lockTimes(address arg1) {
    require calldata.size - 4 >= 32
    return lockTimes[arg1]
}

function userID_Address(uint256 arg1) {
    require calldata.size - 4 >= 32
    return userID_[arg1]
}

function owner() {
    return owner
}

function isAdmin() {
    return bool(stor1[msg.sender])
}

function balances(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return balances[arg1][arg2]
}

function processTime() {
    return processTime
}

function tokenID_Address(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tokenID_[arg1]
}

function orderFills(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return orderFills[arg1]
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

function unlock() {
    mem[132 len 0] = None
    delegate address(stor3B2F).mem[132 len 4] with:
         gas gas_remaining wei
        args 
    require delegate.return_code
}

function setAdminLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if stor3 == arg1:
        revert with 0, 'same limit'
    stor3 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    delegate address(stor3B2F).0x2e1a7d4d with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) >> 32, mem[196 len 4]
    require delegate.return_code
}

function forceDeactivateAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not stor1[address(arg1)]:
        revert with 0, 'not admin'
    stor1[address(arg1)] = 0
    require 1 <= stor2
    stor2--
    emit Deactivated(arg1);
}

function updateTokenRank(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    delegate address(stor3B2F).0x0 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    require delegate.return_code
}

function deactivateAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if stor2 <= 1:
        revert with 0, 'admin should > 1'
    if not stor1[address(arg1)]:
        revert with 0, 'not admin'
    stor1[address(arg1)] = 0
    require 1 <= stor2
    stor2--
    emit Deactivated(arg1);
}

function activateAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        revert with 0, 'invalid address'
    if stor2 >= stor3:
        revert with 0, 'too many admins existed'
    if stor1[address(arg1)]:
        revert with 0, 'already admin'
    stor1[address(arg1)] = 1
    require stor2 + 1 >= stor2
    stor2++
    emit Activated(arg1);
}

function sub_056f9d6d(?) {
    require msg.sender == owner
    require block.timestamp >= storE89D
    if not ext_code.size(address(stor9021.field_0)):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0xfe496d706c656d656e746174696f6e20616464726573732073686f756c64206265206120636f6e747261637420616464726573,
                    mem[215 len 13]
    uint256(stor3B2F) = uint256(stor9021.field_0)
    emit Upgraded(address(stor9021.field_0));
}

function register(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0xfe496d706c656d656e746174696f6e20616464726573732073686f756c64206265206120636f6e747261637420616464726573,
                    mem[215 len 13]
    address(stor9021.field_0) = arg1
    Mask(96, 0, stor9021.field_160) = 0
    storE89D = block.timestamp + (336 * 24 * 3600)
    emit 0xb923610c: storE89D, arg1
}

function upgrade(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == address(stor9021.field_0)
    require msg.sender == owner
    require block.timestamp >= storE89D
    if not ext_code.size(address(stor9021.field_0)):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0xfe496d706c656d656e746174696f6e20616464726573732073686f756c64206265206120636f6e747261637420616464726573,
                    mem[215 len 13]
    uint256(stor3B2F) = uint256(stor9021.field_0)
    emit Upgraded(address(stor9021.field_0));
}

function withdrawByAdmin(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if not stor1[msg.sender]:
        revert with 0, 'sender not admin'
    mem[164] = arg1.length
    mem[196 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 196 len floor32(ceil32(arg1.length) + 68)] = unknown_0x14e0c71f(?????), 0, 0, mem[164 len floor32(ceil32(arg1.length) + 68) - 36]
    delegate address(stor3B2F) with:
       funct (Mask(32, -(8 * ceil32(arg1.length) + -arg1.length + 4) + 256, 0) >> -(8 * ceil32(arg1.length) + -arg1.length + 4) + 256)
         gas gas_remaining wei
        args Mask(8 * floor32(ceil32(arg1.length) + 68) - 4, -(8 * floor32(ceil32(arg1.length) + 68)) + 256, mem[164 len floor32(ceil32(arg1.length) + 68) - 36]) << (8 * floor32(ceil32(arg1.length) + 68)) - 256, mem[ceil32(arg1.length) + floor32(ceil32(arg1.length) + 68) + 196 len ceil32(arg1.length) + -floor32(ceil32(arg1.length) + 68) + 68]
    if not return_data.size:
        require delegate.return_code
        if not ceil32(arg1.length) + 68:
        require ceil32(arg1.length) + 68 >= 32
        if not Mask(8, 248, unknown_0x14e0c71f(?????), 0):
    else:
        mem[ceil32(arg1.length) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require delegate.return_code
        if not return_data.size:
        require return_data.size >= 32
        if not Mask(8, 248, mem[ceil32(arg1.length) + 228]):
    revert with 0, 32, 4, uint32(0, Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256, 0, 0)
}



}

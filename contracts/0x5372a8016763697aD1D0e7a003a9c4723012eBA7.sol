contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint8 stor2;
address sub_722d8ff0Address; offset 8
address sub_1fa4e703Address;
address sub_3b8d7c15Address;
array of uint256 name;
mapping of struct rooms;
mapping of struct rounds;
array of address sub_7ea1fb16;
uint256 sub_09742647;
address developmentAddress;

function name() {
    return name[0 len name.length]
}

function sub_09742647(?) {
    return sub_09742647
}

function rooms(uint256 arg1) {
    require calldata.size - 4 >= 32
    return rooms[arg1].field_0, 
           rooms[arg1].field_256,
           rooms[arg1].field_512,
           rooms[arg1].field_768,
           rooms[arg1].field_800,
           rooms[arg1].field_768,
           rooms[arg1].field_768,
           rooms[arg1].field_768,
           rooms[arg1].field_832
}

function sub_1fa4e703(?) {
    return sub_1fa4e703Address
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'Invalid address.'
    return bool(stor1[address(arg1)])
}

function sub_3b8d7c15(?) {
    return sub_3b8d7c15Address
}

function paused() {
    return bool(stor2)
}

function sub_722d8ff0(?) {
    return sub_722d8ff0Address
}

function development() {
    return developmentAddress
}

function sub_7ea1fb16(?) {
    require calldata.size - 4 >= 96
    require arg3 < uint256(sub_7ea1fb16[arg1][arg2])
    return address(sub_7ea1fb16[arg1][arg2][arg3])
}

function owner() {
    return owner
}

function rounds(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return rounds[arg1][arg2].field_0, rounds[arg1][arg2].field_0, rounds[arg1][arg2].field_256, rounds[arg1][arg2].field_512
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_5cd64ac6(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    sub_1fa4e703Address = arg1
}

function sub_a2aec85c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    sub_722d8ff0Address = arg1
}

function sub_be9085c2(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    sub_3b8d7c15Address = arg1
}

function setDevelopment(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    developmentAddress = arg1
}

function pause() {
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    if stor2:
        revert with 0, 'The contract is not paused.'
    stor2 = 1
    emit Paused(msg.sender);
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    owner = 0
    emit OwnershipTransferred(address arg1, address arg2)
    emit 0x0 
    emit 0x0 
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    if not stor2:
        revert with 0, 'The contract is paused.'
    stor2 = 0
    emit Unpaused(msg.sender);
}

function renounceWhitelisted() {
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor1[address(msg.sender)]:
        revert with 0, 'The role does not exist.'
    stor1[address(msg.sender)] = 0
    emit WhitelistedRemoved(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    if not arg1:
        revert with 0, 'Invalid address.'
    owner = arg1
    emit OwnershipTransferred(arg1, arg1);
}

function addWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    if not arg1:
        revert with 0, 'Invalid address.'
    if stor1[address(arg1)]:
        revert with 0, 'The role already exist.'
    stor1[address(arg1)] = 1
    emit WhitelistedAdded(arg1);
}

function removeWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    if not arg1:
        revert with 0, 'Invalid address.'
    if not stor1[address(arg1)]:
        revert with 0, 'The role does not exist.'
    stor1[address(arg1)] = 0
    emit WhitelistedRemoved(arg1);
}

function sub_226964fb(?) {
    require calldata.size - 4 >= 256
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    if uint8(arg8 + arg7 + arg6 + arg5 + arg4) > 100:
        revert with 0, 'Parameters error.'
    if sub_09742647 + 1 < sub_09742647:
        revert with 0, 'SafeMath add failed.'
    sub_09742647++
    if arg3 <= 0:
        revert with 0, 'SafeMath div failed.'
    require arg3
    rooms[stor9].field_0 = arg1
    rooms[stor9].field_256 = arg2
    rooms[stor9].field_512 = arg2 / arg3
    rooms[stor9].field_768 = arg3
    rooms[stor9].field_800 = arg4
    rooms[stor9].field_808 = arg5
    rooms[stor9].field_816 = arg6
    rooms[stor9].field_824 = arg7
    rooms[stor9].field_832 = arg8
    rounds[stor9][arg1].field_0 = arg3
    rounds[stor9][arg1].field_32 = 0
    rounds[stor9][arg1].field_256 = 0
    rounds[stor9][arg1].field_256 = 0
    rounds[stor9][arg1].field_512 = 0
    rounds[stor9][arg1].field_512 = 0
    rounds[stor9][arg1].field_768 = 0
    emit 0x7e5a9d32: arg1, arg2, arg2 / arg3, sub_09742647
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if stor2:
        revert with 0, 'The contract is not paused.'
    _2 = mem[128]
    if rooms[mem[128]].field_512 <= 0:
        revert with 0, 'SafeMath div failed.'
    require rooms[mem[128]].field_512
    if arg2 / rooms[mem[128]].field_512 > rooms[mem[128]].field_768:
        revert with 0, 'Insufficient shares.'
    if rooms[mem[128]].field_832 <= 0:
        revert with 0, 'SafeMath div failed.'
    require rooms[mem[128]].field_832
    mem[64] = ceil32(arg4.length) + 736
    require ext_code.size(sub_722d8ff0Address)
    call sub_722d8ff0Address.0xcae9ca51 with:
         gas gas_remaining wei
        args developmentAddress, arg2 / rooms[mem[128]].field_832, 96, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if rooms[mem[128]].field_768 <= 0:
        revert with 0, 'SafeMath div failed.'
    require rooms[mem[128]].field_768
    require ext_code.size(sub_722d8ff0Address)
    call sub_722d8ff0Address.0xa9059cbb with:
         gas gas_remaining wei
        args sub_3b8d7c15Address, arg2 / rooms[mem[128]].field_824
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3b8d7c15Address)
    staticcall sub_3b8d7c15Address.userIds(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        idx = arg2 / rooms[mem[128]].field_512
        while idx >= 1:
            uint256(sub_7ea1fb16[_2][stor6[_2].field_0])++
            address(sub_7ea1fb16[_2][stor6[_2].field_0][uint256(sub_7ea1fb16[_2][stor6[_2].field_0])]) = arg1
            mem[0] = rooms[_2].field_0
            mem[32] = sha3(_2, 7)
            rounds[_2][stor6[_2].field_0].field_0 = uint32(rounds[_2][stor6[_2].field_0].field_0 - 1)
            if not uint32(rounds[_2][stor6[_2].field_0].field_0 - 1):
                if 1 > block.number:
                    revert with 0, 'SafeMath sub failed.'
                if 10 > block.number:
                    revert with 0, 'SafeMath sub failed.'
                if not rooms[_2].field_768:
                    revert with 0, 'SafeMath mod failed.'
                require block.hash(block.number - 10) xor block.hash(block.number - 1) % rooms[_2].field_768 < uint256(sub_7ea1fb16[_2][stor6[_2].field_0])
                rounds[_2][stor6[_2].field_0].field_32 = address(sub_7ea1fb16[_2][stor6[_2].field_0][block.hash(block.number - 10) xor block.hash(block.number - 1) % stor6[_2].field_768])
                if 2 > block.number:
                    revert with 0, 'SafeMath sub failed.'
                if 20 > block.number:
                    revert with 0, 'SafeMath sub failed.'
                if not rooms[_2].field_768:
                    revert with 0, 'SafeMath mod failed.'
                require block.hash(block.number - 20) xor block.hash(block.number - 2) % rooms[_2].field_768 < uint256(sub_7ea1fb16[_2][stor6[_2].field_0])
                rounds[_2][stor6[_2].field_0].field_256 = address(sub_7ea1fb16[_2][stor6[_2].field_0][block.hash(block.number - 20) xor block.hash(block.number - 2) % stor6[_2].field_768])
                if 3 > block.number:
                    revert with 0, 'SafeMath sub failed.'
                if 30 > block.number:
                    revert with 0, 'SafeMath sub failed.'
                if not rooms[_2].field_768:
                    revert with 0, 'SafeMath mod failed.'
                mem[32] = sha3(_2, 8)
                require block.hash(block.number - 30) xor block.hash(block.number - 3) % rooms[_2].field_768 < uint256(sub_7ea1fb16[_2][stor6[_2].field_0])
                mem[0] = sha3(rooms[_2].field_0, sha3(_2, 8))
                rounds[_2][stor6[_2].field_0].field_512 = address(sub_7ea1fb16[_2][stor6[_2].field_0][block.hash(block.number - 30) xor block.hash(block.number - 3) % stor6[_2].field_768])
                if rooms[_2].field_800 <= 0:
                    revert with 0, 'SafeMath div failed.'
                require rooms[_2].field_800
                require ext_code.size(sub_722d8ff0Address)
                call sub_722d8ff0Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args rounds[_2][stor6[_2].field_0].field_0, rooms[_2].field_256 / rooms[_2].field_800
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if rooms[_2].field_808 <= 0:
                    revert with 0, 'SafeMath div failed.'
                require rooms[_2].field_808
                require ext_code.size(sub_722d8ff0Address)
                call sub_722d8ff0Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args rounds[_2][stor6[_2].field_0].field_256, rooms[_2].field_256 / rooms[_2].field_808
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if rooms[_2].field_816 <= 0:
                    revert with 0, 'SafeMath div failed.'
                require rooms[_2].field_816
                require ext_code.size(sub_722d8ff0Address)
                call sub_722d8ff0Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args rounds[_2][stor6[_2].field_0].field_512, rooms[_2].field_256 / rooms[_2].field_816
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 32] = rounds[_2][stor6[_2].field_0].field_32
                mem[mem[64] + 64] = rounds[_2][stor6[_2].field_0].field_256
                mem[mem[64] + 96] = rounds[_2][stor6[_2].field_0].field_512
                emit 0x940fa4a4: rooms[_2].field_0, rounds[_2][stor6[_2].field_0].field_0, rounds[_2][stor6[_2].field_0].field_256, rounds[_2][stor6[_2].field_0].field_512, _2
                if rooms[_2].field_0 + 1 < rooms[_2].field_0:
                    revert with 0, 'SafeMath add failed.'
                rooms[_2].field_0++
                _868 = mem[64]
                mem[64] = mem[64] + 128
                mem[_868] = rooms[_2].field_768
                mem[_868 + 32] = 0
                mem[_868 + 64] = 0
                mem[_868 + 96] = 0
                mem[0] = rooms[_2].field_0
                mem[32] = sha3(_2, 7)
                rounds[_2][stor6[_2].field_0].field_0 = rooms[_2].field_768
                rounds[_2][stor6[_2].field_0].field_32 = 0
                rounds[_2][stor6[_2].field_0].field_256 = 0
                rounds[_2][stor6[_2].field_0].field_256 = 0
                rounds[_2][stor6[_2].field_0].field_512 = 0
                rounds[_2][stor6[_2].field_0].field_512 = 0
                rounds[_2][stor6[_2].field_0].field_768 = 0
                mem[mem[64]] = rooms[_2].field_0
                mem[mem[64] + 32] = rooms[_2].field_256
                mem[mem[64] + 64] = rooms[_2].field_512
                emit 0x7e5a9d32: rooms[_2].field_0, rooms[_2].field_256, rooms[_2].field_512, _2
            if 1 > idx:
                revert with 0, 'SafeMath sub failed.'
            idx = idx - 1
            continue 
    else:
        require ext_code.size(sub_3b8d7c15Address)
        staticcall sub_3b8d7c15Address.users(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        require ext_code.size(sub_3b8d7c15Address)
        call sub_3b8d7c15Address.0x2d43f876 with:
             gas gas_remaining wei
            args address(ext_call.return_data[32]), arg2 / rooms[mem[128]].field_824
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = arg2 / rooms[mem[128]].field_512
        while idx >= 1:
            uint256(sub_7ea1fb16[_2][stor6[_2].field_0])++
            address(sub_7ea1fb16[_2][stor6[_2].field_0][uint256(sub_7ea1fb16[_2][stor6[_2].field_0])]) = arg1
            mem[0] = rooms[_2].field_0
            mem[32] = sha3(_2, 7)
            rounds[_2][stor6[_2].field_0].field_0 = uint32(rounds[_2][stor6[_2].field_0].field_0 - 1)
            if not uint32(rounds[_2][stor6[_2].field_0].field_0 - 1):
                if 1 > block.number:
                    revert with 0, 'SafeMath sub failed.'
                if 10 > block.number:
                    revert with 0, 'SafeMath sub failed.'
                if not rooms[_2].field_768:
                    revert with 0, 'SafeMath mod failed.'
                require block.hash(block.number - 10) xor block.hash(block.number - 1) % rooms[_2].field_768 < uint256(sub_7ea1fb16[_2][stor6[_2].field_0])
                rounds[_2][stor6[_2].field_0].field_32 = address(sub_7ea1fb16[_2][stor6[_2].field_0][block.hash(block.number - 10) xor block.hash(block.number - 1) % stor6[_2].field_768])
                if 2 > block.number:
                    revert with 0, 'SafeMath sub failed.'
                if 20 > block.number:
                    revert with 0, 'SafeMath sub failed.'
                if not rooms[_2].field_768:
                    revert with 0, 'SafeMath mod failed.'
                require block.hash(block.number - 20) xor block.hash(block.number - 2) % rooms[_2].field_768 < uint256(sub_7ea1fb16[_2][stor6[_2].field_0])
                rounds[_2][stor6[_2].field_0].field_256 = address(sub_7ea1fb16[_2][stor6[_2].field_0][block.hash(block.number - 20) xor block.hash(block.number - 2) % stor6[_2].field_768])
                if 3 > block.number:
                    revert with 0, 'SafeMath sub failed.'
                if 30 > block.number:
                    revert with 0, 'SafeMath sub failed.'
                if not rooms[_2].field_768:
                    revert with 0, 'SafeMath mod failed.'
                mem[32] = sha3(_2, 8)
                require block.hash(block.number - 30) xor block.hash(block.number - 3) % rooms[_2].field_768 < uint256(sub_7ea1fb16[_2][stor6[_2].field_0])
                mem[0] = sha3(rooms[_2].field_0, sha3(_2, 8))
                rounds[_2][stor6[_2].field_0].field_512 = address(sub_7ea1fb16[_2][stor6[_2].field_0][block.hash(block.number - 30) xor block.hash(block.number - 3) % stor6[_2].field_768])
                if rooms[_2].field_800 <= 0:
                    revert with 0, 'SafeMath div failed.'
                require rooms[_2].field_800
                require ext_code.size(sub_722d8ff0Address)
                call sub_722d8ff0Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args rounds[_2][stor6[_2].field_0].field_0, rooms[_2].field_256 / rooms[_2].field_800
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if rooms[_2].field_808 <= 0:
                    revert with 0, 'SafeMath div failed.'
                require rooms[_2].field_808
                require ext_code.size(sub_722d8ff0Address)
                call sub_722d8ff0Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args rounds[_2][stor6[_2].field_0].field_256, rooms[_2].field_256 / rooms[_2].field_808
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if rooms[_2].field_816 <= 0:
                    revert with 0, 'SafeMath div failed.'
                require rooms[_2].field_816
                require ext_code.size(sub_722d8ff0Address)
                call sub_722d8ff0Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args rounds[_2][stor6[_2].field_0].field_512, rooms[_2].field_256 / rooms[_2].field_816
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 32] = rounds[_2][stor6[_2].field_0].field_32
                mem[mem[64] + 64] = rounds[_2][stor6[_2].field_0].field_256
                mem[mem[64] + 96] = rounds[_2][stor6[_2].field_0].field_512
                emit 0x940fa4a4: rooms[_2].field_0, rounds[_2][stor6[_2].field_0].field_0, rounds[_2][stor6[_2].field_0].field_256, rounds[_2][stor6[_2].field_0].field_512, _2
                if rooms[_2].field_0 + 1 < rooms[_2].field_0:
                    revert with 0, 'SafeMath add failed.'
                rooms[_2].field_0++
                _877 = mem[64]
                mem[64] = mem[64] + 128
                mem[_877] = rooms[_2].field_768
                mem[_877 + 32] = 0
                mem[_877 + 64] = 0
                mem[_877 + 96] = 0
                mem[0] = rooms[_2].field_0
                mem[32] = sha3(_2, 7)
                rounds[_2][stor6[_2].field_0].field_0 = rooms[_2].field_768
                rounds[_2][stor6[_2].field_0].field_32 = 0
                rounds[_2][stor6[_2].field_0].field_256 = 0
                rounds[_2][stor6[_2].field_0].field_256 = 0
                rounds[_2][stor6[_2].field_0].field_512 = 0
                rounds[_2][stor6[_2].field_0].field_512 = 0
                rounds[_2][stor6[_2].field_0].field_768 = 0
                mem[mem[64]] = rooms[_2].field_0
                mem[mem[64] + 32] = rooms[_2].field_256
                mem[mem[64] + 64] = rooms[_2].field_512
                emit 0x7e5a9d32: rooms[_2].field_0, rooms[_2].field_256, rooms[_2].field_512, _2
            if 1 > idx:
                revert with 0, 'SafeMath sub failed.'
            idx = idx - 1
            continue 
}



}

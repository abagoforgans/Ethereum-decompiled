contract main {




// =====================  Runtime code  =====================


#
#  - payTokenBatch(bytes32[] arg1, uint256[] arg2, address arg3, address arg4, bytes arg5)
#
mapping of uint8 stor0;
mapping of uint32 ownerOf;
array of struct tokenOfOwnerByIndex;
mapping of uint256 stor3;
mapping of uint8 stor4;
mapping of address approved;
array of uint256 name;
array of uint256 symbol;
address stor8;
array of struct tokenByIndex;
address owner;
address tokenAddress;
mapping of struct debts;
mapping of uint256 nonces;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, '0x0 Is not a valid owner'
    if arg2 >= tokenOfOwnerByIndex[address(arg1)].field_0:
        revert with 0, 'Index out of bounds'
    require arg2 < tokenOfOwnerByIndex[address(arg1)].field_0
    return tokenOfOwnerByIndex[address(arg1)][arg2].field_0
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0, 'Index out of bounds'
    return tokenByIndex[arg1].field_0
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return address(ownerOf[arg1])
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokenOfOwnerByIndex[address(arg1)].field_0
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[arg1]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function debts(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(debts[arg1].field_0), debts[arg1].field_0, debts[arg1].field_256, debts[arg1].field_512, debts[arg1].field_768
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg2)][address(arg1)])
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function buildId(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return sha3(0, Mask(160, 96, this.address) >> 96, arg1, arg2)
}

function buildId3(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return sha3(0, Mask(160, 96, this.address) >> 96, arg1, arg2)
}

function setURIProvider(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'The owner should be the sender'
    emit SetURIProvider(arg1);
    stor8 = arg1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != bool(stor4[msg.sender][address(arg1)]):
        stor4[msg.sender][address(arg1)] = uint8(arg2)
        emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'The owner should be the sender'
    if not arg1:
        revert with 0, '0x0 Is not a valid owner'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(ownerOf[arg2]) != msg.sender:
        if not stor4[address(stor1[arg2])][address(msg.sender)]:
            revert with 0, 'msg.sender can't approve'
    if approved[arg2] != arg1:
        approved[arg2] = arg1
        emit Approval(address(ownerOf[arg2]), arg1, arg2);
}

function isAuthorized(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, '0x0 is an invalid operator'
    if arg1 == address(ownerOf[arg2]):
        return True
    if stor4[address(stor1[arg2])][address(arg1)]:
        return bool(stor4[address(stor1[arg2])][address(arg1)])
    return (approved[arg2] == arg1)
}

function buildId2(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    return sha3(0, Mask(160, 96, this.address) >> 96, arg1, arg2, arg3, arg4, arg5[all])
}

function getStatus(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not debts[arg1].field_0:
        if gas_remaining < 80 * block.gas_limit / 100:
            staticcall debts[arg1].field_256.0x5de28ae0 with:
                    gas gas_remaining wei
                   args arg1
        else:
            staticcall debts[arg1].field_256.0x5de28ae0 with:
                    gas 80 * block.gas_limit / 100 wei
                   args arg1
        if 1 == ext_call.success:
            return ext_call.return_data[0]
    return 4
}

function withdraw(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        revert with 0, '_to should not be 0x0'
    if not msg.sender:
        revert with 0, '0x0 is an invalid operator'
    if address(ownerOf[arg1]) != msg.sender:
        if not stor4[address(stor1[arg1])][address(msg.sender)]:
            if approved[arg1] != msg.sender:
                revert with 0, 'Sender not authorized'
    debts[arg1].field_8 = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), debts[arg1].field_8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Error sending tokens'
    emit Withdrawn(msg.sender, address(arg2), debts[arg1].field_8, arg1);
    return debts[arg1].field_8
}

function allTokens() payable {
    if not tokenByIndex.length:
        mem[(32 * tokenByIndex.length) + 128] = 32
        mem[(32 * tokenByIndex.length) + 160] = tokenByIndex.length
        mem[(32 * tokenByIndex.length) + 192 len floor32(tokenByIndex.length)] = mem[128 len floor32(tokenByIndex.length)]
        return memory
          from (32 * tokenByIndex.length) + 128
           len (96 * tokenByIndex.length) + 64
    mem[128] = uint256(tokenByIndex.field_0)
    idx = 128
    s = 0
    while (32 * tokenByIndex.length) + 96 > idx:
        mem[idx + 32] = tokenByIndex[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * tokenByIndex.length) + 192 len floor32(tokenByIndex.length)] = mem[128 len floor32(tokenByIndex.length)]
    return Array(len=tokenByIndex.length, data=mem[128 len floor32(tokenByIndex.length)], mem[(32 * tokenByIndex.length) + floor32(tokenByIndex.length) + 192 len (32 * tokenByIndex.length) - floor32(tokenByIndex.length)]), 
}

function withdrawPartial(bytes32 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg2:
        revert with 0, '_to should not be 0x0'
    if not msg.sender:
        revert with 0, '0x0 is an invalid operator'
    if address(ownerOf[arg1]) != msg.sender:
        if not stor4[address(stor1[arg1])][address(msg.sender)]:
            if approved[arg1] != msg.sender:
                revert with 0, 'Sender not authorized'
    if arg3 > debts[arg1].field_8:
        revert with 0, 'Debt balance is not enought'
    if debts[arg1].field_8 < arg3:
        revert with 0, 'Sub underflow'
    debts[arg1].field_8 = uint128(debts[arg1].field_8 - arg3)
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Error sending tokens'
    emit Withdrawn(msg.sender, address(arg2), arg3, arg1);
    return 1
}

function assetsOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not tokenOfOwnerByIndex[address(arg1)].field_0:
        mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128] = 32
        mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 160] = tokenOfOwnerByIndex[address(arg1)].field_0
        mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)] = mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)]
        return memory
          from (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128
           len (96 * tokenOfOwnerByIndex[address(arg1)].field_0) + 64
    mem[128] = tokenOfOwnerByIndex[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = tokenOfOwnerByIndex[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)] = mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)]
    return Array(len=tokenOfOwnerByIndex[address(arg1)].field_0, data=mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)], mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + floor32(tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len (32 * tokenOfOwnerByIndex[address(arg1)].field_0) - floor32(tokenOfOwnerByIndex[address(arg1)].field_0)]), 
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not address(ownerOf[arg1]):
        revert with 0, 'Asset does not exist'
    if not stor8:
        return ''
    mem[96] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor8)
    staticcall stor8.0xc87b56dd with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _12 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_12 + 96]
    _19 = mem[_12 + 96]
    mem[ceil32(return_data.size) + 160 len ceil32(mem[_12 + 96])] = mem[_12 + 128 len ceil32(mem[_12 + 96])]
    if not _19 % 32:
        return 32, mem[ceil32(return_data.size) + 128 len _19 + 32]
    mem[floor32(_19) + ceil32(return_data.size) + 160] = mem[floor32(_19) + ceil32(return_data.size) + -(_19 % 32) + 192 len _19 % 32]
    return 32, mem[ceil32(return_data.size) + 128 len floor32(_19) + 64]
}

function run(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not debts[arg1].field_256:
        revert with 0, 'Debt does not exist'
    if gas_remaining < 80 * block.gas_limit / 100:
        call debts[arg1].field_256.0xef6ac0f0 with:
             gas gas_remaining wei
            args arg1
    else:
        call debts[arg1].field_256.0xef6ac0f0 with:
             gas 80 * block.gas_limit / 100 wei
            args arg1
    if ext_call.success != 1:
        emit Error(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bytes arg6):
                   msg.sender,
                   0,
                   gas_remaining,
                   block.gas_limit,
                   160,
                   calldata.size,
                   call.data[0 len calldata.size],
                   Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256,
                   arg1,
        debts[arg1].field_0 = 1
        return 0
    if debts[arg1].field_0:
        emit ErrorRecover(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bytes32 arg6, bytes arg7):
                          msg.sender,
                          0,
                          gas_remaining,
                          block.gas_limit,
                          ext_call.return_data[0],
                          192,
                          calldata.size,
                          call.data[0 len calldata.size],
                          Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256,
                          arg1,
        debts[arg1].field_0 = 0
    return (1 == ext_call.return_data[0])
}

function withdrawBatch(bytes32[] arg1, address arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not arg2:
        revert with 0, '_to should not be 0x0'
    idx = 0
    s = 0
    t = 0
    t = 0
    while idx < arg1.length:
        if not msg.sender:
            revert with 0, '0x0 is an invalid operator'
        if address(ownerOf[cd[((32 * idx) + arg1 + 36)]]) != msg.sender:
            if not stor4[address(stor1[cd[((32 * idx) + arg1 + 36)]])][address(msg.sender)]:
                mem[0] = cd[((32 * idx) + arg1 + 36)]
                mem[32] = 5
                if approved[cd[((32 * idx) + arg1 + 36)]] != msg.sender:
                    idx = idx + 1
                    s = s
                    t = cd[((32 * idx) + arg1 + 36)]
                    t = t
                    continue 
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 12
        debts[cd[((32 * idx) + arg1 + 36)]].field_8 = 0
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = arg2
        mem[mem[64] + 64] = debts[cd[((32 * idx) + arg1 + 36)]].field_8
        emit Withdrawn(msg.sender, address(arg2), debts[cd[((32 * idx) + arg1 + 36)]].field_8, cd[((32 * idx) + arg1 + 36)]);
        idx = idx + 1
        s = debts[cd[((32 * idx) + arg1 + 36)]].field_8
        t = cd[((32 * idx) + arg1 + 36)]
        t = debts[cd[((32 * idx) + arg1 + 36)]].field_8 + t
        continue 
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Error sending tokens'
    return t
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not msg.sender:
        revert with 0, '0x0 is an invalid operator'
    if address(ownerOf[arg3]) != msg.sender:
        if not stor4[address(stor1[arg3])][address(msg.sender)]:
            if approved[arg3] != msg.sender:
                revert with 0, 'msg.sender Not authorized'
    if not arg2:
        revert with 0, 'Target can't be 0x0'
    if address(ownerOf[arg3]) != arg1:
        revert with 0, 'Not current owner'
    if approved[arg3]:
        approved[arg3] = 0
        emit Approval(address(ownerOf[arg3]), 0, arg3);
    if tokenOfOwnerByIndex[address(stor1[arg3])].field_0 < 1:
        revert with 0, 'Sub underflow'
    require tokenOfOwnerByIndex[address(stor1[arg3])].field_0 - 1 < tokenOfOwnerByIndex[address(stor1[arg3])].field_0
    if stor3[arg3] != tokenOfOwnerByIndex[address(stor1[arg3])].field_0 - 1:
        require stor3[arg3] < tokenOfOwnerByIndex[address(stor1[arg3])].field_0
        tokenOfOwnerByIndex[address(stor1[arg3])][stor3[arg3]].field_0 = tokenOfOwnerByIndex[address(stor1[arg3])][tokenOfOwnerByIndex[address(stor1[arg3])].field_0].field_0
        stor3[stor2[address(stor1[arg3])][stor2[address(stor1[arg3])].field_0].field_0] = stor3[arg3]
    tokenOfOwnerByIndex[address(stor1[arg3])][tokenOfOwnerByIndex[address(stor1[arg3])].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(stor1[arg3])].field_0--
    if tokenOfOwnerByIndex[address(stor1[arg3])].field_0 > tokenOfOwnerByIndex[address(stor1[arg3])].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(stor1[arg3])].field_0 - 1
        while tokenOfOwnerByIndex[address(stor1[arg3])].field_0 > idx:
            tokenOfOwnerByIndex[address(stor1[arg3])][idx].field_0 = 0
            idx = idx + 1
            continue 
    address(ownerOf[arg3]) = arg2
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor3[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    emit Transfer(address(ownerOf[arg3]), arg2, arg3);
}

function create3(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    debts[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][arg4].field_0 = 0
    debts[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][arg4].field_8 = 0
    debts[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][arg4].field_136 = 0
    debts[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][arg4].field_256 = 0
    debts[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][arg4].field_256 = arg1
    debts[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][arg4].field_512 = msg.sender
    debts[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][arg4].field_768 = arg3
    if address(ownerOf[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][arg4]):
        revert with 0, 'Asset already exists'
    address(ownerOf[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][arg4]) = arg2
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = sha3(0, Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, arg4)
    stor3[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][arg4] = tokenOfOwnerByIndex[address(arg2)].field_0
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length].field_0 = sha3(0, Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, arg4)
    emit Transfer(0, arg2, sha3(0, Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, arg4));
    require ext_code.size(arg1)
    call arg1.create(bytes32 arg1, bytes arg2) with:
         gas gas_remaining wei
        args sha3(0, Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, arg4), Array(len=arg5.length, data=arg5[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Error creating debt in model'
    emit Created3(arg4, Array(len=arg5.length, data=arg5[all]), sha3(0, Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, arg4));
    return sha3(0, Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, arg4)
}

function create2(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    debts[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][arg1][arg3][arg4][arg5[all]].field_0 = 0
    debts[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][arg1][arg3][arg4][arg5[all]].field_8 = 0
    debts[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][arg1][arg3][arg4][arg5[all]].field_256 = 0
    debts[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][arg1][arg3][arg4][arg5[all]].field_256 = arg1
    debts[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][arg1][arg3][arg4][arg5[all]].field_512 = msg.sender
    debts[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][arg1][arg3][arg4][arg5[all]].field_768 = arg3
    if address(ownerOf[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][arg1][arg3][arg4][arg5[all]]):
        revert with 0, 'Asset already exists'
    address(ownerOf[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][arg1][arg3][arg4][arg5[all]]) = arg2
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = sha3(0, Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, arg1, arg3, arg4, arg5[all])
    stor3[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][arg1][arg3][arg4][arg5[all]] = tokenOfOwnerByIndex[address(arg2)].field_0
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length].field_0 = sha3(0, Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, arg1, arg3, arg4, arg5[all])
    emit Transfer(0, arg2, sha3(0, Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, arg1, arg3, arg4, arg5[all]));
    require ext_code.size(arg1)
    call arg1.create(bytes32 arg1, bytes arg2) with:
         gas gas_remaining wei
        args sha3(0, Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, arg1, arg3, arg4, arg5[all]), Array(len=arg5.length, data=arg5[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Error creating debt in model'
    emit Created2(arg4, Array(len=arg5.length, data=arg5[all]), sha3(0, Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, arg1, arg3, arg4, arg5[all]));
    return sha3(0, Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, arg1, arg3, arg4, arg5[all])
}

function create(address arg1, address arg2, address arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    nonces[msg.sender]++
    debts[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][stor13[msg.sender]].field_0 = 0
    debts[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][stor13[msg.sender]].field_8 = 0
    debts[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][stor13[msg.sender]].field_136 = 0
    debts[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][stor13[msg.sender]].field_256 = 0
    debts[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][stor13[msg.sender]].field_256 = arg1
    debts[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][stor13[msg.sender]].field_512 = msg.sender
    debts[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][stor13[msg.sender]].field_768 = arg3
    if address(ownerOf[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][stor13[msg.sender]]):
        revert with 0, 'Asset already exists'
    address(ownerOf[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][stor13[msg.sender]]) = arg2
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = sha3(0, Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, nonces[msg.sender])
    stor3[0][Mask(160, 96, this.address) >> 96][Mask(160, 96, msg.sender) >> 96][stor13[msg.sender]] = tokenOfOwnerByIndex[address(arg2)].field_0
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length].field_0 = sha3(0, Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, nonces[msg.sender])
    emit Transfer(0, arg2, sha3(0, Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, nonces[msg.sender]));
    require ext_code.size(arg1)
    call arg1.create(bytes32 arg1, bytes arg2) with:
         gas gas_remaining wei
        args sha3(0, Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, nonces[msg.sender]), Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Error creating debt in model'
    emit Created(nonces[msg.sender], Array(len=arg4.length, data=arg4[all]), sha3(0, Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, nonces[msg.sender]));
    return sha3(0, Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, nonces[msg.sender])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not msg.sender:
        revert with 0, '0x0 is an invalid operator'
    if address(ownerOf[arg3]) != msg.sender:
        if not stor4[address(stor1[arg3])][address(msg.sender)]:
            if approved[arg3] != msg.sender:
                revert with 0, 'msg.sender Not authorized'
    if not arg2:
        revert with 0, 'Target can't be 0x0'
    if address(ownerOf[arg3]) != arg1:
        revert with 0, 'Not current owner'
    if approved[arg3]:
        approved[arg3] = 0
        emit Approval(address(ownerOf[arg3]), 0, arg3);
    if tokenOfOwnerByIndex[address(stor1[arg3])].field_0 < 1:
        revert with 0, 'Sub underflow'
    require tokenOfOwnerByIndex[address(stor1[arg3])].field_0 - 1 < tokenOfOwnerByIndex[address(stor1[arg3])].field_0
    if stor3[arg3] != tokenOfOwnerByIndex[address(stor1[arg3])].field_0 - 1:
        require stor3[arg3] < tokenOfOwnerByIndex[address(stor1[arg3])].field_0
        tokenOfOwnerByIndex[address(stor1[arg3])][stor3[arg3]].field_0 = tokenOfOwnerByIndex[address(stor1[arg3])][tokenOfOwnerByIndex[address(stor1[arg3])].field_0].field_0
        stor3[stor2[address(stor1[arg3])][stor2[address(stor1[arg3])].field_0].field_0] = stor3[arg3]
    tokenOfOwnerByIndex[address(stor1[arg3])][tokenOfOwnerByIndex[address(stor1[arg3])].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(stor1[arg3])].field_0--
    if tokenOfOwnerByIndex[address(stor1[arg3])].field_0 > tokenOfOwnerByIndex[address(stor1[arg3])].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(stor1[arg3])].field_0 - 1
        while tokenOfOwnerByIndex[address(stor1[arg3])].field_0 > idx:
            tokenOfOwnerByIndex[address(stor1[arg3])][idx].field_0 = 0
            idx = idx + 1
            continue 
    address(ownerOf[arg3]) = arg2
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor3[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    if ext_code.size(arg2):
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args msg.sender, address(ownerOf[arg3]), arg3, 128, 0
        if 1 != ext_call.success:
            call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                 gas gas_remaining wei
                args Mask(224, 0, ownerOf[arg3]), uint32(ownerOf[arg3]), arg3, 96, 0
            if 1 != ext_call.success:
                revert with 0, 'Contract rejected the token'
            if ext_call.return_data[0] != 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000:
                revert with 0, 'Contract rejected the token'
        else:
            if ext_call.return_data[0] != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args Mask(224, 0, ownerOf[arg3]), uint32(ownerOf[arg3]), arg3, 96, 0
                if 1 != ext_call.success:
                    revert with 0, 'Contract rejected the token'
                if ext_call.return_data[0] != 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'Contract rejected the token'
    emit Transfer(address(ownerOf[arg3]), arg2, arg3);
}

function pay(bytes32 arg1, uint256 arg2, address arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if not debts[arg1].field_256:
        revert with 0, 'Debt does not exist'
    if gas_remaining < 80 * block.gas_limit / 100:
        call debts[arg1].field_256.addPaid(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg1, arg2
    else:
        call debts[arg1].field_256.addPaid(bytes32 arg1, uint256 arg2) with:
             gas 80 * block.gas_limit / 100 wei
            args arg1, arg2
    if ext_call.success != 1:
        emit Error(msg.sender, msg.value, gas_remaining, block.gas_limit, Array(len=calldata.size, data=call.data[0 len calldata.size]), arg1);
        debts[arg1].field_0 = 1
        if 0 > arg2:
            revert with 0, 32, 33, 0xfe506169642063616e2774206265206d6f7265207468616e207265717565737465, Mask(216, 0, block.gas_limit), 0
        if not debts[arg1].field_768:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Error pulling payment tokens'
            if debts[arg1].field_8 < 0:
                revert with 0, 'Add overflow'
            if debts[arg1].field_8 >= 0x100000000000000000000000000000000:
                revert with 0, 'uint128 Overflow'
            debts[arg1].field_8 = debts[arg1].field_8
            emit 0x6825b523: msg.sender, address(arg3), arg2, 0, 0, 0, arg1
            return 0
        require ext_code.size(debts[arg1].field_768)
        call debts[arg1].field_768.readSample(bytes arg1) with:
             gas gas_remaining wei
            args Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        emit ReadedOracle(ext_call.return_data[0], ext_call.return_data[32], arg1);
        if not ext_call.return_data[0]:
            revert with 0, 'Oracle provided invalid rate'
        if 0 / ext_call.return_data[0]:
            revert with 0, 'Mult overflow'
        require ext_call.return_data[32]
        if 0 % ext_call.return_data[32] <= 0:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, 0 / ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Error pulling payment tokens'
            if debts[arg1].field_8 + (0 / ext_call.return_data[32]) < 0 / ext_call.return_data[32]:
                revert with 0, 'Add overflow'
            if debts[arg1].field_8 + (0 / ext_call.return_data[32]) >= 0x100000000000000000000000000000000:
                revert with 0, 'uint128 Overflow'
            debts[arg1].field_8 = uint128(debts[arg1].field_8 + (0 / ext_call.return_data[32]))
            emit 0x6825b523: msg.sender, address(arg3), arg2, 0, 0, 0 / ext_call.return_data[32], arg1
            return 0, 0 / ext_call.return_data[32]
        if (0 / ext_call.return_data[32]) + 1 < 0 / ext_call.return_data[32]:
            revert with 0, 'Add overflow'
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, (0 / ext_call.return_data[32]) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Error pulling payment tokens'
        if debts[arg1].field_8 < 0:
            revert with 0, 'Add overflow'
        if debts[arg1].field_8 + (0 / ext_call.return_data[32]) + 1 >= 0x100000000000000000000000000000000:
            revert with 0, 'uint128 Overflow'
        debts[arg1].field_8 = uint128(debts[arg1].field_8 + (0 / ext_call.return_data[32]) + 1)
        emit 0x6825b523: msg.sender, address(arg3), arg2, 0, 0, (0 / ext_call.return_data[32]) + 1, arg1
        return 0, (0 / ext_call.return_data[32]) + 1
    if not debts[arg1].field_0:
        if ext_call.return_data[0] > arg2:
            revert with 0, 32, 33, 0xfe506169642063616e2774206265206d6f7265207468616e207265717565737465, mem[297 len 31]
    else:
        emit ErrorRecover(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bytes32 arg6, bytes arg7):
                          msg.sender,
                          0,
                          gas_remaining,
                          block.gas_limit,
                          ext_call.return_data[0],
                          192,
                          calldata.size,
                          call.data[0 len calldata.size],
                          Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256,
                          arg1,
        debts[arg1].field_0 = 0
        if ext_call.return_data[0] > arg2:
            revert with 0, 
                        32,
                        33,
                        0xfe506169642063616e2774206265206d6f7265207468616e207265717565737465,
                        Mask(216, 0, block.gas_limit),
                        Mask(32, 224, ext_call.return_data[0]) >> 224
    ('le', ('ext_call.return_data', 0, 32), ('param', 'arg2'))
    if not debts[arg1].field_768:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Error pulling payment tokens'
        if debts[arg1].field_8 + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'Add overflow'
        if debts[arg1].field_8 + ext_call.return_data[0] >= 0x100000000000000000000000000000000:
            revert with 0, 'uint128 Overflow'
        debts[arg1].field_8 = uint128(debts[arg1].field_8 + ext_call.return_data[0])
        emit 0x6825b523: msg.sender, address(arg3), arg2, 0, ext_call.return_data[0], ext_call.return_data[0], arg1
        return ext_call.return_data[0], ext_call.return_data[0]
    require ext_code.size(debts[arg1].field_768)
    call debts[arg1].field_768.readSample(bytes arg1) with:
         gas gas_remaining wei
        args Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    emit ReadedOracle(ext_call.return_data[0], ext_call.return_data[32], arg1);
    if not ext_call.return_data[0]:
        revert with 0, 'Oracle provided invalid rate'
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'Mult overflow'
    require ext_call.return_data[32]
    if ext_call.return_data[0] * ext_call.return_data[0] % ext_call.return_data[32] <= 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Error pulling payment tokens'
        if debts[arg1].field_8 + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 'Add overflow'
        if debts[arg1].field_8 + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) >= 0x100000000000000000000000000000000:
            revert with 0, 'uint128 Overflow'
        debts[arg1].field_8 = uint128(debts[arg1].field_8 + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]))
        emit 0x6825b523: msg.sender, address(arg3), arg2, 0, ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32], arg1
        return ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]
    if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 'Add overflow'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Error pulling payment tokens'
    if debts[arg1].field_8 < 0:
        revert with 0, 'Add overflow'
    if debts[arg1].field_8 + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1 >= 0x100000000000000000000000000000000:
        revert with 0, 'uint128 Overflow'
    debts[arg1].field_8 = uint128(debts[arg1].field_8 + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1)
    emit 0x6825b523: msg.sender, address(arg3), arg2, 0, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1, arg1
    return ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not msg.sender:
        revert with 0, '0x0 is an invalid operator'
    if address(ownerOf[arg3]) != msg.sender:
        if not stor4[address(stor1[arg3])][address(msg.sender)]:
            if approved[arg3] != msg.sender:
                revert with 0, 'msg.sender Not authorized'
    if not arg2:
        revert with 0, 'Target can't be 0x0'
    if address(ownerOf[arg3]) != arg1:
        revert with 0, 'Not current owner'
    if approved[arg3]:
        approved[arg3] = 0
        emit Approval(address(ownerOf[arg3]), 0, arg3);
    if tokenOfOwnerByIndex[address(stor1[arg3])].field_0 < 1:
        revert with 0, 'Sub underflow'
    require tokenOfOwnerByIndex[address(stor1[arg3])].field_0 - 1 < tokenOfOwnerByIndex[address(stor1[arg3])].field_0
    if stor3[arg3] != tokenOfOwnerByIndex[address(stor1[arg3])].field_0 - 1:
        require stor3[arg3] < tokenOfOwnerByIndex[address(stor1[arg3])].field_0
        tokenOfOwnerByIndex[address(stor1[arg3])][stor3[arg3]].field_0 = tokenOfOwnerByIndex[address(stor1[arg3])][tokenOfOwnerByIndex[address(stor1[arg3])].field_0].field_0
        stor3[stor2[address(stor1[arg3])][stor2[address(stor1[arg3])].field_0].field_0] = stor3[arg3]
    tokenOfOwnerByIndex[address(stor1[arg3])][tokenOfOwnerByIndex[address(stor1[arg3])].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(stor1[arg3])].field_0--
    if tokenOfOwnerByIndex[address(stor1[arg3])].field_0 > tokenOfOwnerByIndex[address(stor1[arg3])].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(stor1[arg3])].field_0 - 1
        while tokenOfOwnerByIndex[address(stor1[arg3])].field_0 > idx:
            tokenOfOwnerByIndex[address(stor1[arg3])][idx].field_0 = 0
            idx = idx + 1
            continue 
    address(ownerOf[arg3]) = arg2
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor3[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    if ext_code.size(arg2):
        mem[ceil32(arg4.length) + 164] = msg.sender
        mem[ceil32(arg4.length) + 196] = address(ownerOf[arg3])
        mem[ceil32(arg4.length) + 228] = arg3
        mem[ceil32(arg4.length) + 260] = 128
        mem[ceil32(arg4.length) + 292] = arg4.length
        mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            mem[ceil32(arg4.length) + 128] = arg4.length + 164
            mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(arg4.length) + 160 len 4] = unknown_0x150b7a02(?????)
            call arg2.0x150b7a02 with:
                 gas gas_remaining wei
                args mem[ceil32(arg4.length) + 164 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] - 4]
            if 1 != ext_call.success:
                mem[arg4.length + ceil32(arg4.length) + 488 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args Mask(224, 0, ownerOf[arg3]), uint32(ownerOf[arg3]), arg3, 96, arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256
                else:
                    mem[floor32(arg4.length) + arg4.length + ceil32(arg4.length) + 488] = mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + 520 len arg4.length % 32]
                    call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args Mask(224, 0, ownerOf[arg3]), uint32(ownerOf[arg3]), arg3, 96, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[arg4.length + (2 * ceil32(arg4.length)) + 488 len floor32(arg4.length) + -ceil32(arg4.length) + 32]
                if 1 != ext_call.success:
                    revert with 0, 'Contract rejected the token'
                if ext_call.return_data[0] != 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'Contract rejected the token'
            else:
                if ext_call.return_data[0] != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    mem[arg4.length + ceil32(arg4.length) + 488 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    if not arg4.length % 32:
                        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args Mask(224, 0, ownerOf[arg3]), uint32(ownerOf[arg3]), arg3, 96, arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256
                    else:
                        mem[floor32(arg4.length) + arg4.length + ceil32(arg4.length) + 488] = mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + 520 len arg4.length % 32]
                        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args Mask(224, 0, ownerOf[arg3]), uint32(ownerOf[arg3]), arg3, 96, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[arg4.length + (2 * ceil32(arg4.length)) + 488 len floor32(arg4.length) + -ceil32(arg4.length) + 32]
                    if 1 != ext_call.success:
                        revert with 0, 'Contract rejected the token'
                    if ext_call.return_data[0] != 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'Contract rejected the token'
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
            mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 196
            mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(arg4.length) + 160 len 4] = unknown_0x150b7a02(?????)
            call arg2.0x150b7a02 with:
                 gas gas_remaining wei
                args mem[ceil32(arg4.length) + 164 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] - 4]
            if 1 != ext_call.success:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 520 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args Mask(224, 0, ownerOf[arg3]), uint32(ownerOf[arg3]), arg3, 96, arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256
                else:
                    mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + 520] = mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + -(arg4.length % 32) + 552 len arg4.length % 32]
                    call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args Mask(224, 0, ownerOf[arg3]), uint32(ownerOf[arg3]), arg3, 96, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[floor32(arg4.length) + (2 * ceil32(arg4.length)) + 520 len floor32(arg4.length) + -ceil32(arg4.length) + 32]
                if 1 != ext_call.success:
                    revert with 0, 'Contract rejected the token'
                if ext_call.return_data[0] != 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'Contract rejected the token'
            else:
                if ext_call.return_data[0] != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    mem[floor32(arg4.length) + ceil32(arg4.length) + 520 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    if not arg4.length % 32:
                        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args Mask(224, 0, ownerOf[arg3]), uint32(ownerOf[arg3]), arg3, 96, arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256
                    else:
                        mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + 520] = mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + -(arg4.length % 32) + 552 len arg4.length % 32]
                        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args Mask(224, 0, ownerOf[arg3]), uint32(ownerOf[arg3]), arg3, 96, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[floor32(arg4.length) + (2 * ceil32(arg4.length)) + 520 len floor32(arg4.length) + -ceil32(arg4.length) + 32]
                    if 1 != ext_call.success:
                        revert with 0, 'Contract rejected the token'
                    if ext_call.return_data[0] != 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'Contract rejected the token'
    emit Transfer(address(ownerOf[arg3]), arg2, arg3);
}

function payToken(bytes32 arg1, uint256 arg2, address arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if not debts[arg1].field_768:
        if not debts[arg1].field_256:
            revert with 0, 'Debt does not exist'
        if gas_remaining < 80 * block.gas_limit / 100:
            call debts[arg1].field_256.addPaid(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg1, arg2
        else:
            call debts[arg1].field_256.addPaid(bytes32 arg1, uint256 arg2) with:
                 gas 80 * block.gas_limit / 100 wei
                args arg1, arg2
        if ext_call.success != 1:
            emit Error(msg.sender, msg.value, gas_remaining, block.gas_limit, Array(len=calldata.size, data=call.data[0 len calldata.size]), arg1);
            debts[arg1].field_0 = 1
            if 0 > arg2:
                revert with 0, 'Paid can't exceed available'
            if debts[arg1].field_768:
                revert with 0, 'Oracle provided invalid rate'
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Error pulling tokens'
            if debts[arg1].field_8 < 0:
                revert with 0, 'Add overflow'
            if debts[arg1].field_8 >= 0x100000000000000000000000000000000:
                revert with 0, 'uint128 Overflow'
            debts[arg1].field_8 = debts[arg1].field_8
            emit 0x6825b523: msg.sender, address(arg3), 0, arg2, 0, 0, arg1
            return 0
        if debts[arg1].field_0:
            emit ErrorRecover(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bytes32 arg6, bytes arg7):
                              msg.sender,
                              0,
                              gas_remaining,
                              block.gas_limit,
                              ext_call.return_data[0],
                              192,
                              calldata.size,
                              call.data[0 len calldata.size],
                              Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256,
                              arg1,
            debts[arg1].field_0 = 0
        if ext_call.return_data[0] > arg2:
            revert with 0, 'Paid can't exceed available'
        if debts[arg1].field_768:
            revert with 0, 'Oracle provided invalid rate'
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Error pulling tokens'
        if debts[arg1].field_8 + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'Add overflow'
        if debts[arg1].field_8 + ext_call.return_data[0] >= 0x100000000000000000000000000000000:
            revert with 0, 'uint128 Overflow'
        debts[arg1].field_8 = uint128(debts[arg1].field_8 + ext_call.return_data[0])
        emit 0x6825b523: msg.sender, address(arg3), 0, arg2, ext_call.return_data[0], ext_call.return_data[0], arg1
        return ext_call.return_data[0], ext_call.return_data[0]
    require ext_code.size(debts[arg1].field_768)
    call debts[arg1].field_768.readSample(bytes arg1) with:
         gas gas_remaining wei
        args Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    emit ReadedOracle(ext_call.return_data[0], ext_call.return_data[32], arg1);
    if not ext_call.return_data[32]:
        revert with 0, 'Oracle provided invalid rate'
    if not arg2:
        require ext_call.return_data[0]
        if not debts[arg1].field_256:
            revert with 0, 'Debt does not exist'
        if gas_remaining < 80 * block.gas_limit / 100:
            call debts[arg1].field_256.addPaid(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg1, 0 / ext_call.return_data[0]
        else:
            call debts[arg1].field_256.addPaid(bytes32 arg1, uint256 arg2) with:
                 gas 80 * block.gas_limit / 100 wei
                args arg1, 0 / ext_call.return_data[0]
        if ext_call.success != 1:
            emit Error(msg.sender, msg.value, gas_remaining, block.gas_limit, Array(len=calldata.size, data=call.data[0 len calldata.size]), arg1);
            debts[arg1].field_0 = 1
            if 0 > 0 / ext_call.return_data[0]:
                revert with 0, 'Paid can't exceed available'
            if not debts[arg1].field_768:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Error pulling tokens'
                if debts[arg1].field_8 < 0:
                    revert with 0, 'Add overflow'
                if debts[arg1].field_8 >= 0x100000000000000000000000000000000:
                    revert with 0, 'uint128 Overflow'
                debts[arg1].field_8 = debts[arg1].field_8
                emit 0x6825b523: msg.sender, address(arg3), 0, arg2, 0, 0, arg1
                return 0
            if not ext_call.return_data[0]:
                revert with 0, 'Oracle provided invalid rate'
            if 0 / ext_call.return_data[0]:
                revert with 0, 'Mult overflow'
            require ext_call.return_data[32]
            if 0 % ext_call.return_data[32] <= 0:
                if 0 / ext_call.return_data[32] > arg2:
                    revert with 0, 'Paid can't exceed requested'
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Error pulling tokens'
                if debts[arg1].field_8 + (0 / ext_call.return_data[32]) < 0 / ext_call.return_data[32]:
                    revert with 0, 'Add overflow'
                if debts[arg1].field_8 + (0 / ext_call.return_data[32]) >= 0x100000000000000000000000000000000:
                    revert with 0, 'uint128 Overflow'
                debts[arg1].field_8 = uint128(debts[arg1].field_8 + (0 / ext_call.return_data[32]))
                emit 0x6825b523: msg.sender, address(arg3), 0, arg2, 0, 0 / ext_call.return_data[32], arg1
                return 0, 0 / ext_call.return_data[32]
            if (0 / ext_call.return_data[32]) + 1 < 0 / ext_call.return_data[32]:
                revert with 0, 'Add overflow'
            if (0 / ext_call.return_data[32]) + 1 > arg2:
                revert with 0, 'Paid can't exceed requested'
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, (0 / ext_call.return_data[32]) + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Error pulling tokens'
            if debts[arg1].field_8 < 0:
                revert with 0, 'Add overflow'
            if debts[arg1].field_8 + (0 / ext_call.return_data[32]) + 1 >= 0x100000000000000000000000000000000:
                revert with 0, 'uint128 Overflow'
            debts[arg1].field_8 = uint128(debts[arg1].field_8 + (0 / ext_call.return_data[32]) + 1)
            emit 0x6825b523: msg.sender, address(arg3), 0, arg2, 0, (0 / ext_call.return_data[32]) + 1, arg1
            return 0, (0 / ext_call.return_data[32]) + 1
        if debts[arg1].field_0:
            emit ErrorRecover(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bytes32 arg6, bytes arg7):
                              msg.sender,
                              0,
                              gas_remaining,
                              block.gas_limit,
                              ext_call.return_data[0],
                              192,
                              calldata.size,
                              call.data[0 len calldata.size],
                              Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256,
                              arg1,
            debts[arg1].field_0 = 0
        if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
            revert with 0, 'Paid can't exceed available'
    else:
        if ext_call.return_data[32] * arg2 / arg2 != ext_call.return_data[32]:
            revert with 0, 'Mult overflow'
        require ext_call.return_data[0]
        if not debts[arg1].field_256:
            revert with 0, 'Debt does not exist'
        if gas_remaining < 80 * block.gas_limit / 100:
            call debts[arg1].field_256.addPaid(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg1, ext_call.return_data[32] * arg2 / ext_call.return_data[0]
        else:
            call debts[arg1].field_256.addPaid(bytes32 arg1, uint256 arg2) with:
                 gas 80 * block.gas_limit / 100 wei
                args arg1, ext_call.return_data[32] * arg2 / ext_call.return_data[0]
        if ext_call.success != 1:
            emit Error(msg.sender, msg.value, gas_remaining, block.gas_limit, Array(len=calldata.size, data=call.data[0 len calldata.size]), arg1);
            debts[arg1].field_0 = 1
            if 0 > ext_call.return_data[32] * arg2 / ext_call.return_data[0]:
                revert with 0, 'Paid can't exceed available'
            if not debts[arg1].field_768:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Error pulling tokens'
                if debts[arg1].field_8 < 0:
                    revert with 0, 'Add overflow'
                if debts[arg1].field_8 >= 0x100000000000000000000000000000000:
                    revert with 0, 'uint128 Overflow'
                debts[arg1].field_8 = debts[arg1].field_8
                emit 0x6825b523: msg.sender, address(arg3), 0, arg2, 0, 0, arg1
                return 0
            if not ext_call.return_data[0]:
                revert with 0, 'Oracle provided invalid rate'
            if 0 / ext_call.return_data[0]:
                revert with 0, 'Mult overflow'
            require ext_call.return_data[32]
            if 0 % ext_call.return_data[32] <= 0:
                if 0 / ext_call.return_data[32] > arg2:
                    revert with 0, 'Paid can't exceed requested'
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Error pulling tokens'
                if debts[arg1].field_8 + (0 / ext_call.return_data[32]) < 0 / ext_call.return_data[32]:
                    revert with 0, 'Add overflow'
                if debts[arg1].field_8 + (0 / ext_call.return_data[32]) >= 0x100000000000000000000000000000000:
                    revert with 0, 'uint128 Overflow'
                debts[arg1].field_8 = uint128(debts[arg1].field_8 + (0 / ext_call.return_data[32]))
                emit 0x6825b523: msg.sender, address(arg3), 0, arg2, 0, 0 / ext_call.return_data[32], arg1
                return 0, 0 / ext_call.return_data[32]
            if (0 / ext_call.return_data[32]) + 1 < 0 / ext_call.return_data[32]:
                revert with 0, 'Add overflow'
            if (0 / ext_call.return_data[32]) + 1 > arg2:
                revert with 0, 'Paid can't exceed requested'
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, (0 / ext_call.return_data[32]) + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Error pulling tokens'
            if debts[arg1].field_8 < 0:
                revert with 0, 'Add overflow'
            if debts[arg1].field_8 + (0 / ext_call.return_data[32]) + 1 >= 0x100000000000000000000000000000000:
                revert with 0, 'uint128 Overflow'
            debts[arg1].field_8 = uint128(debts[arg1].field_8 + (0 / ext_call.return_data[32]) + 1)
            emit 0x6825b523: msg.sender, address(arg3), 0, arg2, 0, (0 / ext_call.return_data[32]) + 1, arg1
            return 0, (0 / ext_call.return_data[32]) + 1
        if debts[arg1].field_0:
            emit ErrorRecover(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bytes32 arg6, bytes arg7):
                              msg.sender,
                              0,
                              gas_remaining,
                              block.gas_limit,
                              ext_call.return_data[0],
                              192,
                              calldata.size,
                              call.data[0 len calldata.size],
                              Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256,
                              arg1,
            debts[arg1].field_0 = 0
        if ext_call.return_data[0] > ext_call.return_data[32] * arg2 / ext_call.return_data[0]:
            revert with 0, 'Paid can't exceed available'
    if not debts[arg1].field_768:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Error pulling tokens'
        if debts[arg1].field_8 + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'Add overflow'
        if debts[arg1].field_8 + ext_call.return_data[0] >= 0x100000000000000000000000000000000:
            revert with 0, 'uint128 Overflow'
        debts[arg1].field_8 = uint128(debts[arg1].field_8 + ext_call.return_data[0])
        emit 0x6825b523: msg.sender, address(arg3), 0, arg2, ext_call.return_data[0], ext_call.return_data[0], arg1
        return ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0, 'Oracle provided invalid rate'
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'Mult overflow'
    require ext_call.return_data[32]
    if ext_call.return_data[0] * ext_call.return_data[0] % ext_call.return_data[32] <= 0:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32] > arg2:
            revert with 0, 'Paid can't exceed requested'
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Error pulling tokens'
        if debts[arg1].field_8 + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 'Add overflow'
        if debts[arg1].field_8 + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) >= 0x100000000000000000000000000000000:
            revert with 0, 'uint128 Overflow'
        debts[arg1].field_8 = uint128(debts[arg1].field_8 + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]))
        emit 0x6825b523: msg.sender, address(arg3), 0, arg2, ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32], arg1
        return ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]
    if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 'Add overflow'
    if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1 > arg2:
        revert with 0, 'Paid can't exceed requested'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Error pulling tokens'
    if debts[arg1].field_8 < 0:
        revert with 0, 'Add overflow'
    if debts[arg1].field_8 + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1 >= 0x100000000000000000000000000000000:
        revert with 0, 'uint128 Overflow'
    debts[arg1].field_8 = uint128(debts[arg1].field_8 + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1)
    emit 0x6825b523: msg.sender, address(arg3), 0, arg2, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1, arg1
    return ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1
}

function payBatch(bytes32[] arg1, uint256[] arg2, address arg3, address arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if arg1.length != arg2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x645f69647320616e64205f616d6f756e74732073686f756c642068617665207468652073616d65206c656e6774,
                    mem[209 len 19]
    if not arg4:
        mem[96] = arg1.length
        if not arg1.length:
            mem[(32 * arg1.length) + 128] = arg1.length
            mem[64] = (64 * arg1.length) + 160
            idx = 0
            while idx < arg1.length:
                require idx < arg2.length
                require idx < arg1.length
                mem[0] = cd[((32 * idx) + arg1 + 36)]
                mem[32] = 12
                if debts[cd[((32 * idx) + arg1 + 36)]].field_768 != arg4:
                    mem[mem[64]] = arg4
                    emit PayBatchError(arg4, cd[((32 * idx) + arg1 + 36)]);
                    require idx < mem[96]
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                    mem[(32 * idx) + 128] = 0
                    require idx < arg1.length
                    mem[0] = cd[((32 * idx) + arg1 + 36)]
                    require idx < mem[96]
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = arg3
                    mem[mem[64] + 64] = cd[((32 * idx) + arg2 + 36)]
                    mem[mem[64] + 96] = 0
                    mem[mem[64] + 128] = 0
                    mem[mem[64] + 160] = 0
                    emit 0x6825b523: msg.sender, address(arg3), cd[((32 * idx) + arg2 + 36)], 0, 0, 0, cd[((32 * idx) + arg1 + 36)]
                else:
                    if not debts[cd[((32 * idx) + arg1 + 36)]].field_256:
                        revert with 0, 'Debt does not exist'
                    _1348 = mem[64]
                    mem[mem[64] + 36] = cd[((32 * idx) + arg1 + 36)]
                    mem[mem[64] + 68] = cd[((32 * idx) + arg2 + 36)]
                    _1349 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1349 + 32] = 0x91fa2df400000000000000000000000000000000000000000000000000000000 or mem[_1349 + 36 len 28]
                    if gas_remaining < 80 * block.gas_limit / 100:
                        call debts[cd[((32 * idx) + arg1 + 36)]].field_256.mem[_1349 + 32 len 4] with:
                             gas gas_remaining wei
                            args mem[_1349 + 36 len mem[_1349] - 4]
                    else:
                        call debts[cd[((32 * idx) + arg1 + 36)]].field_256.mem[_1349 + 32 len 4] with:
                             gas 80 * block.gas_limit / 100 wei
                            args mem[_1349 + 36 len mem[_1349] - 4]
                    if ext_call.success != 1:
                        mem[_1348 + 196] = block.gas_limit
                        mem[_1348 + 228] = 160
                        mem[_1348 + 260] = calldata.size
                        mem[_1348 + 292 len calldata.size] = call.data[0 len calldata.size]
                        mem[calldata.size + _1348 + 292] = 0
                        emit Error(msg.sender, msg.value, gas_remaining, block.gas_limit, Array(len=calldata.size, data=call.data[0 len calldata.size]), cd[((32 * idx) + arg1 + 36)]);
                        mem[32] = 12
                        debts[cd[((32 * idx) + arg1 + 36)]].field_0 = 1
                        if 0 > cd[((32 * idx) + arg2 + 36)]:
                            revert with 0, 32, 33, 0xfe506169642063616e2774206265206d6f7265207468616e207265717565737465, Mask(216, 0, block.gas_limit), 0
                        if arg4:
                            revert with 0, 'Oracle provided invalid rate'
                        mem[_1348 + 104] = msg.sender
                        mem[_1348 + 136] = this.address
                        mem[_1348 + 168] = 0
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, 0
                        mem[_1348 + 100] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Error pulling payment tokens'
                        if debts[cd[((32 * idx) + arg1 + 36)]].field_8 < 0:
                            revert with 0, 'Add overflow'
                        if debts[cd[((32 * idx) + arg1 + 36)]].field_8 >= 0x100000000000000000000000000000000:
                            revert with 0, 'uint128 Overflow'
                        debts[cd[((32 * idx) + arg1 + 36)]].field_8 = debts[cd[((32 * idx) + arg1 + 36)]].field_8
                        require idx < mem[96]
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                        mem[(32 * idx) + 128] = 0
                        require idx < arg1.length
                        mem[0] = cd[((32 * idx) + arg1 + 36)]
                        require idx < mem[96]
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[_1348 + 100] = msg.sender
                        mem[_1348 + 132] = arg3
                        mem[_1348 + 164] = cd[((32 * idx) + arg2 + 36)]
                        mem[_1348 + 196] = 0
                        mem[_1348 + 228] = 0
                        mem[_1348 + 260] = 0
                        emit 0x6825b523: msg.sender, address(arg3), cd[((32 * idx) + arg2 + 36)], 0, 0, 0, cd[((32 * idx) + arg1 + 36)]
                    else:
                        mem[32] = 12
                        if not debts[cd[((32 * idx) + arg1 + 36)]].field_0:
                            if ext_call.return_data[0] > cd[((32 * idx) + arg2 + 36)]:
                                revert with 0, 32, 33, 0xfe506169642063616e2774206265206d6f7265207468616e207265717565737465, mem[_1348 + 201 len 31]
                        else:
                            mem[_1348 + 196] = block.gas_limit
                            mem[_1348 + 228] = ext_call.return_data[0]
                            mem[_1348 + 260] = 192
                            mem[_1348 + 292] = calldata.size
                            mem[_1348 + 324 len calldata.size] = call.data[0 len calldata.size]
                            mem[calldata.size + _1348 + 324] = 0
                            emit ErrorRecover(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bytes32 arg6, bytes arg7):
                                              msg.sender,
                                              0,
                                              gas_remaining,
                                              block.gas_limit,
                                              ext_call.return_data[0],
                                              192,
                                              calldata.size,
                                              call.data[0 len calldata.size],
                                              Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256,
                                              cd[((32 * idx) + arg1 + 36)],
                            mem[32] = 12
                            debts[cd[((32 * idx) + arg1 + 36)]].field_0 = 0
                            if ext_call.return_data[0] > cd[((32 * idx) + arg2 + 36)]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe506169642063616e2774206265206d6f7265207468616e207265717565737465,
                                            Mask(216, 0, block.gas_limit),
                                            Mask(32, 224, ext_call.return_data[0]) >> 224
                        ('le', ('ext_call.return_data', 0, 32), ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg2'))))
                        if arg4:
                            revert with 0, 'Oracle provided invalid rate'
                        mem[_1348 + 104] = msg.sender
                        mem[_1348 + 136] = this.address
                        mem[_1348 + 168] = ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, ext_call.return_data[0]
                        mem[_1348 + 100] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Error pulling payment tokens'
                        if debts[cd[((32 * idx) + arg1 + 36)]].field_8 + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'Add overflow'
                        if debts[cd[((32 * idx) + arg1 + 36)]].field_8 + ext_call.return_data[0] >= 0x100000000000000000000000000000000:
                            revert with 0, 'uint128 Overflow'
                        debts[cd[((32 * idx) + arg1 + 36)]].field_8 = uint128(debts[cd[((32 * idx) + arg1 + 36)]].field_8 + ext_call.return_data[0])
                        require idx < mem[96]
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
                        mem[(32 * idx) + 128] = ext_call.return_data[0]
                        require idx < arg1.length
                        mem[0] = cd[((32 * idx) + arg1 + 36)]
                        require idx < mem[96]
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[_1348 + 100] = msg.sender
                        mem[_1348 + 132] = arg3
                        mem[_1348 + 164] = cd[((32 * idx) + arg2 + 36)]
                        mem[_1348 + 196] = 0
                        mem[_1348 + 228] = ext_call.return_data[0]
                        mem[_1348 + 260] = ext_call.return_data[0]
                        emit 0x6825b523: msg.sender, address(arg3), cd[((32 * idx) + arg2 + 36)], 0, ext_call.return_data[0], ext_call.return_data[0], cd[((32 * idx) + arg1 + 36)]
                idx = idx + 1
                continue 
            _1304 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _1306 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _1304 + 96] = mem[(32 * arg1.length) + 128]
            _2593 = mem[(32 * arg1.length) + 128]
            mem[(32 * _1306) + _1304 + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            return memory
              from mem[64]
               len (32 * _2593) + (32 * _1306) + _1304 + -mem[64] + 128
        mem[128 len 32 * arg1.length] = code.data[18968 len 32 * arg1.length]
        mem[(32 * arg1.length) + 128] = arg1.length
        mem[64] = (64 * arg1.length) + 160
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[18968 len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < arg2.length
            require idx < arg1.length
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 12
            if debts[cd[((32 * idx) + arg1 + 36)]].field_768 != arg4:
                mem[mem[64]] = arg4
                emit PayBatchError(arg4, cd[((32 * idx) + arg1 + 36)]);
                require idx < mem[96]
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                mem[(32 * idx) + 128] = 0
                require idx < arg1.length
                mem[0] = cd[((32 * idx) + arg1 + 36)]
                require idx < mem[96]
                require idx < mem[(32 * arg1.length) + 128]
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = arg3
                mem[mem[64] + 64] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 96] = 0
                mem[mem[64] + 128] = 0
                mem[mem[64] + 160] = 0
                emit 0x6825b523: msg.sender, address(arg3), cd[((32 * idx) + arg2 + 36)], 0, 0, 0, cd[((32 * idx) + arg1 + 36)]
            else:
                if not debts[cd[((32 * idx) + arg1 + 36)]].field_256:
                    revert with 0, 'Debt does not exist'
                _1354 = mem[64]
                mem[mem[64] + 36] = cd[((32 * idx) + arg1 + 36)]
                mem[mem[64] + 68] = cd[((32 * idx) + arg2 + 36)]
                _1355 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1355 + 32] = 0x91fa2df400000000000000000000000000000000000000000000000000000000 or mem[_1355 + 36 len 28]
                if gas_remaining < 80 * block.gas_limit / 100:
                    call debts[cd[((32 * idx) + arg1 + 36)]].field_256.mem[_1355 + 32 len 4] with:
                         gas gas_remaining wei
                        args mem[_1355 + 36 len mem[_1355] - 4]
                else:
                    call debts[cd[((32 * idx) + arg1 + 36)]].field_256.mem[_1355 + 32 len 4] with:
                         gas 80 * block.gas_limit / 100 wei
                        args mem[_1355 + 36 len mem[_1355] - 4]
                if ext_call.success != 1:
                    mem[_1354 + 196] = block.gas_limit
                    mem[_1354 + 228] = 160
                    mem[_1354 + 260] = calldata.size
                    mem[_1354 + 292 len calldata.size] = call.data[0 len calldata.size]
                    mem[calldata.size + _1354 + 292] = 0
                    emit Error(msg.sender, msg.value, gas_remaining, block.gas_limit, Array(len=calldata.size, data=call.data[0 len calldata.size]), cd[((32 * idx) + arg1 + 36)]);
                    mem[32] = 12
                    debts[cd[((32 * idx) + arg1 + 36)]].field_0 = 1
                    if 0 > cd[((32 * idx) + arg2 + 36)]:
                        revert with 0, 32, 33, 0xfe506169642063616e2774206265206d6f7265207468616e207265717565737465, Mask(216, 0, block.gas_limit), 0
                    if arg4:
                        revert with 0, 'Oracle provided invalid rate'
                    mem[_1354 + 104] = msg.sender
                    mem[_1354 + 136] = this.address
                    mem[_1354 + 168] = 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, 0
                    mem[_1354 + 100] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Error pulling payment tokens'
                    if debts[cd[((32 * idx) + arg1 + 36)]].field_8 < 0:
                        revert with 0, 'Add overflow'
                    if debts[cd[((32 * idx) + arg1 + 36)]].field_8 >= 0x100000000000000000000000000000000:
                        revert with 0, 'uint128 Overflow'
                    debts[cd[((32 * idx) + arg1 + 36)]].field_8 = debts[cd[((32 * idx) + arg1 + 36)]].field_8
                    require idx < mem[96]
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                    mem[(32 * idx) + 128] = 0
                    require idx < arg1.length
                    mem[0] = cd[((32 * idx) + arg1 + 36)]
                    require idx < mem[96]
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[_1354 + 100] = msg.sender
                    mem[_1354 + 132] = arg3
                    mem[_1354 + 164] = cd[((32 * idx) + arg2 + 36)]
                    mem[_1354 + 196] = 0
                    mem[_1354 + 228] = 0
                    mem[_1354 + 260] = 0
                    emit 0x6825b523: msg.sender, address(arg3), cd[((32 * idx) + arg2 + 36)], 0, 0, 0, cd[((32 * idx) + arg1 + 36)]
                else:
                    mem[32] = 12
                    if not debts[cd[((32 * idx) + arg1 + 36)]].field_0:
                        if ext_call.return_data[0] > cd[((32 * idx) + arg2 + 36)]:
                            revert with 0, 32, 33, 0xfe506169642063616e2774206265206d6f7265207468616e207265717565737465, mem[_1354 + 201 len 31]
                    else:
                        mem[_1354 + 196] = block.gas_limit
                        mem[_1354 + 228] = ext_call.return_data[0]
                        mem[_1354 + 260] = 192
                        mem[_1354 + 292] = calldata.size
                        mem[_1354 + 324 len calldata.size] = call.data[0 len calldata.size]
                        mem[calldata.size + _1354 + 324] = 0
                        emit ErrorRecover(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bytes32 arg6, bytes arg7):
                                          msg.sender,
                                          0,
                                          gas_remaining,
                                          block.gas_limit,
                                          ext_call.return_data[0],
                                          192,
                                          calldata.size,
                                          call.data[0 len calldata.size],
                                          Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256,
                                          cd[((32 * idx) + arg1 + 36)],
                        mem[32] = 12
                        debts[cd[((32 * idx) + arg1 + 36)]].field_0 = 0
                        if ext_call.return_data[0] > cd[((32 * idx) + arg2 + 36)]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe506169642063616e2774206265206d6f7265207468616e207265717565737465,
                                        Mask(216, 0, block.gas_limit),
                                        Mask(32, 224, ext_call.return_data[0]) >> 224
                    ('le', ('ext_call.return_data', 0, 32), ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg2'))))
                    if arg4:
                        revert with 0, 'Oracle provided invalid rate'
                    mem[_1354 + 104] = msg.sender
                    mem[_1354 + 136] = this.address
                    mem[_1354 + 168] = ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, ext_call.return_data[0]
                    mem[_1354 + 100] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Error pulling payment tokens'
                    if debts[cd[((32 * idx) + arg1 + 36)]].field_8 + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'Add overflow'
                    if debts[cd[((32 * idx) + arg1 + 36)]].field_8 + ext_call.return_data[0] >= 0x100000000000000000000000000000000:
                        revert with 0, 'uint128 Overflow'
                    debts[cd[((32 * idx) + arg1 + 36)]].field_8 = uint128(debts[cd[((32 * idx) + arg1 + 36)]].field_8 + ext_call.return_data[0])
                    require idx < mem[96]
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
                    mem[(32 * idx) + 128] = ext_call.return_data[0]
                    require idx < arg1.length
                    mem[0] = cd[((32 * idx) + arg1 + 36)]
                    require idx < mem[96]
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[_1354 + 100] = msg.sender
                    mem[_1354 + 132] = arg3
                    mem[_1354 + 164] = cd[((32 * idx) + arg2 + 36)]
                    mem[_1354 + 196] = 0
                    mem[_1354 + 228] = ext_call.return_data[0]
                    mem[_1354 + 260] = ext_call.return_data[0]
                    emit 0x6825b523: msg.sender, address(arg3), cd[((32 * idx) + arg2 + 36)], 0, ext_call.return_data[0], ext_call.return_data[0], cd[((32 * idx) + arg1 + 36)]
            idx = idx + 1
            continue 
        _1307 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _1309 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _1307 + 96] = mem[(32 * arg1.length) + 128]
        _2596 = mem[(32 * arg1.length) + 128]
        mem[(32 * _1309) + _1307 + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        return memory
          from mem[64]
           len (32 * _2596) + (32 * _1309) + _1307 + -mem[64] + 128
    mem[164 len arg5.length] = arg5[all]
    mem[arg5.length + 164] = 0
    require ext_code.size(arg4)
    call arg4.readSample(bytes arg1) with:
         gas gas_remaining wei
        args Array(len=arg5.length, data=arg5[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[128] = arg1.length
    mem[160] = ext_call.return_data[0]
    mem[192] = ext_call.return_data[32]
    emit ReadedOracleBatch(address(arg4), arg1.length, ext_call.return_data[0], ext_call.return_data[32]);
    mem[96] = arg1.length
    if not arg1.length:
        mem[(32 * arg1.length) + 128] = arg1.length
        mem[64] = (64 * arg1.length) + 160
        idx = 0
        while idx < arg1.length:
            require idx < arg2.length
            require idx < arg1.length
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 12
            if debts[cd[((32 * idx) + arg1 + 36)]].field_768 != arg4:
                mem[mem[64]] = arg4
                emit PayBatchError(arg4, cd[((32 * idx) + arg1 + 36)]);
                require idx < mem[96]
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                mem[(32 * idx) + 128] = 0
                require idx < arg1.length
                mem[0] = cd[((32 * idx) + arg1 + 36)]
                require idx < mem[96]
                require idx < mem[(32 * arg1.length) + 128]
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = arg3
                mem[mem[64] + 64] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 96] = 0
                mem[mem[64] + 128] = 0
                mem[mem[64] + 160] = 0
                emit 0x6825b523: msg.sender, address(arg3), cd[((32 * idx) + arg2 + 36)], 0, 0, 0, cd[((32 * idx) + arg1 + 36)]
            else:
                if not debts[cd[((32 * idx) + arg1 + 36)]].field_256:
                    revert with 0, 'Debt does not exist'
                _1360 = mem[64]
                mem[mem[64] + 36] = cd[((32 * idx) + arg1 + 36)]
                mem[mem[64] + 68] = cd[((32 * idx) + arg2 + 36)]
                _1361 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1361 + 32] = 0x91fa2df400000000000000000000000000000000000000000000000000000000 or mem[_1361 + 36 len 28]
                if gas_remaining < 80 * block.gas_limit / 100:
                    call debts[cd[((32 * idx) + arg1 + 36)]].field_256.mem[_1361 + 32 len 4] with:
                         gas gas_remaining wei
                        args mem[_1361 + 36 len mem[_1361] - 4]
                else:
                    call debts[cd[((32 * idx) + arg1 + 36)]].field_256.mem[_1361 + 32 len 4] with:
                         gas 80 * block.gas_limit / 100 wei
                        args mem[_1361 + 36 len mem[_1361] - 4]
                if ext_call.success != 1:
                    mem[_1360 + 196] = block.gas_limit
                    mem[_1360 + 228] = 160
                    mem[_1360 + 260] = calldata.size
                    mem[_1360 + 292 len calldata.size] = call.data[0 len calldata.size]
                    mem[calldata.size + _1360 + 292] = 0
                    emit Error(msg.sender, msg.value, gas_remaining, block.gas_limit, Array(len=calldata.size, data=call.data[0 len calldata.size]), cd[((32 * idx) + arg1 + 36)]);
                    mem[32] = 12
                    debts[cd[((32 * idx) + arg1 + 36)]].field_0 = 1
                    if 0 > cd[((32 * idx) + arg2 + 36)]:
                        revert with 0, 32, 33, 0xfe506169642063616e2774206265206d6f7265207468616e207265717565737465, Mask(216, 0, block.gas_limit), 0
                    if not arg4:
                        mem[_1360 + 104] = msg.sender
                        mem[_1360 + 136] = this.address
                        mem[_1360 + 168] = 0
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, 0
                        mem[_1360 + 100] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Error pulling payment tokens'
                        if debts[cd[((32 * idx) + arg1 + 36)]].field_8 < 0:
                            revert with 0, 'Add overflow'
                        if debts[cd[((32 * idx) + arg1 + 36)]].field_8 >= 0x100000000000000000000000000000000:
                            revert with 0, 'uint128 Overflow'
                        debts[cd[((32 * idx) + arg1 + 36)]].field_8 = debts[cd[((32 * idx) + arg1 + 36)]].field_8
                        require idx < mem[96]
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                        mem[(32 * idx) + 128] = 0
                        require idx < arg1.length
                        mem[0] = cd[((32 * idx) + arg1 + 36)]
                        require idx < mem[96]
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[_1360 + 100] = msg.sender
                        mem[_1360 + 132] = arg3
                        mem[_1360 + 164] = cd[((32 * idx) + arg2 + 36)]
                        mem[_1360 + 196] = 0
                        mem[_1360 + 228] = 0
                        mem[_1360 + 260] = 0
                        emit 0x6825b523: msg.sender, address(arg3), cd[((32 * idx) + arg2 + 36)], 0, 0, 0, cd[((32 * idx) + arg1 + 36)]
                    else:
                        if not ext_call.return_data[0]:
                            revert with 0, 'Oracle provided invalid rate'
                        if 0 / ext_call.return_data[0]:
                            revert with 0, 'Mult overflow'
                        require ext_call.return_data[32]
                        if 0 % ext_call.return_data[32] <= 0:
                            mem[_1360 + 104] = msg.sender
                            mem[_1360 + 136] = this.address
                            mem[_1360 + 168] = 0 / ext_call.return_data[32]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 0 / ext_call.return_data[32]
                            mem[_1360 + 100] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Error pulling payment tokens'
                            if debts[cd[((32 * idx) + arg1 + 36)]].field_8 + (0 / ext_call.return_data[32]) < 0 / ext_call.return_data[32]:
                                revert with 0, 'Add overflow'
                            if debts[cd[((32 * idx) + arg1 + 36)]].field_8 + (0 / ext_call.return_data[32]) >= 0x100000000000000000000000000000000:
                                revert with 0, 'uint128 Overflow'
                            debts[cd[((32 * idx) + arg1 + 36)]].field_8 = uint128(debts[cd[((32 * idx) + arg1 + 36)]].field_8 + (0 / ext_call.return_data[32]))
                            require idx < mem[96]
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 0 / ext_call.return_data[32]
                            mem[(32 * idx) + 128] = 0
                            require idx < arg1.length
                            mem[0] = cd[((32 * idx) + arg1 + 36)]
                            require idx < mem[96]
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_1360 + 100] = msg.sender
                            mem[_1360 + 132] = arg3
                            mem[_1360 + 164] = cd[((32 * idx) + arg2 + 36)]
                            mem[_1360 + 196] = 0
                            mem[_1360 + 228] = 0
                            mem[_1360 + 260] = 0 / ext_call.return_data[32]
                            emit 0x6825b523: msg.sender, address(arg3), cd[((32 * idx) + arg2 + 36)], 0, 0, 0 / ext_call.return_data[32], cd[((32 * idx) + arg1 + 36)]
                        else:
                            if (0 / ext_call.return_data[32]) + 1 < 0 / ext_call.return_data[32]:
                                revert with 0, 'Add overflow'
                            mem[_1360 + 104] = msg.sender
                            mem[_1360 + 136] = this.address
                            mem[_1360 + 168] = (0 / ext_call.return_data[32]) + 1
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (0 / ext_call.return_data[32]) + 1
                            mem[_1360 + 100] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Error pulling payment tokens'
                            if debts[cd[((32 * idx) + arg1 + 36)]].field_8 < 0:
                                revert with 0, 'Add overflow'
                            if debts[cd[((32 * idx) + arg1 + 36)]].field_8 + (0 / ext_call.return_data[32]) + 1 >= 0x100000000000000000000000000000000:
                                revert with 0, 'uint128 Overflow'
                            debts[cd[((32 * idx) + arg1 + 36)]].field_8 = uint128(debts[cd[((32 * idx) + arg1 + 36)]].field_8 + (0 / ext_call.return_data[32]) + 1)
                            require idx < mem[96]
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = (0 / ext_call.return_data[32]) + 1
                            mem[(32 * idx) + 128] = 0
                            require idx < arg1.length
                            mem[0] = cd[((32 * idx) + arg1 + 36)]
                            require idx < mem[96]
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_1360 + 100] = msg.sender
                            mem[_1360 + 132] = arg3
                            mem[_1360 + 164] = cd[((32 * idx) + arg2 + 36)]
                            mem[_1360 + 196] = 0
                            mem[_1360 + 228] = 0
                            mem[_1360 + 260] = (0 / ext_call.return_data[32]) + 1
                            emit 0x6825b523: msg.sender, address(arg3), cd[((32 * idx) + arg2 + 36)], 0, 0, (0 / ext_call.return_data[32]) + 1, cd[((32 * idx) + arg1 + 36)]
                else:
                    mem[32] = 12
                    if not debts[cd[((32 * idx) + arg1 + 36)]].field_0:
                        if ext_call.return_data[0] > cd[((32 * idx) + arg2 + 36)]:
                            revert with 0, 32, 33, 0xfe506169642063616e2774206265206d6f7265207468616e207265717565737465, mem[_1360 + 201 len 31]
                    else:
                        mem[_1360 + 196] = block.gas_limit
                        mem[_1360 + 228] = ext_call.return_data[0]
                        mem[_1360 + 260] = 192
                        mem[_1360 + 292] = calldata.size
                        mem[_1360 + 324 len calldata.size] = call.data[0 len calldata.size]
                        mem[calldata.size + _1360 + 324] = 0
                        emit ErrorRecover(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bytes32 arg6, bytes arg7):
                                          msg.sender,
                                          0,
                                          gas_remaining,
                                          block.gas_limit,
                                          ext_call.return_data[0],
                                          192,
                                          calldata.size,
                                          call.data[0 len calldata.size],
                                          Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256,
                                          cd[((32 * idx) + arg1 + 36)],
                        mem[32] = 12
                        debts[cd[((32 * idx) + arg1 + 36)]].field_0 = 0
                        if ext_call.return_data[0] > cd[((32 * idx) + arg2 + 36)]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe506169642063616e2774206265206d6f7265207468616e207265717565737465,
                                        Mask(216, 0, block.gas_limit),
                                        Mask(32, 224, ext_call.return_data[0]) >> 224
                    ('le', ('ext_call.return_data', 0, 32), ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg2'))))
                    if not arg4:
                        mem[_1360 + 104] = msg.sender
                        mem[_1360 + 136] = this.address
                        mem[_1360 + 168] = ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, ext_call.return_data[0]
                        mem[_1360 + 100] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Error pulling payment tokens'
                        if debts[cd[((32 * idx) + arg1 + 36)]].field_8 + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'Add overflow'
                        if debts[cd[((32 * idx) + arg1 + 36)]].field_8 + ext_call.return_data[0] >= 0x100000000000000000000000000000000:
                            revert with 0, 'uint128 Overflow'
                        debts[cd[((32 * idx) + arg1 + 36)]].field_8 = uint128(debts[cd[((32 * idx) + arg1 + 36)]].field_8 + ext_call.return_data[0])
                        require idx < mem[96]
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
                        mem[(32 * idx) + 128] = ext_call.return_data[0]
                        require idx < arg1.length
                        mem[0] = cd[((32 * idx) + arg1 + 36)]
                        require idx < mem[96]
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[_1360 + 100] = msg.sender
                        mem[_1360 + 132] = arg3
                        mem[_1360 + 164] = cd[((32 * idx) + arg2 + 36)]
                        mem[_1360 + 196] = 0
                        mem[_1360 + 228] = ext_call.return_data[0]
                        mem[_1360 + 260] = ext_call.return_data[0]
                        emit 0x6825b523: msg.sender, address(arg3), cd[((32 * idx) + arg2 + 36)], 0, ext_call.return_data[0], ext_call.return_data[0], cd[((32 * idx) + arg1 + 36)]
                    else:
                        if not ext_call.return_data[0]:
                            revert with 0, 'Oracle provided invalid rate'
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'Mult overflow'
                        require ext_call.return_data[32]
                        if ext_call.return_data[0] * ext_call.return_data[0] % ext_call.return_data[32] <= 0:
                            mem[_1360 + 104] = msg.sender
                            mem[_1360 + 136] = this.address
                            mem[_1360 + 168] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]
                            mem[_1360 + 100] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Error pulling payment tokens'
                            if debts[cd[((32 * idx) + arg1 + 36)]].field_8 + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]:
                                revert with 0, 'Add overflow'
                            if debts[cd[((32 * idx) + arg1 + 36)]].field_8 + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) >= 0x100000000000000000000000000000000:
                                revert with 0, 'uint128 Overflow'
                            debts[cd[((32 * idx) + arg1 + 36)]].field_8 = uint128(debts[cd[((32 * idx) + arg1 + 36)]].field_8 + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]))
                            require idx < mem[96]
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]
                            mem[(32 * idx) + 128] = ext_call.return_data[0]
                            require idx < arg1.length
                            mem[0] = cd[((32 * idx) + arg1 + 36)]
                            require idx < mem[96]
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_1360 + 100] = msg.sender
                            mem[_1360 + 132] = arg3
                            mem[_1360 + 164] = cd[((32 * idx) + arg2 + 36)]
                            mem[_1360 + 196] = 0
                            mem[_1360 + 228] = ext_call.return_data[0]
                            mem[_1360 + 260] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]
                            emit 0x6825b523: msg.sender, address(arg3), cd[((32 * idx) + arg2 + 36)], 0, ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32], cd[((32 * idx) + arg1 + 36)]
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]:
                                revert with 0, 'Add overflow'
                            mem[_1360 + 104] = msg.sender
                            mem[_1360 + 136] = this.address
                            mem[_1360 + 168] = (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1
                            mem[_1360 + 100] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Error pulling payment tokens'
                            if debts[cd[((32 * idx) + arg1 + 36)]].field_8 < 0:
                                revert with 0, 'Add overflow'
                            if debts[cd[((32 * idx) + arg1 + 36)]].field_8 + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1 >= 0x100000000000000000000000000000000:
                                revert with 0, 'uint128 Overflow'
                            debts[cd[((32 * idx) + arg1 + 36)]].field_8 = uint128(debts[cd[((32 * idx) + arg1 + 36)]].field_8 + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1)
                            require idx < mem[96]
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1
                            mem[(32 * idx) + 128] = ext_call.return_data[0]
                            require idx < arg1.length
                            mem[0] = cd[((32 * idx) + arg1 + 36)]
                            require idx < mem[96]
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_1360 + 100] = msg.sender
                            mem[_1360 + 132] = arg3
                            mem[_1360 + 164] = cd[((32 * idx) + arg2 + 36)]
                            mem[_1360 + 196] = 0
                            mem[_1360 + 228] = ext_call.return_data[0]
                            mem[_1360 + 260] = (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1
                            emit 0x6825b523: msg.sender, address(arg3), cd[((32 * idx) + arg2 + 36)], 0, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1, cd[((32 * idx) + arg1 + 36)]
            idx = idx + 1
            continue 
        _1310 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _1312 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _1310 + 96] = mem[(32 * arg1.length) + 128]
        _2599 = mem[(32 * arg1.length) + 128]
        mem[(32 * _1312) + _1310 + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        return memory
          from mem[64]
           len (32 * _2599) + (32 * _1312) + _1310 + -mem[64] + 128
    mem[128 len 32 * arg1.length] = code.data[18968 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg1.length
    mem[64] = (64 * arg1.length) + 160
    mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[18968 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 12
        if debts[cd[((32 * idx) + arg1 + 36)]].field_768 != arg4:
            mem[mem[64]] = arg4
            emit PayBatchError(arg4, cd[((32 * idx) + arg1 + 36)]);
            require idx < mem[96]
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = 0
            mem[(32 * idx) + 128] = 0
            require idx < arg1.length
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            require idx < mem[96]
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[64]] = msg.sender
            mem[mem[64] + 32] = arg3
            mem[mem[64] + 64] = cd[((32 * idx) + arg2 + 36)]
            mem[mem[64] + 96] = 0
            mem[mem[64] + 128] = 0
            mem[mem[64] + 160] = 0
            emit 0x6825b523: msg.sender, address(arg3), cd[((32 * idx) + arg2 + 36)], 0, 0, 0, cd[((32 * idx) + arg1 + 36)]
        else:
            if not debts[cd[((32 * idx) + arg1 + 36)]].field_256:
                revert with 0, 'Debt does not exist'
            _1366 = mem[64]
            mem[mem[64] + 36] = cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] + 68] = cd[((32 * idx) + arg2 + 36)]
            _1367 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_1367 + 32] = 0x91fa2df400000000000000000000000000000000000000000000000000000000 or mem[_1367 + 36 len 28]
            if gas_remaining < 80 * block.gas_limit / 100:
                call debts[cd[((32 * idx) + arg1 + 36)]].field_256.mem[_1367 + 32 len 4] with:
                     gas gas_remaining wei
                    args mem[_1367 + 36 len mem[_1367] - 4]
            else:
                call debts[cd[((32 * idx) + arg1 + 36)]].field_256.mem[_1367 + 32 len 4] with:
                     gas 80 * block.gas_limit / 100 wei
                    args mem[_1367 + 36 len mem[_1367] - 4]
            if ext_call.success != 1:
                mem[_1366 + 196] = block.gas_limit
                mem[_1366 + 228] = 160
                mem[_1366 + 260] = calldata.size
                mem[_1366 + 292 len calldata.size] = call.data[0 len calldata.size]
                mem[calldata.size + _1366 + 292] = 0
                emit Error(msg.sender, msg.value, gas_remaining, block.gas_limit, Array(len=calldata.size, data=call.data[0 len calldata.size]), cd[((32 * idx) + arg1 + 36)]);
                mem[32] = 12
                debts[cd[((32 * idx) + arg1 + 36)]].field_0 = 1
                if 0 > cd[((32 * idx) + arg2 + 36)]:
                    revert with 0, 32, 33, 0xfe506169642063616e2774206265206d6f7265207468616e207265717565737465, Mask(216, 0, block.gas_limit), 0
                if not arg4:
                    mem[_1366 + 104] = msg.sender
                    mem[_1366 + 136] = this.address
                    mem[_1366 + 168] = 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, 0
                    mem[_1366 + 100] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Error pulling payment tokens'
                    if debts[cd[((32 * idx) + arg1 + 36)]].field_8 < 0:
                        revert with 0, 'Add overflow'
                    if debts[cd[((32 * idx) + arg1 + 36)]].field_8 >= 0x100000000000000000000000000000000:
                        revert with 0, 'uint128 Overflow'
                    debts[cd[((32 * idx) + arg1 + 36)]].field_8 = debts[cd[((32 * idx) + arg1 + 36)]].field_8
                    require idx < mem[96]
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                    mem[(32 * idx) + 128] = 0
                    require idx < arg1.length
                    mem[0] = cd[((32 * idx) + arg1 + 36)]
                    require idx < mem[96]
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[_1366 + 100] = msg.sender
                    mem[_1366 + 132] = arg3
                    mem[_1366 + 164] = cd[((32 * idx) + arg2 + 36)]
                    mem[_1366 + 196] = 0
                    mem[_1366 + 228] = 0
                    mem[_1366 + 260] = 0
                    emit 0x6825b523: msg.sender, address(arg3), cd[((32 * idx) + arg2 + 36)], 0, 0, 0, cd[((32 * idx) + arg1 + 36)]
                else:
                    if not ext_call.return_data[0]:
                        revert with 0, 'Oracle provided invalid rate'
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 'Mult overflow'
                    require ext_call.return_data[32]
                    if 0 % ext_call.return_data[32] <= 0:
                        mem[_1366 + 104] = msg.sender
                        mem[_1366 + 136] = this.address
                        mem[_1366 + 168] = 0 / ext_call.return_data[32]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, 0 / ext_call.return_data[32]
                        mem[_1366 + 100] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Error pulling payment tokens'
                        if debts[cd[((32 * idx) + arg1 + 36)]].field_8 + (0 / ext_call.return_data[32]) < 0 / ext_call.return_data[32]:
                            revert with 0, 'Add overflow'
                        if debts[cd[((32 * idx) + arg1 + 36)]].field_8 + (0 / ext_call.return_data[32]) >= 0x100000000000000000000000000000000:
                            revert with 0, 'uint128 Overflow'
                        debts[cd[((32 * idx) + arg1 + 36)]].field_8 = uint128(debts[cd[((32 * idx) + arg1 + 36)]].field_8 + (0 / ext_call.return_data[32]))
                        require idx < mem[96]
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = 0 / ext_call.return_data[32]
                        mem[(32 * idx) + 128] = 0
                        require idx < arg1.length
                        mem[0] = cd[((32 * idx) + arg1 + 36)]
                        require idx < mem[96]
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[_1366 + 100] = msg.sender
                        mem[_1366 + 132] = arg3
                        mem[_1366 + 164] = cd[((32 * idx) + arg2 + 36)]
                        mem[_1366 + 196] = 0
                        mem[_1366 + 228] = 0
                        mem[_1366 + 260] = 0 / ext_call.return_data[32]
                        emit 0x6825b523: msg.sender, address(arg3), cd[((32 * idx) + arg2 + 36)], 0, 0, 0 / ext_call.return_data[32], cd[((32 * idx) + arg1 + 36)]
                    else:
                        if (0 / ext_call.return_data[32]) + 1 < 0 / ext_call.return_data[32]:
                            revert with 0, 'Add overflow'
                        mem[_1366 + 104] = msg.sender
                        mem[_1366 + 136] = this.address
                        mem[_1366 + 168] = (0 / ext_call.return_data[32]) + 1
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (0 / ext_call.return_data[32]) + 1
                        mem[_1366 + 100] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Error pulling payment tokens'
                        if debts[cd[((32 * idx) + arg1 + 36)]].field_8 < 0:
                            revert with 0, 'Add overflow'
                        if debts[cd[((32 * idx) + arg1 + 36)]].field_8 + (0 / ext_call.return_data[32]) + 1 >= 0x100000000000000000000000000000000:
                            revert with 0, 'uint128 Overflow'
                        debts[cd[((32 * idx) + arg1 + 36)]].field_8 = uint128(debts[cd[((32 * idx) + arg1 + 36)]].field_8 + (0 / ext_call.return_data[32]) + 1)
                        require idx < mem[96]
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = (0 / ext_call.return_data[32]) + 1
                        mem[(32 * idx) + 128] = 0
                        require idx < arg1.length
                        mem[0] = cd[((32 * idx) + arg1 + 36)]
                        require idx < mem[96]
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[_1366 + 100] = msg.sender
                        mem[_1366 + 132] = arg3
                        mem[_1366 + 164] = cd[((32 * idx) + arg2 + 36)]
                        mem[_1366 + 196] = 0
                        mem[_1366 + 228] = 0
                        mem[_1366 + 260] = (0 / ext_call.return_data[32]) + 1
                        emit 0x6825b523: msg.sender, address(arg3), cd[((32 * idx) + arg2 + 36)], 0, 0, (0 / ext_call.return_data[32]) + 1, cd[((32 * idx) + arg1 + 36)]
            else:
                mem[32] = 12
                if not debts[cd[((32 * idx) + arg1 + 36)]].field_0:
                    if ext_call.return_data[0] > cd[((32 * idx) + arg2 + 36)]:
                        revert with 0, 32, 33, 0xfe506169642063616e2774206265206d6f7265207468616e207265717565737465, mem[_1366 + 201 len 31]
                else:
                    mem[_1366 + 196] = block.gas_limit
                    mem[_1366 + 228] = ext_call.return_data[0]
                    mem[_1366 + 260] = 192
                    mem[_1366 + 292] = calldata.size
                    mem[_1366 + 324 len calldata.size] = call.data[0 len calldata.size]
                    mem[calldata.size + _1366 + 324] = 0
                    emit ErrorRecover(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bytes32 arg6, bytes arg7):
                                      msg.sender,
                                      0,
                                      gas_remaining,
                                      block.gas_limit,
                                      ext_call.return_data[0],
                                      192,
                                      calldata.size,
                                      call.data[0 len calldata.size],
                                      Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256,
                                      cd[((32 * idx) + arg1 + 36)],
                    mem[32] = 12
                    debts[cd[((32 * idx) + arg1 + 36)]].field_0 = 0
                    if ext_call.return_data[0] > cd[((32 * idx) + arg2 + 36)]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe506169642063616e2774206265206d6f7265207468616e207265717565737465,
                                    Mask(216, 0, block.gas_limit),
                                    Mask(32, 224, ext_call.return_data[0]) >> 224
                ('le', ('ext_call.return_data', 0, 32), ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg2'))))
                if not arg4:
                    mem[_1366 + 104] = msg.sender
                    mem[_1366 + 136] = this.address
                    mem[_1366 + 168] = ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, ext_call.return_data[0]
                    mem[_1366 + 100] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Error pulling payment tokens'
                    if debts[cd[((32 * idx) + arg1 + 36)]].field_8 + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'Add overflow'
                    if debts[cd[((32 * idx) + arg1 + 36)]].field_8 + ext_call.return_data[0] >= 0x100000000000000000000000000000000:
                        revert with 0, 'uint128 Overflow'
                    debts[cd[((32 * idx) + arg1 + 36)]].field_8 = uint128(debts[cd[((32 * idx) + arg1 + 36)]].field_8 + ext_call.return_data[0])
                    require idx < mem[96]
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
                    mem[(32 * idx) + 128] = ext_call.return_data[0]
                    require idx < arg1.length
                    mem[0] = cd[((32 * idx) + arg1 + 36)]
                    require idx < mem[96]
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[_1366 + 100] = msg.sender
                    mem[_1366 + 132] = arg3
                    mem[_1366 + 164] = cd[((32 * idx) + arg2 + 36)]
                    mem[_1366 + 196] = 0
                    mem[_1366 + 228] = ext_call.return_data[0]
                    mem[_1366 + 260] = ext_call.return_data[0]
                    emit 0x6825b523: msg.sender, address(arg3), cd[((32 * idx) + arg2 + 36)], 0, ext_call.return_data[0], ext_call.return_data[0], cd[((32 * idx) + arg1 + 36)]
                else:
                    if not ext_call.return_data[0]:
                        revert with 0, 'Oracle provided invalid rate'
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'Mult overflow'
                    require ext_call.return_data[32]
                    if ext_call.return_data[0] * ext_call.return_data[0] % ext_call.return_data[32] <= 0:
                        mem[_1366 + 104] = msg.sender
                        mem[_1366 + 136] = this.address
                        mem[_1366 + 168] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]
                        mem[_1366 + 100] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Error pulling payment tokens'
                        if debts[cd[((32 * idx) + arg1 + 36)]].field_8 + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]:
                            revert with 0, 'Add overflow'
                        if debts[cd[((32 * idx) + arg1 + 36)]].field_8 + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) >= 0x100000000000000000000000000000000:
                            revert with 0, 'uint128 Overflow'
                        debts[cd[((32 * idx) + arg1 + 36)]].field_8 = uint128(debts[cd[((32 * idx) + arg1 + 36)]].field_8 + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]))
                        require idx < mem[96]
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]
                        mem[(32 * idx) + 128] = ext_call.return_data[0]
                        require idx < arg1.length
                        mem[0] = cd[((32 * idx) + arg1 + 36)]
                        require idx < mem[96]
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[_1366 + 100] = msg.sender
                        mem[_1366 + 132] = arg3
                        mem[_1366 + 164] = cd[((32 * idx) + arg2 + 36)]
                        mem[_1366 + 196] = 0
                        mem[_1366 + 228] = ext_call.return_data[0]
                        mem[_1366 + 260] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]
                        emit 0x6825b523: msg.sender, address(arg3), cd[((32 * idx) + arg2 + 36)], 0, ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32], cd[((32 * idx) + arg1 + 36)]
                    else:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]:
                            revert with 0, 'Add overflow'
                        mem[_1366 + 104] = msg.sender
                        mem[_1366 + 136] = this.address
                        mem[_1366 + 168] = (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1
                        mem[_1366 + 100] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Error pulling payment tokens'
                        if debts[cd[((32 * idx) + arg1 + 36)]].field_8 < 0:
                            revert with 0, 'Add overflow'
                        if debts[cd[((32 * idx) + arg1 + 36)]].field_8 + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1 >= 0x100000000000000000000000000000000:
                            revert with 0, 'uint128 Overflow'
                        debts[cd[((32 * idx) + arg1 + 36)]].field_8 = uint128(debts[cd[((32 * idx) + arg1 + 36)]].field_8 + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1)
                        require idx < mem[96]
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1
                        mem[(32 * idx) + 128] = ext_call.return_data[0]
                        require idx < arg1.length
                        mem[0] = cd[((32 * idx) + arg1 + 36)]
                        require idx < mem[96]
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[_1366 + 100] = msg.sender
                        mem[_1366 + 132] = arg3
                        mem[_1366 + 164] = cd[((32 * idx) + arg2 + 36)]
                        mem[_1366 + 196] = 0
                        mem[_1366 + 228] = ext_call.return_data[0]
                        mem[_1366 + 260] = (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1
                        emit 0x6825b523: msg.sender, address(arg3), cd[((32 * idx) + arg2 + 36)], 0, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[32]) + 1, cd[((32 * idx) + arg1 + 36)]
        idx = idx + 1
        continue 
    _1313 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    _1315 = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    mem[(32 * mem[96]) + _1313 + 96] = mem[(32 * arg1.length) + 128]
    _2602 = mem[(32 * arg1.length) + 128]
    mem[(32 * _1315) + _1313 + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    return memory
      from mem[64]
       len (32 * _2602) + (32 * _1315) + _1313 + -mem[64] + 128
}



}

contract main {




// =====================  Runtime code  =====================


#
#  - sub_aa14b2b3(?)
#
const getBalance = eth.balance(this.address)

const ERC1155_RECEIVED = 0xf23a6e6100000000000000000000000000000000000000000000000000000000

const ERC1155_BATCH_RECEIVED = 0xbc197c8100000000000000000000000000000000000000000000000000000000


mapping of uint256 balanceOf;
mapping of uint8 stor1;
mapping of address ownerOf;
address owner;
array of address accounts;
uint8 stor5;
uint256 currID;
address stor7;
uint256 stor8;
mapping of address creators;
mapping of uint256 maxIndex;
mapping of address sub_77a1172a;
address contractAddress;
mapping of uint256 tokenSupply;
mapping of uint256 totalMinted;
mapping of uint256 sub_9aa0dd82;
address sub_c550424cAddress;
mapping of uint256 sub_21bacd63;
mapping of uint256 sub_1bb555ed;
mapping of uint256 sub_7d692220;
mapping of uint256 sub_45316490;
uint256 stor22;
uint256 stor23;

function balanceOf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return balanceOf[arg2][address(arg1)]
}

function maxIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    return maxIndex[arg1]
}

function sub_1bb555ed(?) {
    require calldata.size - 4 >= 32
    return sub_1bb555ed[arg1]
}

function sub_21bacd63(?) {
    require calldata.size - 4 >= 32
    return sub_21bacd63[arg1]
}

function tokenSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tokenSupply[arg1]
}

function currID() {
    return currID
}

function sub_45316490(?) {
    require calldata.size - 4 >= 32
    return sub_45316490[arg1]
}

function paused() {
    return bool(stor5)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    return ownerOf[arg1]
}

function sub_77a1172a(?) {
    require calldata.size - 4 >= 32
    return sub_77a1172a[arg1]
}

function sub_7d692220(?) {
    require calldata.size - 4 >= 64
    return sub_7d692220[arg1][arg2]
}

function owner() {
    return owner
}

function sub_9aa0dd82(?) {
    require calldata.size - 4 >= 32
    return sub_9aa0dd82[arg1]
}

function totalMinted(uint256 arg1) {
    require calldata.size - 4 >= 32
    return totalMinted[arg1]
}

function sub_b54d9fcc(?) {
    return sub_45316490[stor22]
}

function sub_c550424c(?) {
    return sub_c550424cAddress
}

function creators(uint256 arg1) {
    require calldata.size - 4 >= 32
    return creators[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor1[address(arg1)][address(arg2)])
}

function accounts(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < accounts.length
    return address(accounts[arg1])
}

function contractAddress() {
    return contractAddress
}

function _fallback() payable {
    revert
}

function pause() {
    require msg.sender == owner
    stor5 = 1
}

function unpause() {
    require msg.sender == owner
    stor5 = 0
}

function getNonFungibleIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    return uint128(arg1)
}

function isFungible(uint256 arg1) {
    require calldata.size - 4 >= 32
    return not Mask(1, 255, arg1)
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.value == arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function getNonFungibleBaseType(uint256 arg1) {
    require calldata.size - 4 >= 32
    return Mask(128, 128, arg1)
}

function sub_d7073225(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_c550424cAddress = arg1
}

function sub_3b82af6e(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    contractAddress = arg1
    stor7 = arg1
}

function setCreator(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    accounts.length++
    address(accounts[accounts.length]) = arg1
}

function isNonFungible(uint256 arg1) {
    require calldata.size - 4 >= 32
    return (Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    stor1[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_a4f2d089(?) {
    require msg.sender == owner
    accounts.length = 0
    idx = 0
    while accounts.length > idx:
        uint256(accounts[idx]) = 0
        idx = idx + 1
        continue 
}

function sub_34a3a6aa(?) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    idx = arg1
    while idx <= arg2:
        mem[0] = idx
        mem[32] = 15
        sub_9aa0dd82[idx] = arg3
        idx = idx + 1
        continue 
}

function withdraw() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d1f01ebf(?) {
    require 0 < accounts.length
    idx = 0
    while address(accounts[idx]) != msg.sender:
        require idx + 1 < accounts.length
        mem[0] = 4
        idx = idx + 1
        continue 
    if stor23 >= stor22:
        stor22++
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    if Mask(32, 224, arg1) != 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        if Mask(32, 224, arg1) != 0xd9b67a2600000000000000000000000000000000000000000000000000000000:
            return 0
    return 1
}

function isNonFungibleItem(uint256 arg1) {
    require calldata.size - 4 >= 32
    if Mask(1, 255, arg1) != 0x8000000000000000000000000000000000000000000000000000000000000000:
        return (Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000)
    return not not uint128(arg1)
}

function isNonFungibleBaseType(uint256 arg1) {
    require calldata.size - 4 >= 32
    if Mask(1, 255, arg1) != 0x8000000000000000000000000000000000000000000000000000000000000000:
        return (Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000)
    return not uint128(arg1)
}

function sub_b70fd1bc(?) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(stor7)
    staticcall stor7.0x676a7b76 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_7d692220[arg1][arg2] = ext_call.return_data[0]
}

function sub_eb8348aa(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require msg.sender == owner
    sub_21bacd63[cd[4]] = 1
    sub_1bb555ed[cd[4]] = 1
    require 0 < ('cd', 36).length
    require ext_code.size(stor7)
    staticcall stor7.0x676a7b76 with:
            gas gas_remaining wei
           args ('cd', 36)[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_7d692220[cd[4]][stor18[cd[4]]] = ext_call.return_data[0]
    idx = 1
    s = 0
    while idx < ('cd', 36).length:
        sub_1bb555ed[cd[4]]++
        require s + 1 < ('cd', 36).length
        mem[100] = cd[((32 * s + 1) + cd[36] + 36)]
        require ext_code.size(stor7)
        staticcall stor7.0x676a7b76 with:
                gas gas_remaining wei
               args cd[((32 * s + 1) + cd[36] + 36)]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = sub_1bb555ed[cd[4]]
        mem[32] = sha3(cd[4], 20)
        sub_7d692220[cd[4]][stor19[cd[4]]] = ext_call.return_data[0]
        idx = idx + 1
        s = s + 1
        continue 
}

function balanceOfBatch(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg1.length == arg2.length
    if arg1.length:
        mem[128 len 32 * arg1.length] = code.data[22869 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        if Mask(1, 255, cd[((32 * idx) + arg2 + 36)]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
            if uint128(cd[((32 * idx) + arg2 + 36)]):
                require idx < arg1.length
                require idx < arg1.length
        require idx < arg1.length
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = sha3(cd[((32 * idx) + arg2 + 36)], 0)
        require idx < arg1.length
        mem[(32 * idx) + 128] = balanceOf[cd[((32 * idx) + arg2 + 36)]][address(cd[((32 * idx) + arg1 + 36)])]
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 192 len floor32(arg1.length)] = mem[128 len floor32(arg1.length)]
    return Array(len=arg1.length, data=mem[128 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 192 len (32 * arg1.length) - floor32(arg1.length)]), 
}

function sub_92ae46d7(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == owner
    stor8++
    if not arg2:
        currID = stor8 + 1 << 128
        creators[stor8 + 1] = msg.sender
        emit TransferSingle(address(msg.sender), 0, 0, stor8 + 1, 0);
        if arg3:
            tokenSupply[stor8 + 1] = arg3
            totalMinted[stor8 + 1] = 0
        if arg1.length > 0:
            emit URI(Array(len=arg1.length, data=arg1[all]), stor8 + 1 << 128);
        return (stor8 + 1 << 128)
    sub_77a1172a[stor8 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000] = arg4
    currID = stor8 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000
    creators[stor8 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000] = msg.sender
    emit TransferSingle(address(msg.sender), 0, 0, stor8 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000, 0);
    if arg3:
        tokenSupply[stor8 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000] = arg3
        totalMinted[stor8 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000] = 0
    if arg1.length > 0:
        emit URI(Array(len=arg1.length, data=arg1[all]), stor8 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000);
    return (stor8 + 1 << 128 or 0x8000000000000000000000000000000000000000000000000000000000000000)
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0, 'cannot send to zero address'
    if arg1 != msg.sender:
        if bool(stor1[address(arg1)][address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        47,
                        0x2e4e656564206f70657261746f7220617070726f76616c20666f7220337264207061727479207472616e7366657273,
                        mem[211 len 17]
    if Mask(1, 255, arg3) != 0x8000000000000000000000000000000000000000000000000000000000000000:
        require arg4 <= balanceOf[arg3][address(arg1)]
        balanceOf[arg3][address(arg1)] -= arg4
        require balanceOf[arg3][address(arg2)] + arg4 >= balanceOf[arg3][address(arg2)]
        balanceOf[arg3][address(arg2)] += arg4
    else:
        require ownerOf[arg3] == arg1
        ownerOf[arg3] = arg2
        require arg4 <= balanceOf[Mask(128, 128, arg3)][address(arg1)]
        balanceOf[Mask(128, 128, arg3)][address(arg1)] -= arg4
        require balanceOf[Mask(128, 128, arg3)][address(arg2)] + arg4 >= balanceOf[Mask(128, 128, arg3)][address(arg2)]
        balanceOf[Mask(128, 128, arg3)][address(arg2)] += arg4
    emit TransferSingle(address(msg.sender), address(arg1), address(arg2), arg3, arg4);
    if ext_code.size(arg2) > 0:
        mem[292 len arg5.length] = arg5[all]
        mem[arg5.length + 292] = 0
        require ext_code.size(arg2)
        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, arg4, 160, arg5.length, arg5[all], mem[arg5.length + 292 len ceil32(arg5.length) - arg5.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function mintFungible(uint256 arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require creators[arg1] == msg.sender
    require not Mask(1, 255, arg1)
    idx = 0
    while idx < arg2.length:
        require idx < arg3.length
        require cd[((32 * idx) + arg3 + 36)] + balanceOf[arg1][address(cd[((32 * idx) + arg2 + 36)])] >= cd[((32 * idx) + arg3 + 36)]
        mem[0] = address(cd[((32 * idx) + arg2 + 36)])
        mem[32] = sha3(arg1, 0)
        balanceOf[arg1][address(cd[((32 * idx) + arg2 + 36)])] += cd[((32 * idx) + arg3 + 36)]
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = 0
        mem[mem[64] + 64] = address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 96] = arg1
        mem[mem[64] + 128] = cd[((32 * idx) + arg3 + 36)]
        emit TransferSingle(msg.sender, 0, address(cd[((32 * idx) + arg2 + 36)]), arg1, cd[((32 * idx) + arg3 + 36)]);
        if ext_code.size(address(cd[((32 * idx) + arg2 + 36)])) > 0:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = arg1
            mem[mem[64] + 100] = cd[((32 * idx) + arg3 + 36)]
            mem[mem[64] + 132] = 160
            mem[mem[64] + 164] = 0
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            call address(cd[((32 * idx) + arg2 + 36)]).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, arg1, cd[((32 * idx) + arg3 + 36)], 160, 0, mem[mem[64] + 196]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(32, 224, ext_call.return_data[0]) == 0xf23a6e6100000000000000000000000000000000000000000000000000000000
        idx = idx + 1
        continue 
}

function sub_87ad7eb5(?) payable {
    require calldata.size - 4 >= 32
    require sub_9aa0dd82[arg1] == msg.value
    if not sub_1bb555ed[arg1]:
        mem[(32 * sub_1bb555ed[arg1]) + 128] = sub_1bb555ed[arg1]
    else:
        mem[128 len 32 * sub_1bb555ed[arg1]] = code.data[22869 len 32 * sub_1bb555ed[arg1]]
        mem[(32 * sub_1bb555ed[arg1]) + 128] = sub_1bb555ed[arg1]
        mem[(32 * sub_1bb555ed[arg1]) + 160 len 32 * sub_1bb555ed[arg1]] = code.data[22869 len 32 * sub_1bb555ed[arg1]]
    idx = 0
    s = 1
    while idx < sub_1bb555ed[arg1]:
        require idx < sub_1bb555ed[arg1]
        mem[(32 * idx) + 128] = sub_7d692220[arg1][s]
        require idx < mem[(32 * sub_1bb555ed[arg1]) + 128]
        mem[(32 * idx) + (32 * sub_1bb555ed[arg1]) + 160] = 0
        stor23++
        require idx < sub_1bb555ed[arg1]
        mem[(64 * sub_1bb555ed[arg1]) + 164] = sub_7d692220[arg1][s]
        require ext_code.size(stor7)
        staticcall stor7.0x3471c1dc with:
                gas gas_remaining wei
               args sub_7d692220[arg1][s]
        mem[(64 * sub_1bb555ed[arg1]) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = stor23
        mem[32] = 21
        sub_45316490[stor23] = ext_call.return_data[0]
        idx = idx + 1
        s = s + 1
        continue 
    if not msg.sender:
        revert with 0, 
                    32,
                    37,
                    0xfe64657374696e6174696f6e2061646472657373206d757374206265206e6f6e2d7a65726f,
                    mem[(64 * sub_1bb555ed[arg1]) + 265 len 27]
    if sub_1bb555ed[arg1] != mem[(32 * sub_1bb555ed[arg1]) + 128]:
        revert with 0, 
                    32,
                    41,
                    0x2e5f69647320616e64205f76616c756573206172726179206c656e676874206d757374206d61746368,
                    mem[(64 * sub_1bb555ed[arg1]) + 269 len 23]
    if sub_c550424cAddress != sub_c550424cAddress:
        if bool(stor1[stor16][address(msg.sender)]) != 1:
            revert with 0, 
                        32,
                        47,
                        0x2e4e656564206f70657261746f7220617070726f76616c20666f7220337264207061727479207472616e7366657273,
                        mem[(64 * sub_1bb555ed[arg1]) + 275 len 17]
    idx = 0
    while idx < sub_1bb555ed[arg1]:
        require idx < sub_1bb555ed[arg1]
        require ownerOf[mem[(32 * idx) + 128]] == sub_c550424cAddress
        ownerOf[mem[(32 * idx) + 128]] = msg.sender
        require 1 <= balanceOf[Mask(128, 128, mem[(32 * idx) + 128])][stor16]
        balanceOf[Mask(128, 128, mem[(32 * idx) + 128])][stor16]--
        require balanceOf[Mask(128, 128, mem[(32 * idx) + 128])][address(msg.sender)] + 1 >= balanceOf[Mask(128, 128, mem[(32 * idx) + 128])][address(msg.sender)]
        mem[0] = msg.sender
        mem[32] = sha3(Mask(128, 128, mem[(32 * idx) + 128]), 0)
        balanceOf[Mask(128, 128, mem[(32 * idx) + 128])][address(msg.sender)]++
        idx = idx + 1
        continue 
    mem[(64 * sub_1bb555ed[arg1]) + 160] = msg.sender
    mem[(64 * sub_1bb555ed[arg1]) + 192] = sub_c550424cAddress
    mem[(64 * sub_1bb555ed[arg1]) + 224] = msg.sender
    mem[(64 * sub_1bb555ed[arg1]) + 256] = 160
    mem[(64 * sub_1bb555ed[arg1]) + 320] = sub_1bb555ed[arg1]
    mem[(64 * sub_1bb555ed[arg1]) + 352 len floor32(sub_1bb555ed[arg1])] = mem[128 len floor32(sub_1bb555ed[arg1])]
    mem[(64 * sub_1bb555ed[arg1]) + 288] = (32 * sub_1bb555ed[arg1]) + 192
    mem[(98 * sub_1bb555ed[arg1]) + 352] = mem[(32 * sub_1bb555ed[arg1]) + 128]
    mem[(98 * sub_1bb555ed[arg1]) + 384 len floor32(mem[(32 * sub_1bb555ed[arg1]) + 128])] = mem[(32 * sub_1bb555ed[arg1]) + 160 len floor32(mem[(32 * sub_1bb555ed[arg1]) + 128])]
    emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                       mem[(64 * sub_1bb555ed[arg1]) + 160 len (32 * mem[(32 * sub_1bb555ed[arg1]) + 128]) + (32 * sub_1bb555ed[arg1]) + 224],
    require msg.value == msg.value
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0, 'cannot send to zero address'
    if arg3.length != arg4.length:
        revert with 0, 'Array length must match'
    if arg1 != msg.sender:
        if bool(stor1[address(arg1)][address(msg.sender)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        47,
                        0x2e4e656564206f70657261746f7220617070726f76616c20666f7220337264207061727479207472616e7366657273,
                        mem[211 len 17]
    idx = 0
    while idx < arg3.length:
        require idx < arg4.length
        if Mask(1, 255, cd[((32 * idx) + arg3 + 36)]) != 0x8000000000000000000000000000000000000000000000000000000000000000:
            require cd[((32 * idx) + arg4 + 36)] <= balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg1)]
            balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg1)] -= cd[((32 * idx) + arg4 + 36)]
            require cd[((32 * idx) + arg4 + 36)] + balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg2)] >= cd[((32 * idx) + arg4 + 36)]
            mem[0] = arg2
            mem[32] = sha3(cd[((32 * idx) + arg3 + 36)], 0)
            balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg2)] += cd[((32 * idx) + arg4 + 36)]
        else:
            require ownerOf[cd[((32 * idx) + arg3 + 36)]] == arg1
            ownerOf[cd[((32 * idx) + arg3 + 36)]] = arg2
            require 1 <= balanceOf[Mask(128, 128, cd[((32 * idx) + arg3 + 36)])][address(arg1)]
            balanceOf[Mask(128, 128, cd[((32 * idx) + arg3 + 36)])][address(arg1)]--
            require balanceOf[Mask(128, 128, cd[((32 * idx) + arg3 + 36)])][address(arg2)] + 1 >= balanceOf[Mask(128, 128, cd[((32 * idx) + arg3 + 36)])][address(arg2)]
            mem[0] = arg2
            mem[32] = sha3(Mask(128, 128, cd[((32 * idx) + arg3 + 36)]), 0)
            balanceOf[Mask(128, 128, cd[((32 * idx) + arg3 + 36)])][address(arg2)]++
        idx = idx + 1
        continue 
    mem[288 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 288] = 0
    mem[floor32(arg3.length) + 288] = arg4.length
    mem[floor32(arg3.length) + 320 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    emit TransferBatch(address(msg.sender), address(arg1), address(arg2), Array(len=arg3.length, data=mem[288 len floor32(arg3.length) + 32], call.data[arg4 + 36 len floor32(arg4.length)]), floor32(arg3.length) + 192);
    if ext_code.size(arg2) > 0:
        mem[292 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[(32 * arg3.length) + 292] = 0
        mem[floor32(arg3.length) + 292] = arg4.length
        mem[floor32(arg3.length) + 324 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
        mem[floor32(arg3.length) + (32 * arg4.length) + 324] = 0
        mem[floor32(arg3.length) + floor32(arg4.length) + 356 len arg5.length] = arg5[all]
        mem[floor32(arg3.length) + floor32(arg4.length) + arg5.length + 356] = 0
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), 160, floor32(arg3.length) + 192, floor32(arg3.length) + floor32(arg4.length) + 224, arg3.length, mem[292 len floor32(arg3.length) + 32], call.data[arg4 + 36 len floor32(arg4.length)], arg5.length, arg5[all], mem[floor32(arg3.length) + floor32(arg4.length) + arg5.length + 356 len ceil32(arg5.length) - arg5.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0xbc197c8100000000000000000000000000000000000000000000000000000000
}



}

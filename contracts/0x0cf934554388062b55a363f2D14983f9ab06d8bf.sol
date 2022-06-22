contract main {




// =====================  Runtime code  =====================


const name = 'FCToken'

const symbol = 'FCAT'


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor6;
array of uint256 tokenByIndex;
mapping of uint256 stor8;
array of uint256 tokenURI;
mapping of uint8 stor12;
uint8 stor13;
address owner; offset 8
uint256 last_completed_migration;
array of address owners;
array of uint256 sub_fe776dd0;
array of struct sub_54c168dc;
array of struct sub_2b866c6f;
array of struct sub_103d4232;
array of struct sub_b23e97a2;
mapping of uint256 sub_2d58ad29;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function owners(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 16
    return owners[arg1]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return approved[arg1]
}

function sub_0d164dcf(?) {
    return sub_fe776dd0.length
}

function sub_103d4232(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_103d4232[arg1].field_0
    return sub_103d4232[arg1][arg2].field_0
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_2b866c6f(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_2b866c6f[arg1].field_0
    return sub_2b866c6f[arg1][arg2].field_0, sub_2b866c6f[arg1][arg2].field_256
}

function sub_2d58ad29(?) {
    require calldata.size - 4 >= 32
    return sub_2d58ad29[arg1]
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function last_completed_migration() {
    return last_completed_migration
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor12[address(arg1)])
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function sub_54c168dc(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_54c168dc.length
    return sub_54c168dc[arg1].field_0, sub_54c168dc[arg1].field_256
}

function paused() {
    return bool(stor13)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_b23e97a2(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_b23e97a2[arg1].field_0
    return sub_b23e97a2[arg1][arg2].field_0
}

function sub_b977c8c6(?) {
    require calldata.size - 4 >= 32
    return sub_2d58ad29[address(arg1)]
}

function sub_bcfbde17(?) {
    return sub_54c168dc.length
}

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg1)][address(arg2)])
}

function sub_fe776dd0(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_fe776dd0.length
    return sub_fe776dd0[arg1]
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

function unpause() {
    require msg.sender
    require stor12[address(msg.sender)]
    require stor13
    stor13 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor12[address(msg.sender)]
    require not stor13
    stor13 = 1
    emit Paused(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor12[address(msg.sender)]
    stor12[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_898321e6(?) {
    require msg.sender == owner
    sub_fe776dd0.length = 0
    idx = 0
    while sub_fe776dd0.length > idx:
        sub_fe776dd0[idx] = 0
        idx = idx + 1
        continue 
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor12[address(msg.sender)]
    require arg1
    require not stor12[address(arg1)]
    stor12[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function sub_80286e25(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not stor13
    sub_fe776dd0.length++
    sub_fe776dd0[sub_fe776dd0.length] = arg1
    emit 0xb1310e0c: sub_fe776dd0.length - 1, arg1
    return 0
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require not stor13
    require arg1 != msg.sender
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function release() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not stor13
    require msg.sender == this.address
    require ownerOf[arg3]
    require ownerOf[arg3] != msg.sender
    require ownerOf[arg3]
    require approved[arg3] != msg.sender
    revert
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not stor13
    require msg.sender == this.address
    require ownerOf[arg3]
    require ownerOf[arg3] != msg.sender
    require ownerOf[arg3]
    require approved[arg3] != msg.sender
    revert
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor13
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require not stor13
    require msg.sender == this.address
    require ownerOf[arg3]
    require ownerOf[arg3] != msg.sender
    require ownerOf[arg3]
    require approved[arg3] != msg.sender
    revert
}

function getCatInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require sub_54c168dc.length >= arg1 - 1
    require arg1 < sub_54c168dc.length
    if sub_103d4232[arg1].field_0:
        mem[128] = sub_103d4232[arg1].field_0
        idx = 128
        s = 0
        while (32 * sub_103d4232[arg1].field_0) + 96 > idx:
            mem[idx + 32] = sub_103d4232[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * sub_103d4232[arg1].field_0) + 256 len floor32(sub_103d4232[arg1].field_0)] = mem[128 len floor32(sub_103d4232[arg1].field_0)]
    return sub_54c168dc[arg1].field_0, 
           sub_54c168dc[arg1].field_256,
           Array(len=sub_103d4232[arg1].field_0, data=mem[128 len floor32(sub_103d4232[arg1].field_0)], mem[(32 * sub_103d4232[arg1].field_0) + floor32(sub_103d4232[arg1].field_0) + 256 len (32 * sub_103d4232[arg1].field_0) - floor32(sub_103d4232[arg1].field_0)])
}

function getOwnersTokenIds(address arg1) {
    require calldata.size - 4 >= 32
    if not sub_b23e97a2[address(arg1)].field_0:
        mem[(32 * sub_b23e97a2[address(arg1)].field_0) + 128] = 32
        mem[(32 * sub_b23e97a2[address(arg1)].field_0) + 160] = sub_b23e97a2[address(arg1)].field_0
        mem[(32 * sub_b23e97a2[address(arg1)].field_0) + 192 len floor32(sub_b23e97a2[address(arg1)].field_0)] = mem[128 len floor32(sub_b23e97a2[address(arg1)].field_0)]
        return memory
          from (32 * sub_b23e97a2[address(arg1)].field_0) + 128
           len (96 * sub_b23e97a2[address(arg1)].field_0) + 64
    mem[128] = sub_b23e97a2[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_b23e97a2[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_b23e97a2[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_b23e97a2[address(arg1)].field_0) + 192 len floor32(sub_b23e97a2[address(arg1)].field_0)] = mem[128 len floor32(sub_b23e97a2[address(arg1)].field_0)]
    return Array(len=sub_b23e97a2[address(arg1)].field_0, data=mem[128 len floor32(sub_b23e97a2[address(arg1)].field_0)], mem[(32 * sub_b23e97a2[address(arg1)].field_0) + floor32(sub_b23e97a2[address(arg1)].field_0) + 192 len (32 * sub_b23e97a2[address(arg1)].field_0) - floor32(sub_b23e97a2[address(arg1)].field_0)]), 
}

function buyKitty(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require not stor13
    require arg1 >= 0
    require sub_fe776dd0.length > arg1
    require arg1 < sub_fe776dd0.length
    require sub_fe776dd0[arg1] >= 0
    require msg.value == sub_fe776dd0[arg1]
    if not arg1:
        require not sub_2d58ad29[address(msg.sender)]
    sub_54c168dc.length++
    sub_54c168dc[sub_54c168dc.length].field_0 = sub_54c168dc.length
    sub_54c168dc[sub_54c168dc.length].field_256 = arg1
    require msg.sender
    require not ownerOf[stor32.length]
    ownerOf[stor32.length] = msg.sender
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]++
    emit Transfer(0, msg.sender, sub_54c168dc.length);
    stor6[stor32.length] = tokenOfOwnerByIndex[address(msg.sender)]
    tokenOfOwnerByIndex[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = sub_54c168dc.length
    stor8[stor32.length] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = sub_54c168dc.length
    sub_103d4232[stor32.length].field_0++
    sub_103d4232[stor32.length][sub_103d4232[stor32.length].field_0].field_0 = block.timestamp
    sub_b23e97a2[address(msg.sender)].field_0++
    sub_b23e97a2[address(msg.sender)][sub_b23e97a2[address(msg.sender)].field_0].field_0 = sub_54c168dc.length
    if not arg1:
        sub_2d58ad29[address(msg.sender)] = 1
    emit 0x8612dfae: msg.sender, sub_54c168dc.length, arg1, sub_fe776dd0[arg1]
}



}

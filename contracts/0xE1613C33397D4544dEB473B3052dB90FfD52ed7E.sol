contract main {




// =====================  Runtime code  =====================


#
#  - initialize()
#  - tokenURI(uint256 arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint8 stor51;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor55;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor57;
array of uint256 tokenByIndex;
mapping of uint256 stor59;
address owner;
mapping of uint8 stor61;
array of uint256 name;
array of uint256 symbol;
array of uint256 stor64;
uint256 stor67;
uint256 stor68;
mapping of uint256 stor69;
mapping of address stor70;
mapping of uint256 stor71;
uint256 stor73;
address stor74;
address stor75;
uint256 stor76;
mapping of uint256 stor80;
mapping of uint8 stor81;
uint256 stor82;
uint256 sub_db7480b0;
uint8 gameState;
uint8 sub_aeb5760a; offset 8
uint256 stor84; offset 8
mapping of struct stor85;
array of uint256 stor73546096136405737578683964780285827720112598822927516584487316002982633787038;

function supportsInterface(bytes4 arg1) {
    return bool(stor51[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require ownerOf[arg1]
    return approved[arg1]
}

function sub_0e2036e9(?) {
    return bool(stor81[arg1])
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_24fc71c8(?) {
    return bool(stor61[address(arg1)])
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_aeb5760a(?) {
    return bool(sub_aeb5760a)
}

function gameState() {
    return bool(gameState)
}

function sub_db7480b0(?) {
    return sub_db7480b0
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor55[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function sub_55f1f540(?) {
    return stor76
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_34d77475(?) {
    require msg.sender == owner
    stor71[arg1] = arg2
}

function getCommission() {
    require msg.sender == owner
    return (-stor82 + 100)
}

function sub_5ffc7ed5(?) {
    require msg.sender == owner
    stor74 = arg1
    return 1
}

function sub_bf7ef3f6(?) {
    require msg.sender == owner
    stor75 = arg1
    return 1
}

function sub_daf0fddb(?) {
    require msg.sender == owner
    stor61[address(arg1)] = uint8(arg2)
}

function setCommission(uint256 arg1) {
    require msg.sender == owner
    stor82 = -arg1 + 100
    return 1
}

function setMinPrice(uint256 arg1) {
    require msg.sender == owner
    sub_db7480b0 = arg1
    return arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_2eebf504(?) {
    require msg.sender == owner
    if not arg1:
        stor76 = arg2
    return 1, arg2
}

function sub_d8c0d42e(?) {
    require msg.sender == owner
    stor84 = Mask(248, 0, arg1)
    return bool(gameState)
}

function sub_f2361e3d(?) {
    return stor69[msg.sender], stor71[stor69[msg.sender]], address(stor70[stor69[msg.sender]])
}

function setGameState(bool arg1) {
    require msg.sender == owner
    gameState = uint8(arg1)
    return bool(uint8(arg1))
}

function sub_9659bce8(?) {
    require msg.sender == owner
    stor64[] = Array(len=arg1.length, data=arg1[all])
    return 1
}

function sub_60757cf0(?) {
    require ownerOf[arg1]
    return arg1, ownerOf[arg1], stor85[arg1].field_0, stor85[arg1].field_256
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor55[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_5b604e46(?) {
    require ownerOf[arg1]
    require ownerOf[arg1]
    if ownerOf[arg1] != this.address:
        if approved[arg1] != this.address:
            require stor55[stor52[arg1]][address(this.address)]
    return stor80[arg1], ownerOf[arg1]
}

function sub_69c79ea4(?) {
    require not stor69[msg.sender]
    stor67++
    stor69[msg.sender] = stor67 + 1
    uint256(stor70[stor67 + 1]) = msg.sender or Mask(96, 160, uint256(stor70[stor67 + 1]))
    stor71[stor67] = stor68
    emit 0x18e3fcaf: stor67, msg.sender
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    if ownerOf[arg2] != msg.sender:
        require stor55[stor52[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_acaf887f(?) {
    require ownerOf[arg1]
    require msg.sender == ownerOf[arg1]
    stor80[arg1] = 0
    require ownerOf[arg1]
    require ownerOf[arg1] == msg.sender
    if approved[arg1]:
        approved[arg1] = 0
    emit 0x2c585cfd: arg1, msg.sender
    return 1
}

function weiToOwner(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= eth.balance(this.address)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function ERC20ToOwner(address arg1, uint256 arg2, address arg3) {
    require msg.sender == owner
    require ext_code.size(arg3)
    call arg3.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function queryERC20(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function ERC20ClassicToOwner(address arg1, uint256 arg2, address arg3) {
    require msg.sender == owner
    require ext_code.size(arg3)
    call arg3.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_bca81483(?) {
    require not gameState
    require ownerOf[arg1]
    require msg.sender == ownerOf[arg1]
    require arg2 >= sub_db7480b0
    stor80[arg1] = arg2
    require ownerOf[arg1]
    require ownerOf[arg1] != this.address
    if ownerOf[arg1] != msg.sender:
        require stor55[stor52[arg1]][address(msg.sender)]
    approved[arg1] = this.address
    emit Approval(ownerOf[arg1], this.address, arg1);
    emit 0xc8a3fdf2: arg1, arg2, msg.sender
    return 1
}

function initialize(address arg1) {
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xef436f6e747261637420696e7374616e63652068617320616c72656164792062,
                            0x65656e20696e697469616c697a65640000000000000000000000000000000000
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    stor61[msg.sender] = 1
    stor61[arg1] = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function initialize(string arg1, string arg2) {
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 
                            32,
                            46,
                            0xef436f6e747261637420696e7374616e63652068617320616c72656164792062,
                            0x65656e20696e697469616c697a65640000000000000000000000000000000000
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    stor51[0x5b5e139f00000000000000000000000000000000000000000000000000000000] = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function sub_0f4bc06a(?) {
    require stor61[msg.sender]
    require arg2 >= 10
    if arg2 >= 8000:
        require arg2 > 8013
    stor73++
    require not ownerOf[stor73 + 1]
    require arg3
    require not ownerOf[stor73]
    ownerOf[stor73] = arg3
    require balanceOf[address(arg3)] + 1 >= balanceOf[address(arg3)]
    balanceOf[address(arg3)]++
    tokenOfOwnerByIndex[address(arg3)]++
    tokenOfOwnerByIndex[address(arg3)][tokenOfOwnerByIndex[address(arg3)]] = stor73
    stor57[stor73] = tokenOfOwnerByIndex[address(arg3)]
    emit Transfer(0, arg3, stor73);
    stor59[stor73] = tokenByIndex.length
    tokenByIndex.length++
    storA299[stor58.length] = stor73
    stor85[stor73].field_0 = arg1
    stor85[stor73].field_256 = arg2
    emit 0x5fc7ef7c: stor73, arg1, arg2, Array(len=arg4.length, data=arg4[all]), arg3
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor55[stor52[arg3]][address(msg.sender)]
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor57[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor57[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor57[arg3] = 0
    stor57[stor56[address(arg1)][stor56[address(arg1)]]] = stor57[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor57[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
}

function claimWeapon(uint256 arg1) {
    require not sub_aeb5760a
    require ext_code.size(stor74)
    call stor74.0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require not stor81[arg1]
    stor73++
    stor81[arg1] = 1
    require ext_code.size(stor74)
    call stor74.0xc5a1f6a3 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 416
    require msg.sender
    require not ownerOf[stor73]
    ownerOf[stor73] = msg.sender
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor73
    stor57[stor73] = tokenOfOwnerByIndex[address(msg.sender)]
    emit Transfer(0, msg.sender, stor73);
    stor59[stor73] = tokenByIndex.length
    tokenByIndex.length++
    storA299[stor58.length] = stor73
    stor85[stor73].field_256 = ext_call.return_data[254 len 2]
    stor85[stor73].field_272 = 0
    if ext_call.return_data[254 len 2] < 10:
        stor85[stor73].field_0 = 3
    else:
        if ext_call.return_data[254 len 2] > 7999:
            stor85[stor73].field_0 = 3
        else:
            if 3 == ext_call.return_data[286 len 2]:
                stor85[stor73].field_0 = 2
            else:
                stor85[stor73].field_0 = ext_call.return_data[286 len 2]
                stor85[stor73].field_16 = 0
    emit 0xef7878e5: arg1, stor73, stor85[stor73].field_0, stor85[stor73].field_256, msg.sender
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor55[stor52[arg3]][address(msg.sender)]
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor57[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor57[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor57[arg3] = 0
    stor57[stor56[address(arg1)][stor56[address(arg1)]]] = stor57[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor57[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor55[stor52[arg3]][address(msg.sender)]
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor57[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor57[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor57[arg3] = 0
    stor57[stor56[address(arg1)][stor56[address(arg1)]]] = stor57[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor57[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function sub_1cfff79f(?) payable {
    mem[64] = 96
    require not gameState
    if not stor76:
        require 0 == msg.value
    else:
        require arg1 * stor76 / stor76 == arg1
        require arg1 * stor76 == msg.value
    if address(stor70[arg2]):
        if address(stor70[arg2]) != msg.sender:
            if not msg.value:
                call address(stor70[arg2]) with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x654bb4b9: arg2, 0, address(stor70[arg2])
            else:
                require stor71[arg2] * msg.value / msg.value == stor71[arg2]
                call address(stor70[arg2]) with:
                   value stor71[arg2] * msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x654bb4b9: arg2, stor71[arg2] * msg.value / 100, address(stor70[arg2])
            require arg1 > 0
            require arg1
    s = 0
    s = 0
    idx = 0
    while idx < arg1:
        stor73++
        require not ownerOf[stor73 + 1]
        require msg.sender
        require not ownerOf[stor73]
        ownerOf[stor73] = msg.sender
        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor73
        stor57[stor73] = tokenOfOwnerByIndex[address(msg.sender)]
        emit Transfer(0, msg.sender, stor73);
        stor59[stor73] = tokenByIndex.length
        tokenByIndex.length++
        storA299[stor58.length] = stor73
        require ext_code.size(stor75)
        call stor75.0xc77453e9 with:
             gas gas_remaining wei
            args stor73
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[32] = 85
        stor85[stor73].field_0 = ext_call.return_data[0]
        mem[0] = stor73
        stor85[stor73].field_256 = ext_call.return_data[32]
        mem[mem[64]] = stor73
        mem[mem[64] + 32] = ext_call.return_data[0]
        mem[mem[64] + 64] = ext_call.return_data[32]
        emit 0x6e484187: stor73, ext_call.return_data[0], ext_call.return_data[32], msg.sender
        s = ext_call.return_data[32]
        s = ext_call.return_data[0]
        idx = idx + 1
        continue 
}

function sub_edb0d0b3(?) {
    mem[96 len 416] = code.data[16393 len 416]
    require not gameState
    require ext_code.size(stor74)
    call stor74.0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require not stor81[arg1]
    stor73++
    stor81[arg1] = 1
    mem[512] = 0x8a3f8a2300000000000000000000000000000000000000000000000000000000
    mem[516] = arg1
    require ext_code.size(stor74)
    call stor74.queryChibi(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 512
    require return_data.size >= 608
    require mem[512 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[512 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[512 len 4], Mask(224, 32, arg1) >> 32 + 512] + mem[512 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[mem[512 len 4], Mask(224, 32, arg1) >> 32 + 512] <= 4294967296
    require uint32(arg1), mem[548 len 28] <= 4294967296
    require uint32(arg1), mem[548 len 28] + 32 <= return_data.size
    require return_data.size >= mem[uint32(arg1), mem[548 len 28] + 512] + uint32(arg1), mem[548 len 28] + 32 and mem[uint32(arg1), mem[548 len 28] + 512] <= 4294967296
    require msg.sender
    require not ownerOf[stor73]
    ownerOf[stor73] = msg.sender
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor73
    stor57[stor73] = tokenOfOwnerByIndex[address(msg.sender)]
    emit Transfer(0, msg.sender, stor73);
    stor59[stor73] = tokenByIndex.length
    tokenByIndex.length++
    storA299[stor58.length] = stor73
    stor85[stor73].field_256 = mem[830 len 2]
    stor85[stor73].field_272 = 0
    if mem[830 len 2] < 10:
        stor85[stor73].field_0 = 3
    else:
        if mem[830 len 2] > 7999:
            stor85[stor73].field_0 = 3
        else:
            if 3 == mem[862 len 2]:
                stor85[stor73].field_0 = 2
            else:
                stor85[stor73].field_0 = mem[862 len 2]
                stor85[stor73].field_16 = 0
    emit 0xef7878e5: arg1, stor73, stor85[stor73].field_0, stor85[stor73].field_256, msg.sender
}

function sub_3e50a5c5(?) {
    require ext_code.size(stor74)
    call stor74.0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ownerOf[arg2]
    require ownerOf[arg2] == msg.sender
    mem[96 len 416] = code.data[16393 len 416]
    mem[512] = 0x8a3f8a2300000000000000000000000000000000000000000000000000000000
    mem[516] = arg1
    require ext_code.size(stor74)
    call stor74.queryChibi(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 512
    require return_data.size >= 608
    require mem[512 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[512 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[512 len 4], Mask(224, 32, arg1) >> 32 + 512] + mem[512 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[mem[512 len 4], Mask(224, 32, arg1) >> 32 + 512] <= 4294967296
    require uint32(arg1), mem[548 len 28] <= 4294967296
    require uint32(arg1), mem[548 len 28] + 32 <= return_data.size
    require return_data.size >= mem[uint32(arg1), mem[548 len 28] + 512] + uint32(arg1), mem[548 len 28] + 32 and mem[uint32(arg1), mem[548 len 28] + 512] <= 4294967296
    if mem[862 len 2] != 3:
        require mem[862 len 2] <= stor85[arg2].field_0
    else:
        if mem[606 len 2] >= 9000:
            require mem[862 len 2] <= stor85[arg2].field_0
        else:
            require 2 <= stor85[arg2].field_0
    require mem[830 len 2] == stor85[arg2].field_256
    require ownerOf[arg2]
    require ownerOf[arg2] == msg.sender
    if approved[arg2]:
        approved[arg2] = 0
    require ownerOf[arg2]
    require ownerOf[arg2] == msg.sender
    require 1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]--
    ownerOf[arg2] = 0
    require 1 <= tokenOfOwnerByIndex[address(msg.sender)]
    require tokenOfOwnerByIndex[address(msg.sender)] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
    require stor57[arg2] < tokenOfOwnerByIndex[address(msg.sender)]
    tokenOfOwnerByIndex[address(msg.sender)][stor57[arg2]] = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]
    tokenOfOwnerByIndex[address(msg.sender)]--
    if tokenOfOwnerByIndex[address(msg.sender)] > tokenOfOwnerByIndex[address(msg.sender)] - 1:
        idx = tokenOfOwnerByIndex[address(msg.sender)] - 1
        while tokenOfOwnerByIndex[address(msg.sender)] > idx:
            tokenOfOwnerByIndex[address(msg.sender)][idx] = 0
            idx = idx + 1
            continue 
    stor57[arg2] = 0
    stor57[stor56[address(msg.sender)][stor56[address(msg.sender)]]] = stor57[arg2]
    emit Transfer(msg.sender, 0, arg2);
    require 1 <= tokenByIndex.length
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor59[arg2] < tokenByIndex.length
    tokenByIndex[stor59[arg2]] = tokenByIndex[tokenByIndex.length]
    require tokenByIndex.length - 1 < tokenByIndex.length
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor59[arg2] = 0
    stor59[stor58[stor58.length]] = stor59[arg2]
    stor81[arg1] = 0
    emit 0x30246172: arg1, arg2, msg.sender
    return 1
}

function sub_19b205f0(?) payable {
    require not gameState
    require ownerOf[arg1]
    require ownerOf[arg1] != msg.sender
    require stor80[arg1] > 0
    require msg.value == stor80[arg1]
    require ownerOf[arg1]
    if ownerOf[arg1] != this.address:
        require ownerOf[arg1]
        if approved[arg1] != this.address:
            require stor55[stor52[arg1]][address(this.address)]
    require msg.sender
    stor80[arg1] = 0
    require ownerOf[arg1]
    if not msg.value:
        require ownerOf[arg1]
        require ownerOf[arg1] == ownerOf[arg1]
        require 1 <= balanceOf[stor52[arg1]]
        balanceOf[stor52[arg1]]--
        ownerOf[arg1] = 0
        require 1 <= tokenOfOwnerByIndex[stor52[arg1]]
        require tokenOfOwnerByIndex[stor52[arg1]] - 1 < tokenOfOwnerByIndex[stor52[arg1]]
        require stor57[arg1] < tokenOfOwnerByIndex[stor52[arg1]]
        tokenOfOwnerByIndex[stor52[arg1]][stor57[arg1]] = tokenOfOwnerByIndex[stor52[arg1]][tokenOfOwnerByIndex[stor52[arg1]]]
        tokenOfOwnerByIndex[stor52[arg1]]--
        if tokenOfOwnerByIndex[stor52[arg1]] > tokenOfOwnerByIndex[stor52[arg1]] - 1:
            idx = tokenOfOwnerByIndex[stor52[arg1]] - 1
            while tokenOfOwnerByIndex[stor52[arg1]] > idx:
                tokenOfOwnerByIndex[stor52[arg1]][idx] = 0
                idx = idx + 1
                continue 
        stor57[arg1] = 0
        stor57[stor56[stor52[arg1]][stor56[stor52[arg1]]]] = stor57[arg1]
        require not ownerOf[arg1]
        ownerOf[arg1] = msg.sender
        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
        stor57[arg1] = tokenOfOwnerByIndex[address(msg.sender)]
        require ownerOf[arg1]
        require ownerOf[arg1] == msg.sender
        if approved[arg1]:
            approved[arg1] = 0
        emit Transfer(ownerOf[arg1], msg.sender, arg1);
        call ownerOf[arg1] with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xd8edb0a8: arg1, 0, msg.value, ownerOf[arg1], msg.sender
    else:
        require stor82 * msg.value / msg.value == stor82
        require ownerOf[arg1]
        require ownerOf[arg1] == ownerOf[arg1]
        require 1 <= balanceOf[stor52[arg1]]
        balanceOf[stor52[arg1]]--
        ownerOf[arg1] = 0
        require 1 <= tokenOfOwnerByIndex[stor52[arg1]]
        require tokenOfOwnerByIndex[stor52[arg1]] - 1 < tokenOfOwnerByIndex[stor52[arg1]]
        require stor57[arg1] < tokenOfOwnerByIndex[stor52[arg1]]
        tokenOfOwnerByIndex[stor52[arg1]][stor57[arg1]] = tokenOfOwnerByIndex[stor52[arg1]][tokenOfOwnerByIndex[stor52[arg1]]]
        tokenOfOwnerByIndex[stor52[arg1]]--
        if tokenOfOwnerByIndex[stor52[arg1]] > tokenOfOwnerByIndex[stor52[arg1]] - 1:
            idx = tokenOfOwnerByIndex[stor52[arg1]] - 1
            while tokenOfOwnerByIndex[stor52[arg1]] > idx:
                tokenOfOwnerByIndex[stor52[arg1]][idx] = 0
                idx = idx + 1
                continue 
        stor57[arg1] = 0
        stor57[stor56[stor52[arg1]][stor56[stor52[arg1]]]] = stor57[arg1]
        require not ownerOf[arg1]
        ownerOf[arg1] = msg.sender
        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
        stor57[arg1] = tokenOfOwnerByIndex[address(msg.sender)]
        require ownerOf[arg1]
        require ownerOf[arg1] == msg.sender
        if approved[arg1]:
            approved[arg1] = 0
        emit Transfer(ownerOf[arg1], msg.sender, arg1);
        call ownerOf[arg1] with:
           value stor82 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xd8edb0a8: arg1, stor82 * msg.value / 100, msg.value, ownerOf[arg1], msg.sender
    return 1
}

function sub_4f4e8454(?) payable {
    mem[64] = 96
    require not gameState
    if not stor76:
        require 0 == msg.value
    else:
        require arg1 * stor76 / stor76 == arg1
        require arg1 * stor76 == msg.value
    if not address(stor70[arg2]):
        s = 0
        s = 0
        idx = 0
        while idx < arg1:
            stor73++
            require not ownerOf[stor73 + 1]
            require msg.sender
            require not ownerOf[stor73]
            ownerOf[stor73] = msg.sender
            require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)]++
            tokenOfOwnerByIndex[address(msg.sender)]++
            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor73
            stor57[stor73] = tokenOfOwnerByIndex[address(msg.sender)]
            emit Transfer(0, msg.sender, stor73);
            stor59[stor73] = tokenByIndex.length
            tokenByIndex.length++
            storA299[stor58.length] = stor73
            require ext_code.size(stor75)
            call stor75.0xc77453e9 with:
                 gas gas_remaining wei
                args stor73
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[32] = 85
            stor85[stor73].field_0 = ext_call.return_data[0]
            mem[0] = stor73
            stor85[stor73].field_256 = ext_call.return_data[32]
            require arg1 > 0
            require arg1
            mem[mem[64]] = stor73
            mem[mem[64] + 32] = ext_call.return_data[0]
            mem[mem[64] + 64] = ext_call.return_data[32]
            mem[mem[64] + 96] = msg.value / arg1
            emit 0x427fd4e4: stor73, ext_call.return_data[0], ext_call.return_data[32], msg.value / arg1, msg.sender
            s = ext_call.return_data[32]
            s = ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        if msg.sender == address(stor70[arg2]):
            s = 0
            s = 0
            idx = 0
            while idx < arg1:
                stor73++
                require not ownerOf[stor73 + 1]
                require msg.sender
                require not ownerOf[stor73]
                ownerOf[stor73] = msg.sender
                require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor73
                stor57[stor73] = tokenOfOwnerByIndex[address(msg.sender)]
                emit Transfer(0, msg.sender, stor73);
                stor59[stor73] = tokenByIndex.length
                tokenByIndex.length++
                storA299[stor58.length] = stor73
                require ext_code.size(stor75)
                call stor75.0xc77453e9 with:
                     gas gas_remaining wei
                    args stor73
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[32] = 85
                stor85[stor73].field_0 = ext_call.return_data[0]
                mem[0] = stor73
                stor85[stor73].field_256 = ext_call.return_data[32]
                require arg1 > 0
                require arg1
                mem[mem[64]] = stor73
                mem[mem[64] + 32] = ext_call.return_data[0]
                mem[mem[64] + 64] = ext_call.return_data[32]
                mem[mem[64] + 96] = msg.value / arg1
                emit 0x427fd4e4: stor73, ext_call.return_data[0], ext_call.return_data[32], msg.value / arg1, msg.sender
                s = ext_call.return_data[32]
                s = ext_call.return_data[0]
                idx = idx + 1
                continue 
        else:
            if not msg.value:
                call address(stor70[arg2]) with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x654bb4b9: arg2, 0, address(stor70[arg2])
                require arg1 > 0
                require arg1
                s = 0
                s = 0
                idx = 0
                while idx < arg1:
                    stor73++
                    require not ownerOf[stor73 + 1]
                    require msg.sender
                    require not ownerOf[stor73]
                    ownerOf[stor73] = msg.sender
                    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)]++
                    tokenOfOwnerByIndex[address(msg.sender)]++
                    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor73
                    stor57[stor73] = tokenOfOwnerByIndex[address(msg.sender)]
                    emit Transfer(0, msg.sender, stor73);
                    stor59[stor73] = tokenByIndex.length
                    tokenByIndex.length++
                    storA299[stor58.length] = stor73
                    require ext_code.size(stor75)
                    call stor75.0xc77453e9 with:
                         gas gas_remaining wei
                        args stor73
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[32] = 85
                    stor85[stor73].field_0 = ext_call.return_data[0]
                    mem[0] = stor73
                    stor85[stor73].field_256 = ext_call.return_data[32]
                    require arg1 > 0
                    require arg1
                    mem[mem[64]] = stor73
                    mem[mem[64] + 32] = ext_call.return_data[0]
                    mem[mem[64] + 64] = ext_call.return_data[32]
                    mem[mem[64] + 96] = (msg.value / arg1) - (0 / arg1)
                    emit 0x427fd4e4: stor73, ext_call.return_data[0], ext_call.return_data[32], (msg.value / arg1) - (0 / arg1), msg.sender
                    s = ext_call.return_data[32]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
            else:
                require stor71[arg2] * msg.value / msg.value == stor71[arg2]
                call address(stor70[arg2]) with:
                   value stor71[arg2] * msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x654bb4b9: arg2, stor71[arg2] * msg.value / 100, address(stor70[arg2])
                require arg1 > 0
                require arg1
                s = 0
                s = 0
                idx = 0
                while idx < arg1:
                    stor73++
                    require not ownerOf[stor73 + 1]
                    require msg.sender
                    require not ownerOf[stor73]
                    ownerOf[stor73] = msg.sender
                    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)]++
                    tokenOfOwnerByIndex[address(msg.sender)]++
                    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor73
                    stor57[stor73] = tokenOfOwnerByIndex[address(msg.sender)]
                    emit Transfer(0, msg.sender, stor73);
                    stor59[stor73] = tokenByIndex.length
                    tokenByIndex.length++
                    storA299[stor58.length] = stor73
                    require ext_code.size(stor75)
                    call stor75.0xc77453e9 with:
                         gas gas_remaining wei
                        args stor73
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[32] = 85
                    stor85[stor73].field_0 = ext_call.return_data[0]
                    mem[0] = stor73
                    stor85[stor73].field_256 = ext_call.return_data[32]
                    require arg1 > 0
                    require arg1
                    mem[mem[64]] = stor73
                    mem[mem[64] + 32] = ext_call.return_data[0]
                    mem[mem[64] + 64] = ext_call.return_data[32]
                    mem[mem[64] + 96] = (msg.value / arg1) - (stor71[arg2] * msg.value / 100 / arg1)
                    emit 0x427fd4e4: stor73, ext_call.return_data[0], ext_call.return_data[32], (msg.value / arg1) - (stor71[arg2] * msg.value / 100 / arg1), msg.sender
                    s = ext_call.return_data[32]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
}



}

contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of address stor1;
mapping of address approved;
mapping of uint256 stor3;
mapping of uint8 stor4;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor6;
array of uint256 tokenByIndex;
mapping of uint256 stor8;
array of uint256 name;
array of uint256 symbol;
array of uint256 tokenURI;
address owner;
address creatorAddress;
uint256 stor14;
mapping of address sub_ffb976ec;
mapping of uint256 sub_804c4b25;
mapping of address warriorToOwner;
mapping of uint256 balanceOf;
mapping of address sub_a70a23df;
array of struct cards;
array of struct sub_1a170712;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function creator() {
    return creatorAddress
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require stor1[arg1]
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_1a170712(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_1a170712.length
    mem[128] = sub_1a170712[arg1].field_0
    idx = 128
    s = 0
    while sub_1a170712[arg1].length + 96 > idx:
        mem[idx + 32] = sub_1a170712[(4 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_1a170712[arg1].length, data=mem[128 len sub_1a170712[arg1].length]), 
           sub_1a170712[arg1].field_256,
           sub_1a170712[arg1].field_512,
           sub_1a170712[arg1].field_768,
           sub_1a170712[arg1].field_768
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    return warriorToOwner[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_804c4b25(?) {
    require calldata.size - 4 >= 32
    return sub_804c4b25[arg1]
}

function owner() {
    return owner
}

function cards(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < cards.length
    mem[128] = cards[arg1].field_0
    idx = 128
    s = 0
    while cards[arg1].length + 96 > idx:
        mem[idx + 32] = cards[(5 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=cards[arg1].length, data=mem[128 len cards[arg1].length]), 
           cards[arg1].field_256,
           cards[arg1].field_512,
           cards[arg1].field_768,
           cards[arg1].field_768,
           cards[arg1].field_1024
}

function symbol() {
    return symbol[0 len symbol.length]
}

function warriorToOwner(uint256 arg1) {
    require calldata.size - 4 >= 32
    return warriorToOwner[arg1]
}

function sub_a70a23df(?) {
    require calldata.size - 4 >= 32
    return sub_a70a23df[arg1]
}

function sub_bb817a7a(?) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg1)][address(arg2)])
}

function sub_ffb976ec(?) {
    require calldata.size - 4 >= 32
    return sub_ffb976ec[arg1]
}

function _fallback() payable {
  stop
}

function setLevelUpFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require creatorAddress == msg.sender
    stor14 = arg1
}

function sub_1a4f1d5c(?) {
    require calldata.size - 4 >= 64
    require creatorAddress == msg.sender
    require arg1 < cards.length
    cards[arg1].field_256 = arg2
}

function setCardPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require creatorAddress == msg.sender
    require arg1 < cards.length
    cards[arg1].field_1024 = arg2
}

function levelUp(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.value == stor14
    require arg1 < sub_1a170712.length
    sub_1a170712[arg1].field_512 = arg2
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == warriorToOwner[arg2]
    sub_a70a23df[arg2] = arg1
    emit Approval(msg.sender, arg1, arg2);
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 != msg.sender
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function withdraw() {
    require creatorAddress == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setCardName(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require creatorAddress == msg.sender
    require arg1 < cards.length
    cards[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == warriorToOwner[arg2]
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    require 1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]--
    warriorToOwner[arg2] = arg1
    emit Transfer(msg.sender, arg1, arg2);
}

function takeOwnership(uint256 arg1) {
    require calldata.size - 4 >= 32
    require sub_a70a23df[arg1] == msg.sender
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]++
    require 1 <= balanceOf[stor17[arg1]]
    balanceOf[stor17[arg1]]--
    warriorToOwner[arg1] = msg.sender
    emit Transfer(warriorToOwner[arg1], msg.sender, arg1);
}

function sub_0c6ad99d(?) {
    require calldata.size - 4 >= 192
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require creatorAddress == msg.sender
    cards.length++
    cards[cards.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    cards[cards.length].field_256 = arg2
    cards[cards.length].field_512 = arg3
    cards[cards.length].field_768 = arg4
    cards[cards.length].field_784 = arg5
    cards[cards.length].field_1024 = arg6
    sub_ffb976ec[stor20.length] = creatorAddress
    sub_804c4b25[stor13]++
}

function sub_574bd50c(?) {
    require calldata.size - 4 >= 32
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = code.data[15387 len 32 * balanceOf[address(arg1)]]
    idx = 0
    s = 0
    while idx < sub_1a170712.length:
        mem[0] = idx
        mem[32] = 17
        if warriorToOwner[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        require s < balanceOf[address(arg1)]
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * balanceOf[address(arg1)]) + 192 len floor32(balanceOf[address(arg1)])] = mem[128 len floor32(balanceOf[address(arg1)])]
    return Array(len=balanceOf[address(arg1)], data=mem[128 len floor32(balanceOf[address(arg1)])], mem[(32 * balanceOf[address(arg1)]) + floor32(balanceOf[address(arg1)]) + 192 len (32 * balanceOf[address(arg1)]) - floor32(balanceOf[address(arg1)])]), 
}

function getCardsByOwner(address arg1) {
    require calldata.size - 4 >= 32
    if sub_804c4b25[address(arg1)]:
        mem[128 len 32 * sub_804c4b25[address(arg1)]] = code.data[15387 len 32 * sub_804c4b25[address(arg1)]]
    idx = 0
    s = 0
    while idx < cards.length:
        mem[0] = idx
        mem[32] = 15
        if sub_ffb976ec[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        require s < sub_804c4b25[address(arg1)]
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * sub_804c4b25[address(arg1)]) + 192 len floor32(sub_804c4b25[address(arg1)])] = mem[128 len floor32(sub_804c4b25[address(arg1)])]
    return Array(len=sub_804c4b25[address(arg1)], data=mem[128 len floor32(sub_804c4b25[address(arg1)])], mem[(32 * sub_804c4b25[address(arg1)]) + floor32(sub_804c4b25[address(arg1)]) + 192 len (32 * sub_804c4b25[address(arg1)]) - floor32(sub_804c4b25[address(arg1)])]), 
}

function sub_9fbd01fb(?) {
    require calldata.size - 4 >= 224
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    sub_1a170712.length++
    sub_1a170712[sub_1a170712.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_1a170712[sub_1a170712.length].field_256 = arg2
    sub_1a170712[sub_1a170712.length].field_512 = arg3
    sub_1a170712[sub_1a170712.length].field_768 = arg4
    sub_1a170712[sub_1a170712.length].field_784 = arg5
    require arg7
    require not stor1[stor21.length]
    stor1[stor21.length] = arg7
    require stor3[address(arg7)] + 1 >= stor3[address(arg7)]
    stor3[address(arg7)]++
    emit Transfer(0, arg7, sub_1a170712.length);
    stor6[stor21.length] = tokenOfOwnerByIndex[address(arg7)]
    tokenOfOwnerByIndex[address(arg7)]++
    tokenOfOwnerByIndex[address(arg7)][tokenOfOwnerByIndex[address(arg7)]] = sub_1a170712.length
    stor8[stor21.length] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = sub_1a170712.length
    require stor1[stor21.length]
    tokenURI[stor21.length][] = Array(len=arg6.length, data=arg6[all])
    warriorToOwner[stor21.length] = arg7
    balanceOf[address(arg7)]++
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if warriorToOwner[arg3] != msg.sender:
        require stor1[arg3]
        if approved[arg3] != msg.sender:
            require stor4[stor17[arg3]][address(msg.sender)]
    require warriorToOwner[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= stor3[address(arg1)]
    stor3[address(arg1)]--
    require stor3[address(arg2)] + 1 >= stor3[address(arg2)]
    stor3[address(arg2)]++
    stor1[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if warriorToOwner[arg3] != msg.sender:
        require stor1[arg3]
        if approved[arg3] != msg.sender:
            require stor4[stor17[arg3]][address(msg.sender)]
    require warriorToOwner[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= stor3[address(arg1)]
    stor3[address(arg1)]--
    require stor3[address(arg2)] + 1 >= stor3[address(arg2)]
    stor3[address(arg2)]++
    stor1[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if warriorToOwner[arg3] != msg.sender:
        require stor1[arg3]
        if approved[arg3] != msg.sender:
            require stor4[stor17[arg3]][address(msg.sender)]
    require warriorToOwner[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= stor3[address(arg1)]
    stor3[address(arg1)]--
    require stor3[address(arg2)] + 1 >= stor3[address(arg2)]
    stor3[address(arg2)]++
    stor1[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_4c4c7e77(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg1 < cards.length
    mem[ceil32(arg2.length) + 128] = cards[arg1].length
    mem[ceil32(arg2.length) + 160] = cards[arg1].field_0
    idx = ceil32(arg2.length) + 160
    s = 0
    while ceil32(arg2.length) + cards[arg1].length + 128 > idx:
        mem[idx + 32] = cards[(5 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require msg.value == cards[arg1].field_1024
    mem[64] = ceil32(arg2.length) + ceil32(cards[arg1].length) + 320
    mem[ceil32(arg2.length) + ceil32(cards[arg1].length) + 160] = ceil32(arg2.length) + 128
    mem[ceil32(arg2.length) + ceil32(cards[arg1].length) + 192] = cards[arg1].field_256
    mem[ceil32(arg2.length) + ceil32(cards[arg1].length) + 224] = cards[arg1].field_512
    mem[ceil32(arg2.length) + ceil32(cards[arg1].length) + 256] = cards[arg1].field_768
    mem[ceil32(arg2.length) + ceil32(cards[arg1].length) + 288] = cards[arg1].field_784
    sub_1a170712.length++
    mem[0] = (4 * sub_1a170712.length) + sha3(21)
    sub_1a170712[sub_1a170712.length][].field_0 = Array(len=Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)], data=mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
    sub_1a170712[sub_1a170712.length].field_256 = cards[arg1].field_256
    sub_1a170712[sub_1a170712.length].field_512 = cards[arg1].field_512
    sub_1a170712[sub_1a170712.length].field_768 = cards[arg1].field_768
    sub_1a170712[sub_1a170712.length].field_784 = cards[arg1].field_784
    require arg3
    require not stor1[stor21.length]
    stor1[stor21.length] = arg3
    require stor3[address(arg3)] + 1 >= stor3[address(arg3)]
    stor3[address(arg3)]++
    emit Transfer(0, arg3, sub_1a170712.length);
    stor6[stor21.length] = tokenOfOwnerByIndex[address(arg3)]
    tokenOfOwnerByIndex[address(arg3)]++
    tokenOfOwnerByIndex[address(arg3)][tokenOfOwnerByIndex[address(arg3)]] = sub_1a170712.length
    stor8[stor21.length] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = sub_1a170712.length
    require stor1[stor21.length]
    tokenURI[stor21.length][] = Array(len=arg2.length, data=arg2[all])
    warriorToOwner[stor21.length] = arg3
    balanceOf[address(arg3)]++
    require arg1 < cards.length
    cards[arg1].field_768 = uint16(cards[arg1].field_768 + 1)
    mem[ceil32(arg2.length) + ceil32(cards[arg1].length) + 352] = cards[arg1].field_256
    mem[ceil32(arg2.length) + ceil32(cards[arg1].length) + 384] = cards[arg1].field_512
    mem[ceil32(arg2.length) + ceil32(cards[arg1].length) + 416] = cards[arg1].field_768
    mem[ceil32(arg2.length) + ceil32(cards[arg1].length) + 448] = cards[arg1].field_784
    mem[ceil32(arg2.length) + ceil32(cards[arg1].length) + 480] = cards[arg1].field_1024
    mem[ceil32(arg2.length) + ceil32(cards[arg1].length) + 320] = 192
    mem[ceil32(arg2.length) + ceil32(cards[arg1].length) + 512] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(cards[arg1].length) + 544 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
        return memory
          from ceil32(arg2.length) + ceil32(cards[arg1].length) + 320
           len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 224
    mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + ceil32(cards[arg1].length) + 544] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + ceil32(cards[arg1].length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 576 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
    return memory
      from ceil32(arg2.length) + ceil32(cards[arg1].length) + 320
       len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 256
}



}

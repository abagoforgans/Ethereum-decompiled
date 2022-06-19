contract main {




// =====================  Runtime code  =====================


const name = 'Digipet'

const symbol = 'DGP'


address ceoAddress;
uint8 stor1; offset 160
uint128 stor1; offset 160
address cooAddress;
mapping of uint8 stor2;
mapping of uint256 sub_b7004407;
mapping of address ownerOf;
mapping of uint256 priceOf;
mapping of uint256 balanceOf;
mapping of address stor7;
mapping of uint256 sub_a65d24da;
mapping of uint8 stor9;
array of struct stor10;
uint256 sub_d8ba392b;
uint256 startingPrice;
uint8 implementsERC721;

function ceoAddress() {
    return ceoAddress
}

function implementsERC721() {
    require not uint8(stor1.field_160)
    return bool(implementsERC721)
}

function totalSupply() {
    return stor10.length
}

function paused() {
    return bool(uint8(stor1.field_160))
}

function ownerOf(uint256 arg1) {
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_a65d24da(?) {
    return sub_a65d24da[arg1]
}

function cooAddress() {
    return cooAddress
}

function sub_b7004407(?) {
    return sub_b7004407[arg1 << 128]
}

function priceOf(uint256 arg1) {
    return priceOf[arg1]
}

function getStartingPrice() {
    return startingPrice
}

function sub_d8ba392b(?) {
    return sub_d8ba392b
}

function _fallback() payable {
    revert
}

function enableERC721() {
    require msg.sender == ceoAddress
    implementsERC721 = 1
}

function setCEO(address arg1) {
    require msg.sender == ceoAddress
    require arg1
    ceoAddress = arg1
}

function setCOO(address arg1) {
    require msg.sender == ceoAddress
    require arg1
    cooAddress = arg1
}

function unpause() {
    require msg.sender == ceoAddress
    require uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 0
}

function pause() {
    require msg.sender == ceoAddress
    require not uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 1
}

function setStartingPrice(uint256 arg1) {
    require not uint8(stor1.field_160)
    require msg.sender == ceoAddress
    startingPrice = arg1
}

function sub_1bc3c347(?) {
    require not uint8(stor1.field_160)
    if ownerOf[arg2] != msg.sender:
        revert with 0, 'Sender not authorized'
    stor9[arg2] = uint8(arg1)
}

function setNewPrice(uint256 arg1, uint256 arg2) {
    require not uint8(stor1.field_160)
    if ownerOf[arg2] != msg.sender:
        revert with 0, 'Sender not authorized'
    priceOf[arg2] = arg1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor1.field_160)
    if not implementsERC721:
        revert with 0, 'Not ERC-721 compliant'
    if ownerOf[arg2] != msg.sender:
        revert with 0, 'Sender not authorized'
    stor7[arg2] = arg1
    emit Approval(arg2, msg.sender, arg1);
}

function getPet(uint256 arg1) {
    require arg1 < stor10.length
    return stor10[arg1].field_0, 
           stor10[arg1].field_0,
           stor10[arg1].field_0,
           stor10[arg1].field_0,
           stor10[arg1].field_256,
           stor10[arg1].field_256,
           sub_a65d24da[arg1],
           priceOf[arg1],
           bool(stor9[arg1]),
           ownerOf[arg1]
}

function takeOwnership(uint256 arg1) {
    require not uint8(stor1.field_160)
    if not implementsERC721:
        revert with 0, 'Not ERC-721 compliant'
    if stor7[arg1] != msg.sender:
        revert with 0, 'Sender not authorized'
    balanceOf[address(msg.sender)]++
    ownerOf[arg1] = msg.sender
    if ownerOf[arg1]:
        balanceOf[stor4[arg1]]--
        stor7[arg1] = 0
    emit Transfer(arg1, ownerOf[arg1], msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor1.field_160)
    if not implementsERC721:
        revert with 0, 'Not ERC-721 compliant'
    if not arg1:
        revert with 0, 'Not a valid address'
    if ownerOf[arg2] != msg.sender:
        revert with 0, 'Sender not authorized'
    balanceOf[address(arg1)]++
    ownerOf[arg2] = arg1
    if msg.sender:
        balanceOf[address(msg.sender)]--
        stor7[arg2] = 0
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor1.field_160)
    if not implementsERC721:
        revert with 0, 'Not ERC-721 compliant'
    if not arg2:
        revert with 0, 'Not a valid address'
    if ownerOf[arg3] != arg1:
        revert with 0, 'Sender not authorized'
    if stor7[arg3] != msg.sender:
        revert with 0, 'Transfer is not authorized'
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    if arg1:
        balanceOf[address(arg1)]--
        stor7[arg3] = 0
    emit Transfer(arg3, arg1, arg2);
}

function withdrawBalance(address arg1, uint256 arg2) {
    require msg.sender == ceoAddress
    if arg2 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount more than contract balance'
    if arg2:
        if arg1:
            call arg1 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
        else:
            call ceoAddress with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
    else:
        if arg1:
            call arg1 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            call ceoAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_68b55839(?) {
    if not balanceOf[address(arg1)]:
        return ''
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = code.data[13409 len 32 * balanceOf[address(arg1)]]
    idx = 0
    s = 0
    while idx < stor10.length:
        mem[0] = idx
        mem[32] = 4
        if ownerOf[idx] != arg1:
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

function sub_5b236d97(?) {
    if not stor10.length:
        mem[(32 * stor10.length) + 128] = stor10.length
    else:
        mem[128 len 32 * stor10.length] = code.data[13409 len 32 * stor10.length]
        mem[(32 * stor10.length) + 128] = stor10.length
        mem[(32 * stor10.length) + 160 len 32 * stor10.length] = code.data[13409 len 32 * stor10.length]
    idx = 0
    while idx < stor10.length:
        require idx < stor10.length
        mem[(32 * idx) + 128] = priceOf[idx]
        mem[0] = idx
        mem[32] = 4
        require idx < mem[(32 * stor10.length) + 128]
        mem[(32 * idx) + (32 * stor10.length) + 160] = ownerOf[idx]
        idx = idx + 1
        continue 
    mem[(64 * stor10.length) + 160] = 64
    mem[(64 * stor10.length) + 224] = stor10.length
    mem[(64 * stor10.length) + 256 len floor32(stor10.length)] = mem[128 len floor32(stor10.length)]
    mem[(64 * stor10.length) + 192] = (32 * stor10.length) + 96
    mem[(98 * stor10.length) + 256] = mem[(32 * stor10.length) + 128]
    mem[(98 * stor10.length) + 288 len floor32(mem[(32 * stor10.length) + 128])] = mem[(32 * stor10.length) + 160 len floor32(mem[(32 * stor10.length) + 128])]
    return memory
      from (64 * stor10.length) + 160
       len (32 * mem[(32 * stor10.length) + 128]) + (161 * stor10.length) + 128
}

function sub_d74dd12d(?) payable {
    require not uint8(stor1.field_160)
    if not arg2:
        if sub_d8ba392b >= 999:
            revert with 0, 'No more generation 0 pets may be created'
        if ceoAddress != msg.sender:
            revert with 0, 'New owner must be CEO'
        sub_d8ba392b++
    else:
        if not msg.sender:
            revert with 0, 'Not a valid address'
        if msg.value < startingPrice:
            revert with 0, 'Amount sent is less than price'
        sub_a65d24da[arg4 << 192]++
        sub_a65d24da[arg5 << 192]++
    if bool(stor2[arg1 << 128]) == 1:
        revert with 0, 'DNA already registered, please regenerate pet and try again'
    stor2[arg1 << 128] = 1
    stor10.length++
    stor10[stor10.length].field_0 = arg1
    stor10[stor10.length].field_128 = block.timestamp % 281474976710656
    stor10[stor10.length].field_176 = arg2
    stor10[stor10.length].field_192 = arg3
    stor10[stor10.length].field_256 = arg4
    stor10[stor10.length].field_320 = arg5
    sub_b7004407[arg1 << 128] = stor10.length
    sub_a65d24da[stor10.length] = 0
    priceOf[stor10.length] = startingPrice
    stor9[stor10.length] = 0
    emit 0x8ae110b2: arg1 << 128, block.timestamp << 208, arg2 << 240, arg3 << 248, arg4 << 192, arg5 << 192, 0, startingPrice, 0, stor10.length, msg.sender
    balanceOf[address(msg.sender)]++
    ownerOf[stor10.length] = msg.sender
    emit Transfer(stor10.length, 0, msg.sender);
}

function purchase(uint256 arg1) payable {
    require not uint8(stor1.field_160)
    require arg1 < stor10.length
    if not ownerOf[arg1]:
        revert with 0, 'Not a valid address'
    if not msg.sender:
        revert with 0, 'Not a valid address'
    if ownerOf[arg1] == msg.sender:
        revert with 0, 'New owner is same as old owner'
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'Contract's address is new owner'
    if bool(stor9[arg1]) != 1:
        revert with 0, 'This pet is not for sale'
    if priceOf[arg1] <= 0:
        revert with 0, 'Price is less than or equal to 0'
    if msg.value < priceOf[arg1]:
        revert with 0, 'Amount sent is less than price'
    stor9[arg1] = 0
    balanceOf[address(msg.sender)]++
    ownerOf[arg1] = msg.sender
    if ownerOf[arg1]:
        balanceOf[stor4[arg1]]--
        stor7[arg1] = 0
    emit Transfer(arg1, ownerOf[arg1], msg.sender);
    emit 0xdfb5c4b6: stor10[arg1].field_0, stor10[arg1].field_0, stor10[arg1].field_0, stor10[arg1].field_0, stor10[arg1].field_256, stor10[arg1].field_256, sub_a65d24da[arg1], priceOf[arg1], 0, arg1, ownerOf[arg1], msg.sender
    if not priceOf[arg1]:
        require 0 <= priceOf[arg1]
        call ownerOf[arg1] with:
           value priceOf[arg1] wei
             gas 2300 * is_zero(value) wei
    else:
        require priceOf[arg1]
        require 500 * priceOf[arg1] / priceOf[arg1] == 500
        require 500 * priceOf[arg1] / 10000 <= priceOf[arg1]
        call ownerOf[arg1] with:
           value priceOf[arg1] - (500 * priceOf[arg1] / 10000) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

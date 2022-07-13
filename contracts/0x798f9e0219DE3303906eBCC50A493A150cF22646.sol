contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint8 stor2;
address tokenContractAddress; offset 8
address sub_3fd73340Address;
array of struct sales;
array of uint256 sub_81839fa8;
array of uint256 sub_da71a271;
array of struct auctions;
array of uint256 sub_1505a2ba;
array of uint256 sub_d74a5701;
mapping of uint256 nonces;

function sub_1505a2ba(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_1505a2ba[arg1]
    return sub_1505a2ba[arg1][arg2]
}

function sub_3fd73340(?) {
    return sub_3fd73340Address
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor1[address(arg1)])
}

function auctions(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < auctions.length
    require auctions[arg1].field_0 < 3
    return auctions[arg1].field_0, 
           auctions[arg1].field_0,
           auctions[arg1].field_256,
           auctions[arg1].field_512,
           auctions[arg1].field_768,
           auctions[arg1].field_1024,
           auctions[arg1].field_1280
}

function paused() {
    return bool(stor2)
}

function nonces(address arg1) {
    require calldata.size - 4 >= 32
    return nonces[arg1]
}

function sub_81839fa8(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_81839fa8[arg1]
    return sub_81839fa8[arg1][arg2]
}

function tokenContractAddress() {
    return tokenContractAddress
}

function owner() {
    return owner
}

function sales(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < sales.length
    require sales[arg1].field_768 < 3
    return sales[arg1].field_0, 
           sales[arg1].field_256,
           sales[arg1].field_512,
           sales[arg1].field_768,
           sales[arg1].field_776,
           sales[arg1].field_1024
}

function sub_d74a5701(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_d74a5701[arg1]
    return sub_d74a5701[arg1][arg2]
}

function sub_da71a271(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_da71a271[arg1]
    return sub_da71a271[arg1][arg2]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_29d94516(?) {
    require calldata.size - 4 >= 64
    return sha3(this.address, arg1, arg2)
}

function sub_cbed1cb0(?) {
    require calldata.size - 4 >= 64
    return sha3(this.address, arg1, arg2)
}

function sub_f821a8da(?) {
    require calldata.size - 4 >= 96
    return sha3(this.address, arg1, arg2, arg3)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_172c92fc(?) {
    require calldata.size - 4 >= 64
    return sha3(this.address, 'metaCancelSale', arg1, arg2)
}

function sub_c4b81cbd(?) {
    require calldata.size - 4 >= 64
    return sha3(this.address, 'metaExecuteSale', arg1, arg2)
}

function sub_3d9fc8e8(?) {
    require calldata.size - 4 >= 128
    return sha3(this.address, 'metaCreateSale', arg1, arg2, arg3, arg4)
}

function sub_525ad8bc(?) {
    require calldata.size - 4 >= 128
    return sha3(this.address, 'metaCreateAuction', arg1, arg2, arg3, arg4)
}

function unpause() {
    require msg.sender
    require stor1[address(msg.sender)]
    require stor2
    stor2 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor1[address(msg.sender)]
    require not stor2
    stor2 = 1
    emit Paused(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor1[address(msg.sender)]
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function sub_a8561885(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require stor2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New token contract address is invalid'
    sub_3fd73340Address = arg1
}

function setTokenContractAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require stor2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New token contract address is invalid'
    tokenContractAddress = arg1
}

function cancelSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    require not stor2
    require arg1 < sales.length
    if sales[arg1].field_776 != msg.sender:
        revert with 0, 'You cannot cancel this sale'
    require arg1 < sales.length
    require sales[arg1].field_768 <= 2
    if sales[arg1].field_768:
        revert with 0, 'Sale is not open anymore'
    require arg1 < sales.length
    sales[arg1].field_768 = 2
    emit SaleCanceled(arg1);
}

function cancelAuction(uint256 arg1) {
    require calldata.size - 4 >= 32
    require not stor2
    require arg1 < auctions.length
    if auctions[arg1].field_8 != msg.sender:
        revert with 0, 'You cannot cancel this auction'
    require arg1 < auctions.length
    require auctions[arg1].field_0 <= 2
    if auctions[arg1].field_0:
        revert with 0, 'Auction is not open anymore'
    require arg1 < auctions.length
    auctions[arg1].field_0 = 2
    emit AuctionCanceled(arg1);
}

function getSales() {
    mem[64] = (32 * sales.length) + 128
    mem[96] = sales.length
    s = 128
    idx = 0
    while idx < sales.length:
        mem[0] = 4
        _15 = mem[64]
        mem[64] = mem[64] + 192
        mem[_15] = sales[idx].field_0
        mem[_15 + 32] = sales[idx].field_256
        mem[_15 + 64] = sales[idx].field_512
        require sales[idx].field_768 <= 2
        mem[_15 + 96] = sales[idx].field_768
        mem[_15 + 128] = sales[idx].field_776
        mem[_15 + 160] = sales[idx].field_1024
        mem[s] = _15
        s = s + 32
        idx = idx + 1
        continue 
    _16 = mem[64]
    mem[mem[64]] = 32
    _17 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _17:
        _26 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_26 + 32]
        mem[t + 64] = mem[_26 + 64]
        require mem[_26 + 96] < 3
        mem[t + 96] = mem[_26 + 96]
        mem[t + 128] = mem[_26 + 140 len 20]
        mem[t + 160] = mem[_26 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _16 + (192 * _17) + -mem[64] + 64
}

function getAuctions() {
    mem[64] = (32 * auctions.length) + 128
    mem[96] = auctions.length
    s = 128
    idx = 0
    while idx < auctions.length:
        mem[0] = 7
        _16 = mem[64]
        mem[64] = mem[64] + 224
        require auctions[idx].field_0 <= 2
        mem[_16] = auctions[idx].field_0
        mem[_16 + 32] = auctions[idx].field_8
        mem[_16 + 64] = auctions[idx].field_256
        mem[_16 + 96] = auctions[idx].field_512
        mem[_16 + 128] = auctions[idx].field_768
        mem[_16 + 160] = auctions[idx].field_1024
        mem[_16 + 192] = auctions[idx].field_1280
        mem[s] = _16
        s = s + 32
        idx = idx + 1
        continue 
    _17 = mem[64]
    mem[mem[64]] = 32
    _18 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _18:
        _28 = mem[s]
        require mem[mem[s]] < 3
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_28 + 44 len 20]
        mem[t + 64] = mem[_28 + 76 len 20]
        mem[t + 96] = mem[_28 + 96]
        mem[t + 128] = mem[_28 + 128]
        mem[t + 160] = mem[_28 + 160]
        mem[t + 192] = mem[_28 + 192]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _17 + (224 * _18) + -mem[64] + 64
}

function getSigner(bytes32 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length != 65:
        mem[ceil32(arg2.length) + 128] = 0
        return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    _3 = mem[128]
    _4 = mem[160]
    _5 = mem[192]
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            mem[ceil32(arg2.length) + 128] = 0
            return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[ceil32(arg2.length) + 160] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(arg2.length) + 188] = arg1
    mem[ceil32(arg2.length) + 128] = 60
    signer = erecover(sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 27 << 248, _3, _4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function createSale(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not stor2
    require ext_code.size(sub_3fd73340Address)
    staticcall sub_3fd73340Address.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender is not the owner of the certificate'
    require ext_code.size(sub_3fd73340Address)
    staticcall sub_3fd73340Address.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        require ext_code.size(sub_3fd73340Address)
        staticcall sub_3fd73340Address.isApprovedForAll(address arg1, address arg2) with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Contract is not allowed to manipulate certificate'
    sales.length++
    sales[sales.length].field_0 = arg2
    sales[sales.length].field_256 = arg1
    sales[sales.length].field_512 = arg3
    sales[sales.length].field_768 = 0
    sales[sales.length].field_1024 = 0
    sales[sales.length].field_776 = msg.sender
    sales[sales.length].field_1024 = 0
    sales[sales.length].field_1280 = 0
    sub_81839fa8[address(msg.sender)]++
    sub_81839fa8[address(msg.sender)][sub_81839fa8[address(msg.sender)]] = sales.length
    emit SaleCreated(sales.length, msg.sender);
}

function createAuction(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not stor2
    require ext_code.size(sub_3fd73340Address)
    staticcall sub_3fd73340Address.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender is not the owner of the certificate'
    require ext_code.size(sub_3fd73340Address)
    staticcall sub_3fd73340Address.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        require ext_code.size(sub_3fd73340Address)
        staticcall sub_3fd73340Address.isApprovedForAll(address arg1, address arg2) with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Contract is not allowed to manipulate certificate'
    auctions.length++
    auctions[auctions.length].field_0 = 0
    auctions[auctions.length].field_256 = 0
    auctions[auctions.length].field_8 = msg.sender
    auctions[auctions.length].field_256 = 0
    auctions[auctions.length].field_512 = 0
    auctions[auctions.length].field_512 = arg2
    auctions[auctions.length].field_768 = 0
    auctions[auctions.length].field_1024 = arg1
    auctions[auctions.length].field_1280 = arg3
    sub_1505a2ba[address(msg.sender)]++
    sub_1505a2ba[address(msg.sender)][sub_1505a2ba[address(msg.sender)]] = auctions.length
    emit AuctionCreated(auctions.length, msg.sender);
}

function sub_c4e6abca(?) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = address(this.address)
    mem[ceil32(arg1.length) + 180] = arg2
    mem[ceil32(arg1.length) + 212] = arg3
    mem[ceil32(arg1.length) + 128] = 84
    if arg1.length != 65:
        revert with 0, 'Cannot get signer'
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            revert with 0, 'Cannot get signer'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Cannot get signer'
    if arg3 != nonces[address(signer)]:
        revert with 0, 'Nonce is invalid'
    nonces[address(signer)]++
    require not stor2
    require arg2 < auctions.length
    if auctions[arg2].field_8 != address(signer):
        revert with 0, 'You cannot cancel this auction'
    require arg2 < auctions.length
    require auctions[arg2].field_0 <= 2
    if auctions[arg2].field_0:
        revert with 0, 'Auction is not open anymore'
    require arg2 < auctions.length
    auctions[arg2].field_0 = 2
    emit AuctionCanceled(arg2);
}

function sub_9b76d308(?) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = address(this.address)
    mem[ceil32(arg1.length) + 180] = 'metaCancelSale'
    mem[ceil32(arg1.length) + 194] = arg2
    mem[ceil32(arg1.length) + 226] = arg3
    mem[ceil32(arg1.length) + 128] = 98
    if arg1.length != 65:
        revert with 0, 'Cannot get signer'
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            revert with 0, 'Cannot get signer'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Cannot get signer'
    if arg3 != nonces[address(signer)]:
        revert with 0, 'Nonce is invalid'
    nonces[address(signer)]++
    require not stor2
    require arg2 < sales.length
    if sales[arg2].field_776 != address(signer):
        revert with 0, 'You cannot cancel this sale'
    require arg2 < sales.length
    require sales[arg2].field_768 <= 2
    if sales[arg2].field_768:
        revert with 0, 'Sale is not open anymore'
    require arg2 < sales.length
    sales[arg2].field_768 = 2
    emit SaleCanceled(arg2);
}

function executeAuction(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor2
    require arg1 < auctions.length
    if auctions[arg1].field_8 == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You cannot bid on your own auction'
    require arg1 < auctions.length
    require auctions[arg1].field_0 <= 2
    if auctions[arg1].field_0:
        revert with 0, 'Auction is not open anymore'
    require arg1 < auctions.length
    if block.timestamp >= auctions[arg1].field_1280:
        revert with 0, 'Auction has expired'
    require arg1 < auctions.length
    if arg2 < auctions[arg1].field_512:
        revert with 0, 'Amount must be higher'
    require arg1 < auctions.length
    if arg2 <= auctions[arg1].field_768:
        revert with 0, 'Amount must be higher'
    require arg1 < auctions.length
    require ext_code.size(sub_3fd73340Address)
    staticcall sub_3fd73340Address.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args auctions[arg1].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        require arg1 < sales.length
        require ext_code.size(sub_3fd73340Address)
        staticcall sub_3fd73340Address.isApprovedForAll(address arg1, address arg2) with:
                gas gas_remaining wei
               args sales[arg1].field_768, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Contract is not allowed to manipulate certificate'
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Contract is not allowed to manipulate buyer funds'
    require arg1 < auctions.length
    auctions[arg1].field_768 = arg2
    auctions[arg1].field_256 = msg.sender
    emit NewBid(arg1, msg.sender, arg2);
}

function sub_9b1225c4(?) {
    require calldata.size - 4 >= 32
    require not stor2
    require arg1 < sales.length
    if sales[arg1].field_776 == msg.sender:
        revert with 0, 'You cannot execute your own sale'
    require arg1 < sales.length
    require sales[arg1].field_768 <= 2
    if sales[arg1].field_768:
        revert with 0, 'Sale is not open anymore'
    require arg1 < sales.length
    if block.timestamp >= sales[arg1].field_512:
        revert with 0, 'Sale has expired'
    require arg1 < sales.length
    require ext_code.size(sub_3fd73340Address)
    staticcall sub_3fd73340Address.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args sales[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < sales.length
    if ext_call.return_data[12 len 20] != this.address:
        require ext_code.size(sub_3fd73340Address)
        staticcall sub_3fd73340Address.isApprovedForAll(address arg1, address arg2) with:
                gas gas_remaining wei
               args sales[arg1].field_768, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Contract is not allowed to manipulate certificate'
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sales[arg1].field_0:
        revert with 0, 'Contract is not allowed to manipulate buyer funds'
    require arg1 < sales.length
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sales[arg1].field_768, sales[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Contract could not transfer the funds'
    require arg1 < sales.length
    require ext_code.size(sub_3fd73340Address)
    call sub_3fd73340Address.0x23b872dd with:
         gas gas_remaining wei
        args sales[arg1].field_768, msg.sender, sales[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 < sales.length
    sales[arg1].field_1024 = msg.sender
    sales[arg1].field_768 = 1
    emit 0x8262b86f: arg1, msg.sender
}

function completeAuction(uint256 arg1) {
    require calldata.size - 4 >= 32
    require not stor2
    require arg1 < auctions.length
    require auctions[arg1].field_0 <= 2
    if auctions[arg1].field_0:
        revert with 0, 'Auction is not open anymore'
    require arg1 < auctions.length
    if auctions[arg1].field_1280 >= block.timestamp:
        revert with 0, 'Auction has not expired yet'
    require arg1 < auctions.length
    require ext_code.size(sub_3fd73340Address)
    staticcall sub_3fd73340Address.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args auctions[arg1].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        require arg1 < sales.length
        require ext_code.size(sub_3fd73340Address)
        staticcall sub_3fd73340Address.isApprovedForAll(address arg1, address arg2) with:
                gas gas_remaining wei
               args sales[arg1].field_768, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Contract is not allowed to manipulate certificate'
    require arg1 < auctions.length
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < auctions[arg1].field_768:
        revert with 0, 'Contract is not allowed to manipulate buyer funds'
    require arg1 < auctions.length
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, auctions[arg1].field_0, auctions[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Contract could not transfer the funds'
    require arg1 < auctions.length
    require ext_code.size(sub_3fd73340Address)
    call sub_3fd73340Address.0x23b872dd with:
         gas gas_remaining wei
        args auctions[arg1].field_0, msg.sender, auctions[arg1].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 < auctions.length
    auctions[arg1].field_256 = msg.sender
    auctions[arg1].field_0 = 1
    require arg1 < auctions.length
    emit 0xeeaf33aa: arg1, auctions[arg1].field_768, msg.sender
}

function sub_c604edd0(?) {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = address(this.address)
    mem[ceil32(arg1.length) + 180] = 'metaCreateSale'
    mem[ceil32(arg1.length) + 194] = arg2
    mem[ceil32(arg1.length) + 226] = arg3
    mem[ceil32(arg1.length) + 258] = arg4
    mem[ceil32(arg1.length) + 290] = arg5
    mem[ceil32(arg1.length) + 128] = 162
    if arg1.length != 65:
        revert with 0, 'Cannot get signer'
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            revert with 0, 'Cannot get signer'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Cannot get signer'
    if arg5 != nonces[address(signer)]:
        revert with 0, 'Nonce is invalid'
    nonces[address(signer)]++
    require not stor2
    require ext_code.size(sub_3fd73340Address)
    staticcall sub_3fd73340Address.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != address(signer):
        revert with 0, 'Sender is not the owner of the certificate'
    require ext_code.size(sub_3fd73340Address)
    staticcall sub_3fd73340Address.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        require ext_code.size(sub_3fd73340Address)
        staticcall sub_3fd73340Address.isApprovedForAll(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(signer), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Contract is not allowed to manipulate certificate'
    sales.length++
    sales[sales.length].field_0 = arg3
    sales[sales.length].field_256 = arg2
    sales[sales.length].field_512 = arg4
    sales[sales.length].field_768 = 0
    sales[sales.length].field_1024 = 0
    sales[sales.length].field_776 = address(signer)
    sales[sales.length].field_1024 = 0
    sales[sales.length].field_1280 = 0
    sub_81839fa8[address(signer)]++
    sub_81839fa8[address(signer)][sub_81839fa8[address(signer)]] = sales.length
    emit SaleCreated(sales.length, address(signer));
}

function sub_c03a71fa(?) {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = address(this.address)
    mem[ceil32(arg1.length) + 180] = 'metaCreateAuction'
    mem[ceil32(arg1.length) + 197] = arg2
    mem[ceil32(arg1.length) + 229] = arg3
    mem[ceil32(arg1.length) + 261] = arg4
    mem[ceil32(arg1.length) + 293] = arg5
    mem[ceil32(arg1.length) + 128] = 165
    if arg1.length != 65:
        revert with 0, 'Cannot get signer'
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            revert with 0, 'Cannot get signer'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Cannot get signer'
    if arg5 != nonces[address(signer)]:
        revert with 0, 'Nonce is invalid'
    nonces[address(signer)]++
    require not stor2
    require ext_code.size(sub_3fd73340Address)
    staticcall sub_3fd73340Address.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != address(signer):
        revert with 0, 'Sender is not the owner of the certificate'
    require ext_code.size(sub_3fd73340Address)
    staticcall sub_3fd73340Address.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        require ext_code.size(sub_3fd73340Address)
        staticcall sub_3fd73340Address.isApprovedForAll(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(signer), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Contract is not allowed to manipulate certificate'
    auctions.length++
    auctions[auctions.length].field_0 = 0
    auctions[auctions.length].field_256 = 0
    auctions[auctions.length].field_8 = address(signer)
    auctions[auctions.length].field_256 = 0
    auctions[auctions.length].field_512 = 0
    auctions[auctions.length].field_512 = arg3
    auctions[auctions.length].field_768 = 0
    auctions[auctions.length].field_1024 = arg2
    auctions[auctions.length].field_1280 = arg4
    sub_1505a2ba[address(signer)]++
    sub_1505a2ba[address(signer)][sub_1505a2ba[address(signer)]] = auctions.length
    emit AuctionCreated(auctions.length, address(signer));
}

function sub_5db92c71(?) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = address(this.address)
    mem[ceil32(arg1.length) + 180] = arg2
    mem[ceil32(arg1.length) + 212] = arg3
    mem[ceil32(arg1.length) + 244] = arg4
    mem[ceil32(arg1.length) + 128] = 116
    if arg1.length != 65:
        revert with 0, 'Cannot get signer'
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            revert with 0, 'Cannot get signer'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Cannot get signer'
    if arg4 != nonces[address(signer)]:
        revert with 0, 'Nonce is invalid'
    nonces[address(signer)]++
    require not stor2
    require arg2 < auctions.length
    if auctions[arg2].field_8 == address(signer):
        revert with 0, 'You cannot bid on your own auction'
    require arg2 < auctions.length
    require auctions[arg2].field_0 <= 2
    if auctions[arg2].field_0:
        revert with 0, 'Auction is not open anymore'
    require arg2 < auctions.length
    if block.timestamp >= auctions[arg2].field_1280:
        revert with 0, 'Auction has expired'
    require arg2 < auctions.length
    if arg3 < auctions[arg2].field_512:
        revert with 0, 'Amount must be higher'
    require arg2 < auctions.length
    if arg3 <= auctions[arg2].field_768:
        revert with 0, 'Amount must be higher'
    require arg2 < auctions.length
    require ext_code.size(sub_3fd73340Address)
    staticcall sub_3fd73340Address.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args auctions[arg2].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        require arg2 < sales.length
        require ext_code.size(sub_3fd73340Address)
        staticcall sub_3fd73340Address.isApprovedForAll(address arg1, address arg2) with:
                gas gas_remaining wei
               args sales[arg2].field_768, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Contract is not allowed to manipulate certificate'
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(signer), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Contract is not allowed to manipulate buyer funds'
    require arg2 < auctions.length
    auctions[arg2].field_768 = arg3
    auctions[arg2].field_256 = address(signer)
    emit NewBid(arg2, address(signer), arg3);
}

function sub_2d4b29b6(?) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = address(this.address)
    mem[ceil32(arg1.length) + 180] = arg2
    mem[ceil32(arg1.length) + 212] = arg3
    mem[ceil32(arg1.length) + 128] = 84
    if arg1.length != 65:
        revert with 0, 'Cannot get signer'
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            revert with 0, 'Cannot get signer'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Cannot get signer'
    if arg3 != nonces[address(signer)]:
        revert with 0, 'Nonce is invalid'
    nonces[address(signer)]++
    require not stor2
    require arg2 < auctions.length
    require auctions[arg2].field_0 <= 2
    if auctions[arg2].field_0:
        revert with 0, 'Auction is not open anymore'
    require arg2 < auctions.length
    if auctions[arg2].field_1280 >= block.timestamp:
        revert with 0, 'Auction has not expired yet'
    require arg2 < auctions.length
    require ext_code.size(sub_3fd73340Address)
    staticcall sub_3fd73340Address.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args auctions[arg2].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        require arg2 < sales.length
        require ext_code.size(sub_3fd73340Address)
        staticcall sub_3fd73340Address.isApprovedForAll(address arg1, address arg2) with:
                gas gas_remaining wei
               args sales[arg2].field_768, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Contract is not allowed to manipulate certificate'
    require arg2 < auctions.length
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(signer), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < auctions[arg2].field_768:
        revert with 0, 'Contract is not allowed to manipulate buyer funds'
    require arg2 < auctions.length
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(signer), auctions[arg2].field_0, auctions[arg2].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Contract could not transfer the funds'
    require arg2 < auctions.length
    require ext_code.size(sub_3fd73340Address)
    call sub_3fd73340Address.0x23b872dd with:
         gas gas_remaining wei
        args auctions[arg2].field_0, address(signer), auctions[arg2].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg2 < auctions.length
    auctions[arg2].field_256 = address(signer)
    auctions[arg2].field_0 = 1
    require arg2 < auctions.length
    emit 0xeeaf33aa: arg2, auctions[arg2].field_768, address(signer)
}

function sub_4898990a(?) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = address(this.address)
    mem[ceil32(arg1.length) + 180] = 'metaExecuteSale'
    mem[ceil32(arg1.length) + 195] = arg2
    mem[ceil32(arg1.length) + 227] = arg3
    mem[ceil32(arg1.length) + 128] = 99
    if arg1.length != 65:
        revert with 0, 'Cannot get signer'
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            revert with 0, 'Cannot get signer'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Cannot get signer'
    if arg3 != nonces[address(signer)]:
        revert with 0, 'Nonce is invalid'
    nonces[address(signer)]++
    require not stor2
    require arg2 < sales.length
    if sales[arg2].field_776 == address(signer):
        revert with 0, 'You cannot execute your own sale'
    require arg2 < sales.length
    require sales[arg2].field_768 <= 2
    if sales[arg2].field_768:
        revert with 0, 'Sale is not open anymore'
    require arg2 < sales.length
    if block.timestamp >= sales[arg2].field_512:
        revert with 0, 'Sale has expired'
    require arg2 < sales.length
    require ext_code.size(sub_3fd73340Address)
    staticcall sub_3fd73340Address.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args sales[arg2].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 < sales.length
    if ext_call.return_data[12 len 20] != this.address:
        require ext_code.size(sub_3fd73340Address)
        staticcall sub_3fd73340Address.isApprovedForAll(address arg1, address arg2) with:
                gas gas_remaining wei
               args sales[arg2].field_768, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Contract is not allowed to manipulate certificate'
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(signer), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sales[arg2].field_0:
        revert with 0, 'Contract is not allowed to manipulate buyer funds'
    require arg2 < sales.length
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(signer), sales[arg2].field_768, sales[arg2].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Contract could not transfer the funds'
    require arg2 < sales.length
    require ext_code.size(sub_3fd73340Address)
    call sub_3fd73340Address.0x23b872dd with:
         gas gas_remaining wei
        args sales[arg2].field_768, address(signer), sales[arg2].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg2 < sales.length
    sales[arg2].field_1024 = address(signer)
    sales[arg2].field_768 = 1
    emit 0x8262b86f: arg2, address(signer)
}



}

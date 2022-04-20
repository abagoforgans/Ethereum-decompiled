contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor4;

function _fallback() {
    stor0 = code.data[10087 len 20]
    stor1 = code.data[10107 len 32]
    if code.data[10139 len 32] > 0:
        stor4 = code.data[10139 len 32]
    else:
        stor4 = block.timestamp
    return code.data[120 len 9955]
}



// =====================  Runtime code  =====================


#
#  - eraseNode(bytes32[] arg1)
#
const launchLength = (1344 * 24 * 3600)


address ensAddress;
array of uint256 stor1;
mapping of struct stor2;
mapping of address sealedBids;
uint256 registryStarted;

function ens() {
    return ensAddress
}

function sealedBids(address arg1, bytes32 arg2) {
    return address(sealedBids[arg1][arg2])
}

function registryStarted() {
    return registryStarted
}

function rootNode() {
    return stor1.length
}

function _fallback() payable {
    revert
}

function acceptRegistrarTransfer(bytes32 arg1, address arg2, uint256 arg3) {
  stop
}

function shaBid(bytes32 arg1, address arg2, uint256 arg3, bytes32 arg4) {
    return sha3(arg1, arg2, arg3, arg4)
}

function getAllowedTime(bytes32 arg1) {
    return ((Mask(128, 128, 1344 * 24 * 3600 * uint128(arg1)) >> 128) + registryStarted)
}

function isAllowed(bytes32 arg1, uint256 arg2) {
    return (arg2 > (Mask(128, 128, 1344 * 24 * 3600 * uint128(arg1)) >> 128) + registryStarted)
}

function newBid(bytes32 arg1) payable {
    require address(sealedBids[address(msg.sender)][arg1]) <= 0
    require msg.value >= 10^16
    create contract with callvalue wei
                    code: code.data[8602 len 1278], address(msg.sender)
    require create.new_address
    address(sealedBids[address(msg.sender)][arg1]) = address(create.new_address)
    emit NewBid(msg.value, arg1, msg.sender);
}

function state(bytes32 arg1) {
    if block.timestamp <= (Mask(128, 128, 1344 * 24 * 3600 * uint128(arg1)) >> 128) + registryStarted:
        return 5
    if block.timestamp >= uint256(stor2[arg1].field_256):
        if uint256(stor2[arg1].field_768):
            return 2
        else:
            return 0
    if block.timestamp >= uint256(stor2[arg1].field_256) - (48 * 24 * 3600):
        return 4
    return 1
}

function startAuction(bytes32 arg1) {
    require block.timestamp >= registryStarted
    require block.timestamp <= registryStarted + (35040 * 24 * 3600)
    require ext_code.size(ensAddress)
    call ensAddress.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args stor1.length
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require block.timestamp > (Mask(128, 128, 1344 * 24 * 3600 * uint128(arg1)) >> 128) + registryStarted
    if block.timestamp < uint256(stor2[arg1].field_256):
        require block.timestamp < uint256(stor2[arg1].field_256) - (48 * 24 * 3600)
    else:
        require not uint256(stor2[arg1].field_768)
        uint256(stor2[arg1].field_256) = block.timestamp + (120 * 24 * 3600)
        uint256(stor2[arg1].field_512) = 0
        uint256(stor2[arg1].field_768) = 0
        emit AuctionStarted((block.timestamp + (120 * 24 * 3600)), arg1);
}

function cancelBid(address arg1, bytes32 arg2) {
    require address(sealedBids[address(arg1)][arg2])
    require ext_code.size(address(sealedBids[address(arg1)][arg2]))
    call address(sealedBids[address(arg1)][arg2]).creationDate() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require block.timestamp >= ext_call.return_data[0] + (456 * 24 * 3600)
    require ext_code.size(address(sealedBids[address(arg1)][arg2]))
    call address(sealedBids[address(arg1)][arg2]).setOwner(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(address(sealedBids[address(arg1)][arg2]))
    call address(sealedBids[address(arg1)][arg2]).closeDeed(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 5
    require ext_call.success
    address(sealedBids[address(arg1)][arg2]) = 0
    emit code.data[9880 len 32]: 0, 5, arg2, arg1
}

function entries(bytes32 arg1) {
    if block.timestamp <= (Mask(128, 128, 1344 * 24 * 3600 * uint128(arg1)) >> 128) + registryStarted:
        return 5, stor2[arg1].field_0, uint256(stor2[arg1].field_256), uint256(stor2[arg1].field_512), uint256(stor2[arg1].field_768)
    if block.timestamp >= uint256(stor2[arg1].field_256):
        if uint256(stor2[arg1].field_768):
            return 2, stor2[arg1].field_0, uint256(stor2[arg1].field_256), uint256(stor2[arg1].field_512), uint256(stor2[arg1].field_768)
        return 0, stor2[arg1].field_0, uint256(stor2[arg1].field_256), uint256(stor2[arg1].field_512), uint256(stor2[arg1].field_768)
    if block.timestamp >= uint256(stor2[arg1].field_256) - (48 * 24 * 3600):
        return 4, stor2[arg1].field_0, uint256(stor2[arg1].field_256), uint256(stor2[arg1].field_512), uint256(stor2[arg1].field_768)
    return 1, stor2[arg1].field_0, uint256(stor2[arg1].field_256), uint256(stor2[arg1].field_512), uint256(stor2[arg1].field_768)
}

function transfer(bytes32 arg1, address arg2) {
    require block.timestamp > (Mask(128, 128, 1344 * 24 * 3600 * uint128(arg1)) >> 128) + registryStarted
    require block.timestamp >= uint256(stor2[arg1].field_256)
    require uint256(stor2[arg1].field_768)
    require ext_code.size(stor2[arg1].field_0)
    call stor2[arg1].field_0.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require arg2
    require ext_code.size(stor2[arg1].field_0)
    call stor2[arg1].field_0.setOwner(address rg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_code.size(ensAddress)
    call ensAddress.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args stor1.length
    require ext_call.success
    if ext_call.return_data[12 len 20] == this.address:
        require ext_code.size(ensAddress)
        call ensAddress.setSubnodeOwner(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 710 wei
            args stor1.length, arg1, arg2
        require ext_call.success
}

function transferRegistrars(bytes32 arg1) {
    require block.timestamp > (Mask(128, 128, 1344 * 24 * 3600 * uint128(arg1)) >> 128) + registryStarted
    require block.timestamp >= uint256(stor2[arg1].field_256)
    require uint256(stor2[arg1].field_768)
    require ext_code.size(stor2[arg1].field_0)
    call stor2[arg1].field_0.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(ensAddress)
    call ensAddress.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args stor1.length
    require ext_call.success
    require ext_call.return_data[12 len 20] != this.address
    require ext_code.size(stor2[arg1].field_0)
    call stor2[arg1].field_0.setRegistrar(address rg1) with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xea9e107a with:
         gas gas_remaining - 710 wei
        args arg1, stor2[arg1].field_0, uint256(stor2[arg1].field_256)
    require ext_call.success
    stor2[arg1].field_0 = 0
    uint256(stor2[arg1].field_256) = 0
    uint256(stor2[arg1].field_512) = 0
    uint256(stor2[arg1].field_768) = 0
}

function startAuctions(bytes32[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _16 = mem[(32 * idx) + 128]
        require block.timestamp >= registryStarted
        require block.timestamp <= registryStarted + (35040 * 24 * 3600)
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = stor1.length
        require ext_code.size(ensAddress)
        call ensAddress.owner(bytes32 rg1) with:
             gas gas_remaining - 710 wei
            args stor1.length
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        require address(ext_call.return_data[0]) == this.address
        mem[0] = _16
        mem[32] = 2
        require block.timestamp > (Mask(128, 128, 1344 * 24 * 3600 * Mask(128, 128, _16) >> 128) >> 128) + registryStarted
        if block.timestamp < uint256(stor2[_16].field_256):
            require block.timestamp < uint256(stor2[_16].field_256) - (48 * 24 * 3600)
        else:
            require not uint256(stor2[_16].field_768)
            mem[0] = _16
            mem[32] = 2
            uint256(stor2[_16].field_256) = block.timestamp + (120 * 24 * 3600)
            uint256(stor2[_16].field_512) = 0
            uint256(stor2[_16].field_768) = 0
            mem[(32 * arg1.length) + 128] = block.timestamp + (120 * 24 * 3600)
            emit AuctionStarted((block.timestamp + (120 * 24 * 3600)), _16);
        idx = idx + 1
        continue 
}

function startAuctionsAndBid(bytes32[] arg1, bytes32 arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _24 = mem[(32 * idx) + 128]
        require block.timestamp >= registryStarted
        require block.timestamp <= registryStarted + (35040 * 24 * 3600)
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = stor1.length
        require ext_code.size(ensAddress)
        call ensAddress.owner(bytes32 rg1) with:
             gas gas_remaining - 710 wei
            args stor1.length
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        require address(ext_call.return_data[0]) == this.address
        mem[0] = _24
        mem[32] = 2
        require block.timestamp > (Mask(128, 128, 1344 * 24 * 3600 * Mask(128, 128, _24) >> 128) >> 128) + registryStarted
        if block.timestamp < uint256(stor2[_24].field_256):
            require block.timestamp < uint256(stor2[_24].field_256) - (48 * 24 * 3600)
        else:
            require not uint256(stor2[_24].field_768)
            mem[0] = _24
            mem[32] = 2
            uint256(stor2[_24].field_256) = block.timestamp + (120 * 24 * 3600)
            uint256(stor2[_24].field_512) = 0
            uint256(stor2[_24].field_768) = 0
            mem[(32 * arg1.length) + 128] = block.timestamp + (120 * 24 * 3600)
            emit AuctionStarted((block.timestamp + (120 * 24 * 3600)), _24);
        idx = idx + 1
        continue 
    require address(sealedBids[address(msg.sender)][arg2]) <= 0
    require msg.value >= 10^16
    create contract with callvalue wei
                    code: code.data[8602 len 1278], msg.sender
    require create.new_address
    address(sealedBids[address(msg.sender)][arg2]) = address(create.new_address)
    emit NewBid(msg.value, arg2, msg.sender);
}

function finalizeAuction(bytes32 arg1) {
    require block.timestamp > (Mask(128, 128, 1344 * 24 * 3600 * uint128(arg1)) >> 128) + registryStarted
    require block.timestamp >= uint256(stor2[arg1].field_256)
    require uint256(stor2[arg1].field_768)
    require ext_code.size(stor2[arg1].field_0)
    call stor2[arg1].field_0.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    if uint256(stor2[arg1].field_512) > 10^16:
        require ext_code.size(stor2[arg1].field_0)
        call stor2[arg1].field_0.setBalance(uint256 rg1, bool rg2) with:
             gas gas_remaining - 710 wei
            args uint256(stor2[arg1].field_512), 1
    else:
        uint256(stor2[arg1].field_512) = 10^16
        require ext_code.size(stor2[arg1].field_0)
        call stor2[arg1].field_0.setBalance(uint256 rg1, bool rg2) with:
             gas gas_remaining - 710 wei
            args 10^16, 1
    require ext_call.success
    require ext_code.size(stor2[arg1].field_0)
    call stor2[arg1].field_0.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(ensAddress)
    call ensAddress.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args stor1.length
    require ext_call.success
    if ext_call.return_data[12 len 20] == this.address:
        require ext_code.size(ensAddress)
        call ensAddress.setSubnodeOwner(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 710 wei
            args stor1.length, arg1, address(ext_call.return_data[0])
        require ext_call.success
    require ext_code.size(stor2[arg1].field_0)
    call stor2[arg1].field_0.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit HashRegistered(uint256(stor2[arg1].field_512), uint256(stor2[arg1].field_256), arg1, address(ext_call.return_data[0]));
}

function releaseDeed(bytes32 arg1) {
    require block.timestamp > (Mask(128, 128, 1344 * 24 * 3600 * uint128(arg1)) >> 128) + registryStarted
    require block.timestamp >= uint256(stor2[arg1].field_256)
    require uint256(stor2[arg1].field_768)
    require ext_code.size(stor2[arg1].field_0)
    call stor2[arg1].field_0.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    if block.timestamp < uint256(stor2[arg1].field_256) + (8760 * 24 * 3600):
        require ext_code.size(ensAddress)
        call ensAddress.owner(bytes32 rg1) with:
             gas gas_remaining - 710 wei
            args stor1.length
        require ext_call.success
        require ext_call.return_data[12 len 20] != this.address
    uint256(stor2[arg1].field_512) = 0
    uint256(stor2[arg1].field_768) = 0
    stor2[arg1].field_0 = 0
    require ext_code.size(ensAddress)
    call ensAddress.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args stor1.length
    require ext_call.success
    if ext_call.return_data[12 len 20] == this.address:
        require ext_code.size(ensAddress)
        call ensAddress.setSubnodeOwner(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 710 wei
            args stor1.length, arg1, this.address
        require ext_call.success
        require ext_code.size(ensAddress)
        call ensAddress.setResolver(bytes32 rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args sha3(stor1.length, arg1), 0
        require ext_call.success
        require ext_code.size(ensAddress)
        call ensAddress.setOwner(bytes32 rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args sha3(stor1.length, arg1), 0
        require ext_call.success
    require ext_code.size(stor2[arg1].field_0)
    call stor2[arg1].field_0.closeDeed(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 1000
    require ext_call.success
    emit HashReleased(uint256(stor2[arg1].field_512), arg1);
}

function invalidateName(string arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[0] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    mem[32] = 2
    require block.timestamp > (Mask(128, 128, 1344 * 24 * 3600 * Mask(128, 128, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])) >> 128) >> 128) + registryStarted
    require block.timestamp >= uint256(stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_256)
    require uint256(stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_768)
    s = 0
    s = 0
    idx = 97
    while idx < arg1.length + 97:
        if mem[idx + 31 len 1] < 128:
            s = mem[idx + 31 len 1]
            s = s + 1
            idx = idx + 1
            continue 
        if mem[idx + 31 len 1] < 224:
            s = mem[idx + 31 len 1]
            s = s + 1
            idx = idx + 2
            continue 
        if mem[idx + 31 len 1] < 240:
            s = mem[idx + 31 len 1]
            s = s + 1
            idx = idx + 3
            continue 
        if mem[idx + 31 len 1] < 248:
            s = mem[idx + 31 len 1]
            s = s + 1
            idx = idx + 4
            continue 
        if mem[idx + 31 len 1] >= 252:
            s = mem[idx + 31 len 1]
            s = s + 1
            idx = idx + 6
            continue 
        s = mem[idx + 31 len 1]
        s = s + 1
        idx = idx + 5
        continue 
    require s <= 6
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    _324 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    _325 = sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]), 2)
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 132] = stor1.length
    require ext_code.size(ensAddress)
    call ensAddress.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args stor1.length
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    if address(ext_call.return_data[0]) == this.address:
        mem[ceil32(arg1.length) + 196] = this.address
        require ext_code.size(ensAddress)
        call ensAddress.setSubnodeOwner(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 710 wei
            args stor1.length, _324, this.address
        require ext_call.success
        require ext_code.size(ensAddress)
        call ensAddress.setResolver(bytes32 rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args sha3(stor1.length, _324), 0
        require ext_call.success
        mem[ceil32(arg1.length) + 128] = 0x5b0fc9c300000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg1.length) + 132] = sha3(stor1.length, _324)
        mem[ceil32(arg1.length) + 164] = 0
        require ext_code.size(ensAddress)
        call ensAddress.setOwner(bytes32 rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args sha3(stor1.length, _324), 0
        require ext_call.success
    if stor[_325]:
        if uint256(stor2[_325].field_0) > 10^16:
            mem[ceil32(arg1.length) + 164] = 0
            require ext_code.size(stor[_325])
            call stor[_325].setBalance(uint256 rg1, bool rg2) with:
                 gas gas_remaining - 710 wei
                args 2 * Mask(256, -1, uint255(stor2[_325].field_1)), 0
        else:
            uint256(stor2[_325].field_0) = 10^16
            mem[ceil32(arg1.length) + 164] = 0
            require ext_code.size(stor[_325])
            call stor[_325].setBalance(uint256 rg1, bool rg2) with:
                 gas gas_remaining - 710 wei
                args 5 * 10^15, 0
        require ext_call.success
        require ext_code.size(stor[_325])
        call stor[_325].setOwner(address rg1) with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        mem[ceil32(arg1.length) + 128] = 0xbbe4277100000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg1.length) + 132] = 1000
        require ext_code.size(stor[_325])
        call stor[_325].closeDeed(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args 1000
        require ext_call.success
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    emit HashInvalidated(uint256(stor2[_325].field_0), stor1[_325], _324, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]));
    uint256(stor2[_325].field_0) = 0
    uint256(sealedBids[_325]) = 0
    stor[_325] = 0
}

function unsealBid(bytes32 arg1, uint256 arg2, bytes32 arg3) {
    require address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)])
    address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]) = 0
    require ext_code.size(address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]))
    call address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]).value() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]))
    if arg2 >= ext_call.return_data[0]:
        call address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]).setBalance(uint256 rg1, bool rg2) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0], 1
        require ext_call.success
        require block.timestamp > (Mask(128, 128, 1344 * 24 * 3600 * uint128(arg1)) >> 128) + registryStarted
        if block.timestamp >= uint256(stor2[arg1].field_256):
            require uint256(stor2[arg1].field_768)
            require ext_code.size(address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]))
            call address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]).closeDeed(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args 5
            require ext_call.success
            emit code.data[9880 len 32]: ext_call.return_data[0], 1, arg1, msg.sender
        else:
            require block.timestamp >= uint256(stor2[arg1].field_256) - (48 * 24 * 3600)
            require ext_code.size(address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]))
            if ext_call.return_data[0] < 10^16:
                call address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]).closeDeed(uint256 rg1) with:
                     gas gas_remaining - 710 wei
                    args 995
                require ext_call.success
                emit code.data[9880 len 32]: ext_call.return_data[0], 0, arg1, msg.sender
            else:
                call address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]).creationDate() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if ext_call.return_data[0] > uint256(stor2[arg1].field_256) - (48 * 24 * 3600):
                    require ext_code.size(address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]))
                    call address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]).closeDeed(uint256 rg1) with:
                         gas gas_remaining - 710 wei
                        args 995
                    require ext_call.success
                    emit code.data[9880 len 32]: ext_call.return_data[0], 0, arg1, msg.sender
                else:
                    if ext_call.return_data[0] <= uint256(stor2[arg1].field_768):
                        if ext_call.return_data[0] <= uint256(stor2[arg1].field_512):
                            require ext_code.size(address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]))
                            call address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]).closeDeed(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args 995
                            require ext_call.success
                            emit code.data[9880 len 32]: ext_call.return_data[0], 4, arg1, msg.sender
                        else:
                            uint256(stor2[arg1].field_512) = ext_call.return_data[0]
                            require ext_code.size(address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]))
                            call address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]).closeDeed(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args 995
                            require ext_call.success
                            emit code.data[9880 len 32]: ext_call.return_data[0], 3, arg1, msg.sender
                    else:
                        if stor2[arg1].field_0:
                            require ext_code.size(stor2[arg1].field_0)
                            call stor2[arg1].field_0.closeDeed(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args 995
                            require ext_call.success
                        uint256(stor2[arg1].field_512) = uint256(stor2[arg1].field_768)
                        uint256(stor2[arg1].field_768) = ext_call.return_data[0]
                        stor2[arg1].field_0 = address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)])
                        emit code.data[9880 len 32]: ext_call.return_data[0], 2, arg1, msg.sender
    else:
        call address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]).setBalance(uint256 rg1, bool rg2) with:
             gas gas_remaining - 710 wei
            args arg2, 1
        require ext_call.success
        require block.timestamp > (Mask(128, 128, 1344 * 24 * 3600 * uint128(arg1)) >> 128) + registryStarted
        if block.timestamp >= uint256(stor2[arg1].field_256):
            require uint256(stor2[arg1].field_768)
            require ext_code.size(address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]))
            call address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]).closeDeed(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args 5
            require ext_call.success
            emit code.data[9880 len 32]: arg2, 1, arg1, msg.sender
        else:
            require block.timestamp >= uint256(stor2[arg1].field_256) - (48 * 24 * 3600)
            require ext_code.size(address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]))
            if arg2 < 10^16:
                call address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]).closeDeed(uint256 rg1) with:
                     gas gas_remaining - 710 wei
                    args 995
                require ext_call.success
                emit code.data[9880 len 32]: arg2, 0, arg1, msg.sender
            else:
                call address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]).creationDate() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if ext_call.return_data[0] > uint256(stor2[arg1].field_256) - (48 * 24 * 3600):
                    require ext_code.size(address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]))
                    call address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]).closeDeed(uint256 rg1) with:
                         gas gas_remaining - 710 wei
                        args 995
                    require ext_call.success
                    emit code.data[9880 len 32]: arg2, 0, arg1, msg.sender
                else:
                    if arg2 <= uint256(stor2[arg1].field_768):
                        if arg2 <= uint256(stor2[arg1].field_512):
                            require ext_code.size(address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]))
                            call address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]).closeDeed(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args 995
                            require ext_call.success
                            emit code.data[9880 len 32]: arg2, 4, arg1, msg.sender
                        else:
                            uint256(stor2[arg1].field_512) = arg2
                            require ext_code.size(address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]))
                            call address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)]).closeDeed(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args 995
                            require ext_call.success
                            emit code.data[9880 len 32]: arg2, 3, arg1, msg.sender
                    else:
                        if stor2[arg1].field_0:
                            require ext_code.size(stor2[arg1].field_0)
                            call stor2[arg1].field_0.closeDeed(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args 995
                            require ext_call.success
                        uint256(stor2[arg1].field_512) = uint256(stor2[arg1].field_768)
                        uint256(stor2[arg1].field_768) = arg2
                        stor2[arg1].field_0 = address(sealedBids[address(msg.sender)][sha3(arg1, msg.sender, arg2, arg3)])
                        emit code.data[9880 len 32]: arg2, 2, arg1, msg.sender
}



}

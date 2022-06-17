contract main {




// =====================  Runtime code  =====================


#
#  - cancelBid(address arg1, uint256 arg2)
#
const ERC721Composable_ValidateFingerprint = 0x8f9f4b6300000000000000000000000000000000000000000000000000000000

const ERC721_Interface = 0x80ac58cd00000000000000000000000000000000000000000000000000000000

const ERC721_Received = 0x150b7a0200000000000000000000000000000000000000000000000000000000

const ONE_MILLION = 10^6

const MAX_BID_DURATION = (4368 * 24 * 3600)

const MIN_BID_DURATION = 60


address owner;
array of uint8 stor1;
uint8 stor2;
address manaTokenAddress; offset 8
mapping of struct bidByToken;
mapping of uint256 bidCounterByToken;
mapping of uint256 bidByBidder;
mapping of uint256 bidIdByTokenAndBidder;
uint256 ownerCutPerMillion;

function getBidByBidder(address arg1, uint256 arg2, address arg3) {
    if bidByBidder[stor6[address(arg1)][arg2][address(arg3)]] >= bidCounterByToken[address(arg1)][arg2]:
        revert with 0, 'Invalid index'
    idx = 800
    s = 0
    while bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(arg3)]]][6].length + 768 > idx:
        mem[idx + 32] = bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(arg3)]]][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if arg3 != address(bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(arg3)]]].field_256):
        revert with 0, 'Bidder has not an active bid for this token'
    return bidByBidder[stor6[address(arg1)][arg2][address(arg3)]], 
           bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(arg3)]]].field_0,
           address(bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(arg3)]]].field_256),
           bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(arg3)]]].field_1024,
           bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(arg3)]]].field_1280
}

function bidIdByTokenAndBidder(address arg1, uint256 arg2, address arg3) {
    return bidIdByTokenAndBidder[arg1][arg2][arg3]
}

function bidCounterByToken(address arg1, uint256 arg2) {
    return bidCounterByToken[arg1][arg2]
}

function getBidByToken(address arg1, uint256 arg2, uint256 arg3) {
    if arg3 >= bidCounterByToken[address(arg1)][arg2]:
        revert with 0, 'Invalid index'
    idx = 800
    s = 0
    while bidByToken[address(arg1)][arg2][arg3][6].length + 768 > idx:
        mem[idx + 32] = bidByToken[address(arg1)][arg2][arg3][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return bidByToken[address(arg1)][arg2][arg3].field_0, 
           address(bidByToken[address(arg1)][arg2][arg3].field_256),
           bidByToken[address(arg1)][arg2][arg3].field_1024,
           bidByToken[address(arg1)][arg2][arg3].field_1280
}

function isPauser(address arg1) {
    require arg1
    return bool(uint8(stor1[address(arg1)]))
}

function paused() {
    return bool(stor2)
}

function manaToken() {
    return manaTokenAddress
}

function owner() {
    return owner
}

function ownerCutPerMillion() {
    return ownerCutPerMillion
}

function bidIndexByBidId(bytes32 arg1) {
    return bidByBidder[arg1]
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
    require uint8(stor1[address(msg.sender)])
    require stor2
    stor2 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require uint8(stor1[address(msg.sender)])
    require not stor2
    stor2 = 1
    emit Paused(msg.sender);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function renouncePauser() {
    require msg.sender
    require uint8(stor1[address(msg.sender)])
    uint8(stor1[address(msg.sender)]) = 0
    emit PauserRemoved(msg.sender);
}

function addPauser(address arg1) {
    require msg.sender
    require uint8(stor1[address(msg.sender)])
    require arg1
    require not uint8(stor1[address(arg1)])
    uint8(stor1[address(arg1)]) = 1
    emit PauserAdded(arg1);
}

function setOwnerCutPerMillion(uint256 arg1) {
    require msg.sender == owner
    if arg1 >= 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The owner cut should be between 0 and 999,999'
    ownerCutPerMillion = arg1
    emit ChangedOwnerCutPerMillion(ownerCutPerMillion);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = 0
    require not stor2
    if arg4.length != 32:
        revert with 0, 'The data should be 32 bytes length'
    if bidByBidder[mem[128]] >= bidCounterByToken[address(msg.sender)][arg3]:
        revert with 0, 'Invalid index'
    mem[ceil32(arg4.length) + 832] = bidByToken[address(msg.sender)][arg3][stor5[mem[128]]][6].field_0
    idx = ceil32(arg4.length) + 832
    s = 0
    while ceil32(arg4.length) + bidByToken[address(msg.sender)][arg3][stor5[mem[128]]][6].length + 800 > idx:
        mem[idx + 32] = bidByToken[address(msg.sender)][arg3][stor5[mem[128]]][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_0 != mem[128]:
        revert with 0, 'Invalid bid'
    if bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_1280 < block.timestamp:
        revert with 0, 'Invalid bid'
    require ext_code.size(msg.sender)
    call msg.sender.supportsInterface(bytes4 arg1) with:
         gas gas_remaining wei
        args 0x8f9f4b6300000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(msg.sender)
        call msg.sender.verifyFingerprint(uint256 arg1, bytes arg2) with:
             gas gas_remaining wei
            args arg3, Array(len=bidByToken[address(msg.sender)][arg3][stor5[mem[128]]][6].length, data=mem[ceil32(arg4.length) + 832 len bidByToken[address(msg.sender)][arg3][stor5[mem[128]]][6].length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Token fingerprint is not valid'
    require ext_code.size(manaTokenAddress)
    call manaTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args address(bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_256)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_1024:
        revert with 0, 'Insufficient funds'
    require ext_code.size(manaTokenAddress)
    call manaTokenAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args address(bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_256), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_1024:
        revert with 0, 'The contract is not authorized to use MANA on bidder behalf'
    bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_0 = 0
    address(bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_256) = 0
    address(bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_512) = 0
    bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_768 = 0
    bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_1024 = 0
    bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_1280 = 0
    bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_1536 = 0
    if 31 < bidByToken[address(msg.sender)][arg3][stor5[mem[128]]][6].length:
        idx = 0
        while bidByToken[address(msg.sender)][arg3][stor5[mem[128]]][6].length + 31 / 32 > idx:
            bidByToken[address(msg.sender)][arg3][stor5[mem[128]]][idx + 6].field_0 = 0
            idx = idx + 1
            continue 
    bidByBidder[mem[128]] = 0
    bidIdByTokenAndBidder[address(msg.sender)][arg3][address(stor3[address(msg.sender)][arg3][stor5[mem[128]]].field_256)] = 0
    bidCounterByToken[address(msg.sender)][arg3] = 0
    require ext_code.size(msg.sender)
    call msg.sender.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_256), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ownerCutPerMillion <= 0:
        require 0 <= bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_1024
        require ext_code.size(manaTokenAddress)
        call manaTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_256), address(arg1), bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_1024
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfering MANA to owner failed'
        emit BidAccepted(mem[128], address(bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_256), bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_1024, 0, msg.sender, arg3, arg1);
    else:
        if not bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_1024:
            require ext_code.size(manaTokenAddress)
            call manaTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_256), owner, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Transfering the cut to the bid contract owner failed'
            require 0 <= bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_1024
            require ext_code.size(manaTokenAddress)
            call manaTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_256), address(arg1), bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_1024
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Transfering MANA to owner failed'
            emit BidAccepted(mem[128], address(bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_256), bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_1024, 0, msg.sender, arg3, arg1);
        else:
            require bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_1024
            require bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_1024 * ownerCutPerMillion / bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_1024 == ownerCutPerMillion
            require ext_code.size(manaTokenAddress)
            call manaTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_256), owner, bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_1024 * ownerCutPerMillion / 10^6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Transfering the cut to the bid contract owner failed'
            require bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_1024 * ownerCutPerMillion / 10^6 <= bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_1024
            require ext_code.size(manaTokenAddress)
            call manaTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_256), address(arg1), bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_1024 - (bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_1024 * ownerCutPerMillion / 10^6)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Transfering MANA to owner failed'
            emit BidAccepted(mem[128], address(bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_256), bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_1024, bidByToken[address(msg.sender)][arg3][stor5[mem[128]]].field_1024 * ownerCutPerMillion / 10^6, msg.sender, arg3, arg1);
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function removeExpiredBids(address[] arg1, uint256[] arg2, address[] arg3) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if arg1.length != arg2.length:
        revert with 0, 'Parameter arrays should have the same length'
    if arg1.length != arg3.length:
        revert with 0, 'Parameter arrays should have the same length'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _253 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _255 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _257 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        mem[0] = bidIdByTokenAndBidder[mem[(32 * idx) + 140 len 20]][mem[(32 * idx) + (32 * arg1.length) + 160]][address(mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192])]
        mem[32] = 5
        _261 = sha3(bidIdByTokenAndBidder[mem[(32 * idx) + 140 len 20]][mem[(32 * idx) + (32 * arg1.length) + 160]][address(mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192])], 5)
        _262 = mem[64]
        mem[64] = mem[64] + 224
        mem[_262] = 0
        mem[_262 + 32] = 0
        mem[_262 + 64] = 0
        mem[_262 + 96] = 0
        mem[_262 + 128] = 0
        mem[_262 + 160] = 0
        mem[_262 + 192] = 96
        _263 = mem[64]
        mem[64] = mem[64] + 224
        mem[_263] = 0
        mem[_263 + 32] = 0
        mem[_263 + 64] = 0
        mem[_263 + 96] = 0
        mem[_263 + 128] = 0
        mem[_263 + 160] = 0
        mem[_263 + 192] = 96
        if stor[_261] >= bidCounterByToken[address(_253)][_255]:
            revert with 0, 'Invalid index'
        mem[0] = stor[_261]
        mem[32] = sha3(_255, sha3(address(_253), 3))
        _269 = mem[64]
        mem[64] = mem[64] + 224
        mem[_269] = bidByToken[address(_253)][_255][stor[_261]].field_0
        mem[_269 + 32] = address(bidByToken[address(_253)][_255][stor[_261]].field_256)
        mem[_269 + 64] = address(bidByToken[address(_253)][_255][stor[_261]].field_512)
        mem[_269 + 96] = bidByToken[address(_253)][_255][stor[_261]].field_768
        mem[_269 + 128] = bidByToken[address(_253)][_255][stor[_261]].field_1024
        mem[_269 + 160] = bidByToken[address(_253)][_255][stor[_261]].field_1280
        _270 = mem[64]
        mem[64] = mem[64] + ceil32(bidByToken[address(_253)][_255][stor[_261]][6].length) + 32
        mem[_270] = bidByToken[address(_253)][_255][stor[_261]][6].length
        mem[0] = sha3(stor[_261], sha3(_255, sha3(address(_253), 3))) + 6
        mem[_270 + 32] = bidByToken[address(_253)][_255][stor[_261]][6].field_0
        s = _270 + 32
        t = sha3(sha3(stor[_261], sha3(_255, sha3(address(_253), 3))) + 6)
        while _270 + bidByToken[address(_253)][_255][stor[_261]][6].length > s:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        mem[_269 + 192] = _270
        _493 = mem[_269]
        if address(_257) != mem[_269 + 44 len 20]:
            revert with 0, 'Bidder has not an active bid for this token'
        if mem[_269 + 160] >= block.timestamp:
            revert with 0, 'The bid to remove should be expired'
        mem[0] = mem[_269]
        bidByBidder[mem[0]] = 0
        bidIdByTokenAndBidder[address(_253)][_255][address(_257)] = 0
        require 1 <= bidCounterByToken[address(_253)][_255]
        if bidCounterByToken[address(_253)][_255] - 1 == stor[_261]:
            bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_0 = 0
            address(bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_256) = 0
            address(bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_512) = 0
            bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_768 = 0
            bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_1024 = 0
            bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_1280 = 0
            bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_1536 = 0
            if 31 < bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1][6].length:
                s = sha3(sha3(bidCounterByToken[address(_253)][_255] - 1, sha3(_255, sha3(address(_253), 3))) + 6)
                while sha3(sha3(bidCounterByToken[address(_253)][_255] - 1, sha3(_255, sha3(address(_253), 3))) + 6) + (bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1][6].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        else:
            bidByToken[address(_253)][_255][stor[_261]].field_0 = bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_0
            address(bidByToken[address(_253)][_255][stor[_261]].field_256) = address(bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_256)
            address(bidByToken[address(_253)][_255][stor[_261]].field_512) = address(bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_512)
            bidByToken[address(_253)][_255][stor[_261]].field_768 = bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_768
            bidByToken[address(_253)][_255][stor[_261]].field_1024 = bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_1024
            bidByToken[address(_253)][_255][stor[_261]].field_1280 = bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_1280
            if 31 >= bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1][6].length:
                bidByToken[address(_253)][_255][stor[_261]].field_1536 = bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_1536
                s = sha3(sha3(stor[_261], sha3(_255, sha3(address(_253), 3))) + 6)
                while sha3(sha3(stor[_261], sha3(_255, sha3(address(_253), 3))) + 6) + (bidByToken[address(_253)][_255][stor[_261]][6].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                bidByBidder[stor3[address(_253)][_255][stor4[address(_253)][_255] - 1].field_0] = stor[_261]
                bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_0 = 0
                address(bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_256) = 0
                address(bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_512) = 0
                bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_768 = 0
                bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_1024 = 0
                bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_1280 = 0
                bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_1536 = 0
                if 31 < bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1][6].length:
                    s = sha3(sha3(bidCounterByToken[address(_253)][_255] - 1, sha3(_255, sha3(address(_253), 3))) + 6)
                    while sha3(sha3(bidCounterByToken[address(_253)][_255] - 1, sha3(_255, sha3(address(_253), 3))) + 6) + (bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1][6].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            else:
                bidByToken[address(_253)][_255][stor[_261]].field_1536 = Mask(255, 1, (256 * not bool(bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_1536)) - 1 and bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_1536) + 1
                if not Mask(255, 1, (256 * not bool(bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_1536)) - 1 and bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_1536):
                    s = sha3(sha3(stor[_261], sha3(_255, sha3(address(_253), 3))) + 6)
                    while sha3(sha3(stor[_261], sha3(_255, sha3(address(_253), 3))) + 6) + (bidByToken[address(_253)][_255][stor[_261]][6].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    t = sha3(sha3(stor[_261], sha3(_255, sha3(address(_253), 3))) + 6)
                    s = sha3(sha3(bidCounterByToken[address(_253)][_255] - 1, sha3(_255, sha3(address(_253), 3))) + 6)
                    while sha3(sha3(bidCounterByToken[address(_253)][_255] - 1, sha3(_255, sha3(address(_253), 3))) + 6) + (bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1][6].length + 31 / 32) > s:
                        stor[t] = stor[s]
                        t = t + 1
                        s = s + 1
                        continue 
                    s = sha3(sha3(stor[_261], sha3(_255, sha3(address(_253), 3))) + 6) + (bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1][6].length + 31 / 32)
                    while sha3(sha3(stor[_261], sha3(_255, sha3(address(_253), 3))) + 6) + (bidByToken[address(_253)][_255][stor[_261]][6].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                bidByBidder[stor3[address(_253)][_255][stor4[address(_253)][_255] - 1].field_0] = stor[_261]
                bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_0 = 0
                address(bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_256) = 0
                address(bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_512) = 0
                bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_768 = 0
                bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_1024 = 0
                bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_1280 = 0
                bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1].field_1536 = 0
                if 31 < bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1][6].length:
                    s = sha3(sha3(bidCounterByToken[address(_253)][_255] - 1, sha3(_255, sha3(address(_253), 3))) + 6)
                    while sha3(sha3(bidCounterByToken[address(_253)][_255] - 1, sha3(_255, sha3(address(_253), 3))) + 6) + (bidByToken[address(_253)][_255][stor4[address(_253)][_255] - 1][6].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
        mem[0] = _255
        mem[32] = sha3(address(_253), 4)
        bidCounterByToken[address(_253)][_255]--
        mem[mem[64]] = _493
        emit BidCancelled(_493, address(_253), _255, address(_257));
        idx = idx + 1
        continue 
}

function placeBid(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require not stor2
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Token should be a contract'
    require ext_code.size(arg1)
    call arg1.supportsInterface(bytes4 arg1) with:
         gas gas_remaining wei
        args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Token has an invalid ERC721 implementation'
    require ext_code.size(arg1)
    call arg1.supportsInterface(bytes4 arg1) with:
         gas gas_remaining wei
        args 0x8f9f4b6300000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if arg3 <= 0:
            revert with 0, 'Price should be bigger than 0'
        require ext_code.size(manaTokenAddress)
        call manaTokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 'Insufficient funds'
        require ext_code.size(manaTokenAddress)
        call manaTokenAddress.0xdd62ed3e with:
             gas gas_remaining wei
            args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 'The contract is not authorized to use MANA on bidder behalf'
        if arg4 < 60:
            revert with 0, 'The bid should be last longer than a minute'
        if arg4 > 4368 * 24 * 3600:
            revert with 0, 'The bid can not last longer than 6 months'
        require ext_code.size(arg1)
        call arg1.0x6352211e with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'The token should have an owner different from the sender'
        if ext_call.return_data[12 len 20] == msg.sender:
            revert with 0, 'The token should have an owner different from the sender'
    else:
        require ext_code.size(arg1)
        call arg1.verifyFingerprint(uint256 arg1, bytes arg2) with:
             gas gas_remaining wei
            args arg2, 64, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Token fingerprint is not valid'
        if arg3 <= 0:
            revert with 0, 'Price should be bigger than 0'
        require ext_code.size(manaTokenAddress)
        call manaTokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 'Insufficient funds'
        require ext_code.size(manaTokenAddress)
        call manaTokenAddress.0xdd62ed3e with:
             gas gas_remaining wei
            args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 'The contract is not authorized t', 'o use MANA on bidder behalf'
        if arg4 < 60:
            revert with 0, 'The bid should be last longer th', 'an a minute'
        if arg4 > 4368 * 24 * 3600:
            revert with 0, 'The bid can not last longer than', ' 6 months'
        require ext_code.size(arg1)
        call arg1.0x6352211e with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'The token should have an owner d', 'ifferent from the sender'
        if ext_call.return_data[12 len 20] == msg.sender:
            revert with 0, 'The token should have an owner d', 'ifferent from the sender'
    ('iszero', ('eq', ('ext_call.return_data', 12, 20), 'msg.sender'))
    require block.timestamp + arg4 >= block.timestamp
    if bidByBidder[stor6[address(arg1)][arg2][address(msg.sender)]] >= bidCounterByToken[address(arg1)][arg2]:
        bidCounterByToken[address(arg1)][arg2]++
        bidIdByTokenAndBidder[address(arg1)][arg2][address(msg.sender)] = sha3(block.timestamp, msg.sender, arg1, arg2, arg3, Mask(192, 64, arg4) >> 64, mem[488 len 8])
        bidByBidder[block.timestamp][msg.sender][arg1][arg2][arg3][Mask(192, 64, arg4) >> 64][mem[488 len 8]] = bidCounterByToken[address(arg1)][arg2]
        bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_0 = sha3(block.timestamp, msg.sender, arg1, arg2, arg3, Mask(192, 64, arg4) >> 64, mem[488 len 8])
        address(bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_256) = msg.sender
        address(bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_512) = arg1
        bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_768 = arg2
        bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_1024 = arg3
        bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_1280 = block.timestamp + arg4
        bool(bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_1536) = 0
        uint255(bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_1537) = 0
        Mask(248, 0, bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_1544) = 0
        idx = 0
        while bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]][6].length + 31 / 32 > idx:
            bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]][idx + 6].field_0 = 0
            idx = idx + 1
            continue 
    else:
        idx = 808
        s = 0
        while bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]][6].length + 776 > idx:
            mem[idx + 32] = bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]][s + 6].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if address(bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_256) != msg.sender:
            bidCounterByToken[address(arg1)][arg2]++
            bidIdByTokenAndBidder[address(arg1)][arg2][address(msg.sender)] = sha3(block.timestamp, msg.sender, arg1, arg2, arg3, Mask(192, 64, arg4) >> 64, mem[488 len 8])
            bidByBidder[block.timestamp][msg.sender][arg1][arg2][arg3][Mask(192, 64, arg4) >> 64][mem[488 len 8]] = bidCounterByToken[address(arg1)][arg2]
            bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_0 = sha3(block.timestamp, msg.sender, arg1, arg2, arg3, Mask(192, 64, arg4) >> 64, mem[488 len 8])
            address(bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_256) = msg.sender
            address(bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_512) = arg1
            bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_768 = arg2
            bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_1024 = arg3
            bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_1280 = block.timestamp + arg4
            bool(bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_1536) = 0
            uint255(bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_1537) = 0
            Mask(248, 0, bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_1544) = 0
            idx = 0
            while bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]][6].length + 31 / 32 > idx:
                bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]][idx + 6].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if bidByBidder[stor6[address(arg1)][arg2][address(msg.sender)]] >= bidCounterByToken[address(arg1)][arg2]:
                revert with 0, 'Invalid index'
            idx = ceil32(bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]][6].length) + 1512
            s = 0
            while ceil32(bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]][6].length) + bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]][6].length + 1480 > idx:
                mem[idx + 32] = bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]][s + 6].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if address(bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_256) != msg.sender:
                revert with 0, 'Bidder has not an active bid for this token'
            bidByBidder[stor3[address(arg1)][arg2][bidByBidder[stor6[address(arg1)][arg2][address(msg.sender)]]].field_0] = 0
            bidIdByTokenAndBidder[address(arg1)][arg2][address(msg.sender)] = sha3(block.timestamp, msg.sender, arg1, arg2, arg3, Mask(192, 64, arg4) >> 64, mem[488 len 8])
            bidByBidder[block.timestamp][msg.sender][arg1][arg2][arg3][Mask(192, 64, arg4) >> 64][mem[488 len 8]] = bidByBidder[stor6[address(arg1)][arg2][address(msg.sender)]]
            bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_0 = sha3(block.timestamp, msg.sender, arg1, arg2, arg3, Mask(192, 64, arg4) >> 64, mem[488 len 8])
            address(bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_256) = msg.sender
            address(bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_512) = arg1
            bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_768 = arg2
            bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_1024 = arg3
            bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_1280 = block.timestamp + arg4
            bool(bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_1536) = 0
            uint255(bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_1537) = 0
            Mask(248, 0, bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_1544) = 0
            idx = 0
            while bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]][6].length + 31 / 32 > idx:
                bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]][idx + 6].field_0 = 0
                idx = idx + 1
                continue 
    emit BidCreated(bytes32 arg1, address arg2, uint256 arg3, address arg4, uint256 arg5, uint256 arg6, bytes arg7):
                    sha3(block.timestamp, msg.sender, arg1, arg2, arg3, Mask(192, 64, arg4) >> 64, mem[488 len 8]),
                    arg3,
                    block.timestamp + arg4,
                    128,
                    0,
                    arg1,
                    arg2,
                    msg.sender,
}

function placeBid(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    mem[128 len arg5.length] = arg5[all]
    require not stor2
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Token should be a contract'
    require ext_code.size(arg1)
    call arg1.supportsInterface(bytes4 arg1) with:
         gas gas_remaining wei
        args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Token has an invalid ERC721 implementation'
    require ext_code.size(arg1)
    call arg1.supportsInterface(bytes4 arg1) with:
         gas gas_remaining wei
        args 0x8f9f4b6300000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if arg3 <= 0:
            revert with 0, 'Price should be bigger than 0'
        require ext_code.size(manaTokenAddress)
        call manaTokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 'Insufficient funds'
        require ext_code.size(manaTokenAddress)
        call manaTokenAddress.0xdd62ed3e with:
             gas gas_remaining wei
            args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 'The contract is not authorized to use MANA on bidder behalf'
        if arg4 < 60:
            revert with 0, 'The bid should be last longer than a minute'
        if arg4 > 4368 * 24 * 3600:
            revert with 0, 'The bid can not last longer than 6 months'
        require ext_code.size(arg1)
        call arg1.0x6352211e with:
             gas gas_remaining wei
            args arg2
        mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'The token should have an owner different from the sender'
        if ext_call.return_data[12 len 20] == msg.sender:
            revert with 0, 'The token should have an owner different from the sender'
        require block.timestamp + arg4 >= block.timestamp
        mem[ceil32(arg5.length) + 160] = block.timestamp
        mem[ceil32(arg5.length) + 296] = arg4
        mem[ceil32(arg5.length) + 328 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
        mem[ceil32(arg5.length) + floor32(arg5.length) + -(arg5.length % 32) + 360 len arg5.length % 32] = mem[floor32(arg5.length) + -(arg5.length % 32) + 160 len arg5.length % 32]
        _4228 = sha3(block.timestamp, msg.sender, arg1, arg2, arg3, mem[ceil32(arg5.length) + 296 len floor32(arg5.length + 168) - 136], mem[arg5.length + ceil32(arg5.length) + floor32(arg5.length + 168) + 328 len arg5.length + -floor32(arg5.length + 168) + 168])
        if bidByBidder[stor6[address(arg1)][arg2][address(msg.sender)]] >= bidCounterByToken[address(arg1)][arg2]:
            bidCounterByToken[address(arg1)][arg2]++
            bidIdByTokenAndBidder[address(arg1)][arg2][address(msg.sender)] = sha3(block.timestamp, msg.sender, arg1, arg2, arg3, mem[ceil32(arg5.length) + 296 len floor32(arg5.length + 168) - 136], mem[arg5.length + ceil32(arg5.length) + floor32(arg5.length + 168) + 328 len arg5.length + -floor32(arg5.length + 168) + 168])
            bidByBidder[block.timestamp][msg.sender][arg1][arg2][arg3][mem[ceil32(arg5.length) + 296 len floor32(arg5.length + 168) - 136]][mem[arg5.length + ceil32(arg5.length) + floor32(arg5.length + 168) + 328 len arg5.length + -floor32(arg5.length + 168) + 168]] = bidCounterByToken[address(arg1)][arg2]
            bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_0 = sha3(block.timestamp, msg.sender, arg1, arg2, arg3, mem[ceil32(arg5.length) + 296 len floor32(arg5.length + 168) - 136], mem[arg5.length + ceil32(arg5.length) + floor32(arg5.length + 168) + 328 len arg5.length + -floor32(arg5.length + 168) + 168])
            address(bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_256) = msg.sender
            address(bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_512) = arg1
            bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_768 = arg2
            bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_1024 = arg3
            bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_1280 = block.timestamp + arg4
            bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]][6][].field_0 = Array(len=arg5.length, data=arg5[all])
        else:
            idx = arg5.length + ceil32(arg5.length) + 808
            s = 0
            while arg5.length + ceil32(arg5.length) + bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]][6].length + 776 > idx:
                mem[idx + 32] = bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]][s + 6].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if address(bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_256) != msg.sender:
                bidCounterByToken[address(arg1)][arg2]++
                bidIdByTokenAndBidder[address(arg1)][arg2][address(msg.sender)] = _4228
                bidByBidder[_4228] = bidCounterByToken[address(arg1)][arg2]
                bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_0 = _4228
                address(bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_256) = msg.sender
                address(bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_512) = arg1
                bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_768 = arg2
                bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_1024 = arg3
                bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_1280 = block.timestamp + arg4
                bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]][6][].field_0 = Array(len=arg5.length, data=arg5[all])
            else:
                if bidByBidder[stor6[address(arg1)][arg2][address(msg.sender)]] >= bidCounterByToken[address(arg1)][arg2]:
                    revert with 0, 'Invalid index'
                idx = arg5.length + ceil32(arg5.length) + ceil32(bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]][6].length) + 1512
                s = 0
                while arg5.length + ceil32(arg5.length) + ceil32(bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]][6].length) + bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]][6].length + 1480 > idx:
                    mem[idx + 32] = bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]][s + 6].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if address(bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_256) != msg.sender:
                    revert with 0, 'Bidder has not an active bid for this token'
                bidByBidder[stor3[address(arg1)][arg2][bidByBidder[stor6[address(arg1)][arg2][address(msg.sender)]]].field_0] = 0
                bidIdByTokenAndBidder[address(arg1)][arg2][address(msg.sender)] = _4228
                bidByBidder[_4228] = bidByBidder[stor6[address(arg1)][arg2][address(msg.sender)]]
                bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_0 = _4228
                address(bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_256) = msg.sender
                address(bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_512) = arg1
                bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_768 = arg2
                bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_1024 = arg3
                bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_1280 = block.timestamp + arg4
                bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]][6][].field_0 = Array(len=arg5.length, data=arg5[all])
        emit BidCreated(_4228, arg3, block.timestamp + arg4, Array(len=arg5.length, data=arg5[all]), arg1, arg2, msg.sender);
    else:
        mem[ceil32(arg5.length) + 128] = 0x8f9f4b6300000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg5.length) + 228 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
        require ext_code.size(arg1)
        call arg1.verifyFingerprint(uint256 arg1, bytes arg2) with:
             gas gas_remaining wei
            args arg2, Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Token fingerprint is not valid'
        if arg3 <= 0:
            revert with 0, 'Price should be bigger than 0'
        require ext_code.size(manaTokenAddress)
        call manaTokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 'Insufficient funds'
        require ext_code.size(manaTokenAddress)
        call manaTokenAddress.0xdd62ed3e with:
             gas gas_remaining wei
            args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 'The contract is not authorized to use MANA on bidder behalf'
        if arg4 < 60:
            revert with 0, 'The bid should be last longer than a minute'
        if arg4 > 4368 * 24 * 3600:
            revert with 0, 'The bid can not last longer than 6 months'
        require ext_code.size(arg1)
        call arg1.0x6352211e with:
             gas gas_remaining wei
            args arg2
        mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'The token should have an owner different from the sender'
        if ext_call.return_data[12 len 20] == msg.sender:
            revert with 0, 'The token should have an owner different from the sender'
        require block.timestamp + arg4 >= block.timestamp
        mem[ceil32(arg5.length) + 160] = block.timestamp
        mem[ceil32(arg5.length) + 296] = arg4
        mem[ceil32(arg5.length) + 328 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
        mem[ceil32(arg5.length) + floor32(arg5.length) + -(arg5.length % 32) + 360 len arg5.length % 32] = mem[floor32(arg5.length) + -(arg5.length % 32) + 160 len arg5.length % 32]
        _6251 = sha3(block.timestamp, msg.sender, arg1, arg2, arg3, mem[ceil32(arg5.length) + 296 len floor32(arg5.length + 168) - 136], mem[arg5.length + ceil32(arg5.length) + floor32(arg5.length + 168) + 328 len arg5.length + -floor32(arg5.length + 168) + 168])
        if bidByBidder[stor6[address(arg1)][arg2][address(msg.sender)]] >= bidCounterByToken[address(arg1)][arg2]:
            bidCounterByToken[address(arg1)][arg2]++
            bidIdByTokenAndBidder[address(arg1)][arg2][address(msg.sender)] = sha3(block.timestamp, msg.sender, arg1, arg2, arg3, mem[ceil32(arg5.length) + 296 len floor32(arg5.length + 168) - 136], mem[arg5.length + ceil32(arg5.length) + floor32(arg5.length + 168) + 328 len arg5.length + -floor32(arg5.length + 168) + 168])
            bidByBidder[block.timestamp][msg.sender][arg1][arg2][arg3][mem[ceil32(arg5.length) + 296 len floor32(arg5.length + 168) - 136]][mem[arg5.length + ceil32(arg5.length) + floor32(arg5.length + 168) + 328 len arg5.length + -floor32(arg5.length + 168) + 168]] = bidCounterByToken[address(arg1)][arg2]
            bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_0 = sha3(block.timestamp, msg.sender, arg1, arg2, arg3, mem[ceil32(arg5.length) + 296 len floor32(arg5.length + 168) - 136], mem[arg5.length + ceil32(arg5.length) + floor32(arg5.length + 168) + 328 len arg5.length + -floor32(arg5.length + 168) + 168])
            address(bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_256) = msg.sender
            address(bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_512) = arg1
            bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_768 = arg2
            bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_1024 = arg3
            bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_1280 = block.timestamp + arg4
            bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]][6][].field_0 = Array(len=arg5.length, data=arg5[all])
        else:
            idx = arg5.length + ceil32(arg5.length) + 808
            s = 0
            while arg5.length + ceil32(arg5.length) + bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]][6].length + 776 > idx:
                mem[idx + 32] = bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]][s + 6].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if address(bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_256) != msg.sender:
                bidCounterByToken[address(arg1)][arg2]++
                bidIdByTokenAndBidder[address(arg1)][arg2][address(msg.sender)] = _6251
                bidByBidder[_6251] = bidCounterByToken[address(arg1)][arg2]
                bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_0 = _6251
                address(bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_256) = msg.sender
                address(bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_512) = arg1
                bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_768 = arg2
                bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_1024 = arg3
                bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]].field_1280 = block.timestamp + arg4
                bidByToken[address(arg1)][arg2][stor4[address(arg1)][arg2]][6][].field_0 = Array(len=arg5.length, data=arg5[all])
            else:
                if bidByBidder[stor6[address(arg1)][arg2][address(msg.sender)]] >= bidCounterByToken[address(arg1)][arg2]:
                    revert with 0, 'Invalid index'
                idx = arg5.length + ceil32(arg5.length) + ceil32(bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]][6].length) + 1512
                s = 0
                while arg5.length + ceil32(arg5.length) + ceil32(bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]][6].length) + bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]][6].length + 1480 > idx:
                    mem[idx + 32] = bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]][s + 6].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if address(bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_256) != msg.sender:
                    revert with 0, 'Bidder has not an active bid for this token'
                bidByBidder[stor3[address(arg1)][arg2][bidByBidder[stor6[address(arg1)][arg2][address(msg.sender)]]].field_0] = 0
                bidIdByTokenAndBidder[address(arg1)][arg2][address(msg.sender)] = _6251
                bidByBidder[_6251] = bidByBidder[stor6[address(arg1)][arg2][address(msg.sender)]]
                bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_0 = _6251
                address(bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_256) = msg.sender
                address(bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_512) = arg1
                bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_768 = arg2
                bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_1024 = arg3
                bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]].field_1280 = block.timestamp + arg4
                bidByToken[address(arg1)][arg2][stor5[stor6[address(arg1)][arg2][address(msg.sender)]]][6][].field_0 = Array(len=arg5.length, data=arg5[all])
        emit BidCreated(_6251, arg3, block.timestamp + arg4, Array(len=arg5.length, data=arg5[all]), arg1, arg2, msg.sender);
}



}

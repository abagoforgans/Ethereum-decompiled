contract main {




// =====================  Runtime code  =====================


#
#  - sellAllAmount(address arg1, uint256 arg2, address arg3, uint256 arg4)
#  - offer(uint256 arg1, address arg2, uint256 arg3, address arg4, uint256 arg5)
#  - insert(uint256 arg1, uint256 arg2)
#  - cancel(uint256 arg1)
#  - kill(bytes32 arg1)
#  - offer(uint256 arg1, address arg2, uint256 arg3, address arg4, uint256 arg5, bool arg6)
#
const getTime = uint64(block.timestamp)


address authorityAddress;
address owner;
uint256 last_offer_id;
mapping of struct offers;
uint8 stor4;
uint8 stor4; offset 72
uint8 stor4; offset 80
uint8 stor4; offset 88
uint64 close_time; offset 8
uint256 stor4; offset 88
uint256 stor4; offset 80
mapping of struct _rank;
mapping of uint256 bestOffer;
mapping of uint256 _span;
mapping of uint256 minSell;
mapping of uint256 _near;
mapping of uint8 stor10;
uint256 firstUnsortedOffer;

function matchingEnabled() {
    return bool(uint8(stor4.field_88))
}

function getBestOffer(address arg1, address arg2) {
    return bestOffer[address(arg1)][address(arg2)]
}

function last_offer_id() {
    return last_offer_id
}

function getOffer(uint256 arg1) {
    return offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_512, offers[arg1].field_768
}

function getMinSell(address arg1) {
    return minSell[address(arg1)]
}

function getNextUnsortedOffer(uint256 arg1) {
    return _near[arg1]
}

function close_time() {
    return close_time
}

function _span(address arg1, address arg2) {
    return _span[arg1][arg2]
}

function _best(address arg1, address arg2) {
    return bestOffer[arg1][arg2]
}

function stopped() {
    return bool(uint8(stor4.field_72))
}

function getOfferCount(address arg1, address arg2) {
    return _span[address(arg1)][address(arg2)]
}

function offers(uint256 arg1) {
    return offers[arg1].field_0, 
           offers[arg1].field_256,
           offers[arg1].field_512,
           offers[arg1].field_768,
           offers[arg1].field_1024,
           offers[arg1].field_1024
}

function getFirstUnsortedOffer() {
    return firstUnsortedOffer
}

function owner() {
    return owner
}

function getBetterOffer(uint256 arg1) {
    return _rank[arg1].field_0
}

function _dust(address arg1) {
    return minSell[arg1]
}

function getWorseOffer(uint256 arg1) {
    return _rank[arg1].field_256
}

function _menu(bytes32 arg1) {
    return bool(stor10[arg1])
}

function _near(uint256 arg1) {
    return _near[arg1]
}

function authority() {
    return authorityAddress
}

function _rank(uint256 arg1) {
    return _rank[arg1].field_0, _rank[arg1].field_256, _rank[arg1].field_512
}

function getOwner(uint256 arg1) {
    return offers[arg1].field_1024
}

function buyEnabled() {
    return bool(uint8(stor4.field_80))
}

function _fallback() payable {
    revert
}

function isActive(uint256 arg1) {
    return (offers[arg1].field_1184 > 0)
}

function isClosed() {
    if uint8(stor4.field_72):
        return bool(uint8(stor4.field_72))
    return (uint64(block.timestamp) > close_time)
}

function isTokenPairWhitelisted(address arg1, address arg2) {
    if stor10[arg1][arg2]:
        return bool(stor10[arg1][arg2])
    return bool(stor10[arg2][arg1])
}

function isOfferSorted(uint256 arg1) {
    if _rank[arg1].field_0:
        return bool(_rank[arg1].field_0)
    if _rank[arg1].field_256:
        return bool(_rank[arg1].field_256)
    return (bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] == arg1)
}

function del_rank(uint256 arg1) {
    require offers[arg1].field_1184 <= 0
    require _rank[arg1].field_512
    require block.number - 10 > _rank[arg1].field_512
    _rank[arg1].field_0 = 0
    _rank[arg1].field_256 = 0
    _rank[arg1].field_512 = 0
    emit LogDelete(msg.sender, arg1);
    return 1
}

function bump(bytes32 arg1) {
    require offers[arg1].field_1184 > 0
    require not uint8(stor4.field_72)
    require uint64(block.timestamp) <= close_time
    emit LogBump(offers[arg1].field_256, offers[arg1].field_768, offers[arg1].field_0, offers[arg1].field_512, offers[arg1].field_1184, arg1, sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024);
}

function stop() {
    if msg.sender != this.address:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    uint8(stor4.field_72) = 1
}

function setOwner(address arg1) {
    if msg.sender != this.address:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    owner = arg1
    emit LogSetOwner(arg1);
}

function setAuthority(address arg1) {
    if msg.sender != this.address:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function setBuyEnabled(bool arg1) {
    if msg.sender != this.address:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    Mask(176, 0, stor4.field_80) = Mask(176, 0, arg1)
    emit LogBuyEnabled(bool(0 or uint8(arg1)));
    return 1
}

function setMatchingEnabled(bool arg1) {
    if msg.sender != this.address:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    Mask(168, 0, stor4.field_88) = Mask(168, 0, arg1)
    emit LogMatchingEnabled(bool(0 or uint8(arg1)));
    return 1
}

function setMinSell(address arg1, uint256 arg2) {
    if msg.sender != this.address:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    minSell[address(arg1)] = arg2
    emit LogMinSell(address(arg1), arg2);
    return 1
}

function remTokenPairWhitelist(address arg1, address arg2) {
    if msg.sender != this.address:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if not stor10[arg1][arg2]:
        require stor10[arg2][arg1]
    stor10[arg1][arg2] = 0
    stor10[arg2][arg1] = 0
    emit LogRemTokenPairWhitelist(address(arg1), arg2);
    return 1
}

function addTokenPairWhitelist(address arg1, address arg2) {
    if msg.sender != this.address:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require not stor10[arg1][arg2]
    require not stor10[arg2][arg1]
    require arg1
    require arg2
    stor10[arg1][arg2] = 1
    emit LogAddTokenPairWhitelist(address(arg1), arg2);
    return 1
}

function getPayAmount(address arg1, address arg2, uint256 arg3) {
    s = bestOffer[address(arg2)][address(arg1)]
    t = 0
    idx = arg3
    while idx > offers[stor6[address(arg2)][address(arg1)]].field_0:
        require t + offers[s].field_512 >= t
        require idx - offers[s].field_0 <= idx
        if idx - offers[s].field_0 <= 0:
            mem[0] = s
            mem[32] = 3
            s = s
            t = t + offers[s].field_512
            idx = idx - offers[s].field_0
            continue 
        require _rank[s].field_256
        mem[0] = _rank[s].field_256
        mem[32] = 3
        s = _rank[s].field_256
        t = t + offers[s].field_512
        idx = idx - offers[s].field_0
        continue 
    require 1000000000 * 10^18 * offers[s].field_512 / 1000000000 * 10^18 == offers[s].field_512
    require (1000000000 * 10^18 * offers[s].field_512) + offers[s].field_1 >= 1000000000 * 10^18 * offers[s].field_512
    require offers[s].field_0
    if not (1000000000 * 10^18 * offers[s].field_512) + offers[s].field_1 / offers[s].field_0:
        require t >= t
        return t
    require (1000000000 * 10^18 * offers[s].field_512) + offers[s].field_1 / offers[s].field_0
    require 10^9 * idx * (1000000000 * 10^18 * offers[s].field_512) + offers[s].field_1 / offers[s].field_0 / (1000000000 * 10^18 * offers[s].field_512) + offers[s].field_1 / offers[s].field_0 == 10^9 * idx
    require (10^9 * idx * (1000000000 * 10^18 * offers[s].field_512) + offers[s].field_1 / offers[s].field_0) + 500000000 * 10^18 >= 10^9 * idx * (1000000000 * 10^18 * offers[s].field_512) + offers[s].field_1 / offers[s].field_0
    require t + ((10^9 * idx * (1000000000 * 10^18 * offers[s].field_512) + offers[s].field_1 / offers[s].field_0) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^9) >= t
    return (t + ((10^9 * idx * (1000000000 * 10^18 * offers[s].field_512) + offers[s].field_1 / offers[s].field_0) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^9))
}

function getBuyAmount(address arg1, address arg2, uint256 arg3) {
    s = bestOffer[address(arg1)][address(arg2)]
    t = 0
    idx = arg3
    while idx > offers[stor6[address(arg1)][address(arg2)]].field_512:
        require t + offers[s].field_0 >= t
        require idx - offers[s].field_512 <= idx
        if idx - offers[s].field_512 <= 0:
            mem[0] = s
            mem[32] = 3
            s = s
            t = t + offers[s].field_0
            idx = idx - offers[s].field_512
            continue 
        require _rank[s].field_256
        mem[0] = _rank[s].field_256
        mem[32] = 3
        s = _rank[s].field_256
        t = t + offers[s].field_0
        idx = idx - offers[s].field_512
        continue 
    require 1000000000 * 10^18 * offers[s].field_0 / 1000000000 * 10^18 == offers[s].field_0
    require (1000000000 * 10^18 * offers[s].field_0) + offers[s].field_513 >= 1000000000 * 10^18 * offers[s].field_0
    require offers[s].field_512
    if not (1000000000 * 10^18 * offers[s].field_0) + offers[s].field_513 / offers[s].field_512:
        require t >= t
        return t
    require (1000000000 * 10^18 * offers[s].field_0) + offers[s].field_513 / offers[s].field_512
    require 10^9 * idx * (1000000000 * 10^18 * offers[s].field_0) + offers[s].field_513 / offers[s].field_512 / (1000000000 * 10^18 * offers[s].field_0) + offers[s].field_513 / offers[s].field_512 == 10^9 * idx
    require (10^9 * idx * (1000000000 * 10^18 * offers[s].field_0) + offers[s].field_513 / offers[s].field_512) + 500000000 * 10^18 >= 10^9 * idx * (1000000000 * 10^18 * offers[s].field_0) + offers[s].field_513 / offers[s].field_512
    require t + ((10^9 * idx * (1000000000 * 10^18 * offers[s].field_0) + offers[s].field_513 / offers[s].field_512) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^9) >= t
    return (t + ((10^9 * idx * (1000000000 * 10^18 * offers[s].field_0) + offers[s].field_513 / offers[s].field_512) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^9))
}

function offer(uint256 arg1, address arg2, uint256 arg3, address arg4) {
    if not stor10[arg2][arg4]:
        require stor10[arg4][arg2]
    if not uint8(stor4.field_88):
        require not uint8(stor4.field_72)
        require uint64(block.timestamp) <= close_time
        require not uint8(stor4.field_0)
        uint8(stor4.field_0) = 1
        require arg1 == uint128(arg1)
        require arg3 == uint128(arg3)
        require arg1 > 0
        require arg2
        require arg3 > 0
        require arg4
        require arg4 != arg2
        last_offer_id++
        offers[stor2 + 1].field_0 = arg1
        offers[stor2 + 1].field_256 = arg2
        offers[stor2 + 1].field_512 = arg3
        offers[stor2 + 1].field_768 = arg4
        offers[stor2 + 1].field_1024 = msg.sender
        offers[stor2 + 1].field_1184 = uint64(block.timestamp)
        require ext_code.size(arg2)
        call arg2.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit LogItemUpdate((last_offer_id + 1));
        emit LogMake(address(arg2), address(arg4), arg1 << 128, arg3 << 128, uint64(block.timestamp), last_offer_id + 1, sha3(arg2, arg4), msg.sender);
        uint8(stor4.field_0) = 0
    else:
        require arg1 >= minSell[address(arg2)]
        require not uint8(stor4.field_72)
        require uint64(block.timestamp) <= close_time
        require not uint8(stor4.field_0)
        uint8(stor4.field_0) = 1
        require arg1 == uint128(arg1)
        require arg3 == uint128(arg3)
        require arg1 > 0
        require arg2
        require arg3 > 0
        require arg4
        require arg4 != arg2
        last_offer_id++
        offers[stor2 + 1].field_0 = arg1
        offers[stor2 + 1].field_256 = arg2
        offers[stor2 + 1].field_512 = arg3
        offers[stor2 + 1].field_768 = arg4
        offers[stor2 + 1].field_1024 = msg.sender
        offers[stor2 + 1].field_1184 = uint64(block.timestamp)
        require ext_code.size(arg2)
        call arg2.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit LogItemUpdate((last_offer_id + 1));
        emit LogMake(address(arg2), address(arg4), arg1 << 128, arg3 << 128, uint64(block.timestamp), last_offer_id + 1, sha3(arg2, arg4), msg.sender);
        uint8(stor4.field_0) = 0
        _near[stor2 + 1] = firstUnsortedOffer
        firstUnsortedOffer = last_offer_id + 1
        emit LogUnsortedOffer((last_offer_id + 1));
    return (last_offer_id + 1)
}

function make(address arg1, address arg2, uint128 arg3, uint128 arg4) {
    if not stor10[arg1][arg2]:
        require stor10[arg2][arg1]
    if not uint8(stor4.field_88):
        require not uint8(stor4.field_72)
        require uint64(block.timestamp) <= close_time
        require not uint8(stor4.field_0)
        uint8(stor4.field_0) = 1
        require arg3 == arg3
        require arg4 == arg4
        require arg3 > 0
        require arg1
        require arg4 > 0
        require arg2
        require arg2 != arg1
        last_offer_id++
        offers[stor2 + 1].field_0 = arg3
        offers[stor2 + 1].field_128 = 0
        offers[stor2 + 1].field_256 = arg1
        offers[stor2 + 1].field_512 = arg4
        offers[stor2 + 1].field_640 = 0
        offers[stor2 + 1].field_768 = arg2
        offers[stor2 + 1].field_1024 = msg.sender
        offers[stor2 + 1].field_1184 = uint64(block.timestamp)
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit LogItemUpdate((last_offer_id + 1));
        emit LogMake(address(arg1), address(arg2), arg3 << 128, arg4 << 128, uint64(block.timestamp), last_offer_id + 1, sha3(arg1, arg2), msg.sender);
        uint8(stor4.field_0) = 0
    else:
        require arg3 >= minSell[address(arg1)]
        require not uint8(stor4.field_72)
        require uint64(block.timestamp) <= close_time
        require not uint8(stor4.field_0)
        uint8(stor4.field_0) = 1
        require arg3 == arg3
        require arg4 == arg4
        require arg3 > 0
        require arg1
        require arg4 > 0
        require arg2
        require arg2 != arg1
        last_offer_id++
        offers[stor2 + 1].field_0 = arg3
        offers[stor2 + 1].field_128 = 0
        offers[stor2 + 1].field_256 = arg1
        offers[stor2 + 1].field_512 = arg4
        offers[stor2 + 1].field_640 = 0
        offers[stor2 + 1].field_768 = arg2
        offers[stor2 + 1].field_1024 = msg.sender
        offers[stor2 + 1].field_1184 = uint64(block.timestamp)
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit LogItemUpdate((last_offer_id + 1));
        emit LogMake(address(arg1), address(arg2), arg3 << 128, arg4 << 128, uint64(block.timestamp), last_offer_id + 1, sha3(arg1, arg2), msg.sender);
        uint8(stor4.field_0) = 0
        _near[stor2 + 1] = firstUnsortedOffer
        firstUnsortedOffer = last_offer_id + 1
        emit LogUnsortedOffer((last_offer_id + 1));
    return (last_offer_id + 1)
}

function take(bytes32 arg1, uint128 arg2) {
    require offers[arg1].field_1184 > 0
    require not uint8(stor4.field_72)
    require uint64(block.timestamp) <= close_time
    if uint8(stor4.field_88):
        require uint8(stor4.field_80)
        if arg2 == offers[arg1].field_0:
            if _rank[arg1].field_0:
                require 0 < _span[stor3[arg1].field_256][stor3[arg1].field_768]
                require not _rank[arg1].field_512
                if not _rank[arg1].field_0:
                    if not _rank[arg1].field_256:
                        require bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] == arg1
                if arg1 == bestOffer[stor3[arg1].field_256][stor3[arg1].field_768]:
                    bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] = _rank[arg1].field_256
                else:
                    require arg1 == _rank[_rank[arg1].field_0].field_256
                    _rank[_rank[arg1].field_0].field_256 = _rank[arg1].field_256
                if _rank[arg1].field_256:
                    require arg1 == _rank[_rank[arg1].field_256].field_0
                    _rank[_rank[arg1].field_256].field_0 = _rank[arg1].field_0
                _span[stor3[arg1].field_256][stor3[arg1].field_768]--
                _rank[arg1].field_512 = block.number
            else:
                if _rank[arg1].field_256:
                    require 0 < _span[stor3[arg1].field_256][stor3[arg1].field_768]
                    require not _rank[arg1].field_512
                    if not _rank[arg1].field_0:
                        if not _rank[arg1].field_256:
                            require bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] == arg1
                    if arg1 == bestOffer[stor3[arg1].field_256][stor3[arg1].field_768]:
                        bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] = _rank[arg1].field_256
                    else:
                        require arg1 == _rank[_rank[arg1].field_0].field_256
                        _rank[_rank[arg1].field_0].field_256 = _rank[arg1].field_256
                    if _rank[arg1].field_256:
                        require arg1 == _rank[_rank[arg1].field_256].field_0
                        _rank[_rank[arg1].field_256].field_0 = _rank[arg1].field_0
                    _span[stor3[arg1].field_256][stor3[arg1].field_768]--
                    _rank[arg1].field_512 = block.number
                else:
                    if bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] == arg1:
                        require 0 < _span[stor3[arg1].field_256][stor3[arg1].field_768]
                        require not _rank[arg1].field_512
                        if not _rank[arg1].field_0:
                            if not _rank[arg1].field_256:
                                require bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] == arg1
                        if arg1 == bestOffer[stor3[arg1].field_256][stor3[arg1].field_768]:
                            bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] = _rank[arg1].field_256
                        else:
                            require arg1 == _rank[_rank[arg1].field_0].field_256
                            _rank[_rank[arg1].field_0].field_256 = _rank[arg1].field_256
                        if _rank[arg1].field_256:
                            require arg1 == _rank[_rank[arg1].field_256].field_0
                            _rank[_rank[arg1].field_256].field_0 = _rank[arg1].field_0
                        _span[stor3[arg1].field_256][stor3[arg1].field_768]--
                        _rank[arg1].field_512 = block.number
    require offers[arg1].field_1184 > 0
    require not uint8(stor4.field_72)
    require uint64(block.timestamp) <= close_time
    require not uint8(stor4.field_0)
    uint8(stor4.field_0) = 1
    if not offers[arg1].field_512:
        require offers[arg1].field_0
        require 0 / offers[arg1].field_0 == uint128(0 / offers[arg1].field_0)
        require arg2 == arg2
        if not arg2:
            uint8(stor4.field_0) = 0
            revert
        if not 0 / offers[arg1].field_0:
            uint8(stor4.field_0) = 0
            revert
        if arg2 > offers[arg1].field_0:
            uint8(stor4.field_0) = 0
            revert
        if 0 / offers[arg1].field_0 > offers[arg1].field_512:
            uint8(stor4.field_0) = 0
            revert
        require offers[arg1].field_0 - arg2 <= offers[arg1].field_0
        offers[arg1].field_0 -= arg2
        require offers[arg1].field_512 - (0 / offers[arg1].field_0) <= offers[arg1].field_512
        offers[arg1].field_512 -= 0 / offers[arg1].field_0
        require ext_code.size(offers[arg1].field_768)
        call offers[arg1].field_768.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, offers[arg1].field_1024, 0 / offers[arg1].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(offers[arg1].field_256)
        call offers[arg1].field_256.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit LogItemUpdate(arg1);
        emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 << 128, 0 / offers[arg1].field_0 << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
        emit LogTrade(arg2 << 128, 0 / offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_768);
    else:
        require offers[arg1].field_512
        require arg2 * offers[arg1].field_512 / offers[arg1].field_512 == arg2
        require offers[arg1].field_0
        require arg2 * offers[arg1].field_512 / offers[arg1].field_0 == uint128(arg2 * offers[arg1].field_512 / offers[arg1].field_0)
        require arg2 == arg2
        if not arg2:
            uint8(stor4.field_0) = 0
            revert
        if not arg2 * offers[arg1].field_512 / offers[arg1].field_0:
            uint8(stor4.field_0) = 0
            revert
        if arg2 > offers[arg1].field_0:
            uint8(stor4.field_0) = 0
            revert
        if arg2 * offers[arg1].field_512 / offers[arg1].field_0 > offers[arg1].field_512:
            uint8(stor4.field_0) = 0
            revert
        require offers[arg1].field_0 - arg2 <= offers[arg1].field_0
        offers[arg1].field_0 -= arg2
        require offers[arg1].field_512 - (arg2 * offers[arg1].field_512 / offers[arg1].field_0) <= offers[arg1].field_512
        offers[arg1].field_512 -= arg2 * offers[arg1].field_512 / offers[arg1].field_0
        require ext_code.size(offers[arg1].field_768)
        call offers[arg1].field_768.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, offers[arg1].field_1024, arg2 * offers[arg1].field_512 / offers[arg1].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(offers[arg1].field_256)
        call offers[arg1].field_256.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit LogItemUpdate(arg1);
        emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 << 128, arg2 * offers[arg1].field_512 / offers[arg1].field_0 << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
        emit LogTrade(arg2 << 128, arg2 * offers[arg1].field_512 / offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_768);
    if not offers[arg1].field_0:
        offers[arg1].field_0 = 0
        offers[arg1].field_256 = 0
        offers[arg1].field_512 = 0
        offers[arg1].field_768 = 0
        offers[arg1].field_1024 = 0
    uint8(stor4.field_0) = 0
}

function buy(uint256 arg1, uint256 arg2) {
    require offers[arg1].field_1184 > 0
    require not uint8(stor4.field_72)
    require uint64(block.timestamp) <= close_time
    if not uint8(stor4.field_88):
        require offers[arg1].field_1184 > 0
        require not uint8(stor4.field_72)
        require uint64(block.timestamp) <= close_time
        require not uint8(stor4.field_0)
        uint8(stor4.field_0) = 1
        if not offers[arg1].field_512:
            require offers[arg1].field_0
            require 0 / offers[arg1].field_0 == uint128(0 / offers[arg1].field_0)
            require arg2 == uint128(arg2)
            if not arg2:
                uint8(stor4.field_0) = 0
                return 0
            if not 0 / offers[arg1].field_0:
                uint8(stor4.field_0) = 0
                return 0
            if arg2 > offers[arg1].field_0:
                uint8(stor4.field_0) = 0
                return 0
            if 0 / offers[arg1].field_0 > offers[arg1].field_512:
                uint8(stor4.field_0) = 0
                return 0
            require offers[arg1].field_0 - arg2 <= offers[arg1].field_0
            offers[arg1].field_0 -= arg2
            require offers[arg1].field_512 - (0 / offers[arg1].field_0) <= offers[arg1].field_512
            offers[arg1].field_512 -= 0 / offers[arg1].field_0
            require ext_code.size(offers[arg1].field_768)
            call offers[arg1].field_768.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, offers[arg1].field_1024, 0 / offers[arg1].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(offers[arg1].field_256)
            call offers[arg1].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit LogItemUpdate(arg1);
            emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 << 128, 0 / offers[arg1].field_0 << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
            emit LogTrade(arg2, 0 / offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_768);
        else:
            require offers[arg1].field_512
            require arg2 * offers[arg1].field_512 / offers[arg1].field_512 == arg2
            require offers[arg1].field_0
            require arg2 * offers[arg1].field_512 / offers[arg1].field_0 == uint128(arg2 * offers[arg1].field_512 / offers[arg1].field_0)
            require arg2 == uint128(arg2)
            if not arg2:
                uint8(stor4.field_0) = 0
                return 0
            if not arg2 * offers[arg1].field_512 / offers[arg1].field_0:
                uint8(stor4.field_0) = 0
                return 0
            if arg2 > offers[arg1].field_0:
                uint8(stor4.field_0) = 0
                return 0
            if arg2 * offers[arg1].field_512 / offers[arg1].field_0 > offers[arg1].field_512:
                uint8(stor4.field_0) = 0
                return 0
            require offers[arg1].field_0 - arg2 <= offers[arg1].field_0
            offers[arg1].field_0 -= arg2
            require offers[arg1].field_512 - (arg2 * offers[arg1].field_512 / offers[arg1].field_0) <= offers[arg1].field_512
            offers[arg1].field_512 -= arg2 * offers[arg1].field_512 / offers[arg1].field_0
            require ext_code.size(offers[arg1].field_768)
            call offers[arg1].field_768.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, offers[arg1].field_1024, arg2 * offers[arg1].field_512 / offers[arg1].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(offers[arg1].field_256)
            call offers[arg1].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit LogItemUpdate(arg1);
            emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 << 128, arg2 * offers[arg1].field_512 / offers[arg1].field_0 << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
            emit LogTrade(arg2, arg2 * offers[arg1].field_512 / offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_768);
    else:
        require uint8(stor4.field_80)
        if arg2 == offers[arg1].field_0:
            if _rank[arg1].field_0:
                require 0 < _span[stor3[arg1].field_256][stor3[arg1].field_768]
                require not _rank[arg1].field_512
                if not _rank[arg1].field_0:
                    if not _rank[arg1].field_256:
                        require bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] == arg1
                if arg1 == bestOffer[stor3[arg1].field_256][stor3[arg1].field_768]:
                    bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] = _rank[arg1].field_256
                else:
                    require arg1 == _rank[_rank[arg1].field_0].field_256
                    _rank[_rank[arg1].field_0].field_256 = _rank[arg1].field_256
                if _rank[arg1].field_256:
                    require arg1 == _rank[_rank[arg1].field_256].field_0
                    _rank[_rank[arg1].field_256].field_0 = _rank[arg1].field_0
                _span[stor3[arg1].field_256][stor3[arg1].field_768]--
                _rank[arg1].field_512 = block.number
            else:
                if _rank[arg1].field_256:
                    require 0 < _span[stor3[arg1].field_256][stor3[arg1].field_768]
                    require not _rank[arg1].field_512
                    if not _rank[arg1].field_0:
                        if not _rank[arg1].field_256:
                            require bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] == arg1
                    if arg1 == bestOffer[stor3[arg1].field_256][stor3[arg1].field_768]:
                        bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] = _rank[arg1].field_256
                    else:
                        require arg1 == _rank[_rank[arg1].field_0].field_256
                        _rank[_rank[arg1].field_0].field_256 = _rank[arg1].field_256
                    if _rank[arg1].field_256:
                        require arg1 == _rank[_rank[arg1].field_256].field_0
                        _rank[_rank[arg1].field_256].field_0 = _rank[arg1].field_0
                    _span[stor3[arg1].field_256][stor3[arg1].field_768]--
                    _rank[arg1].field_512 = block.number
                else:
                    if bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] == arg1:
                        require 0 < _span[stor3[arg1].field_256][stor3[arg1].field_768]
                        require not _rank[arg1].field_512
                        if not _rank[arg1].field_0:
                            if not _rank[arg1].field_256:
                                require bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] == arg1
                        if arg1 == bestOffer[stor3[arg1].field_256][stor3[arg1].field_768]:
                            bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] = _rank[arg1].field_256
                        else:
                            require arg1 == _rank[_rank[arg1].field_0].field_256
                            _rank[_rank[arg1].field_0].field_256 = _rank[arg1].field_256
                        if _rank[arg1].field_256:
                            require arg1 == _rank[_rank[arg1].field_256].field_0
                            _rank[_rank[arg1].field_256].field_0 = _rank[arg1].field_0
                        _span[stor3[arg1].field_256][stor3[arg1].field_768]--
                        _rank[arg1].field_512 = block.number
        require offers[arg1].field_1184 > 0
        require not uint8(stor4.field_72)
        require uint64(block.timestamp) <= close_time
        require not uint8(stor4.field_0)
        uint8(stor4.field_0) = 1
        if not offers[arg1].field_512:
            require offers[arg1].field_0
            require 0 / offers[arg1].field_0 == uint128(0 / offers[arg1].field_0)
            require arg2 == uint128(arg2)
            if not arg2:
                uint8(stor4.field_0) = 0
                revert
            if not 0 / offers[arg1].field_0:
                uint8(stor4.field_0) = 0
                revert
            if arg2 > offers[arg1].field_0:
                uint8(stor4.field_0) = 0
                revert
            if 0 / offers[arg1].field_0 > offers[arg1].field_512:
                uint8(stor4.field_0) = 0
                revert
            require offers[arg1].field_0 - arg2 <= offers[arg1].field_0
            offers[arg1].field_0 -= arg2
            require offers[arg1].field_512 - (0 / offers[arg1].field_0) <= offers[arg1].field_512
            offers[arg1].field_512 -= 0 / offers[arg1].field_0
            require ext_code.size(offers[arg1].field_768)
            call offers[arg1].field_768.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, offers[arg1].field_1024, 0 / offers[arg1].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(offers[arg1].field_256)
            call offers[arg1].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit LogItemUpdate(arg1);
            emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 << 128, 0 / offers[arg1].field_0 << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
            emit LogTrade(arg2, 0 / offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_768);
        else:
            require offers[arg1].field_512
            require arg2 * offers[arg1].field_512 / offers[arg1].field_512 == arg2
            require offers[arg1].field_0
            require arg2 * offers[arg1].field_512 / offers[arg1].field_0 == uint128(arg2 * offers[arg1].field_512 / offers[arg1].field_0)
            require arg2 == uint128(arg2)
            if not arg2:
                uint8(stor4.field_0) = 0
                revert
            if not arg2 * offers[arg1].field_512 / offers[arg1].field_0:
                uint8(stor4.field_0) = 0
                revert
            if arg2 > offers[arg1].field_0:
                uint8(stor4.field_0) = 0
                revert
            if arg2 * offers[arg1].field_512 / offers[arg1].field_0 > offers[arg1].field_512:
                uint8(stor4.field_0) = 0
                revert
            require offers[arg1].field_0 - arg2 <= offers[arg1].field_0
            offers[arg1].field_0 -= arg2
            require offers[arg1].field_512 - (arg2 * offers[arg1].field_512 / offers[arg1].field_0) <= offers[arg1].field_512
            offers[arg1].field_512 -= arg2 * offers[arg1].field_512 / offers[arg1].field_0
            require ext_code.size(offers[arg1].field_768)
            call offers[arg1].field_768.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, offers[arg1].field_1024, arg2 * offers[arg1].field_512 / offers[arg1].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(offers[arg1].field_256)
            call offers[arg1].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit LogItemUpdate(arg1);
            emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 << 128, arg2 * offers[arg1].field_512 / offers[arg1].field_0 << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
            emit LogTrade(arg2, arg2 * offers[arg1].field_512 / offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_768);
    if not offers[arg1].field_0:
        offers[arg1].field_0 = 0
        offers[arg1].field_256 = 0
        offers[arg1].field_512 = 0
        offers[arg1].field_768 = 0
        offers[arg1].field_1024 = 0
    uint8(stor4.field_0) = 0
    return 1
}

function buyAllAmount(address arg1, uint256 arg2, address arg3, uint256 arg4) payable {
    mem[64] = 96
    require not msg.value
    s = 0
    s = 0
    idx = arg2
    while idx > 0:
        require bestOffer[address(arg1)][address(arg3)]
        require 10^18 * offers[stor6[address(arg1)][address(arg3)]].field_0 / 10^18 == offers[stor6[address(arg1)][address(arg3)]].field_0
        require (10^18 * offers[stor6[address(arg1)][address(arg3)]].field_0) + offers[stor6[address(arg1)][address(arg3)]].field_513 >= 10^18 * offers[stor6[address(arg1)][address(arg3)]].field_0
        require offers[stor6[address(arg1)][address(arg3)]].field_512
        if 10^18 * idx < (10^18 * offers[stor6[address(arg1)][address(arg3)]].field_0) + offers[stor6[address(arg1)][address(arg3)]].field_513 / offers[stor6[address(arg1)][address(arg3)]].field_512:
            require s <= arg4
            return s
        if idx >= offers[stor6[address(arg1)][address(arg3)]].field_0:
            require s + offers[stor6[address(arg1)][address(arg3)]].field_512 >= s
            require idx - offers[stor6[address(arg1)][address(arg3)]].field_0 <= idx
            mem[0] = bestOffer[address(arg1)][address(arg3)]
            mem[32] = 3
            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
            require not uint8(stor4.field_72)
            require uint64(block.timestamp) <= close_time
            if not uint8(stor4.field_88):
                _9390 = mem[64]
                mem[64] = mem[64] + 192
                mem[_9390] = 0
                mem[_9390 + 32] = 0
                mem[_9390 + 64] = 0
                mem[_9390 + 96] = 0
                mem[_9390 + 128] = 0
                mem[_9390 + 160] = 0
                require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                require not uint8(stor4.field_72)
                require uint64(block.timestamp) <= close_time
                require not uint8(stor4.field_0)
                uint8(stor4.field_0) = 1
                mem[0] = bestOffer[address(arg1)][address(arg3)]
                mem[32] = 3
                _9422 = mem[64]
                mem[64] = mem[64] + 192
                mem[_9422] = offers[stor6[address(arg1)][address(arg3)]].field_0
                mem[_9422 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                mem[_9422 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                mem[_9422 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                mem[_9422 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                mem[_9422 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
            else:
                require uint8(stor4.field_80)
                mem[0] = bestOffer[address(arg1)][address(arg3)]
                mem[32] = 3
                if offers[stor6[address(arg1)][address(arg3)]].field_0 != offers[stor6[address(arg1)][address(arg3)]].field_0:
                    _9394 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_9394] = 0
                    mem[_9394 + 32] = 0
                    mem[_9394 + 64] = 0
                    mem[_9394 + 96] = 0
                    mem[_9394 + 128] = 0
                    mem[_9394 + 160] = 0
                    require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                    require not uint8(stor4.field_72)
                    require uint64(block.timestamp) <= close_time
                    require not uint8(stor4.field_0)
                    uint8(stor4.field_0) = 1
                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                    mem[32] = 3
                    _9448 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_9448] = offers[stor6[address(arg1)][address(arg3)]].field_0
                    mem[_9448 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                    mem[_9448 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                    mem[_9448 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                    mem[_9448 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                    mem[_9448 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                else:
                    if _rank[stor6[address(arg1)][address(arg3)]].field_0:
                        require 0 < _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]
                        require not _rank[stor6[address(arg1)][address(arg3)]].field_512
                        if _rank[stor6[address(arg1)][address(arg3)]].field_0:
                            if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                    _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 5
                                    _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                    _9669 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_9669] = 0
                                    mem[_9669 + 32] = 0
                                    mem[_9669 + 64] = 0
                                    mem[_9669 + 96] = 0
                                    mem[_9669 + 128] = 0
                                    mem[_9669 + 160] = 0
                                    require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor4.field_72)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor4.field_0)
                                    uint8(stor4.field_0) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _9863 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_9863] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                    mem[_9863 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                    mem[_9863 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                    mem[_9863 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                    mem[_9863 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                    mem[_9863 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                    _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                    _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 5
                                    _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                    _9725 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_9725] = 0
                                    mem[_9725 + 32] = 0
                                    mem[_9725 + 64] = 0
                                    mem[_9725 + 96] = 0
                                    mem[_9725 + 128] = 0
                                    mem[_9725 + 160] = 0
                                    require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor4.field_72)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor4.field_0)
                                    uint8(stor4.field_0) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _9897 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_9897] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                    mem[_9897 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                    mem[_9897 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                    mem[_9897 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                    mem[_9897 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                    mem[_9897 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                            else:
                                require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                    _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 5
                                    _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                    _9706 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_9706] = 0
                                    mem[_9706 + 32] = 0
                                    mem[_9706 + 64] = 0
                                    mem[_9706 + 96] = 0
                                    mem[_9706 + 128] = 0
                                    mem[_9706 + 160] = 0
                                    require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor4.field_72)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor4.field_0)
                                    uint8(stor4.field_0) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _9872 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_9872] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                    mem[_9872 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                    mem[_9872 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                    mem[_9872 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                    mem[_9872 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                    mem[_9872 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                    _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                    _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 5
                                    _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                    _9739 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_9739] = 0
                                    mem[_9739 + 32] = 0
                                    mem[_9739 + 64] = 0
                                    mem[_9739 + 96] = 0
                                    mem[_9739 + 128] = 0
                                    mem[_9739 + 160] = 0
                                    require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor4.field_72)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor4.field_0)
                                    uint8(stor4.field_0) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _9935 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_9935] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                    mem[_9935 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                    mem[_9935 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                    mem[_9935 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                    mem[_9935 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                    mem[_9935 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                        else:
                            if _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                    bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _9707 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_9707] = 0
                                        mem[_9707 + 32] = 0
                                        mem[_9707 + 64] = 0
                                        mem[_9707 + 96] = 0
                                        mem[_9707 + 128] = 0
                                        mem[_9707 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _9874 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_9874] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_9874 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_9874 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_9874 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_9874 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_9874 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _9741 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_9741] = 0
                                        mem[_9741 + 32] = 0
                                        mem[_9741 + 64] = 0
                                        mem[_9741 + 96] = 0
                                        mem[_9741 + 128] = 0
                                        mem[_9741 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _9937 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_9937] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_9937 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_9937 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_9937 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_9937 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_9937 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                    _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _9726 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_9726] = 0
                                        mem[_9726 + 32] = 0
                                        mem[_9726 + 64] = 0
                                        mem[_9726 + 96] = 0
                                        mem[_9726 + 128] = 0
                                        mem[_9726 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _9899 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_9899] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_9899 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_9899 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_9899 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_9899 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_9899 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _9757 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_9757] = 0
                                        mem[_9757 + 32] = 0
                                        mem[_9757 + 64] = 0
                                        mem[_9757 + 96] = 0
                                        mem[_9757 + 128] = 0
                                        mem[_9757 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _9973 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_9973] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_9973 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_9973 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_9973 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_9973 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_9973 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                            else:
                                require bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] == bestOffer[address(arg1)][address(arg3)]
                                if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                    bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _9708 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_9708] = 0
                                        mem[_9708 + 32] = 0
                                        mem[_9708 + 64] = 0
                                        mem[_9708 + 96] = 0
                                        mem[_9708 + 128] = 0
                                        mem[_9708 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _9876 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_9876] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_9876 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_9876 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_9876 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_9876 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_9876 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _9743 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_9743] = 0
                                        mem[_9743 + 32] = 0
                                        mem[_9743 + 64] = 0
                                        mem[_9743 + 96] = 0
                                        mem[_9743 + 128] = 0
                                        mem[_9743 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _9939 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_9939] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_9939 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_9939 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_9939 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_9939 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_9939 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                    _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _9727 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_9727] = 0
                                        mem[_9727 + 32] = 0
                                        mem[_9727 + 64] = 0
                                        mem[_9727 + 96] = 0
                                        mem[_9727 + 128] = 0
                                        mem[_9727 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _9901 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_9901] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_9901 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_9901 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_9901 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_9901 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_9901 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _9759 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_9759] = 0
                                        mem[_9759 + 32] = 0
                                        mem[_9759 + 64] = 0
                                        mem[_9759 + 96] = 0
                                        mem[_9759 + 128] = 0
                                        mem[_9759 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _9975 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_9975] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_9975 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_9975 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_9975 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_9975 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_9975 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                    else:
                        if _rank[stor6[address(arg1)][address(arg3)]].field_256:
                            require 0 < _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]
                            require not _rank[stor6[address(arg1)][address(arg3)]].field_512
                            if _rank[stor6[address(arg1)][address(arg3)]].field_0:
                                if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                    bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _9709 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_9709] = 0
                                        mem[_9709 + 32] = 0
                                        mem[_9709 + 64] = 0
                                        mem[_9709 + 96] = 0
                                        mem[_9709 + 128] = 0
                                        mem[_9709 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _9878 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_9878] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_9878 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_9878 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_9878 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_9878 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_9878 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _9745 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_9745] = 0
                                        mem[_9745 + 32] = 0
                                        mem[_9745 + 64] = 0
                                        mem[_9745 + 96] = 0
                                        mem[_9745 + 128] = 0
                                        mem[_9745 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _9941 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_9941] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_9941 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_9941 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_9941 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_9941 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_9941 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                    _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _9728 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_9728] = 0
                                        mem[_9728 + 32] = 0
                                        mem[_9728 + 64] = 0
                                        mem[_9728 + 96] = 0
                                        mem[_9728 + 128] = 0
                                        mem[_9728 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _9903 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_9903] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_9903 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_9903 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_9903 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_9903 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_9903 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _9761 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_9761] = 0
                                        mem[_9761 + 32] = 0
                                        mem[_9761 + 64] = 0
                                        mem[_9761 + 96] = 0
                                        mem[_9761 + 128] = 0
                                        mem[_9761 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _9977 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_9977] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_9977 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_9977 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_9977 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_9977 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_9977 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                            else:
                                if _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                    if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                        bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _9729 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_9729] = 0
                                            mem[_9729 + 32] = 0
                                            mem[_9729 + 64] = 0
                                            mem[_9729 + 96] = 0
                                            mem[_9729 + 128] = 0
                                            mem[_9729 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _9905 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_9905] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_9905 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_9905 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_9905 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_9905 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_9905 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                            _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _9763 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_9763] = 0
                                            mem[_9763 + 32] = 0
                                            mem[_9763 + 64] = 0
                                            mem[_9763 + 96] = 0
                                            mem[_9763 + 128] = 0
                                            mem[_9763 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _9979 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_9979] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_9979 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_9979 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_9979 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_9979 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_9979 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _9746 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_9746] = 0
                                            mem[_9746 + 32] = 0
                                            mem[_9746 + 64] = 0
                                            mem[_9746 + 96] = 0
                                            mem[_9746 + 128] = 0
                                            mem[_9746 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _9943 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_9943] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_9943 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_9943 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_9943 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_9943 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_9943 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                            _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _9781 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_9781] = 0
                                            mem[_9781 + 32] = 0
                                            mem[_9781 + 64] = 0
                                            mem[_9781 + 96] = 0
                                            mem[_9781 + 128] = 0
                                            mem[_9781 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _10038 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_10038] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_10038 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_10038 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_10038 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_10038 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_10038 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] == bestOffer[address(arg1)][address(arg3)]
                                    if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                        bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _9730 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_9730] = 0
                                            mem[_9730 + 32] = 0
                                            mem[_9730 + 64] = 0
                                            mem[_9730 + 96] = 0
                                            mem[_9730 + 128] = 0
                                            mem[_9730 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _9907 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_9907] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_9907 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_9907 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_9907 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_9907 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_9907 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                            _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _9765 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_9765] = 0
                                            mem[_9765 + 32] = 0
                                            mem[_9765 + 64] = 0
                                            mem[_9765 + 96] = 0
                                            mem[_9765 + 128] = 0
                                            mem[_9765 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _9981 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_9981] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_9981 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_9981 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_9981 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_9981 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_9981 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _9747 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_9747] = 0
                                            mem[_9747 + 32] = 0
                                            mem[_9747 + 64] = 0
                                            mem[_9747 + 96] = 0
                                            mem[_9747 + 128] = 0
                                            mem[_9747 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _9945 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_9945] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_9945 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_9945 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_9945 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_9945 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_9945 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                            _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _9783 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_9783] = 0
                                            mem[_9783 + 32] = 0
                                            mem[_9783 + 64] = 0
                                            mem[_9783 + 96] = 0
                                            mem[_9783 + 128] = 0
                                            mem[_9783 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _10040 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_10040] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_10040 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_10040 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_10040 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_10040 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_10040 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                        else:
                            mem[0] = offers[stor6[address(arg1)][address(arg3)]].field_768
                            mem[32] = sha3(offers[stor6[address(arg1)][address(arg3)]].field_256, 6)
                            if bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] != bestOffer[address(arg1)][address(arg3)]:
                                _9411 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_9411] = 0
                                mem[_9411 + 32] = 0
                                mem[_9411 + 64] = 0
                                mem[_9411 + 96] = 0
                                mem[_9411 + 128] = 0
                                mem[_9411 + 160] = 0
                                require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                require not uint8(stor4.field_72)
                                require uint64(block.timestamp) <= close_time
                                require not uint8(stor4.field_0)
                                uint8(stor4.field_0) = 1
                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                mem[32] = 3
                                _9690 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_9690] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                mem[_9690 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                mem[_9690 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                mem[_9690 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                mem[_9690 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                mem[_9690 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                            else:
                                require 0 < _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]
                                require not _rank[stor6[address(arg1)][address(arg3)]].field_512
                                if _rank[stor6[address(arg1)][address(arg3)]].field_0:
                                    if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                        bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _9716 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_9716] = 0
                                            mem[_9716 + 32] = 0
                                            mem[_9716 + 64] = 0
                                            mem[_9716 + 96] = 0
                                            mem[_9716 + 128] = 0
                                            mem[_9716 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _9880 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_9880] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_9880 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_9880 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_9880 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_9880 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_9880 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                            _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _9749 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_9749] = 0
                                            mem[_9749 + 32] = 0
                                            mem[_9749 + 64] = 0
                                            mem[_9749 + 96] = 0
                                            mem[_9749 + 128] = 0
                                            mem[_9749 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _9947 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_9947] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_9947 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_9947 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_9947 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_9947 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_9947 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _9731 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_9731] = 0
                                            mem[_9731 + 32] = 0
                                            mem[_9731 + 64] = 0
                                            mem[_9731 + 96] = 0
                                            mem[_9731 + 128] = 0
                                            mem[_9731 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _9911 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_9911] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_9911 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_9911 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_9911 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_9911 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_9911 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                            _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _9767 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_9767] = 0
                                            mem[_9767 + 32] = 0
                                            mem[_9767 + 64] = 0
                                            mem[_9767 + 96] = 0
                                            mem[_9767 + 128] = 0
                                            mem[_9767 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _9984 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_9984] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_9984 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_9984 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_9984 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_9984 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_9984 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                else:
                                    if _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                        if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                            bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                            if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                                _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 5
                                                _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                                _9732 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_9732] = 0
                                                mem[_9732 + 32] = 0
                                                mem[_9732 + 64] = 0
                                                mem[_9732 + 96] = 0
                                                mem[_9732 + 128] = 0
                                                mem[_9732 + 160] = 0
                                                require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor4.field_72)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor4.field_0)
                                                uint8(stor4.field_0) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _9913 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_9913] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                                mem[_9913 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                                mem[_9913 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                                mem[_9913 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                                mem[_9913 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                                mem[_9913 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                            else:
                                                require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                                _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                                _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 5
                                                _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                                _9769 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_9769] = 0
                                                mem[_9769 + 32] = 0
                                                mem[_9769 + 64] = 0
                                                mem[_9769 + 96] = 0
                                                mem[_9769 + 128] = 0
                                                mem[_9769 + 160] = 0
                                                require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor4.field_72)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor4.field_0)
                                                uint8(stor4.field_0) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _9986 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_9986] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                                mem[_9986 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                                mem[_9986 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                                mem[_9986 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                                mem[_9986 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                                mem[_9986 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                            _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                            if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                                _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 5
                                                _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                                _9750 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_9750] = 0
                                                mem[_9750 + 32] = 0
                                                mem[_9750 + 64] = 0
                                                mem[_9750 + 96] = 0
                                                mem[_9750 + 128] = 0
                                                mem[_9750 + 160] = 0
                                                require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor4.field_72)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor4.field_0)
                                                uint8(stor4.field_0) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _9949 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_9949] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                                mem[_9949 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                                mem[_9949 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                                mem[_9949 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                                mem[_9949 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                                mem[_9949 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                            else:
                                                require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                                _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                                _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 5
                                                _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                                _9786 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_9786] = 0
                                                mem[_9786 + 32] = 0
                                                mem[_9786 + 64] = 0
                                                mem[_9786 + 96] = 0
                                                mem[_9786 + 128] = 0
                                                mem[_9786 + 160] = 0
                                                require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor4.field_72)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor4.field_0)
                                                uint8(stor4.field_0) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _10044 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_10044] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                                mem[_10044 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                                mem[_10044 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                                mem[_10044 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                                mem[_10044 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                                mem[_10044 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] == bestOffer[address(arg1)][address(arg3)]
                                        if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                            bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                            if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                                _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 5
                                                _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                                _9733 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_9733] = 0
                                                mem[_9733 + 32] = 0
                                                mem[_9733 + 64] = 0
                                                mem[_9733 + 96] = 0
                                                mem[_9733 + 128] = 0
                                                mem[_9733 + 160] = 0
                                                require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor4.field_72)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor4.field_0)
                                                uint8(stor4.field_0) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _9915 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_9915] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                                mem[_9915 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                                mem[_9915 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                                mem[_9915 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                                mem[_9915 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                                mem[_9915 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                            else:
                                                require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                                _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                                _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 5
                                                _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                                _9771 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_9771] = 0
                                                mem[_9771 + 32] = 0
                                                mem[_9771 + 64] = 0
                                                mem[_9771 + 96] = 0
                                                mem[_9771 + 128] = 0
                                                mem[_9771 + 160] = 0
                                                require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor4.field_72)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor4.field_0)
                                                uint8(stor4.field_0) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _9988 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_9988] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                                mem[_9988 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                                mem[_9988 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                                mem[_9988 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                                mem[_9988 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                                mem[_9988 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                            _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                            if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                                _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 5
                                                _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                                _9751 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_9751] = 0
                                                mem[_9751 + 32] = 0
                                                mem[_9751 + 64] = 0
                                                mem[_9751 + 96] = 0
                                                mem[_9751 + 128] = 0
                                                mem[_9751 + 160] = 0
                                                require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor4.field_72)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor4.field_0)
                                                uint8(stor4.field_0) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _9951 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_9951] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                                mem[_9951 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                                mem[_9951 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                                mem[_9951 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                                mem[_9951 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                                mem[_9951 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                            else:
                                                require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                                _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                                _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 5
                                                _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                                _9788 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_9788] = 0
                                                mem[_9788 + 32] = 0
                                                mem[_9788 + 64] = 0
                                                mem[_9788 + 96] = 0
                                                mem[_9788 + 128] = 0
                                                mem[_9788 + 160] = 0
                                                require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor4.field_72)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor4.field_0)
                                                uint8(stor4.field_0) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _10046 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_10046] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                                mem[_10046 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                                mem[_10046 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                                mem[_10046 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                                mem[_10046 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                                mem[_10046 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
            if not offers[stor6[address(arg1)][address(arg3)]].field_512:
                require offers[stor6[address(arg1)][address(arg3)]].field_0
                require 0 / offers[stor6[address(arg1)][address(arg3)]].field_0 == uint128(0 / offers[stor6[address(arg1)][address(arg3)]].field_0)
                require offers[stor6[address(arg1)][address(arg3)]].field_0 == offers[stor6[address(arg1)][address(arg3)]].field_0
                if not offers[stor6[address(arg1)][address(arg3)]].field_0:
                    uint8(stor4.field_0) = 0
                    revert
                if not 0 / offers[stor6[address(arg1)][address(arg3)]].field_0:
                    uint8(stor4.field_0) = 0
                    revert
                if offers[stor6[address(arg1)][address(arg3)]].field_0 > offers[stor6[address(arg1)][address(arg3)]].field_0:
                    uint8(stor4.field_0) = 0
                    revert
                if 0 / offers[stor6[address(arg1)][address(arg3)]].field_0 > offers[stor6[address(arg1)][address(arg3)]].field_512:
                    uint8(stor4.field_0) = 0
                    revert
                require offers[stor6[address(arg1)][address(arg3)]].field_0 - offers[stor6[address(arg1)][address(arg3)]].field_0 <= offers[stor6[address(arg1)][address(arg3)]].field_0
                offers[stor6[address(arg1)][address(arg3)]].field_0 -= offers[stor6[address(arg1)][address(arg3)]].field_0
                require offers[stor6[address(arg1)][address(arg3)]].field_512 - (0 / offers[stor6[address(arg1)][address(arg3)]].field_0) <= offers[stor6[address(arg1)][address(arg3)]].field_512
                mem[0] = bestOffer[address(arg1)][address(arg3)]
                mem[32] = 3
                offers[stor6[address(arg1)][address(arg3)]].field_512 -= 0 / offers[stor6[address(arg1)][address(arg3)]].field_0
                require ext_code.size(offers[stor6[address(arg1)][address(arg3)]].field_768)
                call offers[stor6[address(arg1)][address(arg3)]].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, offers[stor6[address(arg1)][address(arg3)]].field_1024, 0 / offers[stor6[address(arg1)][address(arg3)]].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(offers[stor6[address(arg1)][address(arg3)]].field_256)
                call offers[stor6[address(arg1)][address(arg3)]].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, offers[stor6[address(arg1)][address(arg3)]].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit LogItemUpdate(bestOffer[address(arg1)][address(arg3)]);
                mem[mem[64] + 64] = offers[stor6[address(arg1)][address(arg3)]].field_768
                mem[mem[64] + 96] = offers[stor6[address(arg1)][address(arg3)]].field_0
                mem[mem[64] + 128] = uint128(0 / offers[stor6[address(arg1)][address(arg3)]].field_0)
                mem[mem[64] + 160] = uint64(block.timestamp)
                emit LogTake(bestOffer[address(arg1)][address(arg3)], offers[stor6[address(arg1)][address(arg3)]].field_256, offers[stor6[address(arg1)][address(arg3)]].field_768, offers[stor6[address(arg1)][address(arg3)]].field_0, 0 / offers[stor6[address(arg1)][address(arg3)]].field_0 << 128, uint64(block.timestamp), sha3(offers[stor6[address(arg1)][address(arg3)]].field_256, offers[stor6[address(arg1)][address(arg3)]].field_768), offers[stor6[address(arg1)][address(arg3)]].field_1024, msg.sender);
                mem[mem[64]] = offers[stor6[address(arg1)][address(arg3)]].field_0
                mem[mem[64] + 32] = 0 / offers[stor6[address(arg1)][address(arg3)]].field_0
                emit LogTrade(offers[stor6[address(arg1)][address(arg3)]].field_0, 0 / offers[stor6[address(arg1)][address(arg3)]].field_0, offers[stor6[address(arg1)][address(arg3)]].field_256, offers[stor6[address(arg1)][address(arg3)]].field_768);
            else:
                require offers[stor6[address(arg1)][address(arg3)]].field_512
                require offers[stor6[address(arg1)][address(arg3)]].field_0 * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_512 == offers[stor6[address(arg1)][address(arg3)]].field_0
                require offers[stor6[address(arg1)][address(arg3)]].field_0
                require offers[stor6[address(arg1)][address(arg3)]].field_0 * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0 == uint128(offers[stor6[address(arg1)][address(arg3)]].field_0 * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0)
                require offers[stor6[address(arg1)][address(arg3)]].field_0 == offers[stor6[address(arg1)][address(arg3)]].field_0
                if not offers[stor6[address(arg1)][address(arg3)]].field_0:
                    uint8(stor4.field_0) = 0
                    revert
                if not offers[stor6[address(arg1)][address(arg3)]].field_0 * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0:
                    uint8(stor4.field_0) = 0
                    revert
                if offers[stor6[address(arg1)][address(arg3)]].field_0 > offers[stor6[address(arg1)][address(arg3)]].field_0:
                    uint8(stor4.field_0) = 0
                    revert
                if offers[stor6[address(arg1)][address(arg3)]].field_0 * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0 > offers[stor6[address(arg1)][address(arg3)]].field_512:
                    uint8(stor4.field_0) = 0
                    revert
                require offers[stor6[address(arg1)][address(arg3)]].field_0 - offers[stor6[address(arg1)][address(arg3)]].field_0 <= offers[stor6[address(arg1)][address(arg3)]].field_0
                offers[stor6[address(arg1)][address(arg3)]].field_0 -= offers[stor6[address(arg1)][address(arg3)]].field_0
                require offers[stor6[address(arg1)][address(arg3)]].field_512 - (offers[stor6[address(arg1)][address(arg3)]].field_0 * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0) <= offers[stor6[address(arg1)][address(arg3)]].field_512
                mem[0] = bestOffer[address(arg1)][address(arg3)]
                mem[32] = 3
                offers[stor6[address(arg1)][address(arg3)]].field_512 -= offers[stor6[address(arg1)][address(arg3)]].field_0 * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0
                require ext_code.size(offers[stor6[address(arg1)][address(arg3)]].field_768)
                call offers[stor6[address(arg1)][address(arg3)]].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, offers[stor6[address(arg1)][address(arg3)]].field_1024, offers[stor6[address(arg1)][address(arg3)]].field_0 * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(offers[stor6[address(arg1)][address(arg3)]].field_256)
                call offers[stor6[address(arg1)][address(arg3)]].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, offers[stor6[address(arg1)][address(arg3)]].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit LogItemUpdate(bestOffer[address(arg1)][address(arg3)]);
                mem[mem[64] + 64] = offers[stor6[address(arg1)][address(arg3)]].field_768
                mem[mem[64] + 96] = offers[stor6[address(arg1)][address(arg3)]].field_0
                mem[mem[64] + 128] = uint128(offers[stor6[address(arg1)][address(arg3)]].field_0 * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0)
                mem[mem[64] + 160] = uint64(block.timestamp)
                emit LogTake(bestOffer[address(arg1)][address(arg3)], offers[stor6[address(arg1)][address(arg3)]].field_256, offers[stor6[address(arg1)][address(arg3)]].field_768, offers[stor6[address(arg1)][address(arg3)]].field_0, offers[stor6[address(arg1)][address(arg3)]].field_0 * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0 << 128, uint64(block.timestamp), sha3(offers[stor6[address(arg1)][address(arg3)]].field_256, offers[stor6[address(arg1)][address(arg3)]].field_768), offers[stor6[address(arg1)][address(arg3)]].field_1024, msg.sender);
                mem[mem[64]] = offers[stor6[address(arg1)][address(arg3)]].field_0
                mem[mem[64] + 32] = offers[stor6[address(arg1)][address(arg3)]].field_0 * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0
                emit LogTrade(offers[stor6[address(arg1)][address(arg3)]].field_0, offers[stor6[address(arg1)][address(arg3)]].field_0 * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0, offers[stor6[address(arg1)][address(arg3)]].field_256, offers[stor6[address(arg1)][address(arg3)]].field_768);
            mem[0] = bestOffer[address(arg1)][address(arg3)]
            mem[32] = 3
            if not offers[stor6[address(arg1)][address(arg3)]].field_0:
                mem[0] = bestOffer[address(arg1)][address(arg3)]
                mem[32] = 3
                offers[stor6[address(arg1)][address(arg3)]].field_0 = 0
                offers[stor6[address(arg1)][address(arg3)]].field_256 = 0
                offers[stor6[address(arg1)][address(arg3)]].field_512 = 0
                offers[stor6[address(arg1)][address(arg3)]].field_768 = 0
                offers[stor6[address(arg1)][address(arg3)]].field_1024 = 0
            uint8(stor4.field_0) = 0
            s = bestOffer[address(arg1)][address(arg3)]
            s = s + offers[stor6[address(arg1)][address(arg3)]].field_512
            idx = idx - offers[stor6[address(arg1)][address(arg3)]].field_0
            continue 
        require 1000000000 * 10^18 * offers[stor6[address(arg1)][address(arg3)]].field_512 / 1000000000 * 10^18 == offers[stor6[address(arg1)][address(arg3)]].field_512
        require (1000000000 * 10^18 * offers[stor6[address(arg1)][address(arg3)]].field_512) + offers[stor6[address(arg1)][address(arg3)]].field_1 >= 1000000000 * 10^18 * offers[stor6[address(arg1)][address(arg3)]].field_512
        require offers[stor6[address(arg1)][address(arg3)]].field_0
        if not (1000000000 * 10^18 * offers[stor6[address(arg1)][address(arg3)]].field_512) + offers[stor6[address(arg1)][address(arg3)]].field_1 / offers[stor6[address(arg1)][address(arg3)]].field_0:
            require s >= s
            mem[0] = bestOffer[address(arg1)][address(arg3)]
            mem[32] = 3
            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
            require not uint8(stor4.field_72)
            require uint64(block.timestamp) <= close_time
            if not uint8(stor4.field_88):
                _9705 = mem[64]
                mem[64] = mem[64] + 192
                mem[_9705] = 0
                mem[_9705 + 32] = 0
                mem[_9705 + 64] = 0
                mem[_9705 + 96] = 0
                mem[_9705 + 128] = 0
                mem[_9705 + 160] = 0
                require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                require not uint8(stor4.field_72)
                require uint64(block.timestamp) <= close_time
                require not uint8(stor4.field_0)
                uint8(stor4.field_0) = 1
                mem[0] = bestOffer[address(arg1)][address(arg3)]
                mem[32] = 3
                _9869 = mem[64]
                mem[64] = mem[64] + 192
                mem[_9869] = offers[stor6[address(arg1)][address(arg3)]].field_0
                mem[_9869 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                mem[_9869 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                mem[_9869 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                mem[_9869 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                mem[_9869 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
            else:
                require uint8(stor4.field_80)
                mem[0] = bestOffer[address(arg1)][address(arg3)]
                mem[32] = 3
                if uint128(idx) != offers[stor6[address(arg1)][address(arg3)]].field_0:
                    _9772 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_9772] = 0
                    mem[_9772 + 32] = 0
                    mem[_9772 + 64] = 0
                    mem[_9772 + 96] = 0
                    mem[_9772 + 128] = 0
                    mem[_9772 + 160] = 0
                    require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                    require not uint8(stor4.field_72)
                    require uint64(block.timestamp) <= close_time
                    require not uint8(stor4.field_0)
                    uint8(stor4.field_0) = 1
                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                    mem[32] = 3
                    _9991 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_9991] = offers[stor6[address(arg1)][address(arg3)]].field_0
                    mem[_9991 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                    mem[_9991 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                    mem[_9991 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                    mem[_9991 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                    mem[_9991 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                else:
                    if _rank[stor6[address(arg1)][address(arg3)]].field_0:
                        require 0 < _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]
                        require not _rank[stor6[address(arg1)][address(arg3)]].field_512
                        if _rank[stor6[address(arg1)][address(arg3)]].field_0:
                            if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                    _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 5
                                    _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                    _10420 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_10420] = 0
                                    mem[_10420 + 32] = 0
                                    mem[_10420 + 64] = 0
                                    mem[_10420 + 96] = 0
                                    mem[_10420 + 128] = 0
                                    mem[_10420 + 160] = 0
                                    require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor4.field_72)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor4.field_0)
                                    uint8(stor4.field_0) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _11233 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_11233] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                    mem[_11233 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                    mem[_11233 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                    mem[_11233 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                    mem[_11233 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                    mem[_11233 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                    _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                    _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 5
                                    _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                    _10614 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_10614] = 0
                                    mem[_10614 + 32] = 0
                                    mem[_10614 + 64] = 0
                                    mem[_10614 + 96] = 0
                                    mem[_10614 + 128] = 0
                                    mem[_10614 + 160] = 0
                                    require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor4.field_72)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor4.field_0)
                                    uint8(stor4.field_0) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _11433 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_11433] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                    mem[_11433 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                    mem[_11433 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                    mem[_11433 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                    mem[_11433 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                    mem[_11433 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                            else:
                                require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                    _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 5
                                    _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                    _10521 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_10521] = 0
                                    mem[_10521 + 32] = 0
                                    mem[_10521 + 64] = 0
                                    mem[_10521 + 96] = 0
                                    mem[_10521 + 128] = 0
                                    mem[_10521 + 160] = 0
                                    require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor4.field_72)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor4.field_0)
                                    uint8(stor4.field_0) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _11317 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_11317] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                    mem[_11317 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                    mem[_11317 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                    mem[_11317 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                    mem[_11317 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                    mem[_11317 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                    _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                    _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 5
                                    _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                    _10676 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_10676] = 0
                                    mem[_10676 + 32] = 0
                                    mem[_10676 + 64] = 0
                                    mem[_10676 + 96] = 0
                                    mem[_10676 + 128] = 0
                                    mem[_10676 + 160] = 0
                                    require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor4.field_72)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor4.field_0)
                                    uint8(stor4.field_0) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _11576 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_11576] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                    mem[_11576 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                    mem[_11576 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                    mem[_11576 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                    mem[_11576 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                    mem[_11576 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                        else:
                            if _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                    bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _10522 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_10522] = 0
                                        mem[_10522 + 32] = 0
                                        mem[_10522 + 64] = 0
                                        mem[_10522 + 96] = 0
                                        mem[_10522 + 128] = 0
                                        mem[_10522 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _11319 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_11319] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_11319 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_11319 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_11319 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_11319 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_11319 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _10678 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_10678] = 0
                                        mem[_10678 + 32] = 0
                                        mem[_10678 + 64] = 0
                                        mem[_10678 + 96] = 0
                                        mem[_10678 + 128] = 0
                                        mem[_10678 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _11578 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_11578] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_11578 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_11578 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_11578 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_11578 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_11578 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                    _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _10615 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_10615] = 0
                                        mem[_10615 + 32] = 0
                                        mem[_10615 + 64] = 0
                                        mem[_10615 + 96] = 0
                                        mem[_10615 + 128] = 0
                                        mem[_10615 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _11435 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_11435] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_11435 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_11435 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_11435 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_11435 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_11435 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _10747 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_10747] = 0
                                        mem[_10747 + 32] = 0
                                        mem[_10747 + 64] = 0
                                        mem[_10747 + 96] = 0
                                        mem[_10747 + 128] = 0
                                        mem[_10747 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _11718 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_11718] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_11718 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_11718 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_11718 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_11718 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_11718 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                            else:
                                require bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] == bestOffer[address(arg1)][address(arg3)]
                                if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                    bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _10523 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_10523] = 0
                                        mem[_10523 + 32] = 0
                                        mem[_10523 + 64] = 0
                                        mem[_10523 + 96] = 0
                                        mem[_10523 + 128] = 0
                                        mem[_10523 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _11321 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_11321] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_11321 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_11321 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_11321 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_11321 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_11321 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _10680 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_10680] = 0
                                        mem[_10680 + 32] = 0
                                        mem[_10680 + 64] = 0
                                        mem[_10680 + 96] = 0
                                        mem[_10680 + 128] = 0
                                        mem[_10680 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _11580 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_11580] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_11580 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_11580 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_11580 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_11580 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_11580 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                    _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _10616 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_10616] = 0
                                        mem[_10616 + 32] = 0
                                        mem[_10616 + 64] = 0
                                        mem[_10616 + 96] = 0
                                        mem[_10616 + 128] = 0
                                        mem[_10616 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _11437 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_11437] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_11437 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_11437 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_11437 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_11437 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_11437 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _10749 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_10749] = 0
                                        mem[_10749 + 32] = 0
                                        mem[_10749 + 64] = 0
                                        mem[_10749 + 96] = 0
                                        mem[_10749 + 128] = 0
                                        mem[_10749 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _11720 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_11720] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_11720 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_11720 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_11720 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_11720 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_11720 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                    else:
                        if _rank[stor6[address(arg1)][address(arg3)]].field_256:
                            require 0 < _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]
                            require not _rank[stor6[address(arg1)][address(arg3)]].field_512
                            if _rank[stor6[address(arg1)][address(arg3)]].field_0:
                                if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                    bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _10524 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_10524] = 0
                                        mem[_10524 + 32] = 0
                                        mem[_10524 + 64] = 0
                                        mem[_10524 + 96] = 0
                                        mem[_10524 + 128] = 0
                                        mem[_10524 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _11323 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_11323] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_11323 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_11323 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_11323 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_11323 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_11323 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _10682 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_10682] = 0
                                        mem[_10682 + 32] = 0
                                        mem[_10682 + 64] = 0
                                        mem[_10682 + 96] = 0
                                        mem[_10682 + 128] = 0
                                        mem[_10682 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _11582 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_11582] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_11582 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_11582 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_11582 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_11582 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_11582 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                    _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _10617 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_10617] = 0
                                        mem[_10617 + 32] = 0
                                        mem[_10617 + 64] = 0
                                        mem[_10617 + 96] = 0
                                        mem[_10617 + 128] = 0
                                        mem[_10617 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _11439 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_11439] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_11439 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_11439 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_11439 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_11439 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_11439 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _10751 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_10751] = 0
                                        mem[_10751 + 32] = 0
                                        mem[_10751 + 64] = 0
                                        mem[_10751 + 96] = 0
                                        mem[_10751 + 128] = 0
                                        mem[_10751 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _11722 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_11722] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_11722 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_11722 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_11722 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_11722 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_11722 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                            else:
                                if _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                    if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                        bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _10618 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_10618] = 0
                                            mem[_10618 + 32] = 0
                                            mem[_10618 + 64] = 0
                                            mem[_10618 + 96] = 0
                                            mem[_10618 + 128] = 0
                                            mem[_10618 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _11441 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_11441] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_11441 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_11441 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_11441 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_11441 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_11441 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                            _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _10753 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_10753] = 0
                                            mem[_10753 + 32] = 0
                                            mem[_10753 + 64] = 0
                                            mem[_10753 + 96] = 0
                                            mem[_10753 + 128] = 0
                                            mem[_10753 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _11724 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_11724] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_11724 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_11724 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_11724 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_11724 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_11724 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _10683 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_10683] = 0
                                            mem[_10683 + 32] = 0
                                            mem[_10683 + 64] = 0
                                            mem[_10683 + 96] = 0
                                            mem[_10683 + 128] = 0
                                            mem[_10683 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _11584 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_11584] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_11584 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_11584 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_11584 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_11584 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_11584 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                            _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _10811 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_10811] = 0
                                            mem[_10811 + 32] = 0
                                            mem[_10811 + 64] = 0
                                            mem[_10811 + 96] = 0
                                            mem[_10811 + 128] = 0
                                            mem[_10811 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _11867 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_11867] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_11867 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_11867 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_11867 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_11867 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_11867 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] == bestOffer[address(arg1)][address(arg3)]
                                    if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                        bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _10619 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_10619] = 0
                                            mem[_10619 + 32] = 0
                                            mem[_10619 + 64] = 0
                                            mem[_10619 + 96] = 0
                                            mem[_10619 + 128] = 0
                                            mem[_10619 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _11443 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_11443] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_11443 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_11443 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_11443 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_11443 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_11443 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                            _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _10755 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_10755] = 0
                                            mem[_10755 + 32] = 0
                                            mem[_10755 + 64] = 0
                                            mem[_10755 + 96] = 0
                                            mem[_10755 + 128] = 0
                                            mem[_10755 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _11726 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_11726] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_11726 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_11726 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_11726 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_11726 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_11726 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _10684 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_10684] = 0
                                            mem[_10684 + 32] = 0
                                            mem[_10684 + 64] = 0
                                            mem[_10684 + 96] = 0
                                            mem[_10684 + 128] = 0
                                            mem[_10684 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _11586 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_11586] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_11586 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_11586 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_11586 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_11586 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_11586 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                            _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _10813 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_10813] = 0
                                            mem[_10813 + 32] = 0
                                            mem[_10813 + 64] = 0
                                            mem[_10813 + 96] = 0
                                            mem[_10813 + 128] = 0
                                            mem[_10813 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _11869 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_11869] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_11869 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_11869 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_11869 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_11869 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_11869 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                        else:
                            mem[0] = offers[stor6[address(arg1)][address(arg3)]].field_768
                            mem[32] = sha3(offers[stor6[address(arg1)][address(arg3)]].field_256, 6)
                            if bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] != bestOffer[address(arg1)][address(arg3)]:
                                _9831 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_9831] = 0
                                mem[_9831 + 32] = 0
                                mem[_9831 + 64] = 0
                                mem[_9831 + 96] = 0
                                mem[_9831 + 128] = 0
                                mem[_9831 + 160] = 0
                                require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                require not uint8(stor4.field_72)
                                require uint64(block.timestamp) <= close_time
                                require not uint8(stor4.field_0)
                                uint8(stor4.field_0) = 1
                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                mem[32] = 3
                                _10441 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_10441] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                mem[_10441 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                mem[_10441 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                mem[_10441 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                mem[_10441 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                mem[_10441 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                            else:
                                require 0 < _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]
                                require not _rank[stor6[address(arg1)][address(arg3)]].field_512
                                if _rank[stor6[address(arg1)][address(arg3)]].field_0:
                                    if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                        bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _10531 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_10531] = 0
                                            mem[_10531 + 32] = 0
                                            mem[_10531 + 64] = 0
                                            mem[_10531 + 96] = 0
                                            mem[_10531 + 128] = 0
                                            mem[_10531 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _11325 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_11325] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_11325 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_11325 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_11325 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_11325 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_11325 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                            _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _10686 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_10686] = 0
                                            mem[_10686 + 32] = 0
                                            mem[_10686 + 64] = 0
                                            mem[_10686 + 96] = 0
                                            mem[_10686 + 128] = 0
                                            mem[_10686 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _11588 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_11588] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_11588 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_11588 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_11588 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_11588 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_11588 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _10620 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_10620] = 0
                                            mem[_10620 + 32] = 0
                                            mem[_10620 + 64] = 0
                                            mem[_10620 + 96] = 0
                                            mem[_10620 + 128] = 0
                                            mem[_10620 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _11447 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_11447] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_11447 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_11447 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_11447 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_11447 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_11447 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                            _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _10757 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_10757] = 0
                                            mem[_10757 + 32] = 0
                                            mem[_10757 + 64] = 0
                                            mem[_10757 + 96] = 0
                                            mem[_10757 + 128] = 0
                                            mem[_10757 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _11729 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_11729] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_11729 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_11729 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_11729 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_11729 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_11729 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                else:
                                    if _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                        if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                            bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                            if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                                _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 5
                                                _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                                _10621 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_10621] = 0
                                                mem[_10621 + 32] = 0
                                                mem[_10621 + 64] = 0
                                                mem[_10621 + 96] = 0
                                                mem[_10621 + 128] = 0
                                                mem[_10621 + 160] = 0
                                                require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor4.field_72)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor4.field_0)
                                                uint8(stor4.field_0) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _11449 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_11449] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                                mem[_11449 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                                mem[_11449 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                                mem[_11449 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                                mem[_11449 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                                mem[_11449 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                            else:
                                                require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                                _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                                _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 5
                                                _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                                _10759 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_10759] = 0
                                                mem[_10759 + 32] = 0
                                                mem[_10759 + 64] = 0
                                                mem[_10759 + 96] = 0
                                                mem[_10759 + 128] = 0
                                                mem[_10759 + 160] = 0
                                                require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor4.field_72)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor4.field_0)
                                                uint8(stor4.field_0) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _11731 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_11731] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                                mem[_11731 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                                mem[_11731 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                                mem[_11731 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                                mem[_11731 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                                mem[_11731 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                            _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                            if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                                _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 5
                                                _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                                _10687 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_10687] = 0
                                                mem[_10687 + 32] = 0
                                                mem[_10687 + 64] = 0
                                                mem[_10687 + 96] = 0
                                                mem[_10687 + 128] = 0
                                                mem[_10687 + 160] = 0
                                                require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor4.field_72)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor4.field_0)
                                                uint8(stor4.field_0) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _11590 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_11590] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                                mem[_11590 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                                mem[_11590 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                                mem[_11590 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                                mem[_11590 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                                mem[_11590 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                            else:
                                                require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                                _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                                _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 5
                                                _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                                _10816 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_10816] = 0
                                                mem[_10816 + 32] = 0
                                                mem[_10816 + 64] = 0
                                                mem[_10816 + 96] = 0
                                                mem[_10816 + 128] = 0
                                                mem[_10816 + 160] = 0
                                                require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor4.field_72)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor4.field_0)
                                                uint8(stor4.field_0) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _11873 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_11873] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                                mem[_11873 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                                mem[_11873 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                                mem[_11873 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                                mem[_11873 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                                mem[_11873 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] == bestOffer[address(arg1)][address(arg3)]
                                        if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                            bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                            if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                                _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 5
                                                _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                                _10622 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_10622] = 0
                                                mem[_10622 + 32] = 0
                                                mem[_10622 + 64] = 0
                                                mem[_10622 + 96] = 0
                                                mem[_10622 + 128] = 0
                                                mem[_10622 + 160] = 0
                                                require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor4.field_72)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor4.field_0)
                                                uint8(stor4.field_0) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _11451 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_11451] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                                mem[_11451 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                                mem[_11451 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                                mem[_11451 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                                mem[_11451 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                                mem[_11451 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                            else:
                                                require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                                _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                                _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 5
                                                _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                                _10761 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_10761] = 0
                                                mem[_10761 + 32] = 0
                                                mem[_10761 + 64] = 0
                                                mem[_10761 + 96] = 0
                                                mem[_10761 + 128] = 0
                                                mem[_10761 + 160] = 0
                                                require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor4.field_72)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor4.field_0)
                                                uint8(stor4.field_0) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _11733 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_11733] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                                mem[_11733 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                                mem[_11733 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                                mem[_11733 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                                mem[_11733 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                                mem[_11733 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                            _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                            if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                                _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 5
                                                _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                                _10688 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_10688] = 0
                                                mem[_10688 + 32] = 0
                                                mem[_10688 + 64] = 0
                                                mem[_10688 + 96] = 0
                                                mem[_10688 + 128] = 0
                                                mem[_10688 + 160] = 0
                                                require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor4.field_72)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor4.field_0)
                                                uint8(stor4.field_0) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _11592 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_11592] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                                mem[_11592 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                                mem[_11592 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                                mem[_11592 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                                mem[_11592 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                                mem[_11592 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                            else:
                                                require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                                _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                                _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 5
                                                _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                                _10818 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_10818] = 0
                                                mem[_10818 + 32] = 0
                                                mem[_10818 + 64] = 0
                                                mem[_10818 + 96] = 0
                                                mem[_10818 + 128] = 0
                                                mem[_10818 + 160] = 0
                                                require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor4.field_72)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor4.field_0)
                                                uint8(stor4.field_0) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _11875 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_11875] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                                mem[_11875 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                                mem[_11875 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                                mem[_11875 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                                mem[_11875 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                                mem[_11875 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
            if not offers[stor6[address(arg1)][address(arg3)]].field_512:
                require offers[stor6[address(arg1)][address(arg3)]].field_0
                require 0 / offers[stor6[address(arg1)][address(arg3)]].field_0 == uint128(0 / offers[stor6[address(arg1)][address(arg3)]].field_0)
                require uint128(idx) == uint128(idx)
                if not uint128(idx):
                    uint8(stor4.field_0) = 0
                    revert
                if not 0 / offers[stor6[address(arg1)][address(arg3)]].field_0:
                    uint8(stor4.field_0) = 0
                    revert
                if uint128(idx) > offers[stor6[address(arg1)][address(arg3)]].field_0:
                    uint8(stor4.field_0) = 0
                    revert
                if 0 / offers[stor6[address(arg1)][address(arg3)]].field_0 > offers[stor6[address(arg1)][address(arg3)]].field_512:
                    uint8(stor4.field_0) = 0
                    revert
                require offers[stor6[address(arg1)][address(arg3)]].field_0 - uint128(idx) <= offers[stor6[address(arg1)][address(arg3)]].field_0
                offers[stor6[address(arg1)][address(arg3)]].field_0 -= uint128(idx)
                require offers[stor6[address(arg1)][address(arg3)]].field_512 - (0 / offers[stor6[address(arg1)][address(arg3)]].field_0) <= offers[stor6[address(arg1)][address(arg3)]].field_512
                mem[0] = bestOffer[address(arg1)][address(arg3)]
                mem[32] = 3
                offers[stor6[address(arg1)][address(arg3)]].field_512 -= 0 / offers[stor6[address(arg1)][address(arg3)]].field_0
                require ext_code.size(offers[stor6[address(arg1)][address(arg3)]].field_768)
                call offers[stor6[address(arg1)][address(arg3)]].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, offers[stor6[address(arg1)][address(arg3)]].field_1024, 0 / offers[stor6[address(arg1)][address(arg3)]].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(offers[stor6[address(arg1)][address(arg3)]].field_256)
                call offers[stor6[address(arg1)][address(arg3)]].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, uint128(idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit LogItemUpdate(bestOffer[address(arg1)][address(arg3)]);
                mem[mem[64] + 64] = offers[stor6[address(arg1)][address(arg3)]].field_768
                mem[mem[64] + 96] = uint128(idx)
                mem[mem[64] + 128] = uint128(0 / offers[stor6[address(arg1)][address(arg3)]].field_0)
                mem[mem[64] + 160] = uint64(block.timestamp)
                emit LogTake(bestOffer[address(arg1)][address(arg3)], offers[stor6[address(arg1)][address(arg3)]].field_256, offers[stor6[address(arg1)][address(arg3)]].field_768, idx << 128, 0 / offers[stor6[address(arg1)][address(arg3)]].field_0 << 128, uint64(block.timestamp), sha3(offers[stor6[address(arg1)][address(arg3)]].field_256, offers[stor6[address(arg1)][address(arg3)]].field_768), offers[stor6[address(arg1)][address(arg3)]].field_1024, msg.sender);
                mem[mem[64]] = uint128(idx)
                mem[mem[64] + 32] = 0 / offers[stor6[address(arg1)][address(arg3)]].field_0
                emit LogTrade(idx << 128, 0 / offers[stor6[address(arg1)][address(arg3)]].field_0, offers[stor6[address(arg1)][address(arg3)]].field_256, offers[stor6[address(arg1)][address(arg3)]].field_768);
            else:
                require offers[stor6[address(arg1)][address(arg3)]].field_512
                require uint128(idx) * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_512 == uint128(idx)
                require offers[stor6[address(arg1)][address(arg3)]].field_0
                require uint128(idx) * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0 == uint128(uint128(idx) * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0)
                require uint128(idx) == uint128(idx)
                if not uint128(idx):
                    uint8(stor4.field_0) = 0
                    revert
                if not uint128(idx) * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0:
                    uint8(stor4.field_0) = 0
                    revert
                if uint128(idx) > offers[stor6[address(arg1)][address(arg3)]].field_0:
                    uint8(stor4.field_0) = 0
                    revert
                if uint128(idx) * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0 > offers[stor6[address(arg1)][address(arg3)]].field_512:
                    uint8(stor4.field_0) = 0
                    revert
                require offers[stor6[address(arg1)][address(arg3)]].field_0 - uint128(idx) <= offers[stor6[address(arg1)][address(arg3)]].field_0
                offers[stor6[address(arg1)][address(arg3)]].field_0 -= uint128(idx)
                require offers[stor6[address(arg1)][address(arg3)]].field_512 - (uint128(idx) * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0) <= offers[stor6[address(arg1)][address(arg3)]].field_512
                mem[0] = bestOffer[address(arg1)][address(arg3)]
                mem[32] = 3
                offers[stor6[address(arg1)][address(arg3)]].field_512 -= uint128(idx) * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0
                require ext_code.size(offers[stor6[address(arg1)][address(arg3)]].field_768)
                call offers[stor6[address(arg1)][address(arg3)]].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, offers[stor6[address(arg1)][address(arg3)]].field_1024, uint128(idx) * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(offers[stor6[address(arg1)][address(arg3)]].field_256)
                call offers[stor6[address(arg1)][address(arg3)]].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, uint128(idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit LogItemUpdate(bestOffer[address(arg1)][address(arg3)]);
                mem[mem[64] + 64] = offers[stor6[address(arg1)][address(arg3)]].field_768
                mem[mem[64] + 96] = uint128(idx)
                mem[mem[64] + 128] = uint128(uint128(idx) * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0)
                mem[mem[64] + 160] = uint64(block.timestamp)
                emit LogTake(bestOffer[address(arg1)][address(arg3)], offers[stor6[address(arg1)][address(arg3)]].field_256, offers[stor6[address(arg1)][address(arg3)]].field_768, idx << 128, uint128(idx) * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0 << 128, uint64(block.timestamp), sha3(offers[stor6[address(arg1)][address(arg3)]].field_256, offers[stor6[address(arg1)][address(arg3)]].field_768), offers[stor6[address(arg1)][address(arg3)]].field_1024, msg.sender);
                mem[mem[64]] = uint128(idx)
                mem[mem[64] + 32] = uint128(idx) * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0
                emit LogTrade(idx << 128, uint128(idx) * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0, offers[stor6[address(arg1)][address(arg3)]].field_256, offers[stor6[address(arg1)][address(arg3)]].field_768);
            mem[0] = bestOffer[address(arg1)][address(arg3)]
            mem[32] = 3
            if not offers[stor6[address(arg1)][address(arg3)]].field_0:
                mem[0] = bestOffer[address(arg1)][address(arg3)]
                mem[32] = 3
                offers[stor6[address(arg1)][address(arg3)]].field_0 = 0
                offers[stor6[address(arg1)][address(arg3)]].field_256 = 0
                offers[stor6[address(arg1)][address(arg3)]].field_512 = 0
                offers[stor6[address(arg1)][address(arg3)]].field_768 = 0
                offers[stor6[address(arg1)][address(arg3)]].field_1024 = 0
            uint8(stor4.field_0) = 0
            s = bestOffer[address(arg1)][address(arg3)]
            s = s
            idx = 0
            continue 
        require (1000000000 * 10^18 * offers[stor6[address(arg1)][address(arg3)]].field_512) + offers[stor6[address(arg1)][address(arg3)]].field_1 / offers[stor6[address(arg1)][address(arg3)]].field_0
        require 10^9 * idx * (1000000000 * 10^18 * offers[stor6[address(arg1)][address(arg3)]].field_512) + offers[stor6[address(arg1)][address(arg3)]].field_1 / offers[stor6[address(arg1)][address(arg3)]].field_0 / (1000000000 * 10^18 * offers[stor6[address(arg1)][address(arg3)]].field_512) + offers[stor6[address(arg1)][address(arg3)]].field_1 / offers[stor6[address(arg1)][address(arg3)]].field_0 == 10^9 * idx
        require (10^9 * idx * (1000000000 * 10^18 * offers[stor6[address(arg1)][address(arg3)]].field_512) + offers[stor6[address(arg1)][address(arg3)]].field_1 / offers[stor6[address(arg1)][address(arg3)]].field_0) + 500000000 * 10^18 >= 10^9 * idx * (1000000000 * 10^18 * offers[stor6[address(arg1)][address(arg3)]].field_512) + offers[stor6[address(arg1)][address(arg3)]].field_1 / offers[stor6[address(arg1)][address(arg3)]].field_0
        require s + ((10^9 * idx * (1000000000 * 10^18 * offers[stor6[address(arg1)][address(arg3)]].field_512) + offers[stor6[address(arg1)][address(arg3)]].field_1 / offers[stor6[address(arg1)][address(arg3)]].field_0) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^9) >= s
        mem[0] = bestOffer[address(arg1)][address(arg3)]
        mem[32] = 3
        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
        require not uint8(stor4.field_72)
        require uint64(block.timestamp) <= close_time
        if not uint8(stor4.field_88):
            _9737 = mem[64]
            mem[64] = mem[64] + 192
            mem[_9737] = 0
            mem[_9737 + 32] = 0
            mem[_9737 + 64] = 0
            mem[_9737 + 96] = 0
            mem[_9737 + 128] = 0
            mem[_9737 + 160] = 0
            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
            require not uint8(stor4.field_72)
            require uint64(block.timestamp) <= close_time
            require not uint8(stor4.field_0)
            uint8(stor4.field_0) = 1
            mem[0] = bestOffer[address(arg1)][address(arg3)]
            mem[32] = 3
            _9928 = mem[64]
            mem[64] = mem[64] + 192
            mem[_9928] = offers[stor6[address(arg1)][address(arg3)]].field_0
            mem[_9928 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
            mem[_9928 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
            mem[_9928 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
            mem[_9928 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
            mem[_9928 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
        else:
            require uint8(stor4.field_80)
            mem[0] = bestOffer[address(arg1)][address(arg3)]
            mem[32] = 3
            if uint128(idx) != offers[stor6[address(arg1)][address(arg3)]].field_0:
                _9804 = mem[64]
                mem[64] = mem[64] + 192
                mem[_9804] = 0
                mem[_9804 + 32] = 0
                mem[_9804 + 64] = 0
                mem[_9804 + 96] = 0
                mem[_9804 + 128] = 0
                mem[_9804 + 160] = 0
                require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                require not uint8(stor4.field_72)
                require uint64(block.timestamp) <= close_time
                require not uint8(stor4.field_0)
                uint8(stor4.field_0) = 1
                mem[0] = bestOffer[address(arg1)][address(arg3)]
                mem[32] = 3
                _10148 = mem[64]
                mem[64] = mem[64] + 192
                mem[_10148] = offers[stor6[address(arg1)][address(arg3)]].field_0
                mem[_10148 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                mem[_10148 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                mem[_10148 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                mem[_10148 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                mem[_10148 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
            else:
                if _rank[stor6[address(arg1)][address(arg3)]].field_0:
                    require 0 < _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]
                    require not _rank[stor6[address(arg1)][address(arg3)]].field_512
                    if _rank[stor6[address(arg1)][address(arg3)]].field_0:
                        if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                            bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                            if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                mem[32] = 5
                                _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                _10623 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_10623] = 0
                                mem[_10623 + 32] = 0
                                mem[_10623 + 64] = 0
                                mem[_10623 + 96] = 0
                                mem[_10623 + 128] = 0
                                mem[_10623 + 160] = 0
                                require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                require not uint8(stor4.field_72)
                                require uint64(block.timestamp) <= close_time
                                require not uint8(stor4.field_0)
                                uint8(stor4.field_0) = 1
                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                mem[32] = 3
                                _11456 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_11456] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                mem[_11456 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                mem[_11456 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                mem[_11456 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                mem[_11456 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                mem[_11456 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                            else:
                                require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                mem[32] = 5
                                _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                _10763 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_10763] = 0
                                mem[_10763 + 32] = 0
                                mem[_10763 + 64] = 0
                                mem[_10763 + 96] = 0
                                mem[_10763 + 128] = 0
                                mem[_10763 + 160] = 0
                                require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                require not uint8(stor4.field_72)
                                require uint64(block.timestamp) <= close_time
                                require not uint8(stor4.field_0)
                                uint8(stor4.field_0) = 1
                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                mem[32] = 3
                                _11738 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_11738] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                mem[_11738 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                mem[_11738 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                mem[_11738 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                mem[_11738 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                mem[_11738 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                        else:
                            require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                            _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                            if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                mem[32] = 5
                                _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                _10691 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_10691] = 0
                                mem[_10691 + 32] = 0
                                mem[_10691 + 64] = 0
                                mem[_10691 + 96] = 0
                                mem[_10691 + 128] = 0
                                mem[_10691 + 160] = 0
                                require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                require not uint8(stor4.field_72)
                                require uint64(block.timestamp) <= close_time
                                require not uint8(stor4.field_0)
                                uint8(stor4.field_0) = 1
                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                mem[32] = 3
                                _11598 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_11598] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                mem[_11598 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                mem[_11598 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                mem[_11598 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                mem[_11598 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                mem[_11598 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                            else:
                                require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                mem[32] = 5
                                _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                _10822 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_10822] = 0
                                mem[_10822 + 32] = 0
                                mem[_10822 + 64] = 0
                                mem[_10822 + 96] = 0
                                mem[_10822 + 128] = 0
                                mem[_10822 + 160] = 0
                                require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                require not uint8(stor4.field_72)
                                require uint64(block.timestamp) <= close_time
                                require not uint8(stor4.field_0)
                                uint8(stor4.field_0) = 1
                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                mem[32] = 3
                                _11886 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_11886] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                mem[_11886 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                mem[_11886 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                mem[_11886 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                mem[_11886 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                mem[_11886 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                    else:
                        if _rank[stor6[address(arg1)][address(arg3)]].field_256:
                            if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                    _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 5
                                    _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                    _10692 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_10692] = 0
                                    mem[_10692 + 32] = 0
                                    mem[_10692 + 64] = 0
                                    mem[_10692 + 96] = 0
                                    mem[_10692 + 128] = 0
                                    mem[_10692 + 160] = 0
                                    require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor4.field_72)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor4.field_0)
                                    uint8(stor4.field_0) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _11600 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_11600] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                    mem[_11600 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                    mem[_11600 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                    mem[_11600 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                    mem[_11600 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                    mem[_11600 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                    _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                    _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 5
                                    _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                    _10824 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_10824] = 0
                                    mem[_10824 + 32] = 0
                                    mem[_10824 + 64] = 0
                                    mem[_10824 + 96] = 0
                                    mem[_10824 + 128] = 0
                                    mem[_10824 + 160] = 0
                                    require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor4.field_72)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor4.field_0)
                                    uint8(stor4.field_0) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _11888 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_11888] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                    mem[_11888 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                    mem[_11888 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                    mem[_11888 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                    mem[_11888 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                    mem[_11888 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                            else:
                                require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                    _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 5
                                    _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                    _10764 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_10764] = 0
                                    mem[_10764 + 32] = 0
                                    mem[_10764 + 64] = 0
                                    mem[_10764 + 96] = 0
                                    mem[_10764 + 128] = 0
                                    mem[_10764 + 160] = 0
                                    require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor4.field_72)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor4.field_0)
                                    uint8(stor4.field_0) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _11740 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_11740] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                    mem[_11740 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                    mem[_11740 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                    mem[_11740 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                    mem[_11740 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                    mem[_11740 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                    _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                    _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 5
                                    _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                    _10880 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_10880] = 0
                                    mem[_10880 + 32] = 0
                                    mem[_10880 + 64] = 0
                                    mem[_10880 + 96] = 0
                                    mem[_10880 + 128] = 0
                                    mem[_10880 + 160] = 0
                                    require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor4.field_72)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor4.field_0)
                                    uint8(stor4.field_0) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _12008 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_12008] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                    mem[_12008 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                    mem[_12008 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                    mem[_12008 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                    mem[_12008 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                    mem[_12008 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                        else:
                            require bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] == bestOffer[address(arg1)][address(arg3)]
                            if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                    _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 5
                                    _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                    _10693 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_10693] = 0
                                    mem[_10693 + 32] = 0
                                    mem[_10693 + 64] = 0
                                    mem[_10693 + 96] = 0
                                    mem[_10693 + 128] = 0
                                    mem[_10693 + 160] = 0
                                    require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor4.field_72)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor4.field_0)
                                    uint8(stor4.field_0) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _11602 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_11602] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                    mem[_11602 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                    mem[_11602 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                    mem[_11602 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                    mem[_11602 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                    mem[_11602 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                    _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                    _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 5
                                    _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                    _10826 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_10826] = 0
                                    mem[_10826 + 32] = 0
                                    mem[_10826 + 64] = 0
                                    mem[_10826 + 96] = 0
                                    mem[_10826 + 128] = 0
                                    mem[_10826 + 160] = 0
                                    require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor4.field_72)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor4.field_0)
                                    uint8(stor4.field_0) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _11890 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_11890] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                    mem[_11890 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                    mem[_11890 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                    mem[_11890 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                    mem[_11890 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                    mem[_11890 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                            else:
                                require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                    _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 5
                                    _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                    _10765 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_10765] = 0
                                    mem[_10765 + 32] = 0
                                    mem[_10765 + 64] = 0
                                    mem[_10765 + 96] = 0
                                    mem[_10765 + 128] = 0
                                    mem[_10765 + 160] = 0
                                    require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor4.field_72)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor4.field_0)
                                    uint8(stor4.field_0) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _11742 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_11742] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                    mem[_11742 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                    mem[_11742 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                    mem[_11742 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                    mem[_11742 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                    mem[_11742 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                    _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                    _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 5
                                    _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                    _10882 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_10882] = 0
                                    mem[_10882 + 32] = 0
                                    mem[_10882 + 64] = 0
                                    mem[_10882 + 96] = 0
                                    mem[_10882 + 128] = 0
                                    mem[_10882 + 160] = 0
                                    require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor4.field_72)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor4.field_0)
                                    uint8(stor4.field_0) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _12010 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_12010] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                    mem[_12010 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                    mem[_12010 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                    mem[_12010 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                    mem[_12010 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                    mem[_12010 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                else:
                    if _rank[stor6[address(arg1)][address(arg3)]].field_256:
                        require 0 < _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]
                        require not _rank[stor6[address(arg1)][address(arg3)]].field_512
                        if _rank[stor6[address(arg1)][address(arg3)]].field_0:
                            if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                    _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 5
                                    _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                    _10694 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_10694] = 0
                                    mem[_10694 + 32] = 0
                                    mem[_10694 + 64] = 0
                                    mem[_10694 + 96] = 0
                                    mem[_10694 + 128] = 0
                                    mem[_10694 + 160] = 0
                                    require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor4.field_72)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor4.field_0)
                                    uint8(stor4.field_0) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _11604 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_11604] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                    mem[_11604 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                    mem[_11604 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                    mem[_11604 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                    mem[_11604 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                    mem[_11604 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                    _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                    _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 5
                                    _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                    _10828 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_10828] = 0
                                    mem[_10828 + 32] = 0
                                    mem[_10828 + 64] = 0
                                    mem[_10828 + 96] = 0
                                    mem[_10828 + 128] = 0
                                    mem[_10828 + 160] = 0
                                    require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor4.field_72)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor4.field_0)
                                    uint8(stor4.field_0) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _11892 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_11892] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                    mem[_11892 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                    mem[_11892 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                    mem[_11892 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                    mem[_11892 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                    mem[_11892 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                            else:
                                require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                    _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 5
                                    _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                    _10766 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_10766] = 0
                                    mem[_10766 + 32] = 0
                                    mem[_10766 + 64] = 0
                                    mem[_10766 + 96] = 0
                                    mem[_10766 + 128] = 0
                                    mem[_10766 + 160] = 0
                                    require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor4.field_72)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor4.field_0)
                                    uint8(stor4.field_0) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _11744 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_11744] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                    mem[_11744 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                    mem[_11744 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                    mem[_11744 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                    mem[_11744 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                    mem[_11744 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                    _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                    _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 5
                                    _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                    _10884 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_10884] = 0
                                    mem[_10884 + 32] = 0
                                    mem[_10884 + 64] = 0
                                    mem[_10884 + 96] = 0
                                    mem[_10884 + 128] = 0
                                    mem[_10884 + 160] = 0
                                    require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor4.field_72)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor4.field_0)
                                    uint8(stor4.field_0) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _12012 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_12012] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                    mem[_12012 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                    mem[_12012 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                    mem[_12012 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                    mem[_12012 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                    mem[_12012 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                        else:
                            if _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                    bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _10767 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_10767] = 0
                                        mem[_10767 + 32] = 0
                                        mem[_10767 + 64] = 0
                                        mem[_10767 + 96] = 0
                                        mem[_10767 + 128] = 0
                                        mem[_10767 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _11746 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_11746] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_11746 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_11746 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_11746 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_11746 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_11746 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _10886 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_10886] = 0
                                        mem[_10886 + 32] = 0
                                        mem[_10886 + 64] = 0
                                        mem[_10886 + 96] = 0
                                        mem[_10886 + 128] = 0
                                        mem[_10886 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _12014 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_12014] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_12014 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_12014 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_12014 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_12014 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_12014 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                    _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _10829 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_10829] = 0
                                        mem[_10829 + 32] = 0
                                        mem[_10829 + 64] = 0
                                        mem[_10829 + 96] = 0
                                        mem[_10829 + 128] = 0
                                        mem[_10829 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _11894 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_11894] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_11894 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_11894 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_11894 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_11894 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_11894 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _10960 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_10960] = 0
                                        mem[_10960 + 32] = 0
                                        mem[_10960 + 64] = 0
                                        mem[_10960 + 96] = 0
                                        mem[_10960 + 128] = 0
                                        mem[_10960 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _12158 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_12158] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_12158 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_12158 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_12158 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_12158 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_12158 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                            else:
                                require bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] == bestOffer[address(arg1)][address(arg3)]
                                if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                    bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _10768 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_10768] = 0
                                        mem[_10768 + 32] = 0
                                        mem[_10768 + 64] = 0
                                        mem[_10768 + 96] = 0
                                        mem[_10768 + 128] = 0
                                        mem[_10768 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _11748 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_11748] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_11748 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_11748 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_11748 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_11748 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_11748 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _10888 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_10888] = 0
                                        mem[_10888 + 32] = 0
                                        mem[_10888 + 64] = 0
                                        mem[_10888 + 96] = 0
                                        mem[_10888 + 128] = 0
                                        mem[_10888 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _12016 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_12016] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_12016 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_12016 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_12016 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_12016 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_12016 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                    _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _10830 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_10830] = 0
                                        mem[_10830 + 32] = 0
                                        mem[_10830 + 64] = 0
                                        mem[_10830 + 96] = 0
                                        mem[_10830 + 128] = 0
                                        mem[_10830 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _11896 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_11896] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_11896 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_11896 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_11896 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_11896 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_11896 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _10962 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_10962] = 0
                                        mem[_10962 + 32] = 0
                                        mem[_10962 + 64] = 0
                                        mem[_10962 + 96] = 0
                                        mem[_10962 + 128] = 0
                                        mem[_10962 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _12160 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_12160] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_12160 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_12160 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_12160 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_12160 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_12160 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                    else:
                        mem[0] = offers[stor6[address(arg1)][address(arg3)]].field_768
                        mem[32] = sha3(offers[stor6[address(arg1)][address(arg3)]].field_256, 6)
                        if bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] != bestOffer[address(arg1)][address(arg3)]:
                            _9858 = mem[64]
                            mem[64] = mem[64] + 192
                            mem[_9858] = 0
                            mem[_9858 + 32] = 0
                            mem[_9858 + 64] = 0
                            mem[_9858 + 96] = 0
                            mem[_9858 + 128] = 0
                            mem[_9858 + 160] = 0
                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                            require not uint8(stor4.field_72)
                            require uint64(block.timestamp) <= close_time
                            require not uint8(stor4.field_0)
                            uint8(stor4.field_0) = 1
                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                            mem[32] = 3
                            _10644 = mem[64]
                            mem[64] = mem[64] + 192
                            mem[_10644] = offers[stor6[address(arg1)][address(arg3)]].field_0
                            mem[_10644 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                            mem[_10644 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                            mem[_10644 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                            mem[_10644 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                            mem[_10644 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                        else:
                            require 0 < _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]
                            require not _rank[stor6[address(arg1)][address(arg3)]].field_512
                            if _rank[stor6[address(arg1)][address(arg3)]].field_0:
                                if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                    bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _10701 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_10701] = 0
                                        mem[_10701 + 32] = 0
                                        mem[_10701 + 64] = 0
                                        mem[_10701 + 96] = 0
                                        mem[_10701 + 128] = 0
                                        mem[_10701 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _11606 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_11606] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_11606 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_11606 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_11606 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_11606 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_11606 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _10832 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_10832] = 0
                                        mem[_10832 + 32] = 0
                                        mem[_10832 + 64] = 0
                                        mem[_10832 + 96] = 0
                                        mem[_10832 + 128] = 0
                                        mem[_10832 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _11898 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_11898] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_11898 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_11898 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_11898 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_11898 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_11898 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                    _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _10769 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_10769] = 0
                                        mem[_10769 + 32] = 0
                                        mem[_10769 + 64] = 0
                                        mem[_10769 + 96] = 0
                                        mem[_10769 + 128] = 0
                                        mem[_10769 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _11752 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_11752] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_11752 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_11752 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_11752 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_11752 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_11752 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 5
                                        _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                        _10890 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_10890] = 0
                                        mem[_10890 + 32] = 0
                                        mem[_10890 + 64] = 0
                                        mem[_10890 + 96] = 0
                                        mem[_10890 + 128] = 0
                                        mem[_10890 + 160] = 0
                                        require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor4.field_72)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor4.field_0)
                                        uint8(stor4.field_0) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _12019 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_12019] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                        mem[_12019 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                        mem[_12019 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                        mem[_12019 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                        mem[_12019 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                        mem[_12019 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                            else:
                                if _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                    if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                        bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _10770 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_10770] = 0
                                            mem[_10770 + 32] = 0
                                            mem[_10770 + 64] = 0
                                            mem[_10770 + 96] = 0
                                            mem[_10770 + 128] = 0
                                            mem[_10770 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _11754 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_11754] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_11754 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_11754 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_11754 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_11754 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_11754 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                            _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _10892 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_10892] = 0
                                            mem[_10892 + 32] = 0
                                            mem[_10892 + 64] = 0
                                            mem[_10892 + 96] = 0
                                            mem[_10892 + 128] = 0
                                            mem[_10892 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _12021 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_12021] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_12021 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_12021 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_12021 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_12021 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_12021 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _10833 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_10833] = 0
                                            mem[_10833 + 32] = 0
                                            mem[_10833 + 64] = 0
                                            mem[_10833 + 96] = 0
                                            mem[_10833 + 128] = 0
                                            mem[_10833 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _11900 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_11900] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_11900 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_11900 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_11900 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_11900 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_11900 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                            _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _10965 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_10965] = 0
                                            mem[_10965 + 32] = 0
                                            mem[_10965 + 64] = 0
                                            mem[_10965 + 96] = 0
                                            mem[_10965 + 128] = 0
                                            mem[_10965 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _12164 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_12164] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_12164 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_12164 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_12164 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_12164 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_12164 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] == bestOffer[address(arg1)][address(arg3)]
                                    if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                        bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _10771 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_10771] = 0
                                            mem[_10771 + 32] = 0
                                            mem[_10771 + 64] = 0
                                            mem[_10771 + 96] = 0
                                            mem[_10771 + 128] = 0
                                            mem[_10771 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _11756 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_11756] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_11756 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_11756 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_11756 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_11756 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_11756 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                            _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _10894 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_10894] = 0
                                            mem[_10894 + 32] = 0
                                            mem[_10894 + 64] = 0
                                            mem[_10894 + 96] = 0
                                            mem[_10894 + 128] = 0
                                            mem[_10894 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _12023 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_12023] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_12023 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_12023 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_12023 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_12023 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_12023 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256
                                        _rank[_rank[stor6[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor6[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor6[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _10834 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_10834] = 0
                                            mem[_10834 + 32] = 0
                                            mem[_10834 + 64] = 0
                                            mem[_10834 + 96] = 0
                                            mem[_10834 + 128] = 0
                                            mem[_10834 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _11902 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_11902] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_11902 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_11902 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_11902 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_11902 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_11902 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require bestOffer[address(arg1)][address(arg3)] == _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0
                                            _rank[_rank[stor6[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor6[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor6[address(arg1)][address(arg3)]].field_256][stor3[stor6[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 5
                                            _rank[stor6[address(arg1)][address(arg3)]].field_512 = block.number
                                            _10967 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_10967] = 0
                                            mem[_10967 + 32] = 0
                                            mem[_10967 + 64] = 0
                                            mem[_10967 + 96] = 0
                                            mem[_10967 + 128] = 0
                                            mem[_10967 + 160] = 0
                                            require offers[stor6[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor4.field_72)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor4.field_0)
                                            uint8(stor4.field_0) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _12166 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_12166] = offers[stor6[address(arg1)][address(arg3)]].field_0
                                            mem[_12166 + 32] = offers[stor6[address(arg1)][address(arg3)]].field_256
                                            mem[_12166 + 64] = offers[stor6[address(arg1)][address(arg3)]].field_512
                                            mem[_12166 + 96] = offers[stor6[address(arg1)][address(arg3)]].field_768
                                            mem[_12166 + 128] = offers[stor6[address(arg1)][address(arg3)]].field_1024
                                            mem[_12166 + 160] = offers[stor6[address(arg1)][address(arg3)]].field_1184
        if not offers[stor6[address(arg1)][address(arg3)]].field_512:
            require offers[stor6[address(arg1)][address(arg3)]].field_0
            require 0 / offers[stor6[address(arg1)][address(arg3)]].field_0 == uint128(0 / offers[stor6[address(arg1)][address(arg3)]].field_0)
            require uint128(idx) == uint128(idx)
            if not uint128(idx):
                uint8(stor4.field_0) = 0
                revert
            if not 0 / offers[stor6[address(arg1)][address(arg3)]].field_0:
                uint8(stor4.field_0) = 0
                revert
            if uint128(idx) > offers[stor6[address(arg1)][address(arg3)]].field_0:
                uint8(stor4.field_0) = 0
                revert
            if 0 / offers[stor6[address(arg1)][address(arg3)]].field_0 > offers[stor6[address(arg1)][address(arg3)]].field_512:
                uint8(stor4.field_0) = 0
                revert
            require offers[stor6[address(arg1)][address(arg3)]].field_0 - uint128(idx) <= offers[stor6[address(arg1)][address(arg3)]].field_0
            offers[stor6[address(arg1)][address(arg3)]].field_0 -= uint128(idx)
            require offers[stor6[address(arg1)][address(arg3)]].field_512 - (0 / offers[stor6[address(arg1)][address(arg3)]].field_0) <= offers[stor6[address(arg1)][address(arg3)]].field_512
            mem[0] = bestOffer[address(arg1)][address(arg3)]
            mem[32] = 3
            offers[stor6[address(arg1)][address(arg3)]].field_512 -= 0 / offers[stor6[address(arg1)][address(arg3)]].field_0
            require ext_code.size(offers[stor6[address(arg1)][address(arg3)]].field_768)
            call offers[stor6[address(arg1)][address(arg3)]].field_768.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, offers[stor6[address(arg1)][address(arg3)]].field_1024, 0 / offers[stor6[address(arg1)][address(arg3)]].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(offers[stor6[address(arg1)][address(arg3)]].field_256)
            call offers[stor6[address(arg1)][address(arg3)]].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, uint128(idx)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit LogItemUpdate(bestOffer[address(arg1)][address(arg3)]);
            mem[mem[64] + 64] = offers[stor6[address(arg1)][address(arg3)]].field_768
            mem[mem[64] + 96] = uint128(idx)
            mem[mem[64] + 128] = uint128(0 / offers[stor6[address(arg1)][address(arg3)]].field_0)
            mem[mem[64] + 160] = uint64(block.timestamp)
            emit LogTake(bestOffer[address(arg1)][address(arg3)], offers[stor6[address(arg1)][address(arg3)]].field_256, offers[stor6[address(arg1)][address(arg3)]].field_768, idx << 128, 0 / offers[stor6[address(arg1)][address(arg3)]].field_0 << 128, uint64(block.timestamp), sha3(offers[stor6[address(arg1)][address(arg3)]].field_256, offers[stor6[address(arg1)][address(arg3)]].field_768), offers[stor6[address(arg1)][address(arg3)]].field_1024, msg.sender);
            mem[mem[64]] = uint128(idx)
            mem[mem[64] + 32] = 0 / offers[stor6[address(arg1)][address(arg3)]].field_0
            emit LogTrade(idx << 128, 0 / offers[stor6[address(arg1)][address(arg3)]].field_0, offers[stor6[address(arg1)][address(arg3)]].field_256, offers[stor6[address(arg1)][address(arg3)]].field_768);
        else:
            require offers[stor6[address(arg1)][address(arg3)]].field_512
            require uint128(idx) * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_512 == uint128(idx)
            require offers[stor6[address(arg1)][address(arg3)]].field_0
            require uint128(idx) * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0 == uint128(uint128(idx) * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0)
            require uint128(idx) == uint128(idx)
            if not uint128(idx):
                uint8(stor4.field_0) = 0
                revert
            if not uint128(idx) * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0:
                uint8(stor4.field_0) = 0
                revert
            if uint128(idx) > offers[stor6[address(arg1)][address(arg3)]].field_0:
                uint8(stor4.field_0) = 0
                revert
            if uint128(idx) * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0 > offers[stor6[address(arg1)][address(arg3)]].field_512:
                uint8(stor4.field_0) = 0
                revert
            require offers[stor6[address(arg1)][address(arg3)]].field_0 - uint128(idx) <= offers[stor6[address(arg1)][address(arg3)]].field_0
            offers[stor6[address(arg1)][address(arg3)]].field_0 -= uint128(idx)
            require offers[stor6[address(arg1)][address(arg3)]].field_512 - (uint128(idx) * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0) <= offers[stor6[address(arg1)][address(arg3)]].field_512
            mem[0] = bestOffer[address(arg1)][address(arg3)]
            mem[32] = 3
            offers[stor6[address(arg1)][address(arg3)]].field_512 -= uint128(idx) * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0
            require ext_code.size(offers[stor6[address(arg1)][address(arg3)]].field_768)
            call offers[stor6[address(arg1)][address(arg3)]].field_768.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, offers[stor6[address(arg1)][address(arg3)]].field_1024, uint128(idx) * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(offers[stor6[address(arg1)][address(arg3)]].field_256)
            call offers[stor6[address(arg1)][address(arg3)]].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, uint128(idx)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit LogItemUpdate(bestOffer[address(arg1)][address(arg3)]);
            mem[mem[64] + 64] = offers[stor6[address(arg1)][address(arg3)]].field_768
            mem[mem[64] + 96] = uint128(idx)
            mem[mem[64] + 128] = uint128(uint128(idx) * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0)
            mem[mem[64] + 160] = uint64(block.timestamp)
            emit LogTake(bestOffer[address(arg1)][address(arg3)], offers[stor6[address(arg1)][address(arg3)]].field_256, offers[stor6[address(arg1)][address(arg3)]].field_768, idx << 128, uint128(idx) * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0 << 128, uint64(block.timestamp), sha3(offers[stor6[address(arg1)][address(arg3)]].field_256, offers[stor6[address(arg1)][address(arg3)]].field_768), offers[stor6[address(arg1)][address(arg3)]].field_1024, msg.sender);
            mem[mem[64]] = uint128(idx)
            mem[mem[64] + 32] = uint128(idx) * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0
            emit LogTrade(idx << 128, uint128(idx) * offers[stor6[address(arg1)][address(arg3)]].field_512 / offers[stor6[address(arg1)][address(arg3)]].field_0, offers[stor6[address(arg1)][address(arg3)]].field_256, offers[stor6[address(arg1)][address(arg3)]].field_768);
        mem[0] = bestOffer[address(arg1)][address(arg3)]
        mem[32] = 3
        if not offers[stor6[address(arg1)][address(arg3)]].field_0:
            mem[0] = bestOffer[address(arg1)][address(arg3)]
            mem[32] = 3
            offers[stor6[address(arg1)][address(arg3)]].field_0 = 0
            offers[stor6[address(arg1)][address(arg3)]].field_256 = 0
            offers[stor6[address(arg1)][address(arg3)]].field_512 = 0
            offers[stor6[address(arg1)][address(arg3)]].field_768 = 0
            offers[stor6[address(arg1)][address(arg3)]].field_1024 = 0
        uint8(stor4.field_0) = 0
        s = bestOffer[address(arg1)][address(arg3)]
        s = s + ((10^9 * idx * (1000000000 * 10^18 * offers[stor6[address(arg1)][address(arg3)]].field_512) + offers[stor6[address(arg1)][address(arg3)]].field_1 / offers[stor6[address(arg1)][address(arg3)]].field_0) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^9)
        idx = 0
        continue 
    require s <= arg4
    return s
}



}

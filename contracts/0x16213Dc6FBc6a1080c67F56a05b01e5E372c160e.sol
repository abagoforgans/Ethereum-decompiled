contract main {


// =======================  Init code  ======================


address stor4;
uint128 stor5; offset 160
uint256 stor6;
uint128 stor8; offset 160
address stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint128 stor13; offset 160
address stor13;
uint256 stor14;

function _fallback() payable {
    stor5 = 0
    Mask(96, 0, stor8.field_160) = 0
    stor11 = 50
    stor12 = 23
    address(stor13.field_0) = 0
    stor14 = 0
    require not msg.value
    stor4 = msg.sender
    stor6 = code.data[15050 len 32]
    stor5 = 1
    address(stor8.field_0) = msg.sender
    if code.data[15114 len 32]:
        require bool(code.data[15114 len 32]) == 1
        require not code.data[15158 len 20]
    else:
        if not code.data[15158 len 20]:
            require bool(code.data[15114 len 32]) == 1
            require not code.data[15158 len 20]
    stor9 = code.data[15082 len 32]
    if not code.data[15082 len 32]:
        require code.data[15082 len 32] >= code.data[15082 len 32]
        stor10 = code.data[15082 len 32]
    else:
        require code.data[15082 len 32]
        require 25 * code.data[15082 len 32] / code.data[15082 len 32] == 25
        require code.data[15082 len 32] + (25 * code.data[15082 len 32] / 1000) >= code.data[15082 len 32]
        stor10 = code.data[15082 len 32] + (25 * code.data[15082 len 32] / 1000)
    Mask(96, 0, stor13.field_160) = Mask(96, 0, bool(code.data[15114 len 32]))
    address(stor13.field_0) = code.data[15158 len 20]
    return code.data[890 len 14160]
}



// =====================  Runtime code  =====================


const name = 'CryptoWCRC'

const symbol = 'WCRC'


mapping of address ownerOf;
mapping of address approved;
mapping of uint256 tokenByOwner;
mapping of uint8 stor3;
address owner;
uint8 stor5; offset 160
uint128 stor5; offset 160
address pendingOwner;
uint256 initPrice;
array of struct countries;
uint8 stor8; offset 160
uint128 stor8; offset 160
address cooAddress;
uint256 cap;
uint256 finalCap;
uint256 increasePermillage;
uint256 sysFeePermillage;
uint8 stor13; offset 160
address payerContractAddress;
uint256 purchaseCounter;
array of uint256 stor99;

function purchaseCounter() {
    return purchaseCounter
}

function getApproved(uint256 arg1) {
    return address(approved[arg1])
}

function countries(uint256 arg1) {
    require arg1 < countries.length
    mem[128] = countries[arg1].field_0
    idx = 128
    s = 0
    while countries[arg1].length + 96 > idx:
        mem[idx + 32] = countries[(2 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=countries[arg1].length, data=mem[128 len countries[arg1].length]), countries[arg1].field_256
}

function totalSupply() {
    return countries.length
}

function isEthPayable() {
    return bool(stor13)
}

function getTokenByOwner(address arg1) {
    idx = 0
    s = 0
    while idx < countries.length:
        mem[0] = idx
        mem[32] = 0
        if ownerOf[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        require s < tokenByOwner[address(arg1)]
        mem[(32 * s) + 192] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * tokenByOwner[address(arg1)]) + 256 len floor32(tokenByOwner[address(arg1)])] = mem[192 len floor32(tokenByOwner[address(arg1)])]
    return Array(len=tokenByOwner[address(arg1)], data=mem[192 len floor32(tokenByOwner[address(arg1)])], mem[(32 * tokenByOwner[address(arg1)]) + floor32(tokenByOwner[address(arg1)]) + 256 len (32 * tokenByOwner[address(arg1)]) - floor32(tokenByOwner[address(arg1)])]), 
}

function cap() {
    return cap
}

function finalCap() {
    return finalCap
}

function sysFeePermillage() {
    return sysFeePermillage
}

function paused() {
    return bool(uint8(stor5.field_160))
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function auctionPaused() {
    return bool(uint8(stor8.field_160))
}

function balanceOf(address arg1) {
    require arg1
    return tokenByOwner[address(arg1)]
}

function owner() {
    return owner
}

function cooAddress() {
    return cooAddress
}

function initPrice() {
    return initPrice
}

function payerContract() {
    return payerContractAddress
}

function increasePermillage() {
    return increasePermillage
}

function pendingOwner() {
    return pendingOwner
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor3[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function exists(uint256 arg1) {
    return not not ownerOf[arg1]
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    pendingOwner = arg1
}

function setCOO(address arg1) {
    require msg.sender == owner
    require arg1
    cooAddress = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor5.field_160)
    Mask(96, 0, stor5.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor5.field_160)
    Mask(96, 0, stor5.field_160) = 1
    emit Pause()
}

function auctionUnpause() {
    require msg.sender == owner
    require uint8(stor8.field_160)
    Mask(96, 0, stor8.field_160) = 0
    emit AuctionUnpause()
}

function auctionPause() {
    require msg.sender == owner
    require not uint8(stor8.field_160)
    Mask(96, 0, stor8.field_160) = 1
    emit AuctionPause()
}

function claimOwnership() {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function withdrawBalance() {
    require msg.sender == owner
    call cooAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function setApprovalForAll(address arg1, bool arg2) {
    require not uint8(stor5.field_160)
    require arg1 != msg.sender
    stor3[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor5.field_160)
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor3[stor0[arg2]][address(msg.sender)]
    if address(approved[arg2]):
        address(approved[arg2]) = arg1
        emit Approval(arg2, ownerOf[arg2], arg1);
    else:
        if arg1:
            address(approved[arg2]) = arg1
            emit Approval(arg2, ownerOf[arg2], arg1);
}

function getTokenPriceListByIds(uint256[] arg1) {
    s = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] < countries.length
        mem[0] = 7
        require s < arg1.length
        mem[(32 * s) + 192] = countries[cd[((32 * idx) + arg1 + 36)]].field_256
        s = (2 * cd[((32 * idx) + arg1 + 36)]) + sha3(7)
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * arg1.length) + 256 len floor32(arg1.length)] = mem[192 len floor32(arg1.length)]
    return Array(len=arg1.length, data=mem[192 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 256 len (32 * arg1.length) - floor32(arg1.length)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor5.field_160)
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if address(approved[arg3]) != msg.sender:
            require stor3[stor0[arg3]][address(msg.sender)]
    require arg1
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if address(approved[arg3]):
        address(approved[arg3]) = 0
        emit Approval(arg3, arg1, 0);
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= tokenByOwner[address(arg1)]
    tokenByOwner[address(arg1)]--
    ownerOf[arg3] = 0
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require tokenByOwner[address(arg2)] + 1 >= tokenByOwner[address(arg2)]
    tokenByOwner[address(arg2)]++
    emit Transfer(arg3, arg1, arg2);
}

function getTokenNextPrice(uint256 arg1) {
    require arg1 < countries.length
    if countries[arg1].field_256 >= cap:
        return finalCap
    if not countries[arg1].field_256:
        require countries[arg1].field_256 >= countries[arg1].field_256
        if countries[arg1].field_256 <= cap:
            return countries[arg1].field_256
    else:
        require countries[arg1].field_256
        require countries[arg1].field_256 * increasePermillage / countries[arg1].field_256 == increasePermillage
        require countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000) >= countries[arg1].field_256
        if countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000) <= cap:
            return (countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000))
    return cap
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require not uint8(stor5.field_160)
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if address(approved[arg3]) != msg.sender:
            require stor3[stor0[arg3]][address(msg.sender)]
    require not uint8(stor5.field_160)
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if address(approved[arg3]) != msg.sender:
            require stor3[stor0[arg3]][address(msg.sender)]
    require arg1
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if address(approved[arg3]):
        address(approved[arg3]) = 0
        emit Approval(arg3, arg1, 0);
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= tokenByOwner[address(arg1)]
    tokenByOwner[address(arg1)]--
    ownerOf[arg3] = 0
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require tokenByOwner[address(arg2)] + 1 >= tokenByOwner[address(arg2)]
    tokenByOwner[address(arg2)]++
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        require ext_call.success
        require Mask(32, 224, ext_call.return_data[0]) == 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor5.field_160)
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if address(approved[arg3]) != msg.sender:
            require stor3[stor0[arg3]][address(msg.sender)]
    require not uint8(stor5.field_160)
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if address(approved[arg3]) != msg.sender:
            require stor3[stor0[arg3]][address(msg.sender)]
    require not uint8(stor5.field_160)
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if address(approved[arg3]) != msg.sender:
            require stor3[stor0[arg3]][address(msg.sender)]
    require arg1
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if address(approved[arg3]):
        address(approved[arg3]) = 0
        emit Approval(arg3, arg1, 0);
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= tokenByOwner[address(arg1)]
    tokenByOwner[address(arg1)]--
    ownerOf[arg3] = 0
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require tokenByOwner[address(arg2)] + 1 >= tokenByOwner[address(arg2)]
    tokenByOwner[address(arg2)]++
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), arg3, 96, 0
        require ext_call.success
        require Mask(32, 224, ext_call.return_data[0]) == 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
}

function createToken() payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    idx = countries.length
    while idx < countries.length + 100:
        if idx >= 836:
        if idx >= 101:
            _83 = mem[64]
            mem[64] = mem[64] + 64
            mem[_83] = 6
            mem[_83 + 32] = 'Player'
            countries.length++
            mem[0] = 7
            if not countries.length > countries.length + 1:
                _88 = mem[64]
                mem[64] = mem[64] + 64
                mem[_88] = _83
                mem[_88 + 32] = initPrice
                bool(countries[countries.length].field_0) = 0
                uint255(countries[countries.length].field_1) = 6
                Mask(248, 0, countries[countries.length].field_8) = 'Player' / 256
                s = sha3((2 * countries.length) + sha3(7))
                while sha3((2 * countries.length) + sha3(7)) + (countries[countries.length].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                s = sha3(mem[0]) + (2 * countries.length + 1)
                while sha3(7) + (2 * countries.length) > s:
                    stor[s] = 0
                    if 31 < stor[s].length:
                        mem[0] = s
                        t = sha3(s)
                        while sha3(s) + (stor[s].length + 31 / 32) > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                    uint256(approved[s]) = 0
                    s = s + 2
                    continue 
                mem[0] = 7
                _182 = mem[64]
                mem[64] = mem[64] + 64
                mem[_182] = _83
                mem[_182 + 32] = initPrice
                _184 = mem[_83]
                mem[0] = (2 * countries.length) + sha3(7)
                countries[countries.length].field_0 = (2 * _184) + 1
                t = sha3((2 * countries.length) + sha3(7))
                s = _83 + 32
                while _83 + _184 + 32 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3((2 * countries.length) + sha3(7)) + (Mask(251, 0, _184 + 31) >> 5)
                while sha3((2 * countries.length) + sha3(7)) + (countries[countries.length].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        else:
            _84 = mem[64]
            mem[64] = mem[64] + 64
            mem[_84] = 7
            mem[_84 + 32] = 'Country'
            countries.length++
            mem[0] = 7
            if not countries.length > countries.length + 1:
                _92 = mem[64]
                mem[64] = mem[64] + 64
                mem[_92] = _84
                mem[_92 + 32] = initPrice
                bool(countries[countries.length].field_0) = 0
                uint255(countries[countries.length].field_1) = 7
                Mask(248, 0, countries[countries.length].field_8) = 'Country' / 256
                s = sha3((2 * countries.length) + sha3(7))
                while sha3((2 * countries.length) + sha3(7)) + (countries[countries.length].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                s = sha3(mem[0]) + (2 * countries.length + 1)
                while sha3(7) + (2 * countries.length) > s:
                    stor[s] = 0
                    if 31 < stor[s].length:
                        mem[0] = s
                        t = sha3(s)
                        while sha3(s) + (stor[s].length + 31 / 32) > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                    uint256(approved[s]) = 0
                    s = s + 2
                    continue 
                mem[0] = 7
                _186 = mem[64]
                mem[64] = mem[64] + 64
                mem[_186] = _84
                mem[_186 + 32] = initPrice
                _188 = mem[_84]
                mem[0] = (2 * countries.length) + sha3(7)
                countries[countries.length].field_0 = (2 * _188) + 1
                t = sha3((2 * countries.length) + sha3(7))
                s = _84 + 32
                while _84 + _188 + 32 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3((2 * countries.length) + sha3(7)) + (Mask(251, 0, _188 + 31) >> 5)
                while sha3((2 * countries.length) + sha3(7)) + (countries[countries.length].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        countries[countries.length].field_256 = initPrice
        ownerOf[stor7.length] = msg.sender
        require tokenByOwner[address(msg.sender)] + 1 >= tokenByOwner[address(msg.sender)]
        mem[0] = msg.sender
        mem[32] = 2
        tokenByOwner[address(msg.sender)]++
        idx = idx + 1
        continue 
}

function purchaseWithToken(uint256 arg1) {
    require not uint8(stor8.field_160)
    require not stor13
    require payerContractAddress
    require ownerOf[arg1] != msg.sender
    require arg1 < countries.length
    if countries[arg1].field_256 >= cap:
        require ext_code.size(payerContractAddress)
        call payerContractAddress.0xdd62ed3e with:
             gas gas_remaining wei
            args msg.sender, this.address
        require ext_call.success
        require ext_call.return_data[0] >= finalCap
        if not finalCap:
            require 0 <= finalCap
            require ownerOf[arg1]
            require ext_code.size(payerContractAddress)
            call payerContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, ownerOf[arg1], finalCap
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(payerContractAddress)
            call payerContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, cooAddress, 0
        else:
            require finalCap
            require finalCap * sysFeePermillage / finalCap == sysFeePermillage
            require finalCap * sysFeePermillage / 1000 <= finalCap
            require ownerOf[arg1]
            require ext_code.size(payerContractAddress)
            call payerContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, ownerOf[arg1], finalCap - (finalCap * sysFeePermillage / 1000)
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(payerContractAddress)
            call payerContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, cooAddress, finalCap * sysFeePermillage / 1000
        require ext_call.success
        require ext_call.return_data[0]
        countries[arg1].field_256 = finalCap
        if address(approved[arg1]):
            address(approved[arg1]) = 0
            emit Approval(arg1, ownerOf[arg1], 0);
        require tokenByOwner[address(msg.sender)] + 1 >= tokenByOwner[address(msg.sender)]
        tokenByOwner[address(msg.sender)]++
        require 1 <= tokenByOwner[stor0[arg1]]
        tokenByOwner[stor0[arg1]]--
        ownerOf[arg1] = msg.sender
        emit Transfer(arg1, ownerOf[arg1], msg.sender);
        emit PurchaseToken(arg1, finalCap, block.timestamp, purchaseCounter, ownerOf[arg1], msg.sender);
    else:
        if not countries[arg1].field_256:
            require countries[arg1].field_256 >= countries[arg1].field_256
            require ext_code.size(payerContractAddress)
            call payerContractAddress.0xdd62ed3e with:
                 gas gas_remaining wei
                args msg.sender, this.address
            require ext_call.success
            if countries[arg1].field_256 <= cap:
                require ext_call.return_data[0] >= countries[arg1].field_256
                if not countries[arg1].field_256:
                    require 0 <= countries[arg1].field_256
                    require ownerOf[arg1]
                    require ext_code.size(payerContractAddress)
                    call payerContractAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, ownerOf[arg1], countries[arg1].field_256
                    require ext_call.success
                    require ext_call.return_data[0]
                    require ext_code.size(payerContractAddress)
                    call payerContractAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, cooAddress, 0
                else:
                    require countries[arg1].field_256
                    require countries[arg1].field_256 * sysFeePermillage / countries[arg1].field_256 == sysFeePermillage
                    require countries[arg1].field_256 * sysFeePermillage / 1000 <= countries[arg1].field_256
                    require ownerOf[arg1]
                    require ext_code.size(payerContractAddress)
                    call payerContractAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, ownerOf[arg1], countries[arg1].field_256 - (countries[arg1].field_256 * sysFeePermillage / 1000)
                    require ext_call.success
                    require ext_call.return_data[0]
                    require ext_code.size(payerContractAddress)
                    call payerContractAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, cooAddress, countries[arg1].field_256 * sysFeePermillage / 1000
                require ext_call.success
                require ext_call.return_data[0]
                if address(approved[arg1]):
                    address(approved[arg1]) = 0
                    emit Approval(arg1, ownerOf[arg1], 0);
                require tokenByOwner[address(msg.sender)] + 1 >= tokenByOwner[address(msg.sender)]
                tokenByOwner[address(msg.sender)]++
                require 1 <= tokenByOwner[stor0[arg1]]
                tokenByOwner[stor0[arg1]]--
                ownerOf[arg1] = msg.sender
                emit Transfer(arg1, ownerOf[arg1], msg.sender);
                emit PurchaseToken(arg1, countries[arg1].field_256, block.timestamp, purchaseCounter, ownerOf[arg1], msg.sender);
            else:
                require ext_call.return_data[0] >= cap
                if not cap:
                    require 0 <= cap
                    require ownerOf[arg1]
                    require ext_code.size(payerContractAddress)
                    call payerContractAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, ownerOf[arg1], cap
                    require ext_call.success
                    require ext_call.return_data[0]
                    require ext_code.size(payerContractAddress)
                    call payerContractAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, cooAddress, 0
                else:
                    require cap
                    require cap * sysFeePermillage / cap == sysFeePermillage
                    require cap * sysFeePermillage / 1000 <= cap
                    require ownerOf[arg1]
                    require ext_code.size(payerContractAddress)
                    call payerContractAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, ownerOf[arg1], cap - (cap * sysFeePermillage / 1000)
                    require ext_call.success
                    require ext_call.return_data[0]
                    require ext_code.size(payerContractAddress)
                    call payerContractAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, cooAddress, cap * sysFeePermillage / 1000
                require ext_call.success
                require ext_call.return_data[0]
                countries[arg1].field_256 = cap
                if address(approved[arg1]):
                    address(approved[arg1]) = 0
                    emit Approval(arg1, ownerOf[arg1], 0);
                require tokenByOwner[address(msg.sender)] + 1 >= tokenByOwner[address(msg.sender)]
                tokenByOwner[address(msg.sender)]++
                require 1 <= tokenByOwner[stor0[arg1]]
                tokenByOwner[stor0[arg1]]--
                ownerOf[arg1] = msg.sender
                emit Transfer(arg1, ownerOf[arg1], msg.sender);
                emit PurchaseToken(arg1, cap, block.timestamp, purchaseCounter, ownerOf[arg1], msg.sender);
        else:
            require countries[arg1].field_256
            require countries[arg1].field_256 * increasePermillage / countries[arg1].field_256 == increasePermillage
            require countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000) >= countries[arg1].field_256
            require ext_code.size(payerContractAddress)
            call payerContractAddress.0xdd62ed3e with:
                 gas gas_remaining wei
                args msg.sender, this.address
            require ext_call.success
            if countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000) <= cap:
                require ext_call.return_data[0] >= countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000)
                if not countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000):
                    require 0 <= countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000)
                    require ownerOf[arg1]
                    require ext_code.size(payerContractAddress)
                    call payerContractAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, ownerOf[arg1], countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000)
                    require ext_call.success
                    require ext_call.return_data[0]
                    require ext_code.size(payerContractAddress)
                    call payerContractAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, cooAddress, 0
                else:
                    require countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000)
                    require (countries[arg1].field_256 * sysFeePermillage) + (countries[arg1].field_256 * increasePermillage / 1000 * sysFeePermillage) / countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000) == sysFeePermillage
                    require (countries[arg1].field_256 * sysFeePermillage) + (countries[arg1].field_256 * increasePermillage / 1000 * sysFeePermillage) / 1000 <= countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000)
                    require ownerOf[arg1]
                    require ext_code.size(payerContractAddress)
                    call payerContractAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, ownerOf[arg1], countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000) - ((countries[arg1].field_256 * sysFeePermillage) + (countries[arg1].field_256 * increasePermillage / 1000 * sysFeePermillage) / 1000)
                    require ext_call.success
                    require ext_call.return_data[0]
                    require ext_code.size(payerContractAddress)
                    call payerContractAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, cooAddress, (countries[arg1].field_256 * sysFeePermillage) + (countries[arg1].field_256 * increasePermillage / 1000 * sysFeePermillage) / 1000
                require ext_call.success
                require ext_call.return_data[0]
                countries[arg1].field_256 += countries[arg1].field_256 * increasePermillage / 1000
                if address(approved[arg1]):
                    address(approved[arg1]) = 0
                    emit Approval(arg1, ownerOf[arg1], 0);
                require tokenByOwner[address(msg.sender)] + 1 >= tokenByOwner[address(msg.sender)]
                tokenByOwner[address(msg.sender)]++
                require 1 <= tokenByOwner[stor0[arg1]]
                tokenByOwner[stor0[arg1]]--
                ownerOf[arg1] = msg.sender
                emit Transfer(arg1, ownerOf[arg1], msg.sender);
                emit PurchaseToken(arg1, countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000), block.timestamp, purchaseCounter, ownerOf[arg1], msg.sender);
            else:
                require ext_call.return_data[0] >= cap
                if not cap:
                    require 0 <= cap
                    require ownerOf[arg1]
                    require ext_code.size(payerContractAddress)
                    call payerContractAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, ownerOf[arg1], cap
                    require ext_call.success
                    require ext_call.return_data[0]
                    require ext_code.size(payerContractAddress)
                    call payerContractAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, cooAddress, 0
                else:
                    require cap
                    require cap * sysFeePermillage / cap == sysFeePermillage
                    require cap * sysFeePermillage / 1000 <= cap
                    require ownerOf[arg1]
                    require ext_code.size(payerContractAddress)
                    call payerContractAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, ownerOf[arg1], cap - (cap * sysFeePermillage / 1000)
                    require ext_call.success
                    require ext_call.return_data[0]
                    require ext_code.size(payerContractAddress)
                    call payerContractAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, cooAddress, cap * sysFeePermillage / 1000
                require ext_call.success
                require ext_call.return_data[0]
                countries[arg1].field_256 = cap
                if address(approved[arg1]):
                    address(approved[arg1]) = 0
                    emit Approval(arg1, ownerOf[arg1], 0);
                require tokenByOwner[address(msg.sender)] + 1 >= tokenByOwner[address(msg.sender)]
                tokenByOwner[address(msg.sender)]++
                require 1 <= tokenByOwner[stor0[arg1]]
                tokenByOwner[stor0[arg1]]--
                ownerOf[arg1] = msg.sender
                emit Transfer(arg1, ownerOf[arg1], msg.sender);
                emit PurchaseToken(arg1, cap, block.timestamp, purchaseCounter, ownerOf[arg1], msg.sender);
    require purchaseCounter + 1 >= purchaseCounter
    purchaseCounter++
}

function purchaseWithEth(uint256 arg1) payable {
    require not uint8(stor8.field_160)
    require bool(stor13) == 1
    require ownerOf[arg1] != msg.sender
    require arg1 < countries.length
    if countries[arg1].field_256 >= cap:
        require msg.value >= finalCap
        if not finalCap:
            require 0 <= finalCap
            require ownerOf[arg1]
            call ownerOf[arg1] with:
               value finalCap wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call cooAddress with:
                 gas 2300 wei
            require finalCap <= msg.value
            require 0 <= msg.value - finalCap
            if msg.value - finalCap > 10^14:
                require finalCap <= msg.value
                require 0 <= msg.value - finalCap
                call msg.sender with:
                   value msg.value - finalCap wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            require finalCap
            require finalCap * sysFeePermillage / finalCap == sysFeePermillage
            require finalCap * sysFeePermillage / 1000 <= finalCap
            require ownerOf[arg1]
            call ownerOf[arg1] with:
               value finalCap - (finalCap * sysFeePermillage / 1000) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call cooAddress with:
               value finalCap * sysFeePermillage / 1000 wei
                 gas 2300 * is_zero(value) wei
            require finalCap - (finalCap * sysFeePermillage / 1000) <= msg.value
            require finalCap * sysFeePermillage / 1000 <= msg.value - finalCap + (finalCap * sysFeePermillage / 1000)
            if msg.value - finalCap > 10^14:
                require finalCap - (finalCap * sysFeePermillage / 1000) <= msg.value
                require finalCap * sysFeePermillage / 1000 <= msg.value - finalCap + (finalCap * sysFeePermillage / 1000)
                call msg.sender with:
                   value msg.value - finalCap wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        countries[arg1].field_256 = finalCap
        if address(approved[arg1]):
            address(approved[arg1]) = 0
            emit Approval(arg1, ownerOf[arg1], 0);
        require tokenByOwner[address(msg.sender)] + 1 >= tokenByOwner[address(msg.sender)]
        tokenByOwner[address(msg.sender)]++
        require 1 <= tokenByOwner[stor0[arg1]]
        tokenByOwner[stor0[arg1]]--
        ownerOf[arg1] = msg.sender
        emit Transfer(arg1, ownerOf[arg1], msg.sender);
        emit PurchaseToken(arg1, finalCap, block.timestamp, purchaseCounter, ownerOf[arg1], msg.sender);
    else:
        if not countries[arg1].field_256:
            require countries[arg1].field_256 >= countries[arg1].field_256
            if countries[arg1].field_256 <= cap:
                require msg.value >= countries[arg1].field_256
                if not countries[arg1].field_256:
                    require 0 <= countries[arg1].field_256
                    require ownerOf[arg1]
                    call ownerOf[arg1] with:
                       value countries[arg1].field_256 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    call cooAddress with:
                         gas 2300 wei
                    require countries[arg1].field_256 <= msg.value
                    require 0 <= msg.value - countries[arg1].field_256
                    if msg.value - countries[arg1].field_256 > 10^14:
                        require countries[arg1].field_256 <= msg.value
                        require 0 <= msg.value - countries[arg1].field_256
                        call msg.sender with:
                           value msg.value - countries[arg1].field_256 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    require countries[arg1].field_256
                    require countries[arg1].field_256 * sysFeePermillage / countries[arg1].field_256 == sysFeePermillage
                    require countries[arg1].field_256 * sysFeePermillage / 1000 <= countries[arg1].field_256
                    require ownerOf[arg1]
                    call ownerOf[arg1] with:
                       value countries[arg1].field_256 - (countries[arg1].field_256 * sysFeePermillage / 1000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    call cooAddress with:
                       value countries[arg1].field_256 * sysFeePermillage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require countries[arg1].field_256 - (countries[arg1].field_256 * sysFeePermillage / 1000) <= msg.value
                    require countries[arg1].field_256 * sysFeePermillage / 1000 <= msg.value - countries[arg1].field_256 + (countries[arg1].field_256 * sysFeePermillage / 1000)
                    if msg.value - countries[arg1].field_256 > 10^14:
                        require countries[arg1].field_256 - (countries[arg1].field_256 * sysFeePermillage / 1000) <= msg.value
                        require countries[arg1].field_256 * sysFeePermillage / 1000 <= msg.value - countries[arg1].field_256 + (countries[arg1].field_256 * sysFeePermillage / 1000)
                        call msg.sender with:
                           value msg.value - countries[arg1].field_256 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                if address(approved[arg1]):
                    address(approved[arg1]) = 0
                    emit Approval(arg1, ownerOf[arg1], 0);
                require tokenByOwner[address(msg.sender)] + 1 >= tokenByOwner[address(msg.sender)]
                tokenByOwner[address(msg.sender)]++
                require 1 <= tokenByOwner[stor0[arg1]]
                tokenByOwner[stor0[arg1]]--
                ownerOf[arg1] = msg.sender
                emit Transfer(arg1, ownerOf[arg1], msg.sender);
                emit PurchaseToken(arg1, countries[arg1].field_256, block.timestamp, purchaseCounter, ownerOf[arg1], msg.sender);
            else:
                require msg.value >= cap
                if not cap:
                    require 0 <= cap
                    require ownerOf[arg1]
                    call ownerOf[arg1] with:
                       value cap wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    call cooAddress with:
                         gas 2300 wei
                    require cap <= msg.value
                    require 0 <= msg.value - cap
                    if msg.value - cap > 10^14:
                        require cap <= msg.value
                        require 0 <= msg.value - cap
                        call msg.sender with:
                           value msg.value - cap wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    require cap
                    require cap * sysFeePermillage / cap == sysFeePermillage
                    require cap * sysFeePermillage / 1000 <= cap
                    require ownerOf[arg1]
                    call ownerOf[arg1] with:
                       value cap - (cap * sysFeePermillage / 1000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    call cooAddress with:
                       value cap * sysFeePermillage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require cap - (cap * sysFeePermillage / 1000) <= msg.value
                    require cap * sysFeePermillage / 1000 <= msg.value - cap + (cap * sysFeePermillage / 1000)
                    if msg.value - cap > 10^14:
                        require cap - (cap * sysFeePermillage / 1000) <= msg.value
                        require cap * sysFeePermillage / 1000 <= msg.value - cap + (cap * sysFeePermillage / 1000)
                        call msg.sender with:
                           value msg.value - cap wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                countries[arg1].field_256 = cap
                if address(approved[arg1]):
                    address(approved[arg1]) = 0
                    emit Approval(arg1, ownerOf[arg1], 0);
                require tokenByOwner[address(msg.sender)] + 1 >= tokenByOwner[address(msg.sender)]
                tokenByOwner[address(msg.sender)]++
                require 1 <= tokenByOwner[stor0[arg1]]
                tokenByOwner[stor0[arg1]]--
                ownerOf[arg1] = msg.sender
                emit Transfer(arg1, ownerOf[arg1], msg.sender);
                emit PurchaseToken(arg1, cap, block.timestamp, purchaseCounter, ownerOf[arg1], msg.sender);
        else:
            require countries[arg1].field_256
            require countries[arg1].field_256 * increasePermillage / countries[arg1].field_256 == increasePermillage
            require countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000) >= countries[arg1].field_256
            if countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000) <= cap:
                require msg.value >= countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000)
                if not countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000):
                    require 0 <= countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000)
                    require ownerOf[arg1]
                    call ownerOf[arg1] with:
                       value countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    call cooAddress with:
                         gas 2300 wei
                    require countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000) <= msg.value
                    require 0 <= msg.value - countries[arg1].field_256 - (countries[arg1].field_256 * increasePermillage / 1000)
                    if msg.value - countries[arg1].field_256 - (countries[arg1].field_256 * increasePermillage / 1000) > 10^14:
                        require countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000) <= msg.value
                        require 0 <= msg.value - countries[arg1].field_256 - (countries[arg1].field_256 * increasePermillage / 1000)
                        call msg.sender with:
                           value msg.value - countries[arg1].field_256 - (countries[arg1].field_256 * increasePermillage / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    require countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000)
                    require (countries[arg1].field_256 * sysFeePermillage) + (countries[arg1].field_256 * increasePermillage / 1000 * sysFeePermillage) / countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000) == sysFeePermillage
                    require (countries[arg1].field_256 * sysFeePermillage) + (countries[arg1].field_256 * increasePermillage / 1000 * sysFeePermillage) / 1000 <= countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000)
                    require ownerOf[arg1]
                    call ownerOf[arg1] with:
                       value countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000) - ((countries[arg1].field_256 * sysFeePermillage) + (countries[arg1].field_256 * increasePermillage / 1000 * sysFeePermillage) / 1000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    call cooAddress with:
                       value (countries[arg1].field_256 * sysFeePermillage) + (countries[arg1].field_256 * increasePermillage / 1000 * sysFeePermillage) / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000) - ((countries[arg1].field_256 * sysFeePermillage) + (countries[arg1].field_256 * increasePermillage / 1000 * sysFeePermillage) / 1000) <= msg.value
                    require (countries[arg1].field_256 * sysFeePermillage) + (countries[arg1].field_256 * increasePermillage / 1000 * sysFeePermillage) / 1000 <= msg.value - countries[arg1].field_256 - (countries[arg1].field_256 * increasePermillage / 1000) + ((countries[arg1].field_256 * sysFeePermillage) + (countries[arg1].field_256 * increasePermillage / 1000 * sysFeePermillage) / 1000)
                    if msg.value - countries[arg1].field_256 - (countries[arg1].field_256 * increasePermillage / 1000) > 10^14:
                        require countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000) - ((countries[arg1].field_256 * sysFeePermillage) + (countries[arg1].field_256 * increasePermillage / 1000 * sysFeePermillage) / 1000) <= msg.value
                        require (countries[arg1].field_256 * sysFeePermillage) + (countries[arg1].field_256 * increasePermillage / 1000 * sysFeePermillage) / 1000 <= msg.value - countries[arg1].field_256 - (countries[arg1].field_256 * increasePermillage / 1000) + ((countries[arg1].field_256 * sysFeePermillage) + (countries[arg1].field_256 * increasePermillage / 1000 * sysFeePermillage) / 1000)
                        call msg.sender with:
                           value msg.value - countries[arg1].field_256 - (countries[arg1].field_256 * increasePermillage / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                countries[arg1].field_256 += countries[arg1].field_256 * increasePermillage / 1000
                if address(approved[arg1]):
                    address(approved[arg1]) = 0
                    emit Approval(arg1, ownerOf[arg1], 0);
                require tokenByOwner[address(msg.sender)] + 1 >= tokenByOwner[address(msg.sender)]
                tokenByOwner[address(msg.sender)]++
                require 1 <= tokenByOwner[stor0[arg1]]
                tokenByOwner[stor0[arg1]]--
                ownerOf[arg1] = msg.sender
                emit Transfer(arg1, ownerOf[arg1], msg.sender);
                emit PurchaseToken(arg1, countries[arg1].field_256 + (countries[arg1].field_256 * increasePermillage / 1000), block.timestamp, purchaseCounter, ownerOf[arg1], msg.sender);
            else:
                require msg.value >= cap
                if not cap:
                    require 0 <= cap
                    require ownerOf[arg1]
                    call ownerOf[arg1] with:
                       value cap wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    call cooAddress with:
                         gas 2300 wei
                    require cap <= msg.value
                    require 0 <= msg.value - cap
                    if msg.value - cap > 10^14:
                        require cap <= msg.value
                        require 0 <= msg.value - cap
                        call msg.sender with:
                           value msg.value - cap wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    require cap
                    require cap * sysFeePermillage / cap == sysFeePermillage
                    require cap * sysFeePermillage / 1000 <= cap
                    require ownerOf[arg1]
                    call ownerOf[arg1] with:
                       value cap - (cap * sysFeePermillage / 1000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    call cooAddress with:
                       value cap * sysFeePermillage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require cap - (cap * sysFeePermillage / 1000) <= msg.value
                    require cap * sysFeePermillage / 1000 <= msg.value - cap + (cap * sysFeePermillage / 1000)
                    if msg.value - cap > 10^14:
                        require cap - (cap * sysFeePermillage / 1000) <= msg.value
                        require cap * sysFeePermillage / 1000 <= msg.value - cap + (cap * sysFeePermillage / 1000)
                        call msg.sender with:
                           value msg.value - cap wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                countries[arg1].field_256 = cap
                if address(approved[arg1]):
                    address(approved[arg1]) = 0
                    emit Approval(arg1, ownerOf[arg1], 0);
                require tokenByOwner[address(msg.sender)] + 1 >= tokenByOwner[address(msg.sender)]
                tokenByOwner[address(msg.sender)]++
                require 1 <= tokenByOwner[stor0[arg1]]
                tokenByOwner[stor0[arg1]]--
                ownerOf[arg1] = msg.sender
                emit Transfer(arg1, ownerOf[arg1], msg.sender);
                emit PurchaseToken(arg1, cap, block.timestamp, purchaseCounter, ownerOf[arg1], msg.sender);
    require purchaseCounter + 1 >= purchaseCounter
    purchaseCounter++
}



}

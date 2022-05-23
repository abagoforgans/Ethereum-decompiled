contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
mapping of struct sub_6618c03e;
address stor2;
uint256 tokenId;
uint256 startPrice;
uint64 duration;
uint64 startAt; offset 64
uint128 stor5;
bool stor6; offset 256
address sub_993f236dAddress;
uint256 stor6;
uint256 sub_d7cc975e;
bool stor8; offset 256
uint64 sub_024aa568;
array of struct sub_073c528a;
uint256 stor10;
uint8 stor11; offset 160
uint8 stor11; offset 168
address nonFungibleContractAddress;
array of address stor49791959467252497455735130940088646708311117250336157395101362029847983278000;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278001;

function sub_024aa568(?) {
    return sub_024aa568
}

function sub_073c528a(?) {
    require arg1 < sub_073c528a.length
    return sub_073c528a[arg1].field_0, sub_073c528a[arg1].field_256, sub_073c528a[arg1].field_512
}

function duration() {
    return duration
}

function tokenId() {
    return tokenId
}

function sub_6618c03e(?) {
    return sub_6618c03e[arg1].field_0, 
           sub_6618c03e[arg1].field_256,
           sub_6618c03e[arg1].field_512,
           sub_6618c03e[arg1].field_768,
           sub_6618c03e[arg1].field_768,
           sub_6618c03e[arg1].field_1024,
           sub_6618c03e[arg1].field_1280,
           sub_6618c03e[arg1].field_1536
}

function stopped() {
    return bool(uint8(stor11.field_160))
}

function isSaleClockAuction() {
    return bool(uint8(stor11.field_168))
}

function owner() {
    return owner
}

function sub_993f236d(?) {
    return sub_993f236dAddress
}

function startAt() {
    return startAt
}

function sub_d7cc975e(?) {
    return sub_d7cc975e
}

function nonFungibleContract() {
    return nonFungibleContractAddress
}

function startPrice() {
    return startPrice
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function auction() {
    return stor2, tokenId, startPrice, duration, startAt, sub_993f236dAddress, sub_d7cc975e, sub_024aa568
}

function sub_29b2dbd9(?) {
    if startAt <= 0:
        return (startAt > 0)
    if stor0:
        return not bool(stor0)
    if block.timestamp <= startAt:
        return (0 < duration)
    return (block.timestamp - startAt < duration)
}

function sub_7327df25(?) {
    require startAt > 0
    require not stor0
    if block.timestamp <= startAt:
        require 0 < duration
    else:
        require block.timestamp - startAt < duration
    return stor2, tokenId, startPrice, duration, duration, sub_993f236dAddress, sub_d7cc975e, sub_024aa568
}

function resumeAuction() {
    if owner != msg.sender:
        require ext_code.size(nonFungibleContractAddress)
        call nonFungibleContractAddress.'nN>-' with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    stor0 = 0
}

function sub_81b31718(?) {
    if owner != msg.sender:
        require ext_code.size(nonFungibleContractAddress)
        call nonFungibleContractAddress.'nN>-' with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    stor10 = arg1
}

function sub_8b41e1bd(?) {
    if owner != msg.sender:
        require ext_code.size(nonFungibleContractAddress)
        call nonFungibleContractAddress.'nN>-' with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    return stor10
}

function stop() {
    if owner != msg.sender:
        require ext_code.size(nonFungibleContractAddress)
        call nonFungibleContractAddress.'nN>-' with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    uint8(stor11.field_160) = 1
}

function start() {
    if owner != msg.sender:
        require ext_code.size(nonFungibleContractAddress)
        call nonFungibleContractAddress.'nN>-' with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    uint8(stor11.field_160) = 0
}

function balanceOf(address arg1) {
    if owner != msg.sender:
        require ext_code.size(nonFungibleContractAddress)
        call nonFungibleContractAddress.'nN>-' with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    return eth.balance(arg1)
}

function sub_3beaa8b6(?) {
    if owner != msg.sender:
        require ext_code.size(nonFungibleContractAddress)
        call nonFungibleContractAddress.'nN>-' with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    if eth.balance(this.address) > 0:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}

function createAuction(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) {
    require not uint8(stor11.field_160)
    require nonFungibleContractAddress
    require msg.sender == nonFungibleContractAddress
    require arg3 == uint64(arg3)
    require uint64(arg3) >= 60
    stor2 = arg4
    tokenId = arg1
    startPrice = arg2
    duration = uint64(arg3)
    startAt = uint64(block.timestamp)
    sub_993f236dAddress = 0
    stor6.field_256 % 1 = 0
    sub_d7cc975e = 0
    sub_024aa568 = 0
    stor8 = 0
    emit AuctionCreated(arg1, arg2, uint64(arg3));
}

function pauseAuction() {
    if owner != msg.sender:
        require ext_code.size(nonFungibleContractAddress)
        call nonFungibleContractAddress.'nN>-' with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require startAt > 0
    require not stor0
    if block.timestamp <= startAt:
        require 0 < duration
    else:
        require block.timestamp - startAt < duration
    stor0 = 1
}

function sub_64e118e7(?) {
    if owner != msg.sender:
        require ext_code.size(nonFungibleContractAddress)
        call nonFungibleContractAddress.'nN>-' with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    if owner != msg.sender:
        require nonFungibleContractAddress == msg.sender
    call nonFungibleContractAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_bbf11306(?) {
    if owner != msg.sender:
        require ext_code.size(nonFungibleContractAddress)
        call nonFungibleContractAddress.'nN>-' with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.supportsInterface(bytes4 arg1) with:
         gas gas_remaining wei
        args Mask(32, 224, sha3('tokenMetadata(uint256)') xor sha3('tokensOfOwner(address)') xor sha3('transferFrom(address,address,uin', 't256)') xor sha3('transfer(address,uint256)') xor sha3('approve(address,uint256)') xor sha3('ownerOf(uint256)') xor sha3('balanceOf(address)') xor sha3('totalSupply()') xor sha3('symbol()') xor sha3('name()'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    nonFungibleContractAddress = arg1
}

function endAuction() {
    if owner != msg.sender:
        require ext_code.size(nonFungibleContractAddress)
        call nonFungibleContractAddress.'nN>-' with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    sub_6618c03e[stor3].field_0 = stor2
    sub_6618c03e[stor3].field_256 = tokenId
    sub_6618c03e[stor3].field_512 = startPrice
    sub_6618c03e[stor3].field_768 = duration
    sub_6618c03e[stor3].field_768 = duration
    sub_6618c03e[stor3].field_832 = startAt
    sub_6618c03e[stor3].field_896 = 0
    sub_6618c03e[stor3].field_1024 = sub_993f236dAddress
    sub_6618c03e[stor3].field_1280 = sub_d7cc975e
    sub_6618c03e[stor3].field_1536 = sub_024aa568
    stor2 = 0
    tokenId = 0
    startPrice = 0
    stor5 = 0
    sub_993f236dAddress = 0
    sub_d7cc975e = 0
    sub_024aa568 = 0
    if sub_993f236dAddress:
        if sub_d7cc975e > 0:
            require ext_code.size(nonFungibleContractAddress)
            call nonFungibleContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args stor2, sub_993f236dAddress, tokenId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function cancelAuction() {
    if owner != msg.sender:
        require ext_code.size(nonFungibleContractAddress)
        call nonFungibleContractAddress.'nN>-' with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require startAt > 0
    require not stor0
    if block.timestamp <= startAt:
        require 0 < duration
    else:
        require block.timestamp - startAt < duration
    sub_6618c03e[stor3].field_0 = stor2
    sub_6618c03e[stor3].field_256 = tokenId
    sub_6618c03e[stor3].field_512 = startPrice
    sub_6618c03e[stor3].field_768 = duration
    sub_6618c03e[stor3].field_768 = duration
    sub_6618c03e[stor3].field_832 = startAt
    sub_6618c03e[stor3].field_896 = 0
    sub_6618c03e[stor3].field_1024 = sub_993f236dAddress
    sub_6618c03e[stor3].field_1280 = sub_d7cc975e
    sub_6618c03e[stor3].field_1536 = sub_024aa568
    stor2 = 0
    tokenId = 0
    startPrice = 0
    stor5 = 0
    sub_993f236dAddress = 0
    sub_d7cc975e = 0
    sub_024aa568 = 0
    if sub_993f236dAddress:
        if sub_d7cc975e > 0:
            call sub_993f236dAddress with:
               value sub_d7cc975e wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit AuctionCancelled(tokenId);
}

function bid() payable {
    require not uint8(stor11.field_160)
    require nonFungibleContractAddress
    sub_024aa568 = uint64(sub_024aa568 + 1)
    require startAt > 0
    require not stor0
    if block.timestamp <= startAt:
        require 0 < duration
    else:
        require block.timestamp - startAt < duration
    if msg.value <= sub_d7cc975e:
        require msg.value - stor10 <= msg.value
        call msg.sender with:
           value msg.value - stor10 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if msg.value < startPrice:
            require msg.value - stor10 <= msg.value
            call msg.sender with:
               value msg.value - stor10 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            uint256(stor6.field_0) = msg.sender or Mask(96, 160, uint256(stor6.field_0))
            sub_d7cc975e = msg.value
            sub_073c528a.length++
            sub_073c528a[sub_073c528a.length].field_0 = tokenId
            stor6E15[stor9.length] = msg.sender
            stor6E15[stor9.length] = msg.value
            if sub_993f236dAddress:
                if sub_d7cc975e > 0:
                    require sub_d7cc975e - stor10 <= sub_d7cc975e
                    call sub_993f236dAddress with:
                       value sub_d7cc975e - stor10 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            emit AuctionSuccessful(tokenId, msg.value, msg.sender);
}

function _fallback() payable {
    require not uint8(stor11.field_160)
    require nonFungibleContractAddress
    if owner != msg.sender:
        require ext_code.size(nonFungibleContractAddress)
        call nonFungibleContractAddress.'nN>-' with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require not uint8(stor11.field_160)
            require nonFungibleContractAddress
            sub_024aa568 = uint64(sub_024aa568 + 1)
            require startAt > 0
            require not stor0
            if block.timestamp <= startAt:
                require 0 < duration
            else:
                require block.timestamp - startAt < duration
            if msg.value <= sub_d7cc975e:
                require msg.value - stor10 <= msg.value
                call msg.sender with:
                   value msg.value - stor10 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if msg.value < startPrice:
                    require msg.value - stor10 <= msg.value
                    call msg.sender with:
                       value msg.value - stor10 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    uint256(stor6.field_0) = msg.sender or Mask(96, 160, uint256(stor6.field_0))
                    sub_d7cc975e = msg.value
                    sub_073c528a.length++
                    sub_073c528a[sub_073c528a.length].field_0 = tokenId
                    stor6E15[stor9.length] = msg.sender
                    stor6E15[stor9.length] = msg.value
                    if sub_993f236dAddress:
                        if sub_d7cc975e > 0:
                            require sub_d7cc975e - stor10 <= sub_d7cc975e
                            call sub_993f236dAddress with:
                               value sub_d7cc975e - stor10 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    emit AuctionSuccessful(tokenId, msg.value, msg.sender);
}



}

contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0; offset 8
address adminAddress;
uint256 auctionCount;
mapping of struct auctions;
mapping of uint256 sub_3c4f2cd4;
array of struct openAuctions;

function auctionCount() {
    return auctionCount
}

function sub_3c4f2cd4(?) {
    return sub_3c4f2cd4[arg1]
}

function auctions(uint256 arg1) {
    require auctions[arg1].field_2048 <= 3
    return auctions[arg1].field_0, 
           auctions[arg1].field_256,
           auctions[arg1].field_512,
           auctions[arg1].field_768,
           auctions[arg1].field_1024,
           auctions[arg1].field_1280,
           auctions[arg1].field_1536,
           auctions[arg1].field_1792,
           auctions[arg1].field_2048
}

function stopped() {
    return bool(uint8(stor0.field_0))
}

function openAuctions(uint256 arg1) {
    require arg1 < openAuctions.length
    return openAuctions[arg1].field_0
}

function admin() {
    return adminAddress
}

function kill() {
    require msg.sender == adminAddress
    require uint8(stor0.field_0)
    selfdestruct(adminAddress)
}

function _fallback() payable {
    revert
}

function sub_6a90ec4a(?) {
    require msg.sender == adminAddress
    uint8(stor0.field_0) = 0
    emit 0x5d40793e: msg.sender
}

function sub_985957ab(?) {
    require msg.sender == adminAddress
    uint8(stor0.field_0) = 1
    emit 0xd5820797: msg.sender
}

function sub_e6ecd8f7(?) {
    if openAuctions.length:
        mem[128 len 32 * openAuctions.length] = code.data[6754 len 32 * openAuctions.length]
    idx = 0
    while idx != openAuctions.length:
        require idx < openAuctions.length
        mem[0] = openAuctions[idx].field_0
        mem[32] = 3
        require idx < openAuctions.length
        mem[(32 * idx) + 128] = auctions[stor5[idx].field_0].field_1280
        idx = idx + 1
        continue 
    mem[(32 * openAuctions.length) + 192 len floor32(openAuctions.length)] = mem[128 len floor32(openAuctions.length)]
    return Array(len=openAuctions.length, data=mem[128 len floor32(openAuctions.length)], mem[(32 * openAuctions.length) + floor32(openAuctions.length) + 192 len (32 * openAuctions.length) - floor32(openAuctions.length)]), 
}

function sub_1995dee4(?) {
    if not openAuctions.length:
        mem[(32 * openAuctions.length) + 128] = 32
        mem[(32 * openAuctions.length) + 160] = openAuctions.length
        mem[(32 * openAuctions.length) + 192 len floor32(openAuctions.length)] = mem[128 len floor32(openAuctions.length)]
        return memory
          from (32 * openAuctions.length) + 128
           len (96 * openAuctions.length) + 64
    mem[128] = uint256(openAuctions.field_0)
    idx = 128
    s = 0
    while (32 * openAuctions.length) + 96 > idx:
        mem[idx + 32] = openAuctions[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * openAuctions.length) + 192 len floor32(openAuctions.length)] = mem[128 len floor32(openAuctions.length)]
    return Array(len=openAuctions.length, data=mem[128 len floor32(openAuctions.length)], mem[(32 * openAuctions.length) + floor32(openAuctions.length) + 192 len (32 * openAuctions.length) - floor32(openAuctions.length)]), 
}

function cancelAuction(uint256 arg1) {
    require not uint8(stor0.field_0)
    require auctions[arg1].field_2048 <= 3
    require auctions[arg1].field_2048 == 1
    require auctions[arg1].field_0 == msg.sender
    auctions[arg1].field_2048 = 3
    auctions[arg1].field_1024 = block.timestamp
    sub_3c4f2cd4[stor3[arg1].field_1280] = 0
    require auctions[arg1].field_1792 < openAuctions.length
    openAuctions[stor3[arg1].field_1792].field_0 = 0
    require 1 <= openAuctions.length
    require 1 <= openAuctions.length
    if auctions[arg1].field_1792 != openAuctions.length - 1:
        require openAuctions.length - 1 < openAuctions.length
        require auctions[arg1].field_1792 < openAuctions.length
        openAuctions[stor3[arg1].field_1792].field_0 = openAuctions[openAuctions.length].field_0
        require 1 <= openAuctions.length
        require openAuctions.length - 1 < openAuctions.length
        openAuctions[openAuctions.length].field_0 = 0
        require auctions[arg1].field_1792 < openAuctions.length
        auctions[stor5[auctions[arg1].field_1792].field_0].field_1792 = auctions[arg1].field_1792
    openAuctions.length--
    if openAuctions.length > openAuctions.length - 1:
        idx = openAuctions.length - 1
        while openAuctions.length > idx:
            openAuctions[idx].field_0 = 0
            idx = idx + 1
            continue 
    emit 0x4e9add79: arg1, auctions[arg1].field_1280
}

function newAuction(uint256 arg1, uint256 arg2) {
    require not uint8(stor0.field_0)
    require not sub_3c4f2cd4[arg1]
    require ext_code.size(address(stor0.field_8))
    call address(stor0.field_8).0x2a16cca4 with:
         gas gas_remaining wei
        args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(stor0.field_8))
    call address(stor0.field_8).0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(address(stor0.field_8))
    call address(stor0.field_8).0x8acd3758 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require auctionCount + 1 >= auctionCount
    auctionCount++
    openAuctions.length++
    openAuctions[openAuctions.length].field_0 = auctionCount
    require 1 <= openAuctions.length + 1
    sub_3c4f2cd4[arg1] = auctionCount
    auctions[stor2].field_0 = msg.sender
    auctions[stor2].field_256 = 0
    auctions[stor2].field_512 = 0
    auctions[stor2].field_512 = arg2
    auctions[stor2].field_768 = block.timestamp
    auctions[stor2].field_1024 = 0
    auctions[stor2].field_1280 = arg1
    auctions[stor2].field_1536 = ext_call.return_data[0]
    auctions[stor2].field_1792 = openAuctions.length
    auctions[stor2].field_2048 = 1
    emit 0x3d052985: msg.sender, auctionCount, arg2, arg1, ext_call.return_data[0]
}

function sub_47da38e5(?) payable {
    mem[64] = 96
    require not msg.value
    require not uint8(stor0.field_0)
    idx = 0
    while idx != ('cd', 4).length:
        require idx < ('cd', 4).length
        require not uint8(stor0.field_0)
        require not sub_3c4f2cd4[cd[((32 * idx) + cd[4] + 36)]]
        require ext_code.size(address(stor0.field_8))
        call address(stor0.field_8).0x2a16cca4 with:
             gas gas_remaining wei
            args address(this.address), cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(address(stor0.field_8))
        call address(stor0.field_8).0x6352211e with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require address(ext_call.return_data[0]) == msg.sender
        require ext_code.size(address(stor0.field_8))
        call address(stor0.field_8).0x8acd3758 with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require auctionCount + 1 >= auctionCount
        auctionCount++
        openAuctions.length++
        openAuctions[openAuctions.length].field_0 = auctionCount
        require 1 <= openAuctions.length + 1
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 4
        sub_3c4f2cd4[cd[((32 * idx) + cd[4] + 36)]] = auctionCount
        _44 = mem[64]
        mem[64] = mem[64] + 288
        mem[_44] = msg.sender
        mem[_44 + 32] = 0
        mem[_44 + 64] = cd[36]
        mem[_44 + 96] = block.timestamp
        mem[_44 + 128] = 0
        mem[_44 + 160] = cd[((32 * idx) + cd[4] + 36)]
        mem[_44 + 192] = ext_call.return_data[0]
        mem[_44 + 224] = openAuctions.length
        mem[_44 + 256] = 1
        mem[0] = auctionCount
        mem[32] = 3
        auctions[stor2].field_0 = msg.sender
        auctions[stor2].field_256 = 0
        auctions[stor2].field_512 = 0
        auctions[stor2].field_512 = cd[36]
        auctions[stor2].field_768 = block.timestamp
        auctions[stor2].field_1024 = 0
        auctions[stor2].field_1280 = cd[((32 * idx) + cd[4] + 36)]
        auctions[stor2].field_1536 = ext_call.return_data[0]
        auctions[stor2].field_1792 = openAuctions.length
        auctions[stor2].field_2048 = 1
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = auctionCount
        mem[mem[64] + 64] = cd[36]
        mem[mem[64] + 96] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] + 128] = ext_call.return_data[0]
        emit 0x3d052985: msg.sender, auctionCount, cd[36], cd[((32 * idx) + cd[4] + 36)], ext_call.return_data[0]
        idx = idx + 1
        continue 
}

function bid(uint256 arg1) payable {
    require not uint8(stor0.field_0)
    require auctions[arg1].field_2048 <= 3
    require auctions[arg1].field_2048 == 1
    require msg.value > 0
    require block.timestamp >= auctions[arg1].field_768
    require ext_code.size(address(stor0.field_8))
    call address(stor0.field_8).0x2a16cca4 with:
         gas gas_remaining wei
        args address(this.address), auctions[arg1].field_1280
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor0.field_8))
    call address(stor0.field_8).0x6352211e with:
         gas gas_remaining wei
        args auctions[arg1].field_1280
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        auctions[arg1].field_2048 = 3
        auctions[arg1].field_1024 = block.timestamp
        sub_3c4f2cd4[stor3[arg1].field_1280] = 0
        require auctions[arg1].field_1792 < openAuctions.length
        openAuctions[stor3[arg1].field_1792].field_0 = 0
        require 1 <= openAuctions.length
        require 1 <= openAuctions.length
        if auctions[arg1].field_1792 != openAuctions.length - 1:
            require openAuctions.length - 1 < openAuctions.length
            require auctions[arg1].field_1792 < openAuctions.length
            openAuctions[stor3[arg1].field_1792].field_0 = openAuctions[openAuctions.length].field_0
            require 1 <= openAuctions.length
            require openAuctions.length - 1 < openAuctions.length
            openAuctions[openAuctions.length].field_0 = 0
            require auctions[arg1].field_1792 < openAuctions.length
            auctions[stor5[auctions[arg1].field_1792].field_0].field_1792 = auctions[arg1].field_1792
        openAuctions.length--
        if openAuctions.length > openAuctions.length - 1:
            idx = openAuctions.length - 1
            while openAuctions.length > idx:
                openAuctions[idx].field_0 = 0
                idx = idx + 1
                continue 
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            return 0
    if ext_call.return_data[12 len 20] != auctions[arg1].field_0:
        auctions[arg1].field_2048 = 3
        auctions[arg1].field_1024 = block.timestamp
        sub_3c4f2cd4[stor3[arg1].field_1280] = 0
        require auctions[arg1].field_1792 < openAuctions.length
        openAuctions[stor3[arg1].field_1792].field_0 = 0
        require 1 <= openAuctions.length
        require 1 <= openAuctions.length
        if auctions[arg1].field_1792 != openAuctions.length - 1:
            require openAuctions.length - 1 < openAuctions.length
            require auctions[arg1].field_1792 < openAuctions.length
            openAuctions[stor3[arg1].field_1792].field_0 = openAuctions[openAuctions.length].field_0
            require 1 <= openAuctions.length
            require openAuctions.length - 1 < openAuctions.length
            openAuctions[openAuctions.length].field_0 = 0
            require auctions[arg1].field_1792 < openAuctions.length
            auctions[stor5[auctions[arg1].field_1792].field_0].field_1792 = auctions[arg1].field_1792
        openAuctions.length--
        if openAuctions.length > openAuctions.length - 1:
            idx = openAuctions.length - 1
            while openAuctions.length > idx:
                openAuctions[idx].field_0 = 0
                idx = idx + 1
                continue 
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            return 0
    require msg.value >= auctions[arg1].field_512
    auctions[arg1].field_256 = msg.sender
    auctions[arg1].field_2048 = 2
    auctions[arg1].field_1024 = block.timestamp
    sub_3c4f2cd4[stor3[arg1].field_1280] = 0
    require auctions[arg1].field_1792 < openAuctions.length
    openAuctions[stor3[arg1].field_1792].field_0 = 0
    require 1 <= openAuctions.length
    require 1 <= openAuctions.length
    if auctions[arg1].field_1792 != openAuctions.length - 1:
        require openAuctions.length - 1 < openAuctions.length
        require auctions[arg1].field_1792 < openAuctions.length
        openAuctions[stor3[arg1].field_1792].field_0 = openAuctions[openAuctions.length].field_0
        require 1 <= openAuctions.length
        require openAuctions.length - 1 < openAuctions.length
        openAuctions[openAuctions.length].field_0 = 0
        require auctions[arg1].field_1792 < openAuctions.length
        auctions[stor5[auctions[arg1].field_1792].field_0].field_1792 = auctions[arg1].field_1792
    openAuctions.length--
    if openAuctions.length > openAuctions.length - 1:
        idx = openAuctions.length - 1
        while openAuctions.length > idx:
            openAuctions[idx].field_0 = 0
            idx = idx + 1
            continue 
    require ext_code.size(address(stor0.field_8))
    call address(stor0.field_8).0x42842e0e with:
         gas gas_remaining wei
        args auctions[arg1].field_0, msg.sender, auctions[arg1].field_1280
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call auctions[arg1].field_0 with:
       value auctions[arg1].field_512 wei
         gas 2300 * is_zero(value) wei
    if msg.value > auctions[arg1].field_512:
        require auctions[arg1].field_512 <= msg.value
        call msg.sender with:
           value msg.value - auctions[arg1].field_512 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0xfd02de2f: arg1, auctions[arg1].field_1280, auctions[arg1].field_1536, auctions[arg1].field_512, auctions[arg1].field_0, address(msg.sender)
    return 1
}



}
